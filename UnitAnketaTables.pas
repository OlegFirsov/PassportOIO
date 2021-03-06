unit UnitAnketaTables;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, System.Win.ComObj,
  Winapi.ActiveX, System.UITypes;

type
  TTabsheet = class( Vcl.ComCtrls.TTabSheet )
  private
  FColor: TColor;
  procedure SetColor( value: TColor );
  procedure WMEraseBkGnd( var msg: TWMEraseBkGnd );
  message WM_ERASEBKGND;
  public
  constructor Create( aOwner: TComponent ); override;
  property Color: TColor read FColor write SetColor;
end;

  TFormAnketaTables = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    lblRegionA: TLabel;
    Label2: TLabel;
    lblRajonA: TLabel;
    Label4: TLabel;
    lblHozA: TLabel;
    lblYearA: TLabel;
    Label5: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label83: TLabel;
    Label94: TLabel;
    sgAnketa: TStringGrid;
    btnsave: TButton;
    btnExcelAnketa: TButton;
    TabSheet2: TTabSheet;
    lblHoz1: TLabel;
    Label7: TLabel;
    lblRajon1: TLabel;
    Label9: TLabel;
    lblRegion1: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    lblYear1: TLabel;
    lblKodregion1: TLabel;
    lblKodrajon1: TLabel;
    lblKodhoz1: TLabel;
    sgTabl1: TStringGrid;
    btnSaveTabl1: TButton;
    btnExcelTabl1: TButton;
    TabSheet3: TTabSheet;
    lblHoz2: TLabel;
    Label13: TLabel;
    lblRajon2: TLabel;
    Label15: TLabel;
    lblRegion2: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    lblYear2: TLabel;
    Label16: TLabel;
    lblKodhoz2: TLabel;
    Label82: TLabel;
    lblKodrajon2: TLabel;
    Label84: TLabel;
    lblKodregion2: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    sgTabl2: TStringGrid;
    btnExcelTabl2: TButton;
    btnSaveTabl2: TButton;
    TabSheet4: TTabSheet;
    lblHoz3: TLabel;
    Label19: TLabel;
    lblRajon3: TLabel;
    Label21: TLabel;
    lblRegion3: TLabel;
    Label23: TLabel;
    Label14: TLabel;
    Label81: TLabel;
    lblKodregion3: TLabel;
    Label85: TLabel;
    lblKodrajon3: TLabel;
    Label89: TLabel;
    lblKodhoz3: TLabel;
    Label91: TLabel;
    lblYear3: TLabel;
    Label93: TLabel;
    sgTabl3: TStringGrid;
    btnSaveTabl3: TButton;
    btnExceTabll3: TButton;
    TabSheet5: TTabSheet;
    lblHoz4: TLabel;
    Label25: TLabel;
    lblRajon4: TLabel;
    Label27: TLabel;
    lblRegion4: TLabel;
    Label29: TLabel;
    Label18: TLabel;
    lblYear4: TLabel;
    Label22: TLabel;
    lblKodhoz4: TLabel;
    Label88: TLabel;
    lblKodrajon4: TLabel;
    Label92: TLabel;
    lblKodregion4: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    sgTabl4: TStringGrid;
    btnSaveTabl4: TButton;
    btnExceTabll4: TButton;
    TabSheet6: TTabSheet;
    lblHoz5: TLabel;
    Label31: TLabel;
    lblRajon5: TLabel;
    Label33: TLabel;
    lblRegion5: TLabel;
    Label35: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    lblKodregion5: TLabel;
    Label28: TLabel;
    lblKodrajon5: TLabel;
    Label90: TLabel;
    lblKodhoz5: TLabel;
    Label97: TLabel;
    lblYear5: TLabel;
    Label99: TLabel;
    sgTabl5: TStringGrid;
    btnSaveTabl5: TButton;
    btnExceTabll5: TButton;
    TabSheet7: TTabSheet;
    lblHoz6: TLabel;
    Label37: TLabel;
    lblRajon6: TLabel;
    Label39: TLabel;
    lblRegion6: TLabel;
    Label41: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    lblKodregion6: TLabel;
    Label103: TLabel;
    lblKodrajon6: TLabel;
    Label105: TLabel;
    lblKodhoz6: TLabel;
    Label107: TLabel;
    lblYear6: TLabel;
    Label109: TLabel;
    sgTabl6: TStringGrid;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    btnSaveTabl6: TButton;
    btnExcelTabll6: TButton;
    TabSheet8: TTabSheet;
    lblHoz7: TLabel;
    Label49: TLabel;
    lblRajon7: TLabel;
    Label51: TLabel;
    lblRegion7: TLabel;
    Label53: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    lblKodregion7: TLabel;
    Label102: TLabel;
    lblKodrajon7: TLabel;
    Label106: TLabel;
    lblKodhoz7: TLabel;
    Label110: TLabel;
    lblYear7: TLabel;
    Label112: TLabel;
    sgTabl7: TStringGrid;
    btnSaveTabl7: TButton;
    btnExceTabll7: TButton;
    TabSheet9: TTabSheet;
    lblHoz8: TLabel;
    Label55: TLabel;
    lblRajon8: TLabel;
    Label57: TLabel;
    lblRegion8: TLabel;
    Label59: TLabel;
    Label52: TLabel;
    Label104: TLabel;
    lblKodregion8: TLabel;
    Label111: TLabel;
    lblKodrajon8: TLabel;
    Label114: TLabel;
    lblKodhoz8: TLabel;
    Label116: TLabel;
    lblYear8: TLabel;
    Label118: TLabel;
    sgTabl8: TStringGrid;
    btnSaveTabl8: TButton;
    btnExceTabll8: TButton;
    TabSheet10: TTabSheet;
    lblHoz9: TLabel;
    Label61: TLabel;
    lblRajon9: TLabel;
    Label63: TLabel;
    lblRegion9: TLabel;
    Label65: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    lblYear9: TLabel;
    Label108: TLabel;
    lblKodhoz9: TLabel;
    lblKodrajon9: TLabel;
    Label117: TLabel;
    lblKodregion9: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    sgTabl9: TStringGrid;
    btnSaveTabl9: TButton;
    btnExceTabll9: TButton;
    TabSheet11: TTabSheet;
    lblHoz10: TLabel;
    Label67: TLabel;
    lblRajon10: TLabel;
    Label69: TLabel;
    lblRegion10: TLabel;
    Label71: TLabel;
    Label58: TLabel;
    lblYear10: TLabel;
    Label62: TLabel;
    lblKodhoz10: TLabel;
    Label113: TLabel;
    lblKodrajon10: TLabel;
    Label119: TLabel;
    lblKodregion10: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    sgTabl10: TStringGrid;
    btnSaveTabl10: TButton;
    btnExceTabll10: TButton;
    TabSheet12: TTabSheet;
    lblHoz11: TLabel;
    Label73: TLabel;
    lblRajon11: TLabel;
    Label75: TLabel;
    lblRegion11: TLabel;
    Label77: TLabel;
    Label60: TLabel;
    lblYear11: TLabel;
    lblKodhoz11: TLabel;
    Label68: TLabel;
    lblKodrajon11: TLabel;
    Label115: TLabel;
    lblKodregion11: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    sgTabl11: TStringGrid;
    btnSaveTabl11: TButton;
    btnExcelTabl11: TButton;
    TabSheet13: TTabSheet;
    Label320: TLabel;
    lblYear9a: TLabel;
    Label322: TLabel;
    lblKodhoz9a: TLabel;
    Label324: TLabel;
    lblKodrajon9a: TLabel;
    Label326: TLabel;
    lblKodregion9a: TLabel;
    Label328: TLabel;
    Label329: TLabel;
    lblHoz9a: TLabel;
    Label331: TLabel;
    lblRajon9a: TLabel;
    Label333: TLabel;
    lblRegion9a: TLabel;
    Label335: TLabel;
    sgTabl9a: TStringGrid;
    Memo9: TMemo;
    Edit13: TEdit;
    Memo10: TMemo;
    Edit14: TEdit;
    Edit15: TEdit;
    Memo11: TMemo;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Memo12: TMemo;
    btnSaveTabl9a: TButton;
    btnExcelTabl9a: TButton;
    btnDeleteTabl1: TButton;
    btnDeleteTabl2: TButton;
    btnDeleteTabl3: TButton;
    btnDeleteTabl4: TButton;
    btnDeleteTabl5: TButton;
    btnDeleteTabl6: TButton;
    btnDeleteTabl7: TButton;
    btnDeleteTabl8: TButton;
    btnDeleteTabl9: TButton;
    btnDeleteTabl9a: TButton;
    btnDeleteTabl10: TButton;
    btnDeleteTabl11: TButton;
    procedure FormCreate(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure sgAnketaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgAnketaSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure sgAnketaKeyPress(Sender: TObject; var Key: Char);
    procedure btnsaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet2Show(Sender: TObject);
    procedure sgTabl1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgTabl1SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure sgTabl1KeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveTabl1Click(Sender: TObject);
    procedure btnExcelAnketaClick(Sender: TObject);
    procedure btnExcelTabl1Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure sgTabl2KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl2SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl2Click(Sender: TObject);
    procedure btnExcelTabl2Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure sgTabl3KeyPress(Sender: TObject; var Key: Char);
    procedure btnSaveTabl3Click(Sender: TObject);
    procedure sgTabl3SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnExceTabll3Click(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure sgTabl4KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl4DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgTabl4SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl4Click(Sender: TObject);
    procedure btnExceTabll4Click(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure sgTabl5DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgTabl5KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl5SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl5Click(Sender: TObject);
    procedure btnExceTabll5Click(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure sgTabl6DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure TabSheet8Show(Sender: TObject);
    procedure sgTabl7DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgTabl7KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl7SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl7Click(Sender: TObject);
    procedure btnExceTabll7Click(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure sgTabl8DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgTabl8KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl8SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl8Click(Sender: TObject);
    procedure btnExceTabll8Click(Sender: TObject);
    procedure TabSheet10Show(Sender: TObject);
    procedure sgTabl9DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sgTabl9KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl9SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl9Click(Sender: TObject);
    procedure btnExceTabll9Click(Sender: TObject);
    procedure TabSheet11Show(Sender: TObject);
    procedure sgTabl10KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl10SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl10Click(Sender: TObject);
    procedure btnExceTabll10Click(Sender: TObject);
    procedure TabSheet12Show(Sender: TObject);
    procedure sgTabl11DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgTabl11KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl11SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl11Click(Sender: TObject);
    procedure btnExcelTabl11Click(Sender: TObject);
    procedure sgTabl6KeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl6SetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl6Click(Sender: TObject);
    procedure btnExcelTabll6Click(Sender: TObject);
    procedure TabSheet13Show(Sender: TObject);
    procedure sgTabl9aKeyPress(Sender: TObject; var Key: Char);
    procedure sgTabl9aSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure btnSaveTabl9aClick(Sender: TObject);
    procedure btnExcelTabl9aClick(Sender: TObject);
    procedure btnDeleteTabl1Click(Sender: TObject);
    procedure btnDeleteTabl2Click(Sender: TObject);
    procedure btnDeleteTabl3Click(Sender: TObject);
    procedure btnDeleteTabl4Click(Sender: TObject);
    procedure btnDeleteTabl5Click(Sender: TObject);
    procedure btnDeleteTabl6Click(Sender: TObject);
    procedure btnDeleteTabl7Click(Sender: TObject);
    procedure btnDeleteTabl8Click(Sender: TObject);
    procedure btnDeleteTabl9Click(Sender: TObject);
    procedure btnDeleteTabl9aClick(Sender: TObject);
    procedure btnDeleteTabl10Click(Sender: TObject);
    procedure btnDeleteTabl11Click(Sender: TObject);
  private
    { Private declarations }
    procedure CMDialogKey(var Msg:TWMKey);message CM_DIALOGKEY;
    function isNotEmptyCellsAnketa():boolean;
    procedure fillCellZeroTabl(sg: TStringGrid);
    procedure ExportToExcelAnketa(NameSheet: String);
    procedure ExportToExcelTabl1(NameSheet: String);
    procedure ExportToExcelTabl2(NameSheet: String);
    procedure ExportToExcelTabl3(NameSheet: String);
    procedure ExportToExcelTabl4(NameSheet: String);
    procedure ExportToExcelTabl5(NameSheet: String);
    procedure ExportToExcelTabl6(NameSheet: String);
    procedure ExportToExcelTabl7(NameSheet: String);
    procedure ExportToExcelTabl8(NameSheet: String);
    procedure ExportToExcelTabl9(NameSheet: String);
    procedure ExportToExcelTabl9a(NameSheet: String);
    procedure ExportToExcelTabl10(NameSheet: String);
    procedure ExportToExcelTabl11(NameSheet: String);
  public
    { Public declarations }
  end;

//  function TestOneNumberAfterComma(str: string):string;

var
  FormAnketaTables: TFormAnketaTables;

implementation

{$R *.dfm}

uses UnitVariables, UnitDB;

 {TTabsheet }

constructor TTabsheet.Create(aOwner: TComponent);
begin
  inherited;
  FColor := clBtnFace;
end;

procedure TTabsheet.SetColor(value: TColor);
begin
  if FColor <> value then
  begin
    FColor := value;
    Invalidate;
  end;
end;

procedure TTabsheet.WMEraseBkGnd(var msg: TWMEraseBkGnd);
begin
  if FColor = clBtnFace Then
  inherited
  else
  begin
  Brush.Color := FColor;
  Winapi.Windows.FillRect( msg.dc, Clientrect, Brush.handle );
  msg.result := 1;
  end;
end;


procedure TFormAnketaTables.CMDialogKey(var Msg:TWMKey);//������� ����� �������� �� Enter ��� Tab
begin
  if not (ActiveControl is TButton) then
    if (Msg.Charcode = 13)  then
    Msg.Charcode := 9;
  inherited;
end;

procedure TFormAnketaTables.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PageControl1.ActivePageIndex := -1;
end;

procedure TFormAnketaTables.FormCreate(Sender: TObject);
begin
  TabSheet1.Color := clBtnFace;
  TabSheet2.Color := clBtnFace;
  TabSheet3.Color := clBtnFace;
  TabSheet4.Color := clBtnFace;
  TabSheet5.Color := clBtnFace;
  TabSheet6.Color := clBtnFace;
  TabSheet7.Color := clBtnFace;
  TabSheet8.Color := clBtnFace;
  TabSheet9.Color := clBtnFace;
  TabSheet10.Color := clBtnFace;
  TabSheet11.Color := clBtnFace;
  TabSheet12.Color := clBtnFace;
  PageControl1.ActivePageIndex := 0;//��������� ������
end;


procedure TFormAnketaTables.sgAnketaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ((ACol = 1) and (ARow = 0)) or ((ACol = 1) and (ARow = 1)) or ((ACol = 1) and (ARow = 3))
    or ((ACol = 1) and (ARow = 4)) then
    begin
      sgAnketa.Canvas.Brush.Color := clBtnFace;
      sgAnketa.Canvas.TextRect(Rect, Rect.Left, Rect.Top,sgAnketa.Cells[ACol, ARow]);
    end;
end;

//anketa
procedure TFormAnketaTables.sgAnketaKeyPress(Sender: TObject; var Key: Char);
begin
  //������������ �� enter
  if (ord(Key) = VK_RETURN) then
    if sgAnketa.Row < sgAnketa.RowCount -1  then
      begin
        if (sgAnketa.Row = 2) then
          sgAnketa.Row := 5
        else
          sgAnketa.Row := sgAnketa.Row + 1;
      end
    else
      btnSave.SetFocus;
   //������ ����� �����
   if ((sgAnketa.Row = 9) or (sgAnketa.Row = 10) or (sgAnketa.Row = 11) or (sgAnketa.Row = 12)
      or (sgAnketa.Row = 15) or (sgAnketa.Row = 16) or (sgAnketa.Row = 18) or (sgAnketa.Row = 19)
      or (sgAnketa.Row = 21) or (sgAnketa.Row = 23))
     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
   //���������� �����
   if  ((sgAnketa.Row = 20) or (sgAnketa.Row = 22) or (sgAnketa.Row = 24) or (sgAnketa.Row = 25)
      or (sgAnketa.Row = 26) or (sgAnketa.Row = 27)) and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;


//anketa �������� �����
procedure TFormAnketaTables.sgAnketaSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma: integer;
begin
//������������� ������ ��� ������
  if ((ACol = 1) and (ARow = 0)) then
    sgAnketa.Cells[1,0] := hoz;
  if ((ACol = 1) and (ARow = 1)) then
    sgAnketa.Cells[1,1] := '******************';
  if ((ACol = 1) and (ARow = 3)) then
    sgAnketa.Cells[1,3] := region;
  if ((ACol = 1) and (ARow = 4)) then
    sgAnketa.Cells[1,4] := rajon;
//������, ��� ���� ���� ����� ���. �������
  if ((ACol = 1) and ((ARow = 20) or (ARow = 22) or (ARow > 23))) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgAnketa.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgAnketa.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
            //�� ������������� �������������
            // ARow < sgAnketa.RowCount -1  then
            //  sgAnketa.Row := ARow + 1;
          end
          else
            sgAnketa.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
end;


procedure TFormAnketaTables.TabSheet1Show(Sender: TObject);
var
  ank: TAnketa;
begin
 lblRegionA.Caption := region;
 lblrajonA.Caption := rajon;
 lblHozA.Caption := hoz;
 lblYearA.Caption := year;
 sgAnketa.RowCount := 28;
 sgAnketa.ColCount := 2;
 sgAnketa.ColWidths[0] := 400;
 sgAnketa.ColWidths[1] := 200;
 sgAnketa.DefaultRowHeight := 18;
 sgAnketa.Options := sgAnketa.Options + [goEditing] + [goTabs];// + [goAlwaysShowEditor];
 //[col,row]
 sgAnketa.Cells[0,0] := '������������ ����������� �� ����������� (��� ��� ����������� ����)';
 sgAnketa.Cells[1,0] := hoz;
 sgAnketa.Cells[0,1] := '����������� �����:';
 sgAnketa.Cells[1,1] := '******************';
 sgAnketa.Rows[2].Text := '�������� ������:';
 sgAnketa.Rows[3].Text := '���������� (����, �������)';
 sgAnketa.Cells[1,3] := region;
 sgAnketa.Rows[4].Text := '�����';
 sgAnketa.Cells[1,4] := rajon;
 sgAnketa.Rows[5].Text := '�������, �/�';
 sgAnketa.Rows[6].Text := '�������:';
 sgAnketa.Rows[7].Text := '����:';
 sgAnketa.Rows[8].Text := '����� ����������� �����';
 sgAnketa.Rows[9].Text := '��������� ����, �����';
 sgAnketa.Rows[10].Text := '���. ����';
 sgAnketa.Rows[11].Text := '���';
 sgAnketa.Rows[12].Text := '���';
 sgAnketa.Rows[13].Text := '����, ������������';
 sgAnketa.Rows[14].Text := '�����';
 sgAnketa.Rows[15].Text := '����� ����������� ����������:';
 sgAnketa.Rows[16].Text := '� ��� ����� ������������';
 sgAnketa.Rows[17].Text := '��� ������������';
 sgAnketa.Rows[18].Text := '������� ����� �������������������� �����������';
 sgAnketa.Rows[19].Text := '������� �����������, ����� ���.:';
 sgAnketa.Rows[20].Text := '% ��������������';
 sgAnketa.Rows[21].Text := '� �.�. �����������-�������������, ���.:';
 sgAnketa.Rows[22].Text := '% ��������������';
 sgAnketa.Rows[23].Text := '�������� �� ���������� �����, ���.:';
 sgAnketa.Rows[24].Text := '% ��������������';
 sgAnketa.Rows[25].Text := '����� ��������� �������, ��';
 sgAnketa.Rows[26].Text := '� �.�. �����, ��';
 sgAnketa.Rows[27].Text := '��������, ��.';
 sgAnketa.Row := 2;
 //��������� ��� ���������� ������ ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'anketa',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      ank := TAnketa.Create(StrToInt(kodregion),StrToInt(kodrajon),StrToInt(kodhoz),
        FieldByName('p_ind').AsString,FieldByName('posel').AsString,FieldByName('tel').AsString,
        FieldByName('fax').AsString,FieldByName('email').AsString,FieldByName('rs').AsString,
        FieldByName('ks').AsString,FieldByName('nalog').AsString,FieldByName('bik_rs').AsString,
        FieldByName('bank').AsString,FieldByName('town').AsString,FieldByName('strength').AsString,
        FieldByName('spec').AsString,FieldByName('fam').AsString,FieldByName('colpred').AsString,
        FieldByName('colzootech').AsString,FieldByName('proczootech').AsString,
        FieldByName('colzoosel').AsString,FieldByName('proczoosel').AsString,
        FieldByName('coltechplem').AsString,FieldByName('proctechplem').AsString,
        FieldByName('pl').AsString,FieldByName('pash').AsString,FieldByName('seno').AsString,year);
      sgAnketa.Cells[1,2] := ank.P_ind;
      sgAnketa.Cells[1,5] := ank.Posel;
      sgAnketa.Cells[1,6] := ank.Tel;
      sgAnketa.Cells[1,7] := ank.Fax;
      sgAnketa.Cells[1,8] := ank.Email;
      sgAnketa.Cells[1,9] := ank.Rs;
      sgAnketa.Cells[1,10] := ank.Ks;
      sgAnketa.Cells[1,11] := ank.Nalog;
      sgAnketa.Cells[1,12] := ank.Bik_rs;
      sgAnketa.Cells[1,13] := ank.Bank;
      sgAnketa.Cells[1,14] := ank.Town;
      sgAnketa.Cells[1,15] := ank.Strength;
      sgAnketa.Cells[1,16] := ank.Spec;
      sgAnketa.Cells[1,17] := ank.Fam;
      sgAnketa.Cells[1,18] := ank.Colpred;
      sgAnketa.Cells[1,19] := ank.Colzootech;
      sgAnketa.Cells[1,20] := ank.Proczootech;
      sgAnketa.Cells[1,21] := ank.Colzoosel;
      sgAnketa.Cells[1,22] := ank.Proczoosel;
      sgAnketa.Cells[1,23] := ank.Coltechplem;
      sgAnketa.Cells[1,24] := ank.Proctechplem;
      sgAnketa.Cells[1,25] := ank.Pl;
      sgAnketa.Cells[1,26] := ank.Pash;
      sgAnketa.Cells[1,27] := ank.Seno;
    end;
 end;
end;


//����������� � excel ������
procedure TFormAnketaTables.btnExcelAnketaClick(Sender: TObject);
begin
  ExportToExcelAnketa('������');
end;

procedure TFormAnketaTables.ExportToExcelAnketa(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;

  //[row,col]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '���������� �/� �������� �� ' + year + ' ���';
  MsExcel.WorkSheets[NameSheet].Cells[7,2].Value := hoz;
  MsExcel.WorkSheets[NameSheet].Cells[9,2].Value := sgAnketa.Cells[1,2];
  MsExcel.WorkSheets[NameSheet].Cells[10,2].Value := region;
  MsExcel.WorkSheets[NameSheet].Cells[11,2].Value := rajon;
  j := 12;
  for i := 5 to sgAnketa.RowCount -1 do
    begin
      MsExcel.WorkSheets[NameSheet].Cells[j,2].Value := sgAnketa.Cells[1,i];
      inc(j);
    end;
MsExcel.Visible:=True;
end;



//��������� ������
procedure TFormAnketaTables.btnsaveClick(Sender: TObject);
begin
  //�������� ��������� �� ��� ����
  if isNotEmptyCellsAnketa() then
  begin
  if isUnique then
  //���������� �����
  begin
  if DataMdl.InsertIntoAnketa(DataMdl.ADOQueryAnketa,kodregion,kodrajon,kodhoz,
    sgAnketa.Cells[1,2],sgAnketa.Cells[1,5],sgAnketa.Cells[1,6],sgAnketa.Cells[1,7],sgAnketa.Cells[1,8],
    sgAnketa.Cells[1,9],sgAnketa.Cells[1,10],sgAnketa.Cells[1,11],sgAnketa.Cells[1,12],sgAnketa.Cells[1,13],
    sgAnketa.Cells[1,14],sgAnketa.Cells[1,15],sgAnketa.Cells[1,16],sgAnketa.Cells[1,17],sgAnketa.Cells[1,18],
    sgAnketa.Cells[1,19],sgAnketa.Cells[1,20],sgAnketa.Cells[1,21],sgAnketa.Cells[1,22],sgAnketa.Cells[1,23],
    sgAnketa.Cells[1,24],sgAnketa.Cells[1,25],sgAnketa.Cells[1,26],sgAnketa.Cells[1,27],year) > 0 then
      Application.MessageBox('������ ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! ������ �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateAnketa(DataMdl.ADOQueryAnketa,kodregion,kodrajon,kodhoz,
        sgAnketa.Cells[1,2],sgAnketa.Cells[1,5],sgAnketa.Cells[1,6],sgAnketa.Cells[1,7],sgAnketa.Cells[1,8],
        sgAnketa.Cells[1,9],sgAnketa.Cells[1,10],sgAnketa.Cells[1,11],sgAnketa.Cells[1,12],sgAnketa.Cells[1,13],
        sgAnketa.Cells[1,14],sgAnketa.Cells[1,15],sgAnketa.Cells[1,16],sgAnketa.Cells[1,17],sgAnketa.Cells[1,18],
        sgAnketa.Cells[1,19],sgAnketa.Cells[1,20],sgAnketa.Cells[1,21],sgAnketa.Cells[1,22],sgAnketa.Cells[1,23],
        sgAnketa.Cells[1,24],sgAnketa.Cells[1,25],sgAnketa.Cells[1,26],sgAnketa.Cells[1,27],year,id) > 0 then
          Application.MessageBox('������ ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! ������ �� ��������', '����������', MB_OK);
    end;
  end
  else
    Application.MessageBox('������ ���� ��������� ��� ����.', '����������', MB_OK);

end;

function TFormAnketaTables.isNotEmptyCellsAnketa():boolean;
var
  i: integer;
begin
  Result := true;
  for i := 1 to sgAnketa.RowCount -1 do
    begin
      if sgAnketa.Cells[1,i] = '' then
        begin
          //if i = 2 then
          //  continue;
          Result := false;
          sgAnketa.Row := i;
          break;
        end;
    end;
end;

//�������� tabl1
procedure TFormAnketaTables.TabSheet2Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion1.Caption := region;
 lblrajon1.Caption := rajon;
 lblHoz1.Caption := hoz;
 lblKodregion1.Caption := kodregion;
 lblKodrajon1.Caption := kodrajon;
 lblKodhoz1.Caption := kodhoz;
 lblYear1.Caption := year;
 sgTabl1.FixedCols := 1;
 sgTabl1.FixedRows := 1;
 sgTabl1.RowCount := 18;
 sgTabl1.ColCount := 5;
 sgTabl1.ColWidths[0] := 380;
 sgTabl1.ColWidths[1] := 100;
 sgTabl1.ColWidths[2] := 100;
 sgTabl1.ColWidths[3] := 100;
 sgTabl1.ColWidths[4] := 100;
 sgTabl1.Options := sgTabl1.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl1.Cells[0,0] := '                    ����������';
 sgTabl1.Cells[1,0] := '   ���';
 sgTabl1.Cells[2,0] := '   � �.�.�����';
 sgTabl1.Cells[3,0] := '   ������';
 sgTabl1.Cells[4,0] := '   ����';
 sgTabl1.Cells[0,1] := '������� ��������� � �/� ������������, ���.���.';
 sgTabl1.Cells[0,2] := '�� ���� ���������� ��������, ���.���.';
 sgTabl1.Cells[0,3] := '����� �������� �� 100 �����';
 sgTabl1.Cells[0,4] := '������� � ������������ ���������, ���.���.';
 sgTabl1.Cells[0,5] := '� �.�. ������������, ���.���.';
 sgTabl1.Cells[0,6] := '����� ������������� �����������, %';
 sgTabl1.Cells[0,7] := '�������� ��� �������������� ����������, %';
 sgTabl1.Cells[0,8] := '�������:';
 sgTabl1.Cells[0,9] := '�����������';
 sgTabl1.Cells[0,10] := '�����������������';
 sgTabl1.Cells[0,11] := '���� ����� �� ���� ���������� �������, �� ������ ��������������, ��';
 sgTabl1.Cells[0,12] := '���� ����� �� ������ �����������, ��� ��������� ��������, ��';
 sgTabl1.Cells[0,13] := '� �.�. ����������, ��';
 sgTabl1.Cells[0,14] := '����������������, ��';
 sgTabl1.Cells[0,15] := '������� ������� ����� ��� ������ ������, ���.';
 sgTabl1.Cells[0,16] := '���� ���������� � �������� �����, %';
 sgTabl1.Cells[0,17] := '���������� �����, %';
 sgTabl1.SetFocus;
//��������� ��� ���������� tabl1 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'tabl1',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to 7 do
        for i := 1 to 4 do
          begin
            sgTabl1.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
      for j := 9 to 10 do
        for i := 1 to 4 do
          begin
            sgTabl1.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
      for j := 11 to 17 do
        for i := 1 to 1 do
          begin
            sgTabl1.Cells[i,j] := Fields[k].AsString;
            inc(k);
            sgTabl1.OnSetEditText(sgTabl1, i,j,sgTabl1.Cells[i,j]);
          end;
    end;

 end
 //�������
 else
  begin
    for j := 1 to 7 do
      for i := 1 to 4 do
        sgTabl1.Cells[i,j] := '';
    for j := 9 to 10 do
      for i := 1 to 4 do
        sgTabl1.Cells[i,j] := '';
    for j := 11 to 17 do
      for i := 1 to 2 do
        sgTabl1.Cells[i,j] := '';
  end;
end;

procedure TFormAnketaTables.sgTabl1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    if (ARow = 8) or ((ARow > 10) and (ACol > 2)) then
    begin
      sgTabl1.Canvas.Brush.Color := clBtnFace;
      Rect.Left := Rect.Left - 2;
      sgTabl1.Canvas.TextRect(Rect, Rect.Left, Rect.Top,sgTabl1.Cells[ACol, ARow]);
    end;
end;

//tabl1
procedure TFormAnketaTables.sgTabl1KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
    if (sgTabl1.Row > 10) and (sgTabl1.Col = 2) then
     begin
       sgTabl1.Col := sgTabl1.FixedCols;//=1
       if (sgTabl1.Row < sgTabl1.RowCount -1) then
         sgTabl1.Row := sgTabl1.Row + 1
         else
          btnSaveTabl1.SetFocus;
      end
      else
      if (sgTabl1.Col < sgTabl1.ColCount - 1)  then
        begin
          sgTabl1.Col := sgTabl1.Col + 1;
        end
      else
        begin
          sgTabl1.Col := sgTabl1.FixedCols;//=1
          if (sgTabl1.Row < sgTabl1.RowCount -1) then
              if sgTabl1.Row = 7 then
                  sgTabl1.Row := sgTabl1.Row + 2
              else
                if (sgTabl1.Row < sgTabl1.RowCount -1) then
                  sgTabl1.Row := sgTabl1.Row + 1;
          end;
      //������ ����� �����
   if (((sgTabl1.Row > 8) and (sgTabl1.Row < 11)) or ((sgTabl1.Row > 11) and (sgTabl1.Row < 15)))
     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
   //���������� �����
   if  ((sgTabl1.Row < 8) or (sgTabl1.Row = 11) or (sgTabl1.Row > 14))
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl1
procedure TFormAnketaTables.sgTabl1SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma: integer;
begin
//��� ������ �� �������������
    if (ARow = 8) then
      sgTabl1.Cells[ACol,ARow] := '';
    if (ARow > 10) and (ACol > 2) then
      sgTabl1.Cells[ACol,ARow] := '';
//����� ��������� ������ ������?
if (not Value.IsEmpty) then
begin
    //%
    if ((ARow = 6) or (ARow = 7) or (ARow = 16) or (ARow = 17))
      and  (StrToFloat(sgTabl1.Cells[ACol,ARow]) > 100) then
      begin
        sgTabl1.Cells[ACol,ARow] := '0';
        Application.MessageBox('% �� ����� ���� ������ 100.', '����������', MB_OK);
        exit;
      end;
//�������� ����� 1 ���� ����� �������
if ((ARow < 8) or (ARow > 14)) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl1.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl1.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl1.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
//�������� ����� 2 ����� ����� �������
if (ARow = 11) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl1.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 3) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl1.Cells[ACol,ARow] := Value.Substring(0,posComma + 3);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl1.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
      end;
    end;
//� ���� ������� ���������� ��������, ��� ����� ������� ������
if ((ARow >= 11) and (ACol = 1)) and (sgTabl1.Cells[ACol,ARow].Trim <> '') then
  sgTabl1.Cells[ACol + 1,ARow] := sgTabl1.Cells[ACol,ARow];
if ((ARow >= 11) and (ACol = 2)) and (sgTabl1.Cells[ACol,ARow].Trim <> '') then
  sgTabl1.Cells[ACol - 1,ARow] := sgTabl1.Cells[ACol,ARow];

end;
end;


procedure TFormAnketaTables.btnSaveTabl1Click(Sender: TObject);
var
  i,j: integer;
begin
  //��������� 0 ������ ����
  //fillCellZeroTabl(sgTabl1);
  for j := 1 to 7 do
      for i := 1 to 4 do
        if sgTabl1.Cells[i,j].Trim() = '' then
          sgTabl1.Cells[i,j] := '0';
    for j := 9 to 10 do
      for i := 1 to 4 do
        if sgTabl1.Cells[i,j].Trim() = '' then
          sgTabl1.Cells[i,j] := '0';
    for j := 11 to 17 do
      for i := 1 to 2 do
        if sgTabl1.Cells[i,j].Trim() = '' then
          sgTabl1.Cells[i,j] := '0';

  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl1(DataMdl.ADOQueryAnketa,
    sgTabl1.Cells[1,1],sgTabl1.Cells[2,1],sgTabl1.Cells[3,1],sgTabl1.Cells[4,1],
    sgTabl1.Cells[1,2],sgTabl1.Cells[2,2],sgTabl1.Cells[3,2],sgTabl1.Cells[4,2],
    sgTabl1.Cells[1,3],sgTabl1.Cells[2,3],sgTabl1.Cells[3,3],sgTabl1.Cells[4,3],
    sgTabl1.Cells[1,4],sgTabl1.Cells[2,4],sgTabl1.Cells[3,4],sgTabl1.Cells[4,4],
    sgTabl1.Cells[1,5],sgTabl1.Cells[2,5],sgTabl1.Cells[3,5],sgTabl1.Cells[4,5],
    sgTabl1.Cells[1,6],sgTabl1.Cells[2,6],sgTabl1.Cells[3,6],sgTabl1.Cells[4,6],
    sgTabl1.Cells[1,7],sgTabl1.Cells[2,7],sgTabl1.Cells[3,7],sgTabl1.Cells[4,7],
    sgTabl1.Cells[1,9],sgTabl1.Cells[2,9],sgTabl1.Cells[3,9],sgTabl1.Cells[4,9],
    sgTabl1.Cells[1,10],sgTabl1.Cells[2,10],sgTabl1.Cells[3,10],sgTabl1.Cells[4,10],
    sgTabl1.Cells[1,11],sgTabl1.Cells[1,12],sgTabl1.Cells[1,13],sgTabl1.Cells[1,14],
    sgTabl1.Cells[1,15],sgTabl1.Cells[1,16],sgTabl1.Cells[1,17],kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl1 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl1 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl1(DataMdl.ADOQueryAnketa,
    sgTabl1.Cells[1,1],sgTabl1.Cells[2,1],sgTabl1.Cells[3,1],sgTabl1.Cells[4,1],
    sgTabl1.Cells[1,2],sgTabl1.Cells[2,2],sgTabl1.Cells[3,2],sgTabl1.Cells[4,2],
    sgTabl1.Cells[1,3],sgTabl1.Cells[2,3],sgTabl1.Cells[3,3],sgTabl1.Cells[4,3],
    sgTabl1.Cells[1,4],sgTabl1.Cells[2,4],sgTabl1.Cells[3,4],sgTabl1.Cells[4,4],
    sgTabl1.Cells[1,5],sgTabl1.Cells[2,5],sgTabl1.Cells[3,5],sgTabl1.Cells[4,5],
    sgTabl1.Cells[1,6],sgTabl1.Cells[2,6],sgTabl1.Cells[3,6],sgTabl1.Cells[4,6],
    sgTabl1.Cells[1,7],sgTabl1.Cells[2,7],sgTabl1.Cells[3,7],sgTabl1.Cells[4,7],
    sgTabl1.Cells[1,9],sgTabl1.Cells[2,9],sgTabl1.Cells[3,9],sgTabl1.Cells[4,9],
    sgTabl1.Cells[1,10],sgTabl1.Cells[2,10],sgTabl1.Cells[3,10],sgTabl1.Cells[4,10],
    sgTabl1.Cells[1,11],sgTabl1.Cells[1,12],sgTabl1.Cells[1,13],sgTabl1.Cells[1,14],
    sgTabl1.Cells[1,15],sgTabl1.Cells[1,16],sgTabl1.Cells[1,17],id) > 0 then
        Application.MessageBox('Tabl1 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl1 �� ��������', '����������', MB_OK);
    end;
end;


//������� ����1
procedure TFormAnketaTables.btnDeleteTabl1Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������1?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl1',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl1',id) > 0 then
              begin
                //�������
                for j := 1 to 7 do
                  for i := 1 to 4 do
                    sgTabl1.Cells[i,j] := '';
                for j := 9 to 10 do
                  for i := 1 to 4 do
                    sgTabl1.Cells[i,j] := '';
                for j := 11 to 17 do
                  for i := 1 to 2 do
                    sgTabl1.Cells[i,j] := '';
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//save tabl2
procedure TFormAnketaTables.btnSaveTabl2Click(Sender: TObject);
begin
  //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl2);
  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl2(DataMdl.ADOQueryAnketa,
    sgTabl2.Cells[1,1],sgTabl2.Cells[2,1],sgTabl2.Cells[3,1],
    sgTabl2.Cells[1,2],sgTabl2.Cells[2,2],sgTabl2.Cells[3,2],
    sgTabl2.Cells[1,3],sgTabl2.Cells[2,3],sgTabl2.Cells[3,3],
    sgTabl2.Cells[1,4],sgTabl2.Cells[2,4],sgTabl2.Cells[3,4],
    sgTabl2.Cells[1,5],sgTabl2.Cells[2,5],sgTabl2.Cells[3,5],
    sgTabl2.Cells[1,6],sgTabl2.Cells[2,6],sgTabl2.Cells[3,6],
    sgTabl2.Cells[1,7],sgTabl2.Cells[2,7],sgTabl2.Cells[3,7],
    sgTabl2.Cells[1,8],sgTabl2.Cells[2,8],sgTabl2.Cells[3,8],
    sgTabl2.Cells[1,9],sgTabl2.Cells[2,9],sgTabl2.Cells[3,9],
    sgTabl2.Cells[1,10],sgTabl2.Cells[2,10],sgTabl2.Cells[3,10],
    kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl2 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl2 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl2(DataMdl.ADOQueryAnketa,
    sgTabl2.Cells[1,1],sgTabl2.Cells[2,1],sgTabl2.Cells[3,1],
    sgTabl2.Cells[1,2],sgTabl2.Cells[2,2],sgTabl2.Cells[3,2],
    sgTabl2.Cells[1,3],sgTabl2.Cells[2,3],sgTabl2.Cells[3,3],
    sgTabl2.Cells[1,4],sgTabl2.Cells[2,4],sgTabl2.Cells[3,4],
    sgTabl2.Cells[1,5],sgTabl2.Cells[2,5],sgTabl2.Cells[3,5],
    sgTabl2.Cells[1,6],sgTabl2.Cells[2,6],sgTabl2.Cells[3,6],
    sgTabl2.Cells[1,7],sgTabl2.Cells[2,7],sgTabl2.Cells[3,7],
    sgTabl2.Cells[1,8],sgTabl2.Cells[2,8],sgTabl2.Cells[3,8],
    sgTabl2.Cells[1,9],sgTabl2.Cells[2,9],sgTabl2.Cells[3,9],
    sgTabl2.Cells[1,10],sgTabl2.Cells[2,10],sgTabl2.Cells[3,10],id) > 0 then
        Application.MessageBox('Tabl2 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl2 �� ��������', '����������', MB_OK);
    end;
end;


procedure TFormAnketaTables.fillCellZeroTabl(sg: TStringGrid);
var
  i,j: integer;
begin
  for i := 1 to sg.ColCount - 1 do
    for j := 1 to sg.RowCount - 1 do
      if sg.Cells[i,j].Trim = '' then
        begin
          sg.Cells[i,j] := '0';
          sg.OnSetEditText(sg, i,j,sg.Cells[i,j]);
        end;
end;

procedure TFormAnketaTables.btnExcelTabl1Click(Sender: TObject);
begin
  ExportToExcelTabl1('����1');
end;

//������������ ����1
procedure TFormAnketaTables.ExportToExcelTabl1(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;

  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� ';
  MsExcel.WorkSheets[NameSheet].Cells[3,2].Value := year;
      for j := 1 to 7 do
        for i := 1 to 4 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+1].Value := sgTabl1.Cells[i,j];
          end;
      for j := 9 to 10 do
        for i := 1 to 4 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+1].Value := sgTabl1.Cells[i,j];
          end;
      for j := 11 to 17 do
        for i := 1 to 1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+1].Value := sgTabl1.Cells[i,j];
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+2].Value := sgTabl1.Cells[i,j];
            //sgTabl1.OnSetEditText(sgTabl1, i,j,sgTabl1.Cells[i,j]);
          end;
MsExcel.Visible:=True;
end;

//tabl2
procedure TFormAnketaTables.TabSheet3Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion2.Caption := region;
 lblRajon2.Caption := rajon;
 lblHoz2.Caption := hoz;
 lblKodregion2.Caption := kodregion;
 lblKodrajon2.Caption := kodrajon;
 lblKodhoz2.Caption := kodhoz;
 lblYear2.Caption := year;
 sgTabl2.FixedCols := 1;
 sgTabl2.FixedRows := 1;
 sgTabl2.RowCount := 11;
 sgTabl2.ColCount := 4;
 sgTabl2.ColWidths[0] := 350;
 sgTabl2.ColWidths[1] := 100;
 sgTabl2.ColWidths[2] := 100;
 sgTabl2.ColWidths[3] := 100;
 sgTabl2.Options := sgTabl2.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl2.Cells[0,0] := '                    ����������';
 sgTabl2.Cells[1,0] := '   �����';
 sgTabl2.Cells[2,0] := '   ������';
 sgTabl2.Cells[3,0] := '   �������';
 sgTabl2.Cells[0,1] := '������� �����, ���.';
 sgTabl2.Cells[0,2] := '� �.�. � ���, ���.';
 sgTabl2.Cells[0,3] := '�� ��� ���������*';
 sgTabl2.Cells[0,4] := '������� �� �������� ��������� �� ���, ���.';
 sgTabl2.Cells[0,5] := '�������� � ���������� "����������", ���.';
 sgTabl2.Cells[0,6] := '%';
 sgTabl2.Cells[0,7] := '�� ������ ����� �������������� ����� 1 �� � ����, ���.';
 sgTabl2.Cells[0,8] := '%';
 sgTabl2.Cells[0,9] := '� �.�. � ���, ���.';
 sgTabl2.Cells[0,10] := '%';
 sgTabl2.SetFocus;
//��������� ��� ���������� tabl2 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'tabl2',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to 10 do
        for i := 1 to 3 do
          begin
            sgTabl2.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
     for j := 1 to 10 do
       for i := 1 to 3 do
         sgTabl2.Cells[i,j] := '';
   end;
end;


//tabl2
procedure TFormAnketaTables.sgTabl2KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
      if (sgTabl2.Col < sgTabl2.ColCount - 1)  then
         sgTabl2.Col := sgTabl2.Col + 1
        else
          if (sgTabl2.Row < sgTabl2.RowCount -1) then
            begin
              sgTabl2.Row := sgTabl2.Row + 1;
              sgTabl2.Col := sgTabl2.FixedCols;//=1
            end
          else
            btnSaveTabl2.SetFocus;
      //������ ����� �����
   if ((sgTabl2.Row < 6)  or (sgTabl2.Row = 7) or (sgTabl2.Row = 9))
     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
   //���������� �����
   if  ((sgTabl2.Row = 6) or (sgTabl2.Row = 8) or (sgTabl2.Row = 10))
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl2
procedure TFormAnketaTables.sgTabl2SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma: integer;
begin
//����� ��������� ������ ������?
if (not Value.IsEmpty) then
begin
//�������� ����� 1 ���� ����� �������
if ((ARow = 6) or (ARow = 8) or (ARow = 10)) then
    begin
    if  (StrToFloat(sgTabl2.Cells[ACol,ARow]) > 100) then
      begin
        sgTabl2.Cells[ACol,ARow] := '0';
        Application.MessageBox('% �� ����� ���� ������ 100.', '����������', MB_OK);
        exit;
      end;
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl2.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl2.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
          end
          else
            sgTabl2.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
end;
end;

//������������ ����2
procedure TFormAnketaTables.btnExcelTabl2Click(Sender: TObject);
begin
  ExportToExcelTabl2('����2');
end;



//������������ ����2
procedure TFormAnketaTables.ExportToExcelTabl2(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� ';
  MsExcel.WorkSheets[NameSheet].Cells[3,2].Value := year;
      for j := 1 to 10 do
        for i := 1 to 3 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+1].Value := sgTabl2.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//������� ������� 2
procedure TFormAnketaTables.btnDeleteTabl2Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������2?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl2',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl2',id) > 0 then
              begin
                //�������
                for j := 1 to 10 do
                  for i := 1 to 3 do
                    sgTabl2.Cells[i,j] := '';
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//tabl3
procedure TFormAnketaTables.TabSheet4Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion3.Caption := region;
 lblRajon3.Caption := rajon;
 lblHoz3.Caption := hoz;
 lblKodregion3.Caption := kodregion;
 lblKodrajon3.Caption := kodrajon;
 lblKodhoz3.Caption := kodhoz;
 lblYear3.Caption := year;
 sgTabl3.FixedRows := 1;
 sgTabl3.FixedCols := 0;
 sgTabl3.RowCount := 2;
 sgTabl3.ColCount := 6;
 sgTabl3.ColWidths[0] := 130;
 sgTabl3.ColWidths[1] := 130;
 sgTabl3.ColWidths[2] := 130;
 sgTabl3.ColWidths[3] := 130;
 sgTabl3.ColWidths[4] := 130;
 sgTabl3.ColWidths[5] := 130;
 sgTabl3.Options := sgTabl3.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl3.Cells[0,0] := '      5001-6000 ��';
 sgTabl3.Cells[1,0] := '      6001-7000 ��';
 sgTabl3.Cells[2,0] := '      7001-8000 ��';
 sgTabl3.Cells[3,0] := '      8001-9000 ��';
 sgTabl3.Cells[4,0] := '      9001-10 000 ��';
 sgTabl3.Cells[5,0] := '      ����� 10 001 ��';
 sgTabl3.SetFocus;
//��������� ��� ���������� tabl1 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl3',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ tabl3
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl3.RowCount - 1 do
        for i := 0 to sgTabl3.ColCount - 1 do
          begin
            sgTabl3.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
     for j := 1 to sgTabl3.RowCount - 1 do
       for i := 0 to sgTabl3.ColCount - 1 do
         sgTabl3.Cells[i,j] := '';
   end;
end;


//tabl3
procedure TFormAnketaTables.sgTabl3KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
      if (sgTabl3.Col < sgTabl3.ColCount - 1)  then
         sgTabl3.Col := sgTabl3.Col + 1
      else
         btnSaveTabl3.SetFocus;
      //������ ����� �����
   if ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
end;

//tabl3
procedure TFormAnketaTables.sgTabl3SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
begin
//
end;


//��������� tabl3
procedure TFormAnketaTables.btnSaveTabl3Click(Sender: TObject);
begin
  //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl3);
  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl3(DataMdl.ADOQueryAnketa,sgTabl3.Cells[0,1],sgTabl3.Cells[1,1],
    sgTabl3.Cells[2,1],sgTabl3.Cells[3,1],sgTabl3.Cells[4,1],sgTabl3.Cells[5,1],
    kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl3 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl3 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl3(DataMdl.ADOQueryAnketa,sgTabl3.Cells[0,1],
            sgTabl3.Cells[1,1],sgTabl3.Cells[2,1],sgTabl3.Cells[3,1],sgTabl3.Cells[4,1],
            sgTabl3.Cells[5,1],id) > 0 then
        Application.MessageBox('Tabl3 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl3 �� ��������', '����������', MB_OK);
    end;
end;



procedure TFormAnketaTables.btnExceTabll3Click(Sender: TObject);
begin
  ExportToExcelTabl3('����3');
end;


//������������ ����3
procedure TFormAnketaTables.ExportToExcelTabl3(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[5,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 3';
      for j := 1 to sgTabl3.RowCount -1 do
        for i := 0 to sgTabl3.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+8,i+1].Value := sgTabl3.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//�������� ���� 3
procedure TFormAnketaTables.btnDeleteTabl3Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������3?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl3',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl3',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl3.RowCount - 1 do
                  for i := 0 to sgTabl3.ColCount - 1 do
                    sgTabl3.Cells[i,j] := '';
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//tabl4
procedure TFormAnketaTables.TabSheet5Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion4.Caption := region;
 lblRajon4.Caption := rajon;
 lblHoz4.Caption := hoz;
 lblKodregion4.Caption := kodregion;
 lblKodrajon4.Caption := kodrajon;
 lblKodhoz4.Caption := kodhoz;
 lblYear4.Caption := year;
 sgTabl4.FixedCols := 1;
 sgTabl4.FixedRows := 1;
 sgTabl4.RowCount := 7;
 sgTabl4.ColCount := 3;
 sgTabl4.ColWidths[0] := 250;
 sgTabl4.ColWidths[1] := 150;
 sgTabl4.ColWidths[2] := 150;
 sgTabl4.Options := sgTabl4.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl4.Cells[0,0] := '                    ����������';
 sgTabl4.Cells[1,0] := '   �����, �����';
 sgTabl4.Cells[2,0] := '   % ��������������';
 sgTabl4.Cells[0,1] := '������� ������� ����';
 sgTabl4.Cells[0,2] := '� �.�. �����-��������������';
 sgTabl4.Cells[0,3] := '�����';
 sgTabl4.Cells[0,4] := '�����';
 sgTabl4.Cells[0,5] := '������';
 sgTabl4.Cells[0,6] := '��������� ������������ 1 ���., ���.';
 sgTabl4.Cells[2,6] := ' *******************';
 sgTabl4.SetFocus;
//��������� ��� ���������� tabl1 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl4',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ tabl4
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl4.RowCount -1  do
        for i := 1 to sgTabl4.ColCount -1 do
          begin
            if (k < 12) then
            begin
              sgTabl4.Cells[i,j] := Fields[k].AsString;
              inc(k);
            end;
          end;
    end;
 end
 //�������
 else
   begin
     for j := 1 to sgTabl4.RowCount -1  do
       for i := 1 to sgTabl4.ColCount -1 do
         sgTabl4.Cells[i,j] := '';
   end;
end;


//tabl4
procedure TFormAnketaTables.sgTabl4DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    if ((ARow = 6) and (ACol = 2)) then
    begin
      sgTabl4.Canvas.Brush.Color := clBtnFace;
      Rect.Left := Rect.Left - 2;
      sgTabl4.Canvas.TextRect(Rect, Rect.Left, Rect.Top,sgTabl4.Cells[ACol, ARow]);
    end;
end;

//tabl4
procedure TFormAnketaTables.sgTabl4KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
      if (sgTabl4.Col < sgTabl4.ColCount - 1)  then
         sgTabl4.Col := sgTabl4.Col + 1
        else
          if (sgTabl4.Row < sgTabl4.RowCount -1) then
            begin
              sgTabl4.Row := sgTabl4.Row + 1;
              sgTabl4.Col := sgTabl4.FixedCols;//=1
            end
          else
            btnSaveTabl4.SetFocus;
      //������ ����� �����
   if ((sgTabl4.Row < 6) and (sgTabl4.Col = 1))
     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
   //���������� �����
   if  (((sgTabl4.Col = 2)) or ((sgTabl4.Col = 1)) and (sgTabl4.Row = 6))
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl4
procedure TFormAnketaTables.sgTabl4SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin
if (not Value.IsEmpty) then
begin
//������������� ������ ��� ������
  if ((ARow = 6) and (ACol = 2)) then
    sgTabl4.Cells[ACol,ARow] := ' *******************';
//�������� ����� 1 ���� ����� �������
if ((ARow < 6) and (ACol = 2)) then
    begin
    if  (StrToFloat(sgTabl4.Cells[ACol,ARow]) > 100) then
      begin
        sgTabl4.Cells[ACol,ARow] := '0';
        Application.MessageBox('% �� ����� ���� ������ 100.', '����������', MB_OK);
        exit;
      end;
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl4.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl4.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl4.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
//�������� ����� 2 ����� ����� �������
if ((ARow = 6) and (ACol = 1)) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl4.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 3) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl4.Cells[ACol,ARow] := Value.Substring(0,posComma + 3);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl4.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
      end;
    end;

end;
end;


//save tabl4
procedure TFormAnketaTables.btnSaveTabl4Click(Sender: TObject);
begin
  //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl4);
  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl4(DataMdl.ADOQueryAnketa,sgTabl4.Cells[1,1],sgTabl4.Cells[2,1],
    sgTabl4.Cells[1,2],sgTabl4.Cells[2,2],sgTabl4.Cells[1,3],sgTabl4.Cells[2,3],
    sgTabl4.Cells[1,4],sgTabl4.Cells[2,4],sgTabl4.Cells[1,5],sgTabl4.Cells[2,5],
    sgTabl4.Cells[1,6],kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl4 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl4 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl4(DataMdl.ADOQueryAnketa,sgTabl4.Cells[1,1],sgTabl4.Cells[2,1],
        sgTabl4.Cells[1,2],sgTabl4.Cells[2,2],sgTabl4.Cells[1,3],sgTabl4.Cells[2,3],
        sgTabl4.Cells[1,4],sgTabl4.Cells[2,4],sgTabl4.Cells[1,5],sgTabl4.Cells[2,5],
        sgTabl4.Cells[1,6],id) > 0 then
        Application.MessageBox('Tabl4 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl4 �� ��������', '����������', MB_OK);
    end;
end;


//export tabl4
procedure TFormAnketaTables.btnExceTabll4Click(Sender: TObject);
begin
  ExportToExcelTabl4('����4');
end;


//������������ ����4
procedure TFormAnketaTables.ExportToExcelTabl4(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 4';
      for j := 1 to sgTabl4.RowCount -1 do
        for i := 0 to sgTabl4.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+1].Value := sgTabl4.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//�������� ���� 4
procedure TFormAnketaTables.btnDeleteTabl4Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������4?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl4',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl4',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl4.RowCount -1  do
                  for i := 1 to sgTabl4.ColCount -1 do
                    sgTabl4.Cells[i,j] := '';
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;


//show tabl5
procedure TFormAnketaTables.TabSheet6Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion5.Caption := region;
 lblRajon5.Caption := rajon;
 lblHoz5.Caption := hoz;
 lblKodregion5.Caption := kodregion;
 lblKodrajon5.Caption := kodrajon;
 lblKodhoz5.Caption := kodhoz;
 lblYear5.Caption := year;
 sgTabl5.FixedCols := 1;
 sgTabl5.FixedRows := 1;
 sgTabl5.RowCount := 11;
 sgTabl5.ColCount := 2;
 sgTabl5.ColWidths[0] := 350;
 sgTabl5.ColWidths[1] := 450;
 sgTabl5.Options := sgTabl5.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl5.Cells[0,0] := '                    ����������';
 sgTabl5.Cells[1,0] := '   ����������';
 sgTabl5.Cells[0,1] := '����� �����������:';
 sgTabl5.Cells[0,2] := '������������� ��������';
 sgTabl5.Cells[0,3] := '� ��� �����, ���.';
 sgTabl5.Cells[0,4] := '������� ��������';
 sgTabl5.Cells[0,5] := '����� ��������';
 sgTabl5.Cells[0,6] := '��������� ����� �����:';
 sgTabl5.Cells[0,7] := '���, ���.';
 sgTabl5.Cells[0,8] := '�����, ���.';
 sgTabl5.Cells[0,9] := '��� � �����, ���.';
 sgTabl5.Cells[0,10] := '������������ ������, ���.';
 sgTabl5.Cells[1,6] := '******************';
 sgTabl5.SetFocus;
//��������� ��� ���������� tabl1 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'tabl5',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl5.RowCount -1 do
        for i := 1 to sgTabl5.ColCount -1 do
          begin
            if j = 6 then
              continue;
            sgTabl5.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
     for j := 1 to sgTabl5.RowCount -1 do
        for i := 1 to sgTabl5.ColCount -1 do
          begin
            if j = 6 then
              continue;
            sgTabl5.Cells[i,j] := '';
          end;
   end;
end;


//paint tabl5
procedure TFormAnketaTables.sgTabl5DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    if ((ARow = 6) and (ACol = 1)) then
    begin
      sgTabl5.Canvas.Brush.Color := clBtnFace;
      Rect.Left := Rect.Left - 2;
      sgTabl5.Canvas.TextRect(Rect, Rect.Left, Rect.Top,sgTabl5.Cells[ACol, ARow]);
    end;
end;

//tabl5
procedure TFormAnketaTables.sgTabl5KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
    if (sgTabl5.Row < sgTabl5.RowCount -1) then
    begin
      if (sgTabl5.Row <> 5) then
        sgTabl5.Row := sgTabl5.Row + 1
    else
        sgTabl5.Row := sgTabl5.Row + 2;
    end
    else
      btnSaveTabl5.SetFocus;
   //������ ����� �����
   if ((sgTabl5.Row < 3) or (sgTabl5.Row = 4))
     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
   //���������� �����
   if  ((sgTabl5.Row = 3) or (sgTabl5.Row > 6))
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl5
procedure TFormAnketaTables.sgTabl5SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin
if (not Value.IsEmpty) then
begin
//������������� ������ ��� ������
  if ((ARow = 6) and (ACol = 1)) then
    sgTabl5.Cells[ACol,ARow] := ' *******************';
//�������� ����� 1 ���� ����� �������
if ((ARow = 3) and (ACol = 1)) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl5.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl5.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl5.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
//�������� ����� 2 ����� ����� �������
if (ARow > 6) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl5.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 3) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl5.Cells[ACol,ARow] := Value.Substring(0,posComma + 3);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl5.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
      end;
    end;
end;
end;


//save tabl5
procedure TFormAnketaTables.btnSaveTabl5Click(Sender: TObject);
begin
  //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl5);
  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl5(DataMdl.ADOQueryAnketa,sgTabl5.Cells[1,1],sgTabl5.Cells[1,2],
    sgTabl5.Cells[1,3],sgTabl5.Cells[1,4],sgTabl5.Cells[1,5],
    sgTabl5.Cells[1,7],sgTabl5.Cells[1,8],sgTabl5.Cells[1,9],sgTabl5.Cells[1,10],
    kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl5 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl5 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl5(DataMdl.ADOQueryAnketa,sgTabl5.Cells[1,1],sgTabl5.Cells[1,2],
        sgTabl5.Cells[1,3],sgTabl5.Cells[1,4],sgTabl5.Cells[1,5],sgTabl5.Cells[1,7],
        sgTabl5.Cells[1,8],sgTabl5.Cells[1,9],sgTabl5.Cells[1,10],id) > 0 then
        Application.MessageBox('Tabl5 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl5 �� ��������', '����������', MB_OK);
    end;
end;


procedure TFormAnketaTables.btnExceTabll5Click(Sender: TObject);
begin
  ExportToExcelTabl5('����5');
end;

//������������ ����5
procedure TFormAnketaTables.ExportToExcelTabl5(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 5';
      for j := 1 to sgTabl5.RowCount -1 do
        for i := 0 to sgTabl5.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+1].Value := sgTabl5.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//�������� ���� 5
procedure TFormAnketaTables.btnDeleteTabl5Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������5?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl5',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl5',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl5.RowCount -1 do
                  for i := 1 to sgTabl5.ColCount -1 do
                  begin
                    if j = 6 then
                      continue;
                    sgTabl5.Cells[i,j] := '';
                  end;
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//show tabl6
procedure TFormAnketaTables.TabSheet7Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion6.Caption := region;
 lblRajon6.Caption := rajon;
 lblHoz6.Caption := hoz;
 lblKodregion6.Caption := kodregion;
 lblKodrajon6.Caption := kodrajon;
 lblKodhoz6.Caption := kodhoz;
 lblYear6.Caption := year;
 sgTabl6.FixedCols := 1;
 sgTabl6.FixedRows := 0;
 sgTabl6.RowCount := 2;
 sgTabl6.ColCount := 7;
 sgTabl6.ColWidths[0] := 150;
 sgTabl6.ColWidths[1] := 100;
 sgTabl6.ColWidths[2] := 100;
 sgTabl6.ColWidths[3] := 100;
 sgTabl6.ColWidths[4] := 100;
 sgTabl6.ColWidths[5] := 100;
 sgTabl6.ColWidths[6] := 100;
 sgTabl6.Options := sgTabl6.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl6.Cells[0,0] := '  ���.�����';
 sgTabl6.Cells[0,1] := '  % ';
 sgTabl6.SetFocus;
//��������� ��� ���������� tabl6 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl6',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 0 to sgTabl6.RowCount -1 do
        for i := 1 to sgTabl6.ColCount -1 do
          begin
            sgTabl6.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
      for j := 0 to sgTabl6.RowCount -1 do
        for i := 1 to sgTabl6.ColCount -1 do
          sgTabl6.Cells[i,j] := '';
   end;
end;


//paint tabl6
procedure TFormAnketaTables.sgTabl6DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
//var
//  CellText: String;
begin
{          CellText := '������������';
          if ((ARow = 0) and (ACol = 1))
            then begin
                  // Attempt to merge 2 cells into one
                  Rect.Right := Rect.Left + sgTabl6.ColWidths[ACol]*2 + sgTabl6.GridlineWidth;// + sgTabl6.ColWidths[ACol + 1];
                  sgTabl6.Canvas.Brush.Color := clBtnFace;;
                  sgTabl6.Canvas.Brush.Style := bsSolid;
                  sgTabl6.Canvas.Pen.Style := psClear;
                  sgTabl6.Canvas.FillRect(Rect);
                  //DrawText(sgTabl6.Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_SINGLELINE or DT_LEFT or DT_VCENTER or DT_END_ELLIPSIS);
                  DrawText(sgTabl6.Canvas.Handle, PChar(CellText), Length(CellText), Rect,DT_SINGLELINE or DT_CENTER or DT_VCENTER);
                 end;
          if (ACol in [1,2,5,6])
            then begin
                  sgTabl6.Canvas.Brush.Color := clWebLinen;
                  sgTabl6.Canvas.FillRect(Rect);
                 end
            else sgTabl6.Canvas.Brush.Color := clWindow;
          if (ARow > 0)
            then sgTabl6.Canvas.TextOut(Rect.Left + 2, Rect.Top, CellText);
         end;}
end;

//tabl6
procedure TFormAnketaTables.sgTabl6KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter
  if (ord(Key) = VK_RETURN) then
      if (sgTabl6.Col < sgTabl6.ColCount - 1)  then
         sgTabl6.Col := sgTabl6.Col + 1
        else
          if (sgTabl6.Row < sgTabl6.RowCount -1) then
            begin
              sgTabl6.Row := sgTabl6.Row + 1;
              sgTabl6.Col := 1;//sgTabl6.FixedCols;
            end
          else
            btnSaveTabl6.SetFocus;
      //������ ����� �����
//   if ((sgTabl6.Row = 0))
//     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
//       Key := #0;
   //���������� �����
  // if  ((sgTabl6.Row = 1)) and
     if ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl6
procedure TFormAnketaTables.sgTabl6SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin
if (not Value.IsEmpty) then
begin
//�������� ����� 1 ���� ����� �������
if (ARow = 1) then
    begin
    if  (StrToFloat(sgTabl6.Cells[ACol,ARow]) > 100) then
      begin
        sgTabl6.Cells[ACol,ARow] := '0';
        Application.MessageBox('% �� ����� ���� ������ 100.', '����������', MB_OK);
        exit;
      end;
    end;
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl6.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl6.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
          end
          else
            sgTabl6.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
   // end;
end;
end;

//save tabl6
procedure TFormAnketaTables.btnSaveTabl6Click(Sender: TObject);
  var
  i,j: integer;
begin
  //��������� 0 ������ ����
  for i := 1 to sgTabl6.ColCount - 1 do
    for j := 0 to sgTabl6.RowCount - 1 do
      if sgTabl6.Cells[i,j].Trim = '' then
        sgTabl6.Cells[i,j] := '0';

  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl6(DataMdl.ADOQueryAnketa,sgTabl6.Cells[1,0],sgTabl6.Cells[2,0],
    sgTabl6.Cells[3,0],sgTabl6.Cells[4,0],sgTabl6.Cells[5,0],sgTabl6.Cells[6,0],
    sgTabl6.Cells[1,1],sgTabl6.Cells[2,1],sgTabl6.Cells[3,1],sgTabl6.Cells[4,1],
    sgTabl6.Cells[5,1],sgTabl6.Cells[6,1],kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl6 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl6 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl6(DataMdl.ADOQueryAnketa,sgTabl6.Cells[1,0],sgTabl6.Cells[2,0],
    sgTabl6.Cells[3,0],sgTabl6.Cells[4,0],sgTabl6.Cells[5,0],sgTabl6.Cells[6,0],
    sgTabl6.Cells[1,1],sgTabl6.Cells[2,1],sgTabl6.Cells[3,1],sgTabl6.Cells[4,1],
    sgTabl6.Cells[5,1],sgTabl6.Cells[6,1],id) > 0 then
        Application.MessageBox('Tabl6 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl6 �� ��������', '����������', MB_OK);
    end;
end;

procedure TFormAnketaTables.btnExcelTabll6Click(Sender: TObject);
begin
  ExportToExcelTabl6('����6');
end;


//������������ ����6
procedure TFormAnketaTables.ExportToExcelTabl6(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 6';
      for j := 0 to sgTabl6.RowCount -1 do
        for i := 0 to sgTabl6.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+8,i+1].Value := sgTabl6.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//�������� ���� 6
procedure TFormAnketaTables.btnDeleteTabl6Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������6?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl6',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl6',id) > 0 then
              begin
                //�������
                for j := 0 to sgTabl6.RowCount -1 do
                  for i := 1 to sgTabl6.ColCount -1 do
                    sgTabl6.Cells[i,j] := '';
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//show tabl7
procedure TFormAnketaTables.TabSheet8Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion7.Caption := region;
 lblRajon7.Caption := rajon;
 lblHoz7.Caption := hoz;
 lblKodregion7.Caption := kodregion;
 lblKodrajon7.Caption := kodrajon;
 lblKodhoz7.Caption := kodhoz;
 lblYear7.Caption := year;
 sgTabl7.FixedCols := 1;
 sgTabl7.FixedRows := 1;
 sgTabl7.RowCount := 7;
 sgTabl7.ColCount := 2;
 sgTabl7.ColWidths[0] := 300;
 sgTabl7.ColWidths[1] := 150;
 sgTabl7.Options := sgTabl7.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl7.Cells[0,0] := '                    ����������';
 sgTabl7.Cells[1,0] := '   ����������';
 //sgTabl7.Cells[0,1] := '������� �� ��������������� ����� � �������� ������, ����������� �� �������� ���������, ���.';
 sgTabl7.Cells[0,2] := '%';
 sgTabl7.Cells[0,3] := '����������� ����� ���.';
 sgTabl7.Cells[0,4] := '� �.�. �����, ���.';
 sgTabl7.Cells[0,5] := '���������� ���-�, � ������� ����������� ����';
 sgTabl7.Cells[0,6] := '��������� ����� � ����� ��� �������� �����, ���.';
 sgTabl7.SetFocus;
//��������� ��� ���������� tabl7 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl7',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl7.RowCount -1 do
        for i := 1 to sgTabl7.ColCount -1 do
          begin
            if j = 7 then
              continue;
            sgTabl7.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 else
 //�������
  begin
    for j := 1 to sgTabl7.RowCount -1 do
      for i := 1 to sgTabl7.ColCount -1 do
        sgTabl7.Cells[i,j] := '';
   end;

end;


procedure TFormAnketaTables.sgTabl7DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var s:string;
 Flag: Cardinal;
 H: integer;
begin
//�������������
  if ((ARow = 1) and (ACol = 0)) then
  begin
    sgTabl7.Canvas.FillRect(Rect);
    //s := sgTabl7.Cells[ACol,ARow];
    s := '������� �� ��������������� ����� � �������� ������, ����������� �� �������� ���������, ���.';
    Flag := DT_LEFT;
    //Flag := Flag or DT_CALCRECT;
    Flag := Flag or DT_WORDBREAK;
    Inc(Rect.Left,3);
    Dec(Rect.Right,3);
    H := DrawText(sgTabl7.Canvas.Handle,PWideChar(s),length(s),Rect,Flag);
    if H > sgTabl7.RowHeights[ARow] then
      sgTabl7.RowHeights[ARow] := H;  //�����������
  end;
end;

procedure TFormAnketaTables.sgTabl7KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter
  if (ord(Key) = VK_RETURN) then
    if (sgTabl7.Row < sgTabl7.RowCount -1) then
        sgTabl7.Row := sgTabl7.Row + 1
    else
      btnSaveTabl7.SetFocus;
   //������ ����� �����
   if (sgTabl7.Row <> 2)
     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
   //���������� �����
   if  (sgTabl7.Row = 2)
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl7
procedure TFormAnketaTables.sgTabl7SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin
if (not Value.IsEmpty) then
begin
if (ARow = 2) then
    if  (StrToFloat(sgTabl7.Cells[ACol,ARow]) > 100) then
      begin
        sgTabl7.Cells[ACol,ARow] := '0';
        Application.MessageBox('% �� ����� ���� ������ 100.', '����������', MB_OK);
        exit;
      end;
//�������� ����� 1 ���� ����� �������
if (ARow = 2) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl7.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl7.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl7.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
end;
end;


//save tabl7
procedure TFormAnketaTables.btnSaveTabl7Click(Sender: TObject);
begin
  //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl7);
  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl7(DataMdl.ADOQueryAnketa,sgTabl7.Cells[1,1],sgTabl7.Cells[1,2],
    sgTabl7.Cells[1,3],sgTabl7.Cells[1,4],sgTabl7.Cells[1,5],sgTabl7.Cells[1,6],
    kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl7 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl7 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl7(DataMdl.ADOQueryAnketa,sgTabl7.Cells[1,1],sgTabl7.Cells[1,2],
        sgTabl7.Cells[1,3],sgTabl7.Cells[1,4],sgTabl7.Cells[1,5],sgTabl7.Cells[1,6],id) > 0 then
        Application.MessageBox('Tabl7 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl7 �� ��������', '����������', MB_OK);
    end;
end;


//tabl7
procedure TFormAnketaTables.btnExceTabll7Click(Sender: TObject);
begin
  ExportToExcelTabl7('����7');
end;


//������������ ����7
procedure TFormAnketaTables.ExportToExcelTabl7(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[4,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 7';
      for j := 1 to sgTabl7.RowCount -1 do
        for i := 1 to sgTabl7.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+7,i+1].Value := sgTabl7.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//�������� ���� 7
procedure TFormAnketaTables.btnDeleteTabl7Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������7?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl7',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl7',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl7.RowCount -1 do
                  for i := 1 to sgTabl7.ColCount -1 do
                    sgTabl7.Cells[i,j] := '';
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//show tabl8
procedure TFormAnketaTables.TabSheet9Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion8.Caption := region;
 lblRajon8.Caption := rajon;
 lblHoz8.Caption := hoz;
 lblKodregion8.Caption := kodregion;
 lblKodrajon8.Caption := kodrajon;
 lblKodhoz8.Caption := kodhoz;
 lblYear8.Caption := year;
 sgTabl8.FixedCols := 1;
 sgTabl8.FixedRows := 1;
 sgTabl8.RowCount := 11;
 sgTabl8.ColCount := 2;
 sgTabl8.ColWidths[0] := 400;
 sgTabl8.ColWidths[1] := 150;
 sgTabl8.Options := sgTabl8.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl8.Cells[0,0] := '                    ����������';
 sgTabl8.Cells[1,0] := '   ����������';
 sgTabl8.Cells[0,1] := '������� ��������������� ��������� �����, ���. ���.';
 sgTabl8.Cells[0,2] := '�������� � ��������, ���.���.';
 sgTabl8.Cells[0,3] := '�������� ������������� ����������� �����, ���.';
// sgTabl8.Cells[0,4] := '���������� �����-���������� � ������������������ ������ ����� ������������, ���.';
 sgTabl8.Cells[0,6] := '������� ������� ����������� ����� �� ��������:';
 sgTabl8.Cells[1,6] := '******************';
 sgTabl8.Cells[0,7] := '�����-����������, ���.';
 sgTabl8.Cells[0,8] := '����������� �����, ���.';
 sgTabl8.Cells[0,9] := '�� ����������� ����� � �������� ������ 1 ����, ���.';
 sgTabl8.Cells[0,10] := '�� ����������� ����� � �������� �� 1 ����, ���.';
 sgTabl8.SetFocus;
//��������� ��� ���������� tabl8 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl8',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl8.RowCount -1 do
        for i := 1 to sgTabl8.ColCount -1 do
          begin
            if j = 6 then
              continue;
            sgTabl8.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
     for j := 1 to sgTabl8.RowCount -1 do
        for i := 1 to sgTabl8.ColCount -1 do
          begin
            if j = 6 then
              continue;
            sgTabl8.Cells[i,j] := '';
          end;
   end;
end;

//paint tabl8
procedure TFormAnketaTables.sgTabl8DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var s:string;
  Flag: Cardinal;
  H: integer;
begin
  if ((ARow = 6) and (ACol = 1)) then
    begin
      sgTabl8.Canvas.Brush.Color := clBtnFace;
      Rect.Left := Rect.Left - 2;
      sgTabl8.Canvas.TextRect(Rect, Rect.Left, Rect.Top,sgTabl8.Cells[ACol, ARow]);
    end;
    if ((ARow = 4) and (ACol = 0)) then
    begin
      sgTabl8.Canvas.FillRect(Rect);
      //s := sgTabl7.Cells[ACol,ARow];
      s := '���������� �����-���������� � ������������������ ������ ����� ������������, ���.';
      Flag := DT_LEFT;
      //Flag := Flag or DT_CALCRECT;
      Flag := Flag or DT_WORDBREAK;
      Inc(Rect.Left,3);
      Dec(Rect.Right,3);
      H := DrawText(sgTabl8.Canvas.Handle,PWideChar(s),length(s),Rect,Flag);
      if H > sgTabl8.RowHeights[ARow] then
        sgTabl8.RowHeights[ARow] := H;  //�����������
    end;
    if ((ARow = 5) and (ACol = 0)) then
    begin
      sgTabl8.Canvas.FillRect(Rect);
      //s := sgTabl7.Cells[ACol,ARow];
      s := '���������� �����-���������� � ������������������ ������� ������������, ���.';
      Flag := DT_LEFT;
      //Flag := Flag or DT_CALCRECT;
      Flag := Flag or DT_WORDBREAK;
      Inc(Rect.Left,3);
      Dec(Rect.Right,3);
      H := DrawText(sgTabl8.Canvas.Handle,PWideChar(s),length(s),Rect,Flag);
      if H > sgTabl8.RowHeights[ARow] then
        sgTabl8.RowHeights[ARow] := H;  //�����������
    end;
end;

//tabl8
procedure TFormAnketaTables.sgTabl8KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
    if (sgTabl8.Row < sgTabl8.RowCount -1) then
    begin
      if (sgTabl8.Row <> 5) then
        sgTabl8.Row := sgTabl8.Row + 1
    else
        sgTabl8.Row := sgTabl8.Row + 2;
    end
    else
      btnSaveTabl8.SetFocus;
   //������ ����� �����
  if ((sgTabl8.Row <> 8) and (sgTabl8.Row > 2))
      and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
      Key := #0;
   //���������� �����
    if  ((sgTabl8.Row = 8) or (sgTabl8.Row <= 2))
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

procedure TFormAnketaTables.sgTabl8SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin
if (not Value.IsEmpty) then
begin
//������������� ������ ��� ������
  if ((ARow = 6) and (ACol = 1)) then
    sgTabl8.Cells[ACol,ARow] := ' *******************';
//�������� ����� 1 ���� ����� �������
if (((ARow = 8) or (ARow <= 2 )) and (ACol = 1)) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl8.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl8.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl8.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
end;
end;


//save tabl8
procedure TFormAnketaTables.btnSaveTabl8Click(Sender: TObject);
begin
  //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl8);
  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl8(DataMdl.ADOQueryAnketa,sgTabl8.Cells[1,1],sgTabl8.Cells[1,2],
    sgTabl8.Cells[1,3],sgTabl8.Cells[1,4],sgTabl8.Cells[1,5],sgTabl8.Cells[1,7],sgTabl8.Cells[1,8],
    sgTabl8.Cells[1,9],sgTabl8.Cells[1,10],kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl8 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl8 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl8(DataMdl.ADOQueryAnketa,sgTabl8.Cells[1,1],sgTabl8.Cells[1,2],
        sgTabl8.Cells[1,3],sgTabl8.Cells[1,4],sgTabl8.Cells[1,5],
        sgTabl8.Cells[1,7],sgTabl8.Cells[1,8],sgTabl8.Cells[1,9],sgTabl8.Cells[1,10],id) > 0 then
        Application.MessageBox('Tabl8 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl8 �� ��������', '����������', MB_OK);
    end;
end;


procedure TFormAnketaTables.btnExceTabll8Click(Sender: TObject);
begin
  ExportToExcelTabl8('����8');
end;


//������������ ����8
procedure TFormAnketaTables.ExportToExcelTabl8(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j,k: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[4,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 8';
  k := 1;
      for j := 1 to sgTabl8.RowCount -1 do
        for i := 1 to sgTabl8.ColCount -1 do
          begin
            if ((j = 4) or (j = 5)) then
              begin
                MsExcel.WorkSheets[NameSheet].Cells[k+6,i+1].Value := sgTabl8.Cells[i,j];
                k := k + 2;
              end
            else
            begin
              if (j = 6) then
                begin
                  inc(k);
                  continue;
                end
              else
              begin
                MsExcel.WorkSheets[NameSheet].Cells[k+6,i+1].Value := sgTabl8.Cells[i,j];
                inc(k);
              end;
          end;
          end;
MsExcel.Visible:=True;
end;

//�������� ���� 8
procedure TFormAnketaTables.btnDeleteTabl8Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������8?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl8',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl8',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl8.RowCount -1 do
                  for i := 1 to sgTabl8.ColCount -1 do
                  begin
                    if j = 6 then
                      continue;
                  sgTabl8.Cells[i,j] := '';
          end;
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//show tabl9
procedure TFormAnketaTables.TabSheet10Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion9.Caption := region;
 lblRajon9.Caption := rajon;
 lblHoz9.Caption := hoz;
 lblKodregion9.Caption := kodregion;
 lblKodrajon9.Caption := kodrajon;
 lblKodhoz9.Caption := kodhoz;
 lblYear9.Caption := year;
 sgTabl9.FixedCols := 1;
 sgTabl9.FixedRows := 1;
 //sgTabl9.RowCount := 26;
 sgTabl9.RowCount := 24;
 sgTabl9.ColCount := 2;
 sgTabl9.DefaultRowHeight := 19;
 sgTabl9.ColWidths[0] := 500;
 sgTabl9.ColWidths[1] := 100;
 sgTabl9.Options := sgTabl9.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl9.Cells[0,0] := '                    ����������';
 sgTabl9.Cells[1,0] := '   ����������';
 sgTabl9.Cells[0,1] := '����� ������������� ����������� � ������ � ���������� ���������� ����� � �����, %';
 sgTabl9.Cells[0,2] := '������� ������� �������������� ���������� �������� �������� �����';
 sgTabl9.Cells[0,3] := '����������� ������� �������������� ����������';
 sgTabl9.Cells[0,4] := '������� �������� �� �������������� ���������� �������� �������� �����';
 sgTabl9.Cells[0,5] := '� �.�. �������� �� �������������� ����������  � ����� ���������������';
 sgTabl9.Cells[1,6] := '**********';
 sgTabl9.Cells[0,6] := '������������ ��������� ����� � ����� �������:';
 sgTabl9.Cells[0,7] := '������������ � ����������, ���.���.';
 sgTabl9.Cells[0,8] := '� ������������ ��������, ���.���.';
 sgTabl9.Cells[0,9] := '� �������� ��������, ���.���.';
 sgTabl9.Cells[1,10] := '**********';
 sgTabl9.Cells[0,10] := '������������ ��������� ����� � �����:';
 sgTabl9.Cells[0,11] := '�����-������������ ��������, ���.���.';
 sgTabl9.Cells[0,12] := '����-������������ ��������, ���.���.';
 sgTabl9.Cells[0,13] := '����-������������, ���.���.';
 sgTabl9.Cells[1,14] := '**********';
 sgTabl9.Cells[0,14] := '���������� ������ �����:';
 sgTabl9.Cells[0,15] := '� ����������, ���.���';
 sgTabl9.Cells[0,16] := '� ������������ ��������, ���.���';
 sgTabl9.Cells[0,17] := '� �������� ��������, ���.���';
 //sgTabl9.Cells[1,18] := '**********';
 //sgTabl9.Cells[0,18] := '������������:';
 sgTabl9.Cells[0,18] := '������������ ���������� �� ���������������';
 //sgTabl9.Cells[0,20] := '�������� �����������:';
 //sgTabl9.Cells[1,20] := '**********';
 sgTabl9.Cells[0,19] := '�������� ����������� ���������� �� ���������������';
 sgTabl9.Cells[1,20] := '**********';
 sgTabl9.Cells[0,20] := '��������� ��������� �� ������� �� ���������:';
 sgTabl9.Cells[0,21] := '��������';
 sgTabl9.Cells[0,22] := '���������';
 sgTabl9.Cells[0,23] := '��������� (�������, ���������������)';
 sgTabl9.SetFocus;
//��������� ��� ���������� Tabl9 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl9',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ tabl9
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl9.RowCount -1 do
        for i := 1 to sgTabl9.ColCount -1 do
          begin
            if (j = 6) or (j = 10) or (j = 14)  or (j = 20)  then
              continue;
            sgTabl9.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
     for j := 1 to sgTabl9.RowCount -1 do
        for i := 1 to sgTabl9.ColCount -1 do
          begin
            if (j = 6) or (j = 10) or (j = 14)  or (j = 20)  then
              continue;
            sgTabl9.Cells[i,j] := '';
            end;
   end;
end;


procedure TFormAnketaTables.sgTabl9DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ((ARow = 6) or (ARow = 10) or (ARow = 14) or (ARow = 20)) and (ACol = 1) then
    begin
      sgTabl9.Canvas.Brush.Color := clBtnFace;
      Rect.Left := Rect.Left - 2;
      sgTabl9.Canvas.TextRect(Rect, Rect.Left, Rect.Top,sgTabl9.Cells[ACol, ARow]);
    end;
end;

//tabl9
procedure TFormAnketaTables.sgTabl9KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
    if (sgTabl9.Row < sgTabl9.RowCount -1) then
    begin
      if ((sgTabl9.Row <> 5) and (sgTabl9.Row <> 9) and (sgTabl9.Row <> 13) and (sgTabl9.Row <> 19)) then
          sgTabl9.Row := sgTabl9.Row + 1
    else
        sgTabl9.Row := sgTabl9.Row + 2;
    end
    else
      btnSaveTabl9.SetFocus;
   //������ ����� �����
  if (((sgTabl9.Row > 1) and (sgTabl9.Row < 6)) or (sgTabl9.Row > 17))
    and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
      Key := #0;
   //���������� �����
   if  ((sgTabl9.Row = 1) or ((sgTabl9.Row > 5) and (sgTabl9.Row < 17)))
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl9
procedure TFormAnketaTables.sgTabl9SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin
if (not Value.IsEmpty) then
begin
//������������� ������ ��� ������
  if ((ARow = 6) or (ARow = 10) or (ARow = 14) or (ARow = 20)) and (ACol = 1) then
    sgTabl9.Cells[ACol,ARow] := '**********';
//�������� ����� 1 ���� ����� �������
if ((sgTabl9.Row = 1) or ((sgTabl9.Row > 5) and (sgTabl9.Row < 17))) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl9.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl9.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
            //�� ������������� �������������
            {if ACol < sgTabl1.ColCount -1  then
              sgTabl1.Col := ACol + 1
            else
              begin
                sgTabl1.Col := sgTabl1.FixedCols;//=1
                sgTabl1.Row := ARow + 1;
              end;              }
          end
          else
            sgTabl9.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
end;
end;

procedure TFormAnketaTables.btnSaveTabl9Click(Sender: TObject);
begin
   //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl9);
  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl9(DataMdl.ADOQueryAnketa,sgTabl9.Cells[1,1],sgTabl9.Cells[1,2],
    sgTabl9.Cells[1,3],sgTabl9.Cells[1,4],sgTabl9.Cells[1,5],sgTabl9.Cells[1,7],sgTabl9.Cells[1,8],
    sgTabl9.Cells[1,9],sgTabl9.Cells[1,11],sgTabl9.Cells[1,12],sgTabl9.Cells[1,13],
    sgTabl9.Cells[1,15],sgTabl9.Cells[1,16],sgTabl9.Cells[1,17],sgTabl9.Cells[1,18],sgTabl9.Cells[1,19],
    sgTabl9.Cells[1,21],sgTabl9.Cells[1,22],sgTabl9.Cells[1,23],kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl9 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl9 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl9(DataMdl.ADOQueryAnketa,sgTabl9.Cells[1,1],sgTabl9.Cells[1,2],
        sgTabl9.Cells[1,3],sgTabl9.Cells[1,4],sgTabl9.Cells[1,5],sgTabl9.Cells[1,7],
        sgTabl9.Cells[1,8],sgTabl9.Cells[1,9],sgTabl9.Cells[1,11],sgTabl9.Cells[1,12],
        sgTabl9.Cells[1,13],sgTabl9.Cells[1,15],sgTabl9.Cells[1,16],sgTabl9.Cells[1,17],
        sgTabl9.Cells[1,18],sgTabl9.Cells[1,19],sgTabl9.Cells[1,21],sgTabl9.Cells[1,22],
        sgTabl9.Cells[1,23],id) > 0 then
        Application.MessageBox('Tabl9 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl9 �� ��������', '����������', MB_OK);
    end;
end;


procedure TFormAnketaTables.btnExceTabll9Click(Sender: TObject);
begin
  ExportToExcelTabl9('����9');
end;

//������������ ����9
procedure TFormAnketaTables.ExportToExcelTabl9(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 9';
      for j := 1 to sgTabl9.RowCount -1 do
        for i := 1 to sgTabl9.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+1].Value := sgTabl9.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;


//�������� ���� 9
procedure TFormAnketaTables.btnDeleteTabl9Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������9?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl9',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl9',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl9.RowCount -1 do
                  for i := 1 to sgTabl9.ColCount -1 do
                  begin
                    if (j = 6) or (j = 10) or (j = 14)  or (j = 20)  then
                      continue;
                   sgTabl9.Cells[i,j] := '';
                 end;
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//show tabl9a
procedure TFormAnketaTables.TabSheet13Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion9a.Caption := region;
 lblRajon9a.Caption := rajon;
 lblHoz9a.Caption := hoz;
 lblKodregion9a.Caption := kodregion;
 lblKodrajon9a.Caption := kodrajon;
 lblKodhoz9a.Caption := kodhoz;
 lblYear9a.Caption := year;
 sgTabl9a.FixedCols := 0;
 sgTabl9a.FixedRows := 1;
 sgTabl9a.RowCount := 2;
 sgTabl9a.ColCount := 8;
 sgTabl9a.ColWidths[0] := 100;
 sgTabl9a.ColWidths[1] := 100;
 sgTabl9a.ColWidths[2] := 100;
 sgTabl9a.ColWidths[3] := 100;
 sgTabl9a.ColWidths[4] := 100;
 sgTabl9a.ColWidths[5] := 100;
 sgTabl9a.ColWidths[6] := 100;
 sgTabl9a.ColWidths[7] := 100;
 sgTabl9a.Options := sgTabl9a.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl9a.Cells[0,0] := '           1';
 sgTabl9a.Cells[1,0] := '           2';
 sgTabl9a.Cells[2,0] := '           3';
 sgTabl9a.Cells[3,0] := '           4';
 sgTabl9a.Cells[4,0] := '           5';
 sgTabl9a.Cells[5,0] := '           6';
 sgTabl9a.Cells[6,0] := '           7';
 sgTabl9a.Cells[7,0] := '           8';
 sgTabl9a.SetFocus;
//��������� ��� ���������� Tabl9a ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl9a',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl9a.RowCount -1 do
        for i := 0 to sgTabl9a.ColCount -1 do
          begin
            sgTabl9a.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
      for j := 1 to sgTabl9a.RowCount -1 do
        for i := 0 to sgTabl9a.ColCount -1 do
          sgTabl9a.Cells[i,j] := '';
   end;
end;

//tabl9�
procedure TFormAnketaTables.sgTabl9aKeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter
  if (ord(Key) = VK_RETURN) then
      if (sgTabl9a.Col < sgTabl9a.ColCount - 1)  then
         sgTabl9a.Col := sgTabl9a.Col + 1
        else
          if (sgTabl9a.Row < sgTabl9a.RowCount -1) then
            begin
              sgTabl9a.Row := sgTabl9a.Row + 1;
              sgTabl9a.Col := 1;//sgTabl9a.FixedCols;
            end
          else
            btnSaveTabl9a.SetFocus;
      //������ ����� �����
   if ((sgTabl9a.Col < 5))
     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
   //���������� �����
   if  ((sgTabl9a.Col > 4))
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl9a
procedure TFormAnketaTables.sgTabl9aSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin
if (not Value.IsEmpty) then
begin
//�������� ����� 2 ����� ����� �������
if (ACol > 4) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl9a.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 3) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl9a.Cells[ACol,ARow] := Value.Substring(0,posComma + 3);
          end
          else
            sgTabl9a.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
      end;
    end;
end;
end;

//save tabl9a
procedure TFormAnketaTables.btnSaveTabl9aClick(Sender: TObject);
var
  i: integer;
begin
  //��������� 0 ������ ����
  //fillCellZeroTabl(sgTabl9a);
  for i := 0 to sgTabl9a.ColCount -1 do
      if sgTabl9a.Cells[i,1].Trim() = '' then
        sgTabl9a.Cells[i,1] := '0';

  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl9a(DataMdl.ADOQueryAnketa,sgTabl9a.Cells[0,1],sgTabl9a.Cells[1,1],
    sgTabl9a.Cells[2,1],sgTabl9a.Cells[3,1],sgTabl9a.Cells[4,1],sgTabl9a.Cells[5,1],sgTabl9a.Cells[6,1],
    sgTabl9a.Cells[7,1],kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl9a ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl9a �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl9a(DataMdl.ADOQueryAnketa,sgTabl9a.Cells[0,1],
            sgTabl9a.Cells[1,1],sgTabl9a.Cells[2,1],sgTabl9a.Cells[3,1],sgTabl9a.Cells[4,1],
            sgTabl9a.Cells[5,1],sgTabl9a.Cells[6,1],sgTabl9a.Cells[7,1],id) > 0 then
        Application.MessageBox('Tabl9a ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl9a �� ��������', '����������', MB_OK);
    end;
end;

procedure TFormAnketaTables.btnExcelTabl9aClick(Sender: TObject);
begin
  ExportToExcelTabl9a('����9�');
end;

//������������ ����9
procedure TFormAnketaTables.ExportToExcelTabl9a(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 9�';
      for j := 1 to sgTabl9a.RowCount -1 do
        for i := 0 to sgTabl9a.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+9,i+1].Value := sgTabl9a.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//�������� ���� 9�
procedure TFormAnketaTables.btnDeleteTabl9aClick(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������9a?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl9a',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl9a',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl9a.RowCount -1 do
                  for i := 0 to sgTabl9a.ColCount -1 do
                    sgTabl9a.Cells[i,j] := '';
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;


//show tabl10
procedure TFormAnketaTables.TabSheet11Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion10.Caption := region;
 lblRajon10.Caption := rajon;
 lblHoz10.Caption := hoz;
 lblKodregion10.Caption := kodregion;
 lblKodrajon10.Caption := kodrajon;
 lblKodhoz10.Caption := kodhoz;
 lblYear10.Caption := year;
 sgTabl10.FixedCols := 1;
 sgTabl10.FixedRows := 1;
 sgTabl10.RowCount := 14;
 sgTabl10.ColCount := 4;
 sgTabl10.ColWidths[0] := 350;
 sgTabl10.ColWidths[1] := 100;
 sgTabl10.ColWidths[2] := 100;
 sgTabl10.ColWidths[3] := 100;
 sgTabl10.Options := sgTabl10.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl10.Cells[0,0] := '                    ����������';
 sgTabl10.Cells[1,0] := '   �����';
 sgTabl10.Cells[2,0] := '   ������';
 sgTabl10.Cells[3,0] := '   �������';
 sgTabl10.Cells[0,1] := '������������� ��������� ��������������, ���.';
 sgTabl10.Cells[0,2] := '���������� ������, ���. ���';
 sgTabl10.Cells[0,3] := '����������� ������, �����, ���. ���';
 sgTabl10.Cells[0,4] := '� �.�. � ������ �������, ���. ���';
 sgTabl10.Cells[0,5] := '������������� ������ �� ���� ������������ ����������, ���';
 sgTabl10.Cells[0,6] := '������������� 1 ���������� ���� ������, ���.';
 sgTabl10.Cells[0,7] := '������� �� �������� 1 ���� ������, ���.';
 sgTabl10.Cells[0,8] := '���� ���������� 1 ���� ������ �� ����� ����, ���.';
 sgTabl10.Cells[0,9] := '�������� �� 1 ���� ������ �� �������� �������, ���.';
 sgTabl10.Cells[0,10] := '������� �� ���������� ������ �������������, ���.';
 sgTabl10.Cells[0,11] := '������ ����� �� ���, �';
 sgTabl10.Cells[0,12] := '��������� 1 ����� �����. ���.';
 sgTabl10.Cells[0,13] := '���������� ��������������,  ���.';
 sgTabl10.SetFocus;
//��������� ��� ���������� Tabl10 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl10',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ ������
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl10.RowCount -1 do
        for i := 1 to sgTabl10.ColCount -1 do
          begin
            sgTabl10.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
      for j := 1 to sgTabl10.RowCount -1 do
        for i := 1 to sgTabl10.ColCount -1 do
          sgTabl10.Cells[i,j] := '';
   end;
end;



//tabl10
procedure TFormAnketaTables.sgTabl10KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
      if (sgTabl10.Col < sgTabl10.ColCount - 1)  then
         sgTabl10.Col := sgTabl10.Col + 1
        else
          if (sgTabl10.Row < sgTabl10.RowCount -1) then
            begin
              sgTabl10.Row := sgTabl10.Row + 1;
              sgTabl10.Col := sgTabl10.FixedCols;//=1
            end
          else
            btnSaveTabl10.SetFocus;
      //������ ����� �����
   if ((sgTabl10.Row = 1)  or (sgTabl10.Row = 13))
     and ((Key<'0') or (Key>'9')) and (Key<>#8)  then
       Key := #0;
   //���������� �����
   if  ((sgTabl10.Row <> 1) and (sgTabl10.Row <> 13))
     and ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

//tabl10
procedure TFormAnketaTables.sgTabl10SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin//1
if (not Value.IsEmpty) then
begin
//�������� ����� 1 ���� ����� �������
if ((ARow > 1) and (ARow < 5)) or (ARow = 11) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl10.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl10.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
          end
          else
            sgTabl10.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
//�������� ����� 2 ����� ����� �������
if ((ARow > 5) and (ARow < 11)) or (ARow = 12) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl10.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 3) then
      begin
        if not (Value.EndsWith(',')) then
          sgTabl10.Cells[ACol,ARow] := Value.Substring(0,posComma + 3)
          else
            sgTabl10.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
      end;
    end;
end;
end;


//��������� tabl10
procedure TFormAnketaTables.btnSaveTabl10Click(Sender: TObject);
begin
  //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl10);
  if isUnique then
  //���������� �����
  begin
if DataMdl.InsertIntoTabl10(DataMdl.ADOQueryAnketa,
    sgTabl10.Cells[1,1],sgTabl10.Cells[2,1],sgTabl10.Cells[3,1],
    sgTabl10.Cells[1,2],sgTabl10.Cells[2,2],sgTabl10.Cells[3,2],
    sgTabl10.Cells[1,3],sgTabl10.Cells[2,3],sgTabl10.Cells[3,3],
    sgTabl10.Cells[1,4],sgTabl10.Cells[2,4],sgTabl10.Cells[3,4],
    sgTabl10.Cells[1,5],sgTabl10.Cells[2,5],sgTabl10.Cells[3,5],
    sgTabl10.Cells[1,6],sgTabl10.Cells[2,6],sgTabl10.Cells[3,6],
    sgTabl10.Cells[1,7],sgTabl10.Cells[2,7],sgTabl10.Cells[3,7],
    sgTabl10.Cells[1,8],sgTabl10.Cells[2,8],sgTabl10.Cells[3,8],
    sgTabl10.Cells[1,9],sgTabl10.Cells[2,9],sgTabl10.Cells[3,9],
    sgTabl10.Cells[1,10],sgTabl10.Cells[2,10],sgTabl10.Cells[3,10],
    sgTabl10.Cells[1,11],sgTabl10.Cells[2,11],sgTabl10.Cells[3,11],
    sgTabl10.Cells[1,12],sgTabl10.Cells[2,12],sgTabl10.Cells[3,12],
    sgTabl10.Cells[1,13],sgTabl10.Cells[2,13],sgTabl10.Cells[3,13],
    kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl10 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl10 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl10(DataMdl.ADOQueryAnketa,
        sgTabl10.Cells[1,1],sgTabl10.Cells[2,1],sgTabl10.Cells[3,1],
        sgTabl10.Cells[1,2],sgTabl10.Cells[2,2],sgTabl10.Cells[3,2],
        sgTabl10.Cells[1,3],sgTabl10.Cells[2,3],sgTabl10.Cells[3,3],
        sgTabl10.Cells[1,4],sgTabl10.Cells[2,4],sgTabl10.Cells[3,4],
        sgTabl10.Cells[1,5],sgTabl10.Cells[2,5],sgTabl10.Cells[3,5],
        sgTabl10.Cells[1,6],sgTabl10.Cells[2,6],sgTabl10.Cells[3,6],
        sgTabl10.Cells[1,7],sgTabl10.Cells[2,7],sgTabl10.Cells[3,7],
        sgTabl10.Cells[1,8],sgTabl10.Cells[2,8],sgTabl10.Cells[3,8],
        sgTabl10.Cells[1,9],sgTabl10.Cells[2,9],sgTabl10.Cells[3,9],
        sgTabl10.Cells[1,10],sgTabl10.Cells[2,10],sgTabl10.Cells[3,10],
        sgTabl10.Cells[1,11],sgTabl10.Cells[2,11],sgTabl10.Cells[3,11],
        sgTabl10.Cells[1,12],sgTabl10.Cells[2,12],sgTabl10.Cells[3,12],
        sgTabl10.Cells[1,13],sgTabl10.Cells[2,13],sgTabl10.Cells[3,13],id) > 0 then
        Application.MessageBox('Tabl10 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl10 �� ��������', '����������', MB_OK);
    end;
end;


procedure TFormAnketaTables.btnExceTabll10Click(Sender: TObject);
begin
  ExportToExcelTabl10('����10');
end;

//������������ ����10
procedure TFormAnketaTables.ExportToExcelTabl10(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[3,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 10';
      for j := 1 to sgTabl10.RowCount -1 do
        for i := 1 to sgTabl10.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+5,i+1].Value := sgTabl10.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//������� ����10
procedure TFormAnketaTables.btnDeleteTabl10Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������10?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl10',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl10',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl10.RowCount -1 do
                  for i := 1 to sgTabl10.ColCount -1 do
                    sgTabl10.Cells[i,j] := '';
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

//show tabl11
procedure TFormAnketaTables.TabSheet12Show(Sender: TObject);
var
  i,j,k: integer;
begin
 lblRegion11.Caption := region;
 lblRajon11.Caption := rajon;
 lblHoz11.Caption := hoz;
 lblKodregion11.Caption := kodregion;
 lblKodrajon11.Caption := kodrajon;
 lblKodhoz11.Caption := kodhoz;
 lblYear11.Caption := year;
 sgTabl11.FixedCols := 1;
 sgTabl11.FixedRows := 1;
 sgTabl11.RowCount := 14;
 sgTabl11.ColCount := 2;
 //sgTabl11.DefaultRowHeight := 19;
 sgTabl11.ColWidths[0] := 400;
 sgTabl11.ColWidths[1] := 100;
 sgTabl11.Options := sgTabl11.Options + [goAlwaysShowEditor] + [goEditing] + [goTabs];
 sgTabl11.Cells[0,0] := '                    ����������';
 sgTabl11.Cells[1,0] := '   ����������';
 sgTabl11.Cells[0,1] := '�� ��� �������� �������, ���.���.';
 sgTabl11.Cells[0,2] := '����������� �������������, ���.���.';
 sgTabl11.Cells[0,3] := '������������ �������������, ���.���.';
 sgTabl11.Cells[0,4] := '�������������� ���������� �����, ���.';
 sgTabl11.Cells[1,5] := '**********';
 sgTabl11.Cells[0,5] := '����� �������� �������, %';
 sgTabl11.Cells[0,6] := '������ � ����������';
 sgTabl11.Cells[0,7] := '����� � ������������';
 sgTabl11.Cells[1,8] := '**********';
 sgTabl11.Cells[0,8] := '����������� ��������� �� ��������� ���� �� ���, ���.���.:';
 sgTabl11.Cells[0,9] := '�� �������� �������, ���.���.';
 sgTabl11.Cells[0,10] := '�� ������������ �������, ���.���.';
 sgTabl11.Cells[1,11] := '**********';
 sgTabl11.Cells[0,11] := '������� �� 1 ������������� ���� ������:';
 sgTabl11.Cells[0,12] := '�� �������� �������, ���';
 sgTabl11.Cells[0,13] := '�� ������������ �������, ���.';
 sgTabl11.SetFocus;
//��������� ��� ���������� Tabl11 ��� ��� ������������
 isUnique := DataMdl.isUnique(DataMdl.ADOQueryTables,'Tabl11',kodregion,kodrajon,kodhoz,year);
 if not isUnique then
 //��������� ������������ Tabl11
 begin
  with DataMdl.ADOQueryTables do
    begin
      k := 1;
      for j := 1 to sgTabl11.RowCount -1 do
        for i := 1 to sgTabl11.ColCount -1 do
          begin
            if (j = 5) or (j = 8) or (j = 11)  then
              continue;
            sgTabl11.Cells[i,j] := Fields[k].AsString;
            inc(k);
          end;
    end;
 end
 //�������
 else
   begin
     for j := 1 to sgTabl11.RowCount -1 do
        for i := 1 to sgTabl11.ColCount -1 do
          begin
            if (j = 5) or (j = 8) or (j = 11)  then
              continue;
            sgTabl11.Cells[i,j] := '';
            end;
   end;
end;


//paint tabl11
procedure TFormAnketaTables.sgTabl11DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ((ARow = 5) or (ARow = 8) or (ARow = 11)) and (ACol = 1) then
    begin
      sgTabl11.Canvas.Brush.Color := clBtnFace;
      Rect.Left := Rect.Left - 2;
      sgTabl11.Canvas.TextRect(Rect, Rect.Left, Rect.Top,sgTabl11.Cells[ACol, ARow]);
    end;
end;

//tabl11
procedure TFormAnketaTables.sgTabl11KeyPress(Sender: TObject; var Key: Char);
begin
//������������ �� enter, ����� ����������� ������
  if (ord(Key) = VK_RETURN) then
    if (sgTabl11.Row < sgTabl11.RowCount -1) then
    begin
      if ((sgTabl11.Row <> 4) and (sgTabl11.Row <> 7) and (sgTabl11.Row <> 10)) then
          sgTabl11.Row := sgTabl11.Row + 1
    else
        sgTabl11.Row := sgTabl11.Row + 2;
    end
    else
      btnSaveTabl11.SetFocus;
   //���������� �����
   if  ((Key<'0') or (Key>'9')) and (Key<>#8) and (Key<>',') then
        Key := #0;
end;

procedure TFormAnketaTables.sgTabl11SetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
var
  posComma : integer;
begin
if (not Value.IsEmpty) then
begin
//������������� ������ ��� ������
  if ((ARow = 5) or (ARow = 8) or (ARow = 11)) and (ACol = 1) then
    sgTabl11.Cells[ACol,ARow] := '**********';
//�������� ����� 1 ���� ����� �������
if ((ARow = 6) or (ARow = 7)) then
    begin
    if  (StrToFloat(sgTabl11.Cells[ACol,ARow]) > 100) then
      begin
        sgTabl11.Cells[ACol,ARow] := '0';
        Application.MessageBox('% �� ����� ���� ������ 100.', '����������', MB_OK);
        exit;
      end;
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl11.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 2) then
      begin
        if not (Value.EndsWith(',')) then
          begin
            sgTabl11.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
          end
          else
            sgTabl11.Cells[ACol,ARow] := Value.Substring(0,posComma + 1);
      end;
    end;
//�������� ����� 2 ����� ����� �������
if ((ARow < 5) or (ARow > 8)) then
    begin
    posComma := Value.IndexOf(',');
    if  (posComma = 0) then
      sgTabl11.Cells[ACol,ARow] := ''
    else
    if  (posComma > 0) and (Value.Length >= posComma + 3) then
      begin
        if not (Value.EndsWith(',')) then
          sgTabl11.Cells[ACol,ARow] := Value.Substring(0,posComma + 3)
          else
            sgTabl11.Cells[ACol,ARow] := Value.Substring(0,posComma + 2);
      end;
    end;

end;
end;

procedure TFormAnketaTables.btnSaveTabl11Click(Sender: TObject);
begin
  //��������� 0 ������ ����
  fillCellZeroTabl(sgTabl11);
  if isUnique then
  //���������� �����
  begin
  if DataMdl.InsertIntoTabl11(DataMdl.ADOQueryAnketa,sgTabl11.Cells[1,1],sgTabl11.Cells[1,2],
    sgTabl11.Cells[1,3],sgTabl11.Cells[1,4],sgTabl11.Cells[1,6],sgTabl11.Cells[1,7],
    sgTabl11.Cells[1,9],sgTabl11.Cells[1,10],sgTabl11.Cells[1,12],sgTabl11.Cells[1,13],
    kodregion,kodrajon,kodhoz,year) > 0 then
      Application.MessageBox('Tabl11 ���������!', '����������', MB_OK)
    else
      Application.MessageBox('������! Tabl11 �� ���������', '����������', MB_OK);
  end
  //�������������� �������������
  else
    begin
      if DataMdl.UpdateTabl11(DataMdl.ADOQueryAnketa,sgTabl11.Cells[1,1],sgTabl11.Cells[1,2],
    sgTabl11.Cells[1,3],sgTabl11.Cells[1,4],sgTabl11.Cells[1,6],sgTabl11.Cells[1,7],
    sgTabl11.Cells[1,9],sgTabl11.Cells[1,10],sgTabl11.Cells[1,12],sgTabl11.Cells[1,13],id) > 0 then
        Application.MessageBox('Tabl11 ��������!', '����������', MB_OK)
      else
        Application.MessageBox('������! Tabl11 �� ��������', '����������', MB_OK);
    end;
end;

procedure TFormAnketaTables.btnExcelTabl11Click(Sender: TObject);
begin
  ExportToExcelTabl11('����11');
end;

//������������ ����11
procedure TFormAnketaTables.ExportToExcelTabl11(NameSheet: String);
var
Unknown: IUnknown;
MsExcel: Variant;
ExcelActive: HResult;
AppProgID: String;
i,j: integer;
begin
AppProgID:='Excel.Application';
//if not FileExists(FullPathToProg+'doc\outbonmilk.xls') then
  CopyFile(PChar(FullPathToProg+'outpassport.xls'),PChar(FullPathToProg+'doc\outpassport.xls'),False);
ExcelActive := GetActiveObject(ProgIdToClassID(AppProgID),nil,Unknown);
if (ExcelActive=MK_E_UNAVAILABLE) then
  MsExcel := CreateOleObject(AppProgID)
  else
  MsExcel := GetActiveOleObject('Excel.Application');
  MsExcel.Visible:=False;
  MsExcel.Workbooks.Open(FullPathToProg+'doc\outpassport.xls');
  MsExcel.WorkSheets[NameSheet].Activate;
  // excel[row,col] stringgrid[col,row]
  MsExcel.WorkSheets[NameSheet].Cells[4,1].Value := '   ��� ������� ' + kodregion +
    '      ��� ������ ' + kodrajon + '      ��� ��������� ' + kodhoz + '              ��� '
    + year + '      ������� 9';
      for j := 1 to sgTabl11.RowCount -1 do
        for i := 1 to sgTabl11.ColCount -1 do
          begin
            MsExcel.WorkSheets[NameSheet].Cells[j+6,i+1].Value := sgTabl11.Cells[i,j];
          end;
MsExcel.Visible:=True;
end;

//������� ����11
procedure TFormAnketaTables.btnDeleteTabl11Click(Sender: TObject);
var
  i,j : integer;
begin
  if MessageDlg('������� �������11?', mtConfirmation,[mbOK, mbCancel], 0)=mrOK then
    with DataMdl do
      begin
        if (not isUnique(ADOQuerySprSost,'tabl11',kodregion,kodrajon,kodhoz,year)) then
          begin
            if DeleteFromTable(ADOQuerySprSost,'tabl11',id) > 0 then
              begin
                //�������
                for j := 1 to sgTabl11.RowCount -1 do
                  for i := 1 to sgTabl11.ColCount -1 do
                  begin
                    if (j = 5) or (j = 8) or (j = 11)  then
                      continue;
                    sgTabl11.Cells[i,j] := '';
                  end;
                Application.MessageBox('������ �������!', '����������', MB_OK);
              end
              else
                Application.MessageBox('������ �� ���� �������!', '����������', MB_OK);
          end
          else
            Application.MessageBox('� ������ �������!', '����������', MB_OK);
      end;
end;

end.
