unit UnitSprav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, VCl.Dialogs, VCl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Data.DB, ActiveX, ComObj, System.UITypes,
  System.StrUtils;

type
  TFormSprav = class(TForm)
    DBGridSprav: TDBGrid;
    DBNavigatorSprav: TDBNavigator;
    Panel1: TPanel;
    SpdBtnPrint: TSpeedButton;
    SpdBtnSearch: TSpeedButton;
    cbSearch: TComboBox;
    lblSearch: TLabel;
    SpdBtnAdd: TSpeedButton;
    SpdBtnEdit: TSpeedButton;
    SpdBtnDelete: TSpeedButton;
    procedure SpdBtnPrintClick(Sender: TObject);
    procedure SpdBtnSearchClick(Sender: TObject);
    procedure DBGridSpravDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpdBtnAddClick(Sender: TObject);
    procedure SpdBtnSaveClick(Sender: TObject);
    procedure SpdBtnCancelClick(Sender: TObject);
    procedure SpdBtnDeleteClick(Sender: TObject);
    procedure SpdBtnEditClick(Sender: TObject);
    procedure DBGridSpravKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpenRajon();
    procedure OpenXoz();
    procedure OpenOkrug();
    procedure cbSearchSelect(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
function MaxCode(tblName,fldName,whereStr: String): Integer;
function isUniqueCode(tblName,fldName,WhereStr,NewCode: String): Boolean;

var
  FormSprav: TFormSprav;

implementation

uses UnitDB, UnitVariables, UnitAddRegion, UnitAddRajon, UnitAddNewOrg,
   UnitMain, UnitOkrug;

//var
//MsExcel,Sheets,ArrayData,Cell1,Cell2,Range : Variant;

{$R *.dfm}

function MaxCode(tblName,fldName,whereStr: String): Integer;
begin
with DataMdl.ADOQueryEdit do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT max('+fldName+') as maxcode'+' FROM '+tblName+whereStr);
  Open;
  Result := FieldByName('maxcode').AsInteger;
  end;
end;

function isUniqueCode(tblName,fldName,WhereStr,NewCode: String): Boolean;
begin
Result := False;
with DataMdl.ADOQueryEdit do
  begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT '+fldName+' FROM '+tblName+' WHERE '+WhereStr+fldName+'='+NewCode);
  Open;
  if RecordCount = 0 then
    Result := True;
  end;

end;

procedure TFormSprav.OpenRajon();
begin
FormSprav.Caption:='������ �� �������������. ����������� �������';
FormMain.OpenMenuSprav('SELECT spobl.kod, spobl.im, kodra.kodraj, kodra.im '+
              'FROM spobl LEFT JOIN kodra ON spobl.kod = kodra.kodr ORDER BY kodr,kodraj');
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayLabel:='��� �������';
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayWidth:=38;
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayLabel:='������ (����������, ����, �������)';
DataMdl.ADOQuerySprav.FieldByName('kodraj').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kodraj').DisplayLabel:='��� ������';
DataMdl.ADOQuerySprav.FieldByName('kodra.im').DisplayWidth:=38;
DataMdl.ADOQuerySprav.FieldByName('kodra.im').DisplayLabel:='������������ ������';

FormSprav.Tag:=2;
FormSprav.lblSearch.Caption:='������� ������ ��� ������';
   with DataMdl do
     begin
     ADOQuerySprav.First;
     FormSprav.cbSearch.Clear;
     while not ADOQuerySprav.Eof do
       begin
       if FormSprav.cbSearch.Items.IndexOf(ADOQuerySprav.FieldByName('spobl.im').AsString) = -1 then
         FormSprav.cbSearch.Items.Add(ADOQuerySprav.FieldByName('spobl.im').AsString);
       ADOQuerySprav.Next;
       end;
     end;
FormSprav.SpdBtnAdd.Visible:=True;
FormSprav.SpdBtnEdit.Visible:=True;
FormSprav.SpdBtnDelete.Visible:=True;
end;

procedure TFormSprav.OpenXoz();
begin
FormMain.OpenMenuSprav('SELECT spobl.kod, spobl.im, kodra.kodraj, kodra.im, kodxoz.kodx, kodxoz.im '+
              'FROM (spobl LEFT JOIN kodra ON spobl.kod = kodra.kodr) LEFT JOIN kodxoz ON '+
              '(kodra.kodr = kodxoz.kodr) AND (kodra.kodraj = kodxoz.kodraj) ORDER BY spobl.kod, kodra.kodraj,kodxoz.kodx');
FormSprav.Caption:='������ �� �������������. ����������� �����������';
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayLabel:='��� �������';
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayWidth:=25;
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayLabel:='������ (����������, ����, �������)';
DataMdl.ADOQuerySprav.FieldByName('kodraj').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kodraj').DisplayLabel:='��� ������';
DataMdl.ADOQuerySprav.FieldByName('kodra.im').DisplayWidth:=25;
DataMdl.ADOQuerySprav.FieldByName('kodra.im').DisplayLabel:='������������ ������';
DataMdl.ADOQuerySprav.FieldByName('kodx').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kodx').DisplayLabel:='��� �����������';
DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').DisplayWidth:=25;
DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').DisplayLabel:='������������ �����������';


if not Assigned(FormSprav) then begin
    FormSprav := TFormSprav.Create(Application);
    FormSprav.Show;
  end
  else
  FormSprav.Show;

FormSprav.Tag:=3;
FormSprav.lblSearch.Caption:='������� ������ ��� ������';
   with DataMdl.ADOQueryCategory do
     begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT kod,im FROM spobl ORDER BY im');
     Open;
     First;
     FormSprav.cbSearch.Clear;
     while not Eof do
       begin
       if FormSprav.cbSearch.Items.IndexOf(FieldByName('im').AsString) = -1 then
       FormSprav.cbSearch.Items.Add(FieldByName('im').AsString);
       //tempStr := ADOQuerySprav.FieldByName('kodra.im').AsString;
       Next;
       end;
     end;
FormSprav.SpdBtnAdd.Visible:=False;
FormSprav.SpdBtnEdit.Visible:=False;
FormSprav.SpdBtnDelete.Visible:=False;
end;

procedure TFormSprav.OpenOkrug();
begin
FormSprav.Caption:='������ �� �������������. ����������� ����������� �������';
FormMain.OpenMenuSprav('SELECT * FROM kokr order by kod');
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayLabel:='���';
DataMdl.ADOQuerySprav.FieldByName('im').DisplayWidth:=64;
DataMdl.ADOQuerySprav.FieldByName('im').DisplayLabel:='����������� �����';
//FormSprav.DBNavigatorSprav.VisibleButtons:=[nbFirst,nbPrior,nbNext,nbLast];
FormSprav.Tag := 4;
FormSprav.lblSearch.Caption:='������� ������ �����';
   with DataMdl do
     begin
     ADOQuerySprav.First;
     FormSprav.cbSearch.Clear;
     while not ADOQuerySprav.Eof do
       begin
       FormSprav.cbSearch.Items.Add(ADOQuerySprav.FieldByName('im').AsString);
       ADOQuerySprav.Next;
       end;
     end;

end;


procedure TFormSprav.SpdBtnPrintClick(Sender: TObject);
var
i: Integer;
//sIm1,sIm2{,is_breed}: String;
begin
try//��������� Excel � ������� ���.�����
MsExcel := CreateOleObject('Excel.Application');
//���-�� ������ � ����� �����
MsExcel.SheetsInNewWorkbook := 1;//
//��������� ���.�����
MsExcel.WorkBooks.Add;
//� ���������� "��������" ������� ����
Sheets := MsExcel.Workbooks[1].Sheets[1];
Except
ShowMessage('�� ���� ������� Excel!');
Exit;
MsExcel.Quit;
MsExcel:=Unassigned;

end;//try-except

MsExcel.Visible := False;

case FormSprav.Tag of
1: //DataMdl.RvProject1.ExecuteReport('spobl');
   begin
   Sheets.Cells[2,3].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[2,3].Value := '������ ������������� ��������';

   Cell1 := Sheets.Cells[4,1];//������ ������
   Cell2 := Sheets.Cells[4,2];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,1].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,1].Value := '��� �������';

   Cell1 := Sheets.Cells[4,3];//������ ������
   Cell2 := Sheets.Cells[4,4];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,3].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,3].Value := '����.��� ����� ����';

   Cell1 := Sheets.Cells[4,5];//������ ������
   Cell2 := Sheets.Cells[4,8];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,5].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,5].Value := '������ (����������, ����, �������)';
   Cell1 := Sheets.Cells[4,9];//������ ������
   Cell2 := Sheets.Cells[4,12];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,9].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,9].Value := '����������� �����';

   with DataMdl do
     begin
     Screen.Cursor := crHourGlass;
     i := 1;
     ADOQuerySprav.First;
     ADOQuerySprav.DisableControls;
     while not ADOQuerySprav.Eof do
       begin
       Sheets.Cells[i+4,1].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,1].Value := ADOQuerySprav.FieldByName('kod').AsString;
       Sheets.Cells[i+4,3].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,3].Value := ADOQuerySprav.FieldByName('kodb').AsString;
       Sheets.Cells[i+4,5].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,5].Value := ADOQuerySprav.FieldByName('spobl.im').AsString;
       Sheets.Cells[i+4,9].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,9].Value := ADOQuerySprav.FieldByName('kokr.im').AsString;
       ADOQuerySprav.Next;
       inc(i);
       end;
     ADOQuerySprav.EnableControls;
     Screen.Cursor := crDefault;
     end;


   MsExcel.Visible := True;
   end;
