unit UnitChoose;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormChoose = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbRajon: TComboBox;
    cbHoz: TComboBox;
    cbRegion: TComboBox;
    cbYear: TComboBox;
    btnChoose: TButton;
    lblRegion: TLabel;
    lblYear: TLabel;
    procedure cbRajonChange(Sender: TObject);
    procedure btnChooseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbRegionChange(Sender: TObject);
    procedure cbHozChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CleanControls();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChoose: TFormChoose;

implementation

uses UnitDB, UnitVariables, UnitMain, UnitAnketaTables;

{$R *.dfm}

procedure TFormChoose.CleanControls();
var
  i: Integer;
begin
    for i := 0 to FormChoose.ComponentCount - 1 do
    begin
      if (FormChoose.Components[i] is TComboBox) then
        (FormChoose.Components[i] as TComboBox).ItemIndex := -1;
    end;
end;


procedure TFormChoose.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CleanControls();
end;

procedure TFormChoose.FormShow(Sender: TObject);
begin
  DataMdl.SelectFromTable(DataMdl.ADOQueryEdit,'im','spobl','',' ORDER BY im');
  cbRegion.Clear;
  while not DataMdl.ADOQueryEdit.Eof  do
    begin
      cbRegion.Items.Add(DataMdl.ADOQueryEdit.FieldByName('im').AsString);
      DataMdl.ADOQueryEdit.Next;
    end;
end;


procedure TFormChoose.cbRegionChange(Sender: TObject);
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

procedure TFormChoose.cbHozChange(Sender: TObject);
begin
  hoz := cbHoz.Text;
end;

procedure TFormChoose.cbRajonChange(Sender: TObject);
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

procedure TFormChoose.btnChooseClick(Sender: TObject);
begin
with FormChoose do
begin
if ((cbRegion.Text<>'') and (cbRajon.Text<>'') and (cbHoz.Text<>'') and  (cbYear.Text<>'')) then
  begin
  //FormMain.StatusBar1.Panels[0].Text:='������ � ���������.';
  if not Assigned(FormAnketaTables) then
    FormAnketaTables := TFormAnketaTables.Create(Application);
with DataMdl do
  begin
  DataMdl.SelectFromTable(DataMdl.ADOQueryEdit,'kodraj','kodra',' WHERE kodr='+Trim(kodregion)
  + ' and im LIKE' + '''' + rajon + '''','');
  kodrajon := ADOQueryEdit.FieldByName('kodraj').AsString;//�����

  DataMdl.SelectFromTable(DataMdl.ADOQueryEdit,'kodx','kodxoz',' WHERE kodr='+Trim(kodregion)
  + ' AND kodraj=' + kodrajon + ' AND im LIKE '+'''' + hoz + '''','');
  kodhoz := DataMdl.ADOQueryEdit.FieldByName('kodx').AsString;//���������
end;
  year := cbYear.Text;

  //FormAnketaTables.PageControl1.ActivePageIndex := 0;//��������� ������
  FormAnketaTables.ShowModal;
  end
  else
  Application.MessageBox('����� ������� ��� ���������!', '����������', MB_OK);
end;
end;

end.
