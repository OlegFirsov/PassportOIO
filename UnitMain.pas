unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls,  System.Actions,
  Vcl.ActnList, Vcl.Menus, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.OleServer,
  XMLDoc, XMLIntf, IdHashMessageDigest, idHash, JRO_TLB;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    Action1: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    ToolButton1: TToolButton;
    DBGridAnketa: TDBGrid;
    GroupBox1: TGroupBox;
    cbYear: TComboBox;
    Label6: TLabel;
    cbHoz: TComboBox;
    Label4: TLabel;
    cbRajon: TComboBox;
    Label3: TLabel;
    cbRegion: TComboBox;
    Label5: TLabel;
    btnFilterOn: TButton;
    btnFilterOff: TButton;
    btnEdit: TButton;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N5: TMenuItem;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    OpenDialog1: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure cbRegionChange(Sender: TObject);
    procedure cbRajonChange(Sender: TObject);
    procedure cbHozChange(Sender: TObject);
    procedure btnFilterOnClick(Sender: TObject);
    procedure btnFilterOffClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure ShowDBGrid();
  procedure OpenMenuSprav(SQL: String);
  end;

function GetModName(): string;
function GetVersion: string;
//procedure TestUpdate();

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses UnitDB, UnitVariables, UnitAnketaTables, UnitChoose, WebDAV, UnitLoadProgressBar,
  UnitThreadProgBar, UnitAbout, UnitSprav;

procedure CreateFolder(Dir: string);
begin
  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);
end;

function GetModName(): string;
var
  fName: string;
  nsize: cardinal;
begin
  nsize := 128;
  SetLength(fName, nsize);
  SetLength(fName,
    GetModuleFileName(
    hinstance,
    pchar(fName),
    nsize));
  Result := fName;
end;


function GetVersion: string;
var VerInfoSize: DWORD;
    VerInfo: Pointer;
    VerValueSize: DWORD;
    VerValue: PVSFixedFileInfo;
    Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;


//������ ������ � �������
procedure TFormMain.Action1Execute(Sender: TObject);
begin
{  if not Assigned(FormAnketaTables) then
  FormAnketaTables := TFormAnketaTables.Create(Application);
  FormAnketaTables.ShowModal;}
if not Assigned(FormChoose) then
  FormChoose := TFormChoose.Create(Application);
  FormChoose.ShowModal;
end;

//���������� ��������
procedure TFormMain.Action2Execute(Sender: TObject);
begin
FormSprav.Caption:='������ �� �������������. ����������� �������� (����������, ����, �������)';
//OpenMenuSprav('select * from spobl order by kod');
OpenMenuSprav('SELECT spobl.kod, spobl.kodb, spobl.im, kokr.im '+
 'FROM spobl INNER JOIN kokr ON spobl.okrug = kokr.kod ORDER BY spobl.im');
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayLabel:='��� �������';
DataMdl.ADOQuerySprav.FieldByName('kodb').DisplayWidth:=24;
DataMdl.ADOQuerySprav.FieldByName('kodb').DisplayLabel:='��������� ��� ����� ����';
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayWidth:=64;
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayLabel:='������ (����������, ����, �������)';
DataMdl.ADOQuerySprav.FieldByName('kokr.im').DisplayWidth:=40;
DataMdl.ADOQuerySprav.FieldByName('kokr.im').DisplayLabel:='����������� �����';
//FormSprav.DBNavigatorSprav.VisibleButtons:=[nbFirst,nbPrior,nbNext,nbLast];
FormSprav.Tag:=1;
FormSprav.lblSearch.Caption:='������� ������ ��� ������';
   with DataMdl do
     begin
     ADOQuerySprav.First;
     FormSprav.cbSearch.Clear;
     while not ADOQuerySprav.Eof do
       begin
       FormSprav.cbSearch.Items.Add(ADOQuerySprav.FieldByName('spobl.im').AsString);
       ADOQuerySprav.Next;
       end;
     end;
FormSprav.SpdBtnSearch.Visible:=True;
FormSprav.cbSearch.Visible:=True;
FormSprav.lblSearch.Visible:=True;
FormSprav.SpdBtnAdd.Visible:=True;
FormSprav.SpdBtnEdit.Visible:=True;
FormSprav.SpdBtnDelete.Visible:=True;

end;

procedure TFormMain.Action3Execute(Sender: TObject);
begin
  FormSprav.OpenRajon();
end;

procedure TFormMain.Action4Execute(Sender: TObject);
begin
  FormSprav.OpenXoz();
end;

procedure TFormMain.Action5Execute(Sender: TObject);
begin
  FormSprav.OpenOkrug();
end;