2: //DataMdl.RvProject1.ExecuteReport('kodra');
begin
   Sheets.Cells[2,4].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[2,4].Value := '������ ������������� �������';

   Cell1 := Sheets.Cells[4,1];//������ ������
   Cell2 := Sheets.Cells[4,2];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,1].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,1].Value := '��� �������';

   Cell1 := Sheets.Cells[4,3];//������ ������
   Cell2 := Sheets.Cells[4,5];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,3].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,3].Value := '������(����������,����,���.)';

   Cell1 := Sheets.Cells[4,6];//������ ������
   Cell2 := Sheets.Cells[4,6];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,6].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,6].Value := '��� ���.';

   Cell1 := Sheets.Cells[4,7];//������ ������
   Cell2 := Sheets.Cells[4,9];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,7].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,7].Value := '������������ ������';


   with DataMdl do
     begin
     Screen.Cursor := crHourGlass;
     i := 1;
     ADOQuerySprav.First;
     ADOQuerySprav.DisableControls;
     while not ADOQuerySprav.Eof do
       begin
       Sheets.Cells[i+4,1].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,1].Value := ADOQuerySprav.FieldByName('kod').AsString;
       Sheets.Cells[i+4,3].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,3].Value := ADOQuerySprav.FieldByName('spobl.im').AsString;
       Sheets.Cells[i+4,6].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,6].Value := ADOQuerySprav.FieldByName('kodraj').AsString;
       Sheets.Cells[i+4,7].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,7].Value := ADOQuerySprav.FieldByName('kodra.im').AsString;
       ADOQuerySprav.Next;
       inc(i);
       end;
     ADOQuerySprav.EnableControls;
     Screen.Cursor := crDefault;
     end;


   MsExcel.Visible := True;
