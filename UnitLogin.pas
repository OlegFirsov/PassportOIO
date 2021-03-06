unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Defaults,
  Vcl.ComCtrls, Vcl.Imaging.GIFImg, Vcl.ExtCtrls, Winapi.ShellAPI, Xml.XMLIntf,
  Xml.XMLDoc;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtLogin: TEdit;
    edtPassword: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
    StatusBar1: TStatusBar;
    Image1: TImage;
    CheckBoxUpdate: TCheckBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function TestPassword(pass:String;hash:Integer): Boolean;
  public
    { Public declarations }
  end;

procedure TestUpdate();

var
  FormLogin: TFormLogin;
  isTest, isUpdate: Boolean;

implementation

{$R *.dfm}

uses UnitDB, UnitMain, WebDAV, IdHashMessageDigest, UnitThreadProgBar;


procedure TFormLogin.btnCancelClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormLogin.btnOKClick(Sender: TObject);
var
  pass: String;
  hash: Integer;
  ThPrBar: ThreadProgressBar;
begin
  with DataMdl do
  begin
    ADOQuerySprav.Close;
    ADOQuerySprav.SQL.Clear;
    ADOQuerySprav.SQL.Add('SELECT login,password FROM users WHERE login="' + Trim(edtLogin.Text) + '"');
    ADOQuerySprav.Open;
    if ADOQuerySprav.RecordCount > 0 then
      begin
        pass := Trim(edtPassword.Text);
        hash := ADOQuerySprav.FieldByName('password').AsInteger;
        if TestPassword(pass,hash) then
          begin
            isTest := True;

            if(CheckBoxUpdate.Checked = false) then
            begin
              Image1.Visible := true;
              StatusBar1.SimpleText := '�������� ���������� �� ��������� �������.';
              ThPrBar := ThreadProgressBar.Create(false);
              ThPrBar.FreeOnTerminate := true;
            end
            else
              begin
                isUpdate := false;
                //Application.Run;
                FormLogin.Close;
                FormMain.StatusBar1.Panels[0].Text := '���������� �� ��������� ������� �� �����������.';
              end;

          end
          else
            begin
              Application.MessageBox('�������� ������, ���������� ��� ���.','����������',MB_OK);
              edtPassword.SetFocus();
              isTest := False;
            end;
      end
      else
        begin
          Application.MessageBox('��� ������ ������������, ������� ��� ���.','����������',MB_OK);
          edtLogin.SetFocus();
        end;
  end;
end;

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if Assigned(ThPrBar) then
      ThPrBar.Free;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
  (Image1.Picture.Graphic as TGIFImage).Animate := true;
  (Image1.Picture.Graphic as TGIFImage).AnimationSpeed := 500;
  Image1.Visible := false;
end;

function TFormLogin.TestPassword(pass:String;hash:Integer): Boolean;
var
  i:Integer;
begin
i := BobJenkinsHash(pass[1],Length(pass)*SizeOf(pass[1]),0);
    if (Trim(pass) <> '') and (i = hash)  then
      result := True
    else
      result := False;
end;

procedure TestUpdate();
const
  CommandLine = ' CentrePassportOIO';
  a = '098234162';
var
  WebDAV: TWebDAVSend;
  remoteVersion,localVersion, md5RemoteFile, md5DownloadFile: string;
  arrRV: TArray<string> ;
  arrLV: TArray<string>;
  delimiterSet: array [0 .. 0] of char;
  i: Integer;
  upXML: IXMLDocument;
  root, elem: IXMLNode;
  StartInfo: TStartupInfo;//CreateProcess
  ProcInfo: TProcessInformation;//CreateProcess
  ShellExecuteInfo: TShellExecuteInfo;//ShellExecuteEx
  idmd5 : TIdHashMessageDigest5;
  fs : TFileStream;

begin
//�������� ����������
  try
    isUpdate := false;
    WebDAV := TWebDAVSend.Create;
    WebDAV.Login := 'poetry77';
    WebDAV.Password := transform(a);
    //��������� ������� update.xml
    WebDAV.GET('update.xml', ExtractFilePath(GetModName()) + '\update.xml');
    if FileExists(ExtractFilePath(GetModName()) + '\update.xml') then
      begin
        upXml := TXMLDocument.Create(ExtractFilePath(GetModName()) + '\update.xml');
        upXML.Active := true;
        root := upXML.ChildNodes['application'];
        elem := root.ChildNodes.FindNode('version');
        remoteVersion := elem.Text;
        elem := root.ChildNodes.FindNode('md5');
        md5RemoteFile := elem.Text;
        localVersion := GetVersion();
        delimiterSet[0] := '.';
        arrRV := TArray<string>.Create('0','0','0','0');
        arrLV := TArray<string>.Create('0','0','0','0');
        arrRV := remoteVersion.Split(delimiterSet);
        arrLV := localVersion.Split(delimiterSet);
        for i := 0 to Length(arrRV) - 1  do
          begin
            if StrToInt(arrRV[i]) > StrToInt(arrLV[i]) then
              begin
                isUpdate := true;
                break;
              end;
          end;
        if isUpdate then
          begin
          WebDAV.GET('CentrePassportOIO.exe', ExtractFilePath(GetModName()) + '\CentrePassportOIO.new');
          //������������ ��� ���������� � ������� ����� md5
          idmd5 := TIdHashMessageDigest5.Create;
          fs := TFileStream.Create(ExtractFilePath(GetModName()) + '\CentrePassportOIO.new',
            fmOpenRead OR fmShareDenyWrite) ;
          try
            md5DownloadFile := idmd5.HashStreamAsHex(fs);
          finally
            fs.Free;
            idmd5.Free;
          end;
          if (md5RemoteFile = md5DownloadFile) then
            begin
              Application.MessageBox(PWideChar(' �� ��������� ������� ���� ���������� v.' + remoteVersion
              + '. ����� ��������� ���������� - ��������� ����� �����������.'), '����������', MB_OK);
              FillChar(StartInfo, sizeof(TStartupInfo), #0);
              FillChar(ProcInfo, sizeof(TProcessInformation), #0);
              StartInfo.cb := sizeof(TStartupInfo);
              //for Windows XP
              if CreateProcess(nil,PWideChar(ExtractFilePath(GetModName()) + '\updater.exe' + CommandLine),nil,nil,false,
                CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS, nil, nil, StartInfo,ProcInfo) then
                Application.Terminate
              else
              begin
                FillChar(ShellExecuteInfo,sizeof(pShellExecuteInfo),#0);
                ShellExecuteInfo.cbSize := sizeof(ShellExecuteInfo);
                ShellExecuteInfo.lpVerb := 'runas'; // Operation to perform
                ShellExecuteInfo.lpFile := PWideChar(ExtractFilePath(GetModName()) + '\updater.exe');       // Application to start
                ShellExecuteInfo.lpParameters := PWideChar(CommandLine);// Additional parameters
                ShellExecuteInfo.lpDirectory := nil;
                ShellExecuteInfo.nShow := SW_SHOW;
                //Windows 7 ->
                if ShellExecuteEx(@ShellExecuteInfo)then
                  Application.Terminate;
              end;
            end;
          end
          else
            FormMain.StatusBar1.Panels[0].Text := '������������ ���������� ������ v.' + localVersion;
      end;
  finally
    WebDAV.Destroy;
    FormLogin.Close();
  end;
end;


end.