//������� ����� ��
procedure TFormMain.Action6Execute(Sender: TObject);
var
nFile: String;
begin
nFile:=FormatDateTime('ddmmyyhhmm',Now);
if CopyFile(PWideChar(FullPathToProg+'passportoio.mdb'),PWideChar(FullPathToProg+'arch\'+
            'passportoio'+nFile+'.mdb'),False) then
  Application.MessageBox(PWideChar('������� ����� ��   '+FullPathToProg+'arch\'+
            'passportoio'+nFile+'.mdb'), '����������', MB_OK)
  else
  Application.MessageBox('�� ������� ������� ����� ��, �������� �� ������, ���������� � ���������� ��� ���!', '����������', MB_OK);
end;

//������������ �� �� ������
procedure TFormMain.Action7Execute(Sender: TObject);
begin
OpenDialog1.InitialDir := FullPathToProg+'arch\';
OpenDialog1.Filter := 'access (*.mdb)|*.mdb';
if OpenDialog1.Execute then
  begin
  if MessageDlg('�� ������������� ������ �������������� �� '+OpenDialog1.FileName+'?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
    if CopyFile(PWideChar(OpenDialog1.FileName),PWideChar(FullPathToProg+'passportoio.mdb'),False) then
      Application.MessageBox(PWideChar('�� ������� ������������� �� �����.'), '����������', MB_OK)
    else
    Application.MessageBox('�� ������� ������������ ��, �������� �� ������, ���������� � ���������� ��� ���!', '����������', MB_OK);
    end;
  end;
end;

//����� ��
procedure TFormMain.Action8Execute(Sender: TObject);
const
  a =  '00324';
var
JE: TJetEngine;
sDBFile,sTempFile,sArchFile: String;
bAllOK: Boolean;
sProvider: String;
b: ShortString;
begin
b := transform(a);
sProvider := 'Provider=Microsoft.Jet.OLEDB.4.0;Jet OLEDB:Database Password='+ b + ';Data Source=';
with DataMdl do
  begin
  if ADOQueryAnketa.Active then ADOQueryAnketa.Close;
  if ADOQueryEdit.Active then ADOQueryEdit.Close;
  if ADOQuerySprav.Active then ADOQuerySprav.Close;
  if ADOQueryCategory.Active then ADOQueryCategory.Close;
  if ADOQueryOpt.Active then ADOQueryOpt.Close;
  if ADOQueryTables.Active then ADOQueryTables.Close;
  if ADOQuerySprSost.Active then ADOQueryTables.Close;
  if ADOConnection1.Connected then ADOConnection1.Close;
  end;

bAllOK:=True;
sDBFile := FullPathToProg+'passportoio.mdb';
sTempFile := FullPathToProg+'temppassportoio.mdb';
if FileExists(sTempFile) then DeleteFile(sTempFile);
if not FileExists(sDBFile) then
  begin
  ShowMessage('���� ���� ������ "'+sDBFile+'" �� ������!!!');
  exit;
  end;
Screen.Cursor := crHourGlass;
try
  JE:=TJetEngine.Create(Self);
  JE.AutoConnect := False;
  JE.ConnectKind := ckRunningOrNew;
  try
  JE.CompactDatabase(sProvider+sDBFile,sProvider+sTempFile);
  except
  on E: Exception do
    begin
    bAllOK:=False;
    Application.MessageBox(PWideChar('���� �� ����� ���� �����.������� �� ��������� � ���������� '+
               '��� ���.'),PWideChar('����������'),MB_ICONINFORMATION);
    end;
  end;
  JE.Free;

except
on E: Exception do
  begin
  bAllOK:=False;
  ShowMessage('������.������� �� ��������� � ���������� ��� ���.');
  end;
end;
Screen.Cursor:=crDefault;
if bAllOK then
  begin
  try
  sArchFile:=FullPathToProg+'arch\'+'passportoio'+FormatDateTime('ddmmyyhhnnss',now)+'.mdb';
  if RenameFile(sDBFile,sArchFile) then
    begin
    ShowMessage('���� ���� ������ �� �������� ��� ������� � �����:  '+sArchFile);
    if RenameFile(sTempFile,sDBFile) then
      ShowMessage('���� ���� ������ passportoio.mdb ��� ������� ����.');;
    end
    else
    ShowMessage('�� ������� ����� ��. ������� �� ��������� � ���������� ��� ���.');
  except
  end;
  end;
  DataMdl.ConnectToDB();
  ShowDBGrid();
end;

//�������������
procedure TFormMain.btnEditClick(Sender: TObject);
begin
  //������ idAnketa � ���
  id := dbGridAnketa.Fields[0].AsString;
  year :=  dbGridAnketa.Fields[4].AsString;
  //������ ������,�����,���������
  with DataMdl do
    begin
      SelectFromTable(ADOQuerySprav,'kodr,kodrn,kodh','anketa WHERE id=' + id,'','');
      kodregion := ADOQuerySprav.FieldByName('kodr').AsString;//������
      kodrajon := ADOQuerySprav.FieldByName('kodrn').AsString;//�����
      kodhoz := ADOQuerySprav.FieldByName('kodh').AsString;//���������
      region := dbGridAnketa.Fields[1].AsString;
      rajon := dbGridAnketa.Fields[2].AsString;
      hoz := dbGridAnketa.Fields[3].AsString;
    end;
  if not Assigned(FormAnketaTables) then
    FormAnketaTables := TFormAnketaTables.Create(Application);
  FormAnketaTables.ShowModal;
end;

//���� ������
procedure TFormMain.btnFilterOffClick(Sender: TObject);
begin
  ShowDBGrid();
  //������� ���� �������
  cbRegion.ItemIndex := -1;
  cbRajon.ItemIndex := -1;
  cbHoz.ItemIndex := -1;
  cbYear.ItemIndex := -1;
end;

procedure TFormMain.btnFilterOnClick(Sender: TObject);
var
  cnt: Integer;
  separator,sWhere: String;
begin
  cnt := 0;
  if Trim(cbRegion.Text) <> '' then inc(cnt);
  if Trim(cbRajon.Text) <> '' then inc(cnt);
  if Trim(cbHoz.Text) <> '' then inc(cnt);
  if Trim(cbYear.Text) <> '' then inc(cnt);

  if cnt = 0 then
    begin
      ShowMessage('�� ������ ������');
      exit;
    end;
    //SelectAnketa(ADOQueryCategory,' ORDER BY spobl.im,kodra.im,kodxoz.im,anketa.god');
      if Trim(cbYear.Text) <> '' then
      begin
        dec(cnt);
        if cnt > 0 then
          separator := ' AND '
        else
          separator := ' ';
        sWhere := (' god="' + Trim(cbYear.Text) + '"' + separator);
      end;
      if Trim(cbRegion.Text) <> '' then
      begin
        dec(cnt);
        if cnt > 0 then
          separator := ' AND '
        else
          separator := ' ';
        sWhere := sWhere + (' spobl.im='  + chr(39) + Trim(cbRegion.Text)  + chr(39) + separator);
      end;
      if Trim(cbRajon.Text) <> '' then
      begin
        dec(cnt);
        if cnt > 0 then
          separator := ' AND '
        else
          separator := ' ';
        sWhere := sWhere + (' kodra.im='  + chr(39) + Trim(cbRajon.Text)  + chr(39) + separator);
      end;
      if Trim(cbHoz.Text) <> '' then
      begin
        dec(cnt);
        if cnt > 0 then
          separator := ' AND '
        else
          separator := ' ';
          sWhere := sWhere + (' kodxoz.im=' + chr(39) + Trim(cbHoz.Text) + chr(39) + separator);
      end;
      with DataMdl do
      begin
        SelectAnketa(ADOQueryCategory,' WHERE ' + sWhere + ' ORDER BY spobl.im,kodra.im,kodxoz.im,anketa.god');
        StatusBar1.Panels[1].Text := ' ����� ������� ' + IntToStr(ADOQueryCategory.RecordCount) + ' �������';
        DataSourceCategory.DataSet := ADOQueryCategory;
        DBGridAnketa.DataSource := DataSourceCategory;
        DBGridAnketa.Columns[0].Visible := False;
        DBGridAnketa.Columns[1].Width := 120;
        DBGridAnketa.Columns[2].Width := 120;
        DBGridAnketa.Columns[3].Width := 120;
        DBGridAnketa.Columns[4].Width := 40;//���
        DBGridAnketa.Columns[5].Width := 110;
        DBGridAnketa.Columns[6].Width := 120;
        DBGridAnketa.Columns[7].Width := 100;
        DBGridAnketa.Columns[8].Width := 40;//%
        DBGridAnketa.Columns[9].Width := 130;
        DBGridAnketa.Columns[10].Width := 40;//%
      end;
end;

procedure TFormMain.cbHozChange(Sender: TObject);
begin
  hoz := cbHoz.Text;
end;

procedure TFormMain.cbRajonChange(Sender: TObject);
begin
  region := cbRegion.Text;;
  rajon := cbRajon.Text;
  if (region <> '') and (rajon <> '') then
  begin
      DataMdl.SelectFromTable(DataMdl.ADOQueryEdit,'kodxoz.im as kodxozim',
        '(spobl INNER JOIN kodra ON spobl.kod = kodra.kodr) '+
        'INNER JOIN kodxoz ON (kodra.kodr = kodxoz.kodr) AND (kodra.kodraj = kodxoz.kodraj)',
        ' WHERE spobl.im='+''''+region+''''+' AND kodra.im='+''''+rajon+'''',' ORDER BY kodxoz.im');
    cbHoz.Clear;
    while not DataMdl.ADOQueryEdit.Eof do
      begin
      cbHoz.Items.Add(DataMdl.ADOQueryEdit.FieldByName('kodxozim').AsString);
      DataMdl.ADOQueryEdit.Next;
      end;
  end;
end;

procedure TFormMain.cbRegionChange(Sender: TObject);
begin
  region := cbRegion.Text;
  DataMdl.SelectFromTable(DataMdl.ADOQueryEdit,'im,kodr','kodra',
    ' WHERE kodr=(SELECT kod FROM spobl WHERE im='+''''+region+''')',' ORDER BY im');
  cbRajon.Clear;
  while not DataMdl.ADOQueryEdit.Eof  do
    begin
      cbRajon.Items.Add(DataMdl.ADOQueryEdit.FieldByName('im').AsString);
      DataMdl.ADOQueryEdit.Next;
    end;
  kodregion := DataMdl.ADOQueryEdit.FieldByName('kodr').AsString;//��� ������� S
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  dbGridAnketa.Width := FormMain.Width - 20;
  btnEdit.Top := FormMain.Height - 180;
  GroupBox1.Top := FormMain.Height - 200;
  DBGridAnketa.Height := FormMain.Height - 250;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  FullPathToProg := ExtractFilePath(GetModName());
  InFolder := FullPathToProg+'\in';
  CreateFolder(InFolder);
  CreateFolder(InFolder + '\arch');
  OutFolder := FullPathToProg+'\out';
  CreateFolder(OutFolder);
  CreateFolder(OutFolder + '\arch');
  ArchFolder := FullPathToProg+'\arch';
  CreateFolder(ArchFolder);
  CreateFolder(FullPathToProg+'\doc');
//���������� dbGridAnketa
  DBGridAnketa.Options := DBGridAnketa.Options - [dgEditing];//������ ������ ����
  DBGridAnketa.Options := DBGridAnketa.Options + [dgRowSelect];//� ����� �������. ��� ������
  ShowDBGrid();
  //��������� �������
  DataMdl.SelectFromTable(DataMdl.ADOQueryEdit,'im','spobl','',' ORDER BY im');
  cbRegion.Clear;
  while not DataMdl.ADOQueryEdit.Eof  do
    begin
      cbRegion.Items.Add(DataMdl.ADOQueryEdit.FieldByName('im').AsString);
      DataMdl.ADOQueryEdit.Next;
    end;
end;


procedure TFormMain.N3Click(Sender: TObject);
begin
  if not Assigned(AboutBox) then
    AboutBox := TAboutBox.Create(Application);
  AboutBox.ShowModal;

end;

procedure TFormMain.ShowDBGrid();
begin
with DataMdl do
  begin
  SelectAnketa(ADOQueryCategory,' ORDER BY spobl.im,kodra.im,kodxoz.im,anketa.god');
  DataSourceCategory.DataSet := ADOQueryCategory;
  DBGridAnketa.DataSource := DataSourceCategory;
  DBGridAnketa.Columns[0].Visible := False;
  DBGridAnketa.Columns[1].Width := 120;
  DBGridAnketa.Columns[2].Width := 120;
  DBGridAnketa.Columns[3].Width := 120;
  DBGridAnketa.Columns[4].Width := 40;//���
  DBGridAnketa.Columns[5].Width := 110;
  DBGridAnketa.Columns[6].Width := 120;
  DBGridAnketa.Columns[7].Width := 100;
  DBGridAnketa.Columns[8].Width := 40;//%
  DBGridAnketa.Columns[9].Width := 130;
  DBGridAnketa.Columns[10].Width := 40;//%
  end;
end;

procedure TFormMain.OpenMenuSprav(SQL: String);
begin
if not Assigned(FormSprav) then begin
    FormSprav := TFormSprav.Create(Application);
    FormSprav.Show;
  end;
with FormSprav do
  begin;
  Show;
  //SpdBtnSave.Visible:=False;
  //SpdBtnCancel.Visible:=False;
  DBGridSprav.ReadOnly:=True;
  end;
with DataMdl do
  begin
  //ADOQuerySprav.ConnectionString:=ConnectionStr;
  ADOQuerySprav.Close;
  ADOQuerySprav.SQL.Clear;
  ADOQuerySprav.SQL.Add(SQL);
  ADOQuerySprav.Open;
  DataSourceSprav.DataSet:=AdoQuerySprav;
  FormSprav.DbGridSprav.DataSource:=DataSourceSprav;
  FormSprav.DBNavigatorSprav.DataSource:=DataSourceSprav;
  end;
end;


end.