end;   

3: //DataMdl.RvProject1.ExecuteReport('kodxoz');
begin
   Sheets.Cells[2,4].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[2,4].Value := '������ ������������� �����������';
   {
   Cell1 := Sheets.Cells[4,1];//������ ������
   Cell2 := Sheets.Cells[4,2];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,1].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,1].Value := '��� �������';
   }
   Cell1 := Sheets.Cells[4,1];//������ ������
   Cell2 := Sheets.Cells[4,3];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,1].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,1].Value := '������(����������,����,���.)';
{
   Cell1 := Sheets.Cells[4,6];//������ ������
   Cell2 := Sheets.Cells[4,6];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,6].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,6].Value := '��� ���.';
 }
   Cell1 := Sheets.Cells[4,4];//������ ������
   Cell2 := Sheets.Cells[4,6];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,4].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,4].Value := '������������ ������';

   Cell1 := Sheets.Cells[4,7];//������ ������
   Cell2 := Sheets.Cells[4,7];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,7].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,7].Value := '��� ���-��';

   Cell1 := Sheets.Cells[4,8];//������ ������
   Cell2 := Sheets.Cells[4,10];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,8].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,8].Value := '������������ �����������';


   with DataMdl do
     begin
     Screen.Cursor := crHourGlass;
     i := 1;
     ADOQuerySprav.First;
     ADOQuerySprav.DisableControls;
     while not ADOQuerySprav.Eof do
       begin
       {
       Sheets.Cells[i+4,1].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,1].Value := ADOQuerySprav.FieldByName('kodr').AsString;
       }
       Sheets.Cells[i+4,1].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,1].Value := ADOQuerySprav.FieldByName('spobl.im').AsString;
       {
       Sheets.Cells[i+4,6].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,6].Value := ADOQuerySprav.FieldByName('kodraj').AsString;
       }
       Sheets.Cells[i+4,4].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,4].Value := ADOQuerySprav.FieldByName('kodra.im').AsString;
       Sheets.Cells[i+4,7].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,7].Value := ADOQuerySprav.FieldByName('kodx').AsString;
       Sheets.Cells[i+4,8].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,8].Value := ADOQuerySprav.FieldByName('kodxoz.im').AsString;
       ADOQuerySprav.Next;
       inc(i);
       end;
     ADOQuerySprav.EnableControls;
     Screen.Cursor := crDefault;
     end;
  MsExcel.Visible := True;
end;

4: //DataMdl.RvProject1.ExecuteReport('kokr');
   begin
   Sheets.Cells[2,1].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[2,2].Value := '������ ����������� �������';

   Cell1 := Sheets.Cells[4,1];//������ ������
   Cell2 := Sheets.Cells[4,2];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,1].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,1].Value := '���';

   Cell1 := Sheets.Cells[4,3];//������ ������
   Cell2 := Sheets.Cells[4,6];
   Range := Sheets.Range[Cell1, Cell2];
   Range.MergeCells := True;
   Range.Select;
   MsExcel.Selection.Borders.LineStyle := xlContinuous;
   MsExcel.Selection.Borders.Weight := xlThin;
   Sheets.Cells[4,3].Select;
   MsExcel.Selection.Font.Size := 9;
   Sheets.Cells[4,3].Value := '����������� �����';

   with DataMdl do
     begin
     Screen.Cursor := crHourGlass;
     i := 1;
     ADOQuerySprav.First;
     ADOQuerySprav.DisableControls;
     while not ADOQuerySprav.Eof do
       begin
       Sheets.Cells[i+4,1].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,1].Value := ADOQuerySprav.FieldByName('kod').AsString;
       Sheets.Cells[i+4,3].Select;
       MsExcel.Selection.Font.Size := 9;
       Sheets.Cells[i+4,3].Value := ADOQuerySprav.FieldByName('im').AsString;
       ADOQuerySprav.Next;
       inc(i);
       end;
     ADOQuerySprav.EnableControls;
     Screen.Cursor := crDefault;
     end;


   MsExcel.Visible := True;
 end;


end;

end;

procedure TFormSprav.SpdBtnSearchClick(Sender: TObject);
begin
if cbSearch.Text<>'' then
begin
case FormSprav.Tag of
1: DataMdl.ADOQuerySprav.Locate('spobl.im',Trim(cbSearch.Text),[loCaseInsensitive]);
2: DataMdl.ADOQuerySprav.Locate('spobl.im',Trim(cbSearch.Text),[loCaseInsensitive]);
3://�����������
  //DataMdl.ADOQuerySprav.Locate('spobl.im',Trim(cbSearch.Text),[loCaseInsensitive]);
begin
FormMain.OpenMenuSprav('SELECT spobl.kod, spobl.im, kodra.kodraj, kodra.im, kodxoz.kodx, kodxoz.im '+
              'FROM (spobl LEFT JOIN kodra ON spobl.kod = kodra.kodr) LEFT JOIN kodxoz ON '+
              '(kodra.kodr = kodxoz.kodr) AND (kodra.kodraj = kodxoz.kodraj)'+
              ' WHERE spobl.im='+''''+cbSearch.Text+''''+' ORDER BY spobl.kod, kodra.kodraj,kodxoz.kodx');
FormSprav.Caption:='������ �� �������������. ����������� �����������';
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayLabel:='��� �������';
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayWidth:=25;
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayLabel:='������ (����������, ����, �������)';
DataMdl.ADOQuerySprav.FieldByName('kodraj').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kodraj').DisplayLabel:='��� ������';
DataMdl.ADOQuerySprav.FieldByName('kodra.im').DisplayWidth:=25;
DataMdl.ADOQuerySprav.FieldByName('kodra.im').DisplayLabel:='������������ ������';
DataMdl.ADOQuerySprav.FieldByName('kodx').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kodx').DisplayLabel:='��� �����������';
DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').DisplayWidth:=25;
DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').DisplayLabel:='������������ �����������';

FormSprav.SpdBtnAdd.Enabled := True;
FormSprav.SpdBtnEdit.Enabled := True;
FormSprav.SpdBtnDelete.Enabled := True;
end;
4: DataMdl.ADOQuerySprav.Locate('im',Trim(cbSearch.Text),[loCaseInsensitive]);

end;
end
else
Application.MessageBox('������ �� �������.', '����������', MB_OK);
end;

procedure TFormSprav.DBGridSpravDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
with DBGridSprav.Canvas do
begin
if (gdSelected in State) then
  begin
  Brush.Color := clBlue;
  Font.Color := clWhite;
  FillRect(Rect);
  TextOut(Rect.Left,Rect.Top,Column.Field.Text);
  end
else
DBGridSprav.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;
end;

procedure TFormSprav.SpdBtnAddClick(Sender: TObject);
begin
FormSprav.DBGridSprav.SetFocus;
FormSprav.DBGridSprav.ReadOnly := False;
case FormSprav.Tag of
1: begin//�������
   if not Assigned(FormAddRegion) then
     FormAddRegion := TFormAddRegion.Create(Application);
     FormAddRegion.Tag := 1;//Add new
     FormAddRegion.edtNameRegion.Text := '';
     FormAddRegion.edtCodeRegion.Text := IntToStr(MaxCode('spobl','kod','')+1);

     with FormAddRegion,DataMdl.ADOQueryOpt do
     begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM kokr ORDER by im');
     Open;
     First;
     cbOkrug.Clear;
     while not Eof do
       begin
       cbOkrug.Items.Add(FieldByName('im').AsString);
       Next;
       end;
     end;

     FormAddRegion.ShowModal;
   end;
2: begin//������
     if not Assigned(FormAddNewRajon) then
       FormAddNewRajon := TFormAddNewRajon.Create(Application);
     FormAddNewRajon.Tag := 1;//Add new
     FormAddNewRajon.lblRegion.Caption := DataMdl.ADOQuerySprav.FieldByName('spobl.im').AsString;
     FormAddNewRajon.edtCodeRajon.Enabled := True;
     FormAddNewRajon.edtCodeRajon.Text := IntToStr(MaxCode('kodra','kodraj',' WHERE kodr='+DataMdl.ADOQuerySprav.FieldByName('kod').AsString)+1);
     FormAddNewRajon.edtNameRajon.Text := '';

     FormAddNewRajon.ShowModal;
   end;
3: begin//���������
     if Trim(DataMdl.ADOQuerySprav.FieldByName('kodra.im').AsString)<>'' then
     begin
     if not Assigned(FormAddNewOrg) then
       FormAddNewOrg := TFormAddNewOrg.Create(Application);
     FormAddNewOrg.Tag := 1;//Add new
     FormAddNewOrg.edtCodeOrg.Enabled := True;
     FormAddNewOrg.lblRegion.Caption := DataMdl.ADOQuerySprav.FieldByName('spobl.im').AsString;
    //FormAddNewOrg.lblRajon.Caption := DataMdl.ADOQuerySprav.FieldByName('kodra.im').AsString;
     region := DataMdl.ADOQuerySprav.FieldByName('spobl.im').AsString;
     rajon := DataMdl.ADOQuerySprav.FieldByName('kodra.im').AsString;
     hoz := DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').AsString;
     kodregion := DataMdl.ADOQuerySprav.FieldByName('kod').AsString;
     kodrajon := DataMdl.ADOQuerySprav.FieldByName('kodraj').AsString;
     kodhoz := DataMdl.ADOQuerySprav.FieldByName('kodx').AsString;
     if region<>'' then
     begin
     DataMdl.ADOQueryTables.Close;
     DataMdl.ADOQueryTables.SQL.Clear;
     DataMdl.ADOQueryTables.SQL.Add('select im from kodra where kodr=(select kod from spobl where im='+''''+region+''''+')'+' ORDER BY im');
     DataMdl.ADOQueryTables.Open;
     DataMdl.ADOQueryTables.First;
     FormAddNewOrg.cbRajon.Clear;
     while not DataMdl.ADOQueryTables.Eof do
       begin
       FormAddNewOrg.cbRajon.Items.Add(DataMdl.ADOQueryTables.FieldByName('im').AsString);
       DataMdl.ADOQueryTables.Next;
       end;
      FormAddNewOrg.cbRajon.Text := FormAddNewOrg.cbRajon.Items.Strings[FormAddNewOrg.cbRajon.Items.IndexOf(rajon)];
     end;


     FormAddNewOrg.edtCodeOrg.Text := IntToStr(MaxCode('kodxoz','kodx',' WHERE kodr='+DataMdl.ADOQuerySprav.FieldByName('kod').AsString+
          ' AND kodraj='+DataMdl.ADOQuerySprav.FieldByName('kodraj').AsString)+1);
     FormAddNewOrg.cbXozName.Text := '';

     FormAddNewOrg.ShowModal;
     end
     else
       Application.MessageBox('������� ����� �������� ����� � ���������� ������� ��� ����� �������, � ����� ��������� ���������.', '����������', MB_OK);
   end;
4: begin//������
     if not Assigned(FormOkrug) then
       FormOkrug := TFormOkrug.Create(Application);
     FormOkrug.Tag := 1;//Add new
     FormOkrug.edtCodeOkrug.Enabled := True;
     FormOkrug.edtCodeOkrug.Text := '';
     FormOkrug.edtNameOkrug.Text := '';
     FormOkrug.ShowModal;

   end;

end;
end;

procedure TFormSprav.SpdBtnSaveClick(Sender: TObject);
begin
//SpdBtnSave.Visible := False;
//SpdBtnCancel.Visible := False;
DataMdl.ADOQuerySprav.Post;
end;

procedure TFormSprav.SpdBtnCancelClick(Sender: TObject);
begin
//SpdBtnSave.Visible := False;
//SpdBtnCancel.Visible := False;
DataMdl.ADOQuerySprav.Cancel;
end;

procedure TFormSprav.SpdBtnDeleteClick(Sender: TObject);
var
keyField: String;
begin
with DataMdl.ADOQuerySprav do begin
  if RecordCount = 0 then
    Exit;
  if MessageDlg('������� ������?', mtConfirmation,[mbYes, mbNo], 0)=mrYes then
    begin
    //if not Active then Open;
    DisableControls;
    //Delete;
    //ConnectionString := ConnectionStr;

    case FormSprav.Tag of
    1: begin//������
       keyField := FieldbyName('kod').AsString;
       //��������� ���� �� � ����������� �������, ������
       //�� ����� �������, ���� ���� ������� ������ ������
       Close;
       SQL.Clear;
       SQL.Add('SELECT * FROM kodra WHERE kodr='+keyField);
       Open;
       if RecordCount=0 then
       begin

       Close;
       SQL.Clear;
       SQL.Add('delete from spobl where kod='+keyField);
       ExecSQL;

       Close;
FormMain.OpenMenuSprav('SELECT spobl.kod, spobl.kodb, spobl.im, kokr.im '+
 'FROM spobl INNER JOIN kokr ON spobl.okrug = kokr.kod ORDER BY spobl.im');
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayWidth:=7;
DataMdl.ADOQuerySprav.FieldByName('kod').DisplayLabel:='��� �������';
DataMdl.ADOQuerySprav.FieldByName('kodb').DisplayWidth:=24;
DataMdl.ADOQuerySprav.FieldByName('kodb').DisplayLabel:='��������� ��� ����� ����';
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayWidth:=64;
DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayLabel:='������ (����������, ����, �������)';
DataMdl.ADOQuerySprav.FieldByName('kokr.im').DisplayWidth:=40;
DataMdl.ADOQuerySprav.FieldByName('kokr.im').DisplayLabel:='����������� �����';
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
       end
       else
       begin
       Application.MessageBox('�������� ������� ����������. ���������� �������������� ������� ��� ������ ����� ������� �� ����������� �������.', '����������', MB_OK);
       Close;
      FormMain.OpenMenuSprav('SELECT spobl.kod, spobl.kodb, spobl.im, kokr.im '+
       'FROM spobl INNER JOIN kokr ON spobl.okrug = kokr.kod ORDER BY spobl.im');
      DataMdl.ADOQuerySprav.FieldByName('kod').DisplayWidth:=7;
      DataMdl.ADOQuerySprav.FieldByName('kod').DisplayLabel:='��� �������';
      DataMdl.ADOQuerySprav.FieldByName('kodb').DisplayWidth:=24;
      DataMdl.ADOQuerySprav.FieldByName('kodb').DisplayLabel:='��������� ��� ����� ����';
      DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayWidth:=64;
      DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayLabel:='������ (����������, ����, �������)';
      DataMdl.ADOQuerySprav.FieldByName('kokr.im').DisplayWidth:=40;
      DataMdl.ADOQuerySprav.FieldByName('kokr.im').DisplayLabel:='����������� �����';
       FormSprav.Tag:=1;
       FormSprav.lblSearch.Caption:='������� ������ ��� ������';
       end;
       end;
    2: begin//�����
       keyField := FieldbyName('kodraj').AsString;
       kodregion := FieldbyName('kod').AsString;

       //��������� ���� �� � ����������� �����������, �����������
       //�� ����� ������, ���� ���� ������� ����� ������
       Close;
       SQL.Clear;
       SQL.Add('SELECT * FROM kodxoz WHERE kodr='+kodregion+
               ' AND kodraj='+keyField);
       Open;
       if RecordCount=0 then
       begin

       Close;
       SQL.Clear;
       SQL.Add('delete from kodra where kodr='+kodregion+' AND kodraj='+keyField);
       ExecSQL;
       Close;

       FormSprav.OpenRajon;
       end
       else
       begin
       Application.MessageBox('�������� ������ ����������. ���������� �������������� ������� ��� ����������� ����� ������ �� ����������� �����������.', '����������', MB_OK);
       FormSprav.OpenRajon;

       end;

       end;
    3: begin//�����������
       keyField := FieldbyName('kodx').AsString;
       kodrajon := FieldbyName('kodraj').AsString;
       kodregion := FieldbyName('kod').AsString;

       Close;
       SQL.Clear;
       SQL.Add('delete from kodxoz where kodr='+kodregion+' AND kodraj='+kodrajon+' AND kodx='+keyField);
       ExecSQL;
        FormMain.OpenMenuSprav('SELECT spobl.kod, spobl.im, kodra.kodraj, kodra.im, kodxoz.kodx, kodxoz.im '+
                      'FROM (spobl LEFT JOIN kodra ON spobl.kod = kodra.kodr) LEFT JOIN kodxoz ON '+
                      '(kodra.kodr = kodxoz.kodr) AND (kodra.kodraj = kodxoz.kodraj)'+
                      ' WHERE spobl.kod='+kodregion+' ORDER BY spobl.kod, kodra.kodraj,kodxoz.kodx');
        FormSprav.Caption:='������ �� �������������. ����������� �����������';
        DataMdl.ADOQuerySprav.FieldByName('kod').DisplayWidth:=7;
        DataMdl.ADOQuerySprav.FieldByName('kod').DisplayLabel:='��� �������';
        DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayWidth:=25;
        DataMdl.ADOQuerySprav.FieldByName('spobl.im').DisplayLabel:='������ (����������, ����, �������)';
        DataMdl.ADOQuerySprav.FieldByName('kodraj').DisplayWidth:=7;
        DataMdl.ADOQuerySprav.FieldByName('kodraj').DisplayLabel:='��� ������';
        DataMdl.ADOQuerySprav.FieldByName('kodra.im').DisplayWidth:=25;
        DataMdl.ADOQuerySprav.FieldByName('kodra.im').DisplayLabel:='������������ ������';
        DataMdl.ADOQuerySprav.FieldByName('kodx').DisplayWidth:=7;
        DataMdl.ADOQuerySprav.FieldByName('kodx').DisplayLabel:='��� �����������';
        DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').DisplayWidth:=25;
        DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').DisplayLabel:='������������ �����������';
        FormSprav.SpdBtnAdd.Enabled := True;
        FormSprav.SpdBtnEdit.Enabled := True;
        FormSprav.SpdBtnDelete.Enabled := True;


       //FormSprav.OpenXoz();
       end;
    4: begin//�����
       keyField := FieldbyName('kod').AsString;
       Close;
       SQL.Clear;
       SQL.Add('delete from kokr where kod='+keyField);
       ExecSQL;

       FormSprav.OpenOkrug();
       end;




    end;//case
    EnableControls;
  end;//if
end;//with
end;

procedure TFormSprav.SpdBtnEditClick(Sender: TObject);
//var
//keyField: String;
begin;
//SpdBtnSave.Visible := True;
//SpdBtnCancel.Visible := True;
FormSprav.DBGridSprav.ReadOnly := False;
FormSprav.DBGridSprav.Options := FormSprav.DBGridSprav.Options+[dgEditing];
case FormSprav.Tag of
1: begin//region
   if not Assigned(FormAddRegion) then
     FormAddRegion := TFormAddRegion.Create(Application);
     FormAddRegion.Tag := 2;//edit
     FormAddRegion.edtCodeRegion.Enabled := False;
     FormAddRegion.edtCodeRegion.Text := DataMdl.ADOQuerySprav.FieldByName('kod').AsString;
     FormAddRegion.edtGKPG.Text := DataMdl.ADOQuerySprav.FieldByName('kodb').AsString;
     FormAddRegion.edtNameRegion.Text := DataMdl.ADOQuerySprav.FieldByName('spobl.im').AsString;
     with FormAddRegion,DataMdl.ADOQueryOpt do
     begin
     Close;
     Sql.Clear;
     Sql.Add('SELECT * FROM kokr ORDER by im');
     Open;
     First;
     cbOkrug.Clear;
     while not Eof do
       begin
       cbOkrug.Items.Add(FieldByName('im').AsString);
       Next;
       end;
     end;
     FormAddRegion.cbOkrug.Text := FormAddRegion.cbOkrug.Items.Strings[FormAddRegion.cbOkrug.Items.IndexOf(DataMdl.ADOQuerySprav.FieldByName('kokr.im').AsString)];

     FormAddRegion.ShowModal;
   end;
2: begin;//rajon
   if not Assigned(FormAddNewRajon) then
     FormAddNewRajon := TFormAddNewRajon.Create(Application);
   FormAddNewRajon.Tag := 2;//Edit
     FormAddNewRajon.edtCodeRajon.Enabled := True;
   FormAddNewRajon.lblRegion.Caption := DataMdl.ADOQuerySprav.FieldByName('spobl.im').AsString;
   FormAddNewRajon.edtCodeRajon.Text := DataMdl.ADOQuerySprav.FieldByName('kodraj').AsString;
   FormAddNewRajon.edtNameRajon.Text := DataMdl.ADOQuerySprav.FieldByName('kodra.im').AsString;
   FormAddNewRajon.ShowModal;
   end;
3: begin;//xoz
     if Trim(DataMdl.ADOQuerySprav.FieldByName('kodra.im').AsString)<>'' then
     begin
     if not Assigned(FormAddNewOrg) then
       FormAddNewOrg := TFormAddNewOrg.Create(Application);
     FormAddNewOrg.Tag := 2;//Edit
     FormAddNewOrg.lblRegion.Caption := DataMdl.ADOQuerySprav.FieldByName('spobl.im').AsString;
     //FormAddNewOrg.lblRajon.Caption := DataMdl.ADOQuerySprav.FieldByName('kodra.im').AsString;

     region := DataMdl.ADOQuerySprav.FieldByName('spobl.im').AsString;
     rajon := DataMdl.ADOQuerySprav.FieldByName('kodra.im').AsString;
     hoz := DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').AsString;
     kodregion := DataMdl.ADOQuerySprav.FieldByName('kod').AsString;
     kodrajon := DataMdl.ADOQuerySprav.FieldByName('kodraj').AsString;
     kodhoz := DataMdl.ADOQuerySprav.FieldByName('kodx').AsString;
     //��������� ������
     if region<>'' then
     begin
     DataMdl.ADOQueryTables.Close;
     DataMdl.ADOQueryTables.SQL.Clear;
     DataMdl.ADOQueryTables.SQL.Add('select im from kodra where kodr=(select kod from spobl where im='+''''+region+''''+')'+' ORDER BY im');
     DataMdl.ADOQueryTables.Open;
     DataMdl.ADOQueryTables.First;
     FormAddNewOrg.cbRajon.Clear;
     while not DataMdl.ADOQueryTables.Eof do
       begin
       FormAddNewOrg.cbRajon.Items.Add(DataMdl.ADOQueryTables.FieldByName('im').AsString);
       DataMdl.ADOQueryTables.Next;
       end;
      FormAddNewOrg.cbRajon.Text := FormAddNewOrg.cbRajon.Items.Strings[FormAddNewOrg.cbRajon.Items.IndexOf(rajon)];
     end;
     //��������� ��������� ��� ������
    if rajon<>'' then
     begin
     DataMdl.ADOQueryTables.Close;
     DataMdl.ADOQueryTables.SQL.Clear;
     DataMdl.ADOQueryTables.SQL.Add('SELECT im FROM kodxoz WHERE kodr='+kodregion+' AND kodraj='
     +kodrajon+' ORDER BY im');
     DataMdl.ADOQueryTables.Open;
     DataMdl.ADOQueryTables.First;
     FormAddNewOrg.cbXozName.Clear;
     while not DataMdl.ADOQueryTables.Eof do
       begin
       FormAddNewOrg.cbXozName.Items.Add(DataMdl.ADOQueryTables.FieldByName('im').AsString);
       DataMdl.ADOQueryTables.Next;
       end;
      FormAddNewOrg.cbXozName.Text := FormAddNewOrg.cbXozName.Items.Strings[FormAddNewOrg.cbXozName.Items.IndexOf(hoz)];
     end;


     FormAddNewOrg.edtCodeOrg.Enabled := False;
     FormAddNewOrg.edtCodeOrg.Text := kodhoz;
     FormAddNewOrg.cbXozName.Text := hoz;
     //FormAddNewOrg.edtNameOrg.Text := DataMdl.ADOQuerySprav.FieldByName('kodxoz.im').AsString;

     FormAddNewOrg.ShowModal;
     end
     else
       Application.MessageBox('������� ����� �������� ����� � ���������� ������� ��� ����� �������, � ����� ��������� ���������.', '����������', MB_OK);
   end;
4: begin//�����
     if not Assigned(FormOkrug) then
       FormOkrug := TFormOkrug.Create(Application);
     FormOkrug.Tag := 2;//edit
     FormOkrug.edtCodeOkrug.Enabled := False;

     FormOkrug.edtCodeOkrug.Text := DataMdl.ADOQuerySprav.FieldByName('kod').AsString;
     FormOkrug.edtNameOkrug.Text := DataMdl.ADOQuerySprav.FieldByName('im').AsString;

     FormOkrug.ShowModal;

   end;


end;
end;


procedure TFormSprav.DBGridSpravKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = vk_Return then
  key := Vk_tab;
end;

procedure TFormSprav.cbSearchSelect(Sender: TObject);
begin
  FormSprav.SpdBtnAdd.Visible:=True;
  FormSprav.SpdBtnEdit.Visible:=True;
  FormSprav.SpdBtnDelete.Visible:=True;
end;

end.
