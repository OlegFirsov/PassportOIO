unit UnitDB;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, System.Win.ComObj,
  Vcl.Forms, Winapi.Windows;

type
  TDataMdl = class(TDataModule)
    ADOQuerySprSost: TADOQuery;
    ADOQueryTables: TADOQuery;
    ADOQueryOpt: TADOQuery;
    ADOQueryCategory: TADOQuery;
    DataSourceAnketa: TDataSource;
    DataSourceCategory: TDataSource;
    DataSourceSprav: TDataSource;
    ADOQueryEdit: TADOQuery;
    ADOQuerySprav: TADOQuery;
    ADOQueryAnketa: TADOQuery;
    ADOConnection1: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConnectToDB();
    function isUnique(ADOQuery:TADOQuery;tName: string;kodr: string;kodrn: string;kodh: string;god: string):boolean;
    procedure SelectFromTable(ADOQuery:TADOQuery;fName:string;tName:string;where:string;orderBy:string);
    function DeleteFromTable(ADOQuery:TADOQuery;tName:string;id:string):integer;
    function InsertIntoAnketa(ADOQuery:TADOQuery;kodr: string;kodrn: string;kodh: string;p_ind: string;
      posel: string;tel: string;fax: string;email: string;rs: string;ks: string;nalog: string;
      bik_rs: string;bank: string;town: string;strength: string;spec: string;fam: string;
      colpred: string;colzootech: string;proczootech: string;colzoosel: string;proczoosel: string;
      coltechplem: string;proctechplem: string;pl: string;pash: string;seno: string;god: string):integer;
    function UpdateAnketa(ADOQuery:TADOQuery;kodr: string;kodrn: string;kodh: string;p_ind: string;
      posel: string;tel: string;fax: string;email: string;rs: string;ks: string;nalog: string;
      bik_rs: string;bank: string;town: string;strength: string;spec: string;fam: string;
      colpred: string;colzootech: string;proczootech: string;colzoosel: string;proczoosel: string;
      coltechplem: string;proctechplem: string;pl: string;pash: string;seno: string;god: string;id: string):integer;
function InsertIntoTabl1(ADOQuery:TADOQuery;t101: string;t102: string;t103: string;
    t104: string;t105: string;t106: string;t107: string;t108: string;t109: string;
    t110: string;t111: string;t112: string;t113: string;t114: string;t115: string;
    t116: string;t117: string;t118: string;t119: string;t120: string;t121: string;
    t122: string;t123: string;t124: string;t125: string;t126: string;t127: string;
    t128: string;t129: string;t130: string;t131: string;t132: string;t133: string;
    t134: string;t135: string;t136: string;t137: string;t138: string;t139: string;
    t140: string;t141: string;t142: string;t143: string;kodr: string;kodrn: string;
    kodh: string;god: string):integer;
function UpdateTabl1(ADOQuery:TADOQuery;t101: string;t102: string;t103: string;
    t104: string;t105: string;t106: string;t107: string;t108: string;t109: string;
    t110: string;t111: string;t112: string;t113: string;t114: string;t115: string;
    t116: string;t117: string;t118: string;t119: string;t120: string;t121: string;
    t122: string;t123: string;t124: string;t125: string;t126: string;t127: string;
    t128: string;t129: string;t130: string;t131: string;t132: string;t133: string;
    t134: string;t135: string;t136: string;t137: string;t138: string;t139: string;
    t140: string;t141: string;t142: string;t143: string;id: string):integer;
function InsertIntoTabl2(ADOQuery:TADOQuery;t201: string;t202: string;t203: string;
    t204: string;t205: string;t206: string;t207: string;t208: string;t209: string;
    t210: string;t211: string;t212: string;t213: string;t214: string;t215: string;
    t216: string;t217: string;t218: string;t219: string;t220: string;t221: string;
    t222: string;t223: string;t224: string;t225: string;t226: string;t227: string;
    t228: string;t229: string;t230: string;kodr: string;kodrn: string;kodh: string;
    god: string):integer;
function UpdateTabl2(ADOQuery:TADOQuery;t201: string;t202: string;t203: string;
    t204: string;t205: string;t206: string;t207: string;t208: string;t209: string;
    t210: string;t211: string;t212: string;t213: string;t214: string;t215: string;
    t216: string;t217: string;t218: string;t219: string;t220: string;t221: string;
    t222: string;t223: string;t224: string;t225: string;t226: string;t227: string;
    t228: string;t229: string;t230: string;id: string):integer;
function InsertIntoTabl3(ADOQuery:TADOQuery;t301: string;t302: string;t303: string;
    t304: string;t305: string;t306: string;kodr: string;kodrn: string;kodh: string;
    god: string):integer;
function UpdateTabl3(ADOQuery:TADOQuery;t301: string;t302: string;t303: string;
    t304: string;t305: string;t306: string;id: string):integer;
function InsertIntoTabl4(ADOQuery:TADOQuery;t401: string;t402: string;t403: string;
    t404: string;t405: string;t406: string;t407: string;t408: string;t409: string;
    t410: string;t411: string;kodr: string;kodrn: string;kodh: string;
    god: string):integer;
function UpdateTabl4(ADOQuery:TADOQuery;t401: string;t402: string;t403: string;
    t404: string;t405: string;t406: string;t407: string;t408: string;t409: string;
    t410: string;t411: string;id: string):integer;
function InsertIntoTabl5(ADOQuery:TADOQuery;t501: string;t502: string;t503: string;
    t504: string;t505: string;t506: string;t507: string;t508: string;t509: string;
    kodr: string;kodrn: string;kodh: string;god: string):integer;
function UpdateTabl5(ADOQuery:TADOQuery;t501: string;t502: string;t503: string;
    t504: string;t505: string;t506: string;t507: string;t508: string;t509: string;
    id: string):integer;
function InsertIntoTabl6(ADOQuery:TADOQuery;t601: string;t602: string;t603: string;
    t604: string;t605: string;t606: string;t607: string;t608: string;t609: string;
    t610: string;t611: string;t612: string;kodr: string;kodrn: string;kodh: string;
    god: string):integer;
function UpdateTabl6(ADOQuery:TADOQuery;t601: string;t602: string;t603: string;
    t604: string;t605: string;t606: string;t607: string;t608: string;t609: string;
    t610: string;t611: string;t612: string;id: string):integer;
function InsertIntoTabl7(ADOQuery:TADOQuery;t701: string;t702: string;t703: string;
    t704: string;t705: string;t706: string;kodr: string;kodrn: string;kodh: string;god: string):integer;
function UpdateTabl7(ADOQuery:TADOQuery;t701: string;t702: string;t703: string;
    t704: string;t705: string;t706: string;id: string):integer;
function InsertIntoTabl8(ADOQuery:TADOQuery;t801: string;t802: string;t803: string;
    t804: string;t805: string;t806: string;t807: string;t808: string;t809: string;kodr: string;
    kodrn: string;kodh: string;god: string):integer;
function UpdateTabl8(ADOQuery:TADOQuery;t801: string;t802: string;t803: string;
    t804: string;t805: string;t806: string;t807: string;t808: string;t809: string;id: string):integer;
function InsertIntoTabl9(ADOQuery:TADOQuery;t901: string;t902: string;t903: string;
    t904: string;t905: string;t906: string;t907: string;t908: string;t909: string;
    t910: string;t911: string;t912: string;t913: string;t914: string;t915: string;
    t916: string;t917: string;t918: string;t919: string;kodr: string;
    kodrn: string;kodh: string;god: string):integer;
function UpdateTabl9(ADOQuery:TADOQuery;t901: string;t902: string;t903: string;
    t904: string;t905: string;t906: string;t907: string;t908: string;t909: string;
    t910: string;t911: string;t912: string;t913: string;t914: string;t915: string;
    t916: string;t917: string;t918: string;t919: string;id: string):integer;
function InsertIntoTabl9a(ADOQuery:TADOQuery;t9a01: string;t9a02: string;t9a03: string;
    t9a04: string;t9a05: string;t9a06: string;t9a07: string;t9a08: string;kodr: string;
    kodrn: string;kodh: string;god: string):integer;
function UpdateTabl9a(ADOQuery:TADOQuery;t9a01: string;t9a02: string;t9a03: string;
    t9a04: string;t9a05: string;t9a06: string;t9a07: string;t9a08: string;id: string):integer;
function InsertIntoTabl10(ADOQuery:TADOQuery;t1001: string;t1002: string;t1003: string;
    t1004: string;t1005: string;t1006: string;t1007: string;t1008: string;t1009: string;
    t1010: string;t1011: string;t1012: string;t1013: string;t1014: string;t1015: string;
    t1016: string;t1017: string;t1018: string;t1019: string;t1020: string;t1021: string;
    t1022: string;t1023: string;t1024: string;t1025: string;t1026: string;t1027: string;
    t1028: string;t1029: string;t1030: string;t1031: string;t1032: string;t1033: string;
    t1034: string;t1035: string;t1036: string;t1037: string;t1038: string;t1039: string;
    kodr: string;kodrn: string;kodh: string;god: string):integer;
function UpdateTabl10(ADOQuery:TADOQuery;t1001: string;t1002: string;t1003: string;
    t1004: string;t1005: string;t1006: string;t1007: string;t1008: string;t1009: string;
    t1010: string;t1011: string;t1012: string;t1013: string;t1014: string;t1015: string;
    t1016: string;t1017: string;t1018: string;t1019: string;t1020: string;t1021: string;
    t1022: string;t1023: string;t1024: string;t1025: string;t1026: string;t1027: string;
    t1028: string;t1029: string;t1030: string;t1031: string;t1032: string;t1033: string;
    t1034: string;t1035: string;t1036: string;t1037: string;t1038: string;t1039: string;
    id: string):integer;
function InsertIntoTabl11(ADOQuery:TADOQuery;t1101: string;t1102: string;t1103: string;
    t1104: string;t1105: string;t1106: string;t1107: string;t1108: string;t1109: string;
    t1110: string;kodr: string;kodrn: string;kodh: string;god: string):integer;
function UpdateTabl11(ADOQuery:TADOQuery;t1101: string;t1102: string;t1103: string;
    t1104: string;t1105: string;t1106: string;t1107: string;t1108: string;t1109: string;
    t1110: string;id: string):integer;
procedure SelectAnketa(ADOQuery:TADOQuery;Where:string);
  end;

  TAnketa = class
  private
    { Private declarations }
    Fid: integer;//�������
    Fkodr: integer;//��� �������
    Fkodrn: integer;//��� ������
    Fkodh: integer;//��� ���������
    Fp_ind: string;//�������� ������ 6 ��.
    Fposel: string;//�������, �/�
    Ftel: string;//�������
    Ffax: string;//����
    Femail: string;//����� ����������� �����
    Frs: string;//��������� ����, �����
    Fks: string;//���. ����
    Fnalog: string;//���
    Fbik_rs: string;//���
    Fbank: string;//����, ������������
    Ftown: string;//����� �����
    Fstrength: string;//����� ����������� ����������
    Fspec: string;//� ��� ����� ������������
    Ffam: string;//��� ������������
    Fcolpred: string;//������� ����� �������������������� �����������
    Fcolzootech: string;//������� �����������, ����� ���.
    Fproczootech: string;//% ��������������
    Fcolzoosel: string;//� �.�. �����������-�������������, ���.
    Fproczoosel: string;//% ��������������
    Fcoltechplem: string;//�������� �� ���������� �����, ���.
    Fproctechplem: string;//% ��������������
    Fpl: string;//����� ��������� �������, ��
    Fpash: string;//� �.�. �����, ��
    Fseno: string;//��������, ��.
    Fgod: string;
  public
    { Public declarations }
    constructor Create(id: integer;kodr: integer;kodrn: integer;kodh: integer;
      p_ind: string;posel: string;tel: string;fax: string;email: string;rs: string;
      ks: string;nalog: string;bik_rs: string;bank: string;town: string;strength: string;
      spec: string;fam: string;colpred: string;colzootech: string;proczootech: string;
      colzoosel: string;proczoosel: string;coltechplem: string;proctechplem: string;
      pl: string;pash: string;seno: string;god: string);overload;
    constructor Create(kodr: integer;kodrn: integer;kodh: integer;
      p_ind: string;posel: string;tel: string;fax: string;email: string;rs: string;
      ks: string;nalog: string;bik_rs: string;bank: string;town: string;strength: string;
      spec: string;fam: string;colpred: string;colzootech: string;proczootech: string;
      colzoosel: string;proczoosel: string;coltechplem: string;proctechplem: string;
      pl: string;pash: string;seno: string;god: string);overload;
    property Id: integer read Fid write Fid;
    property Kodr: integer read Fkodr write Fkodr;
    property Kodrn: integer read Fkodrn write Fkodrn;
    property Kodh: integer read Fkodh write Fkodh;
    property P_ind: string read Fp_ind write Fp_ind;
    property Posel: string read Fposel write Fposel;
    property Tel: string read Ftel write Ftel;
    property Fax: string read Ffax write Ffax;
    property Email: string read Femail write Femail;
    property Rs: string read Frs write Frs;
    property Ks: string read Fks write Fks;
    property Nalog: string read Fnalog write Fnalog;
    property Bik_rs: string read Fbik_rs write Fbik_rs;
    property Bank: string read Fbank write Fbank;
    property Town: string read Ftown write Ftown;
    property Strength: string read Fstrength write Fstrength;
    property Spec: string read Fspec  write Fspec;
    property Fam: string read Ffam write Ffam;
    property Colpred: string read Fcolpred write Fcolpred;
    property Colzootech: string read Fcolzootech write Fcolzootech;
    property Proczootech: string read Fproczootech write Fproczootech;
    property Colzoosel: string read Fcolzoosel write Fcolzoosel;
    property Proczoosel: string read Fproczoosel write Fproczoosel;
    property Coltechplem: string read Fcoltechplem write Fcoltechplem;
    property Proctechplem: string read Fproctechplem write Fproctechplem;
    property Pl: string read Fpl write Fpl;
    property Pash: string read Fpash write Fpash;
    property Seno: string read Fseno write Fseno;
    property God: string read Fgod write Fgod;
  end;

var
  DataMdl: TDataMdl;

function transform(s:ShortString): ShortString;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses UnitMain, UnitVariables;

constructor TAnketa.Create(id: integer;kodr: integer;kodrn: integer;kodh: integer;
  p_ind: string;posel: string;tel: string;fax: string;email: string;rs: string;
  ks: string;nalog: string;bik_rs: string;bank: string;town: string;strength: string;
  spec: string;fam: string;colpred: string;colzootech: string;proczootech: string;
  colzoosel: string;proczoosel: string;coltechplem: string;proctechplem: string;
  pl: string;pash: string;seno: string;god: string);
begin
  Fid := id;//�������
  Fkodr := kodr;//��� �������
  Fkodrn := kodrn;//��� ������
  Fkodh := kodh;//��� ���������
  Fp_ind := p_ind;//�������� ������ 6 ��.
  Fposel := posel;//�������, �/�
  Ftel := tel;//�������
  Ffax := fax;//����
  Femail := email;//����� ����������� �����
  Frs := rs;//��������� ����, �����
  Fks := ks;//���. ����
  Fnalog := nalog;//���
  Fbik_rs := bik_rs;//���
  Fbank := bank;//����, ������������
  Ftown := town;//����� �����
  Fstrength := strength;//����� ����������� ����������
  Fspec := spec;//� ��� ����� ������������
  Ffam := fam;//��� ������������
  Fcolpred := colpred;//������� ����� �������������������� �����������
  Fcolzootech := colzootech;//������� �����������, ����� ���.
  Fproczootech := proczootech;//% ��������������
  Fcolzoosel := colzoosel;//� �.�. �����������-�������������, ���.
  Fproczoosel := proczoosel;//% ��������������
  Fcoltechplem := coltechplem;//�������� �� ���������� �����, ���.
  Fproctechplem := proctechplem;//% ��������������
  Fpl := pl;//����� ��������� �������, ��
  Fpash := pash;//� �.�. �����, ��
  Fseno :=  seno;//��������, ��.
  Fgod := year;
end;

constructor TAnketa.Create(kodr: integer;kodrn: integer;kodh: integer;
  p_ind: string;posel: string;tel: string;fax: string;email: string;rs: string;
  ks: string;nalog: string;bik_rs: string;bank: string;town: string;strength: string;
  spec: string;fam: string;colpred: string;colzootech: string;proczootech: string;
  colzoosel: string;proczoosel: string;coltechplem: string;proctechplem: string;
  pl: string;pash: string;seno: string;god: string);
begin
  Fkodr := kodr;//��� �������
  Fkodrn := kodrn;//��� ������
  Fkodh := kodh;//��� ���������
  Fp_ind := p_ind;//�������� ������ 6 ��.
  Fposel := posel;//�������, �/�
  Ftel := tel;//�������
  Ffax := fax;//����
  Femail := email;//����� ����������� �����
  Frs := rs;//��������� ����, �����
  Fks := ks;//���. ����
  Fnalog := nalog;//���
  Fbik_rs := bik_rs;//���
  Fbank := bank;//����, ������������
  Ftown := town;//����� �����
  Fstrength := strength;//����� ����������� ����������
  Fspec := spec;//� ��� ����� ������������
  Ffam := fam;//��� ������������
  Fcolpred := colpred;//������� ����� �������������������� �����������
  Fcolzootech := colzootech;//������� �����������, ����� ���.
  Fproczootech := proczootech;//% ��������������
  Fcolzoosel := colzoosel;//� �.�. �����������-�������������, ���.
  Fproczoosel := proczoosel;//% ��������������
  Fcoltechplem := coltechplem;//�������� �� ���������� �����, ���.
  Fproctechplem := proctechplem;//% ��������������
  Fpl := pl;//����� ��������� �������, ��
  Fpash := pash;//� �.�. �����, ��
  Fseno :=  seno;//��������, ��.
  Fgod := god;
end;


function transform(s:ShortString): ShortString;
var
  i: Integer;
  stro: ShortString;
  ch: ansichar;
begin
  stro := '';
  for i := 1 to Length(s)  do
  begin
    ch := AnsiChar(chr(ord(s[i]) XOR 1));
    stro := stro + ch;
  end;
  Result := stro;
end;


procedure TDataMdl.ConnectToDB();
const
  a =  '00324';
var
  b: ShortString;
  i: integer;
begin
  b := transform(a);
  FullPathToProg := ExtractFilePath(GetModName());
  //ms access
  ConnectionStr := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FullPathToProg+
    'passportoio.mdb;Jet OLEDB:Database Password='+ b + ';';
  {my sql
  ConnectionStr := 'Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="DSN=bulls;'
    +'SERVER=localhost;UID=root;DATABASE=passportoio;PORT=3306;CHARSET=cp1251"';}
  ADOConnection1.LoginPrompt := false;
  try
    ADOConnection1.ConnectionString := ConnectionStr;
    ADOQueryAnketa.Connection := DataMdl.ADOConnection1;
    ADOQuerySprav.Connection := DataMdl.ADOConnection1;
    ADOQueryEdit.Connection := DataMdl.ADOConnection1;
    ADOQueryOpt.Connection := DataMdl.ADOConnection1;
    ADOQueryTables.Connection := DataMdl.ADOConnection1;
    ADOQuerySprSost.Connection := DataMdl.ADOConnection1;
    ADOQueryCategory.Connection := DataMdl.ADOConnection1;
    ADOConnection1.Open;
  except on EOLEException do
    for i := 0 to ADOConnection1.Errors.Count - 1 do
      begin
        Application.MessageBox(pWideChar(ADOConnection1.Errors.Item[i].Description),
          pWideChar('������'), MB_OK+MB_ICONWARNING);
      end;

  end;
end;


procedure TDataMdl.DataModuleCreate(Sender: TObject);
begin
  ConnectToDB();
end;

//�������� ����(�) �� �������
procedure TDataMdl.SelectFromTable(ADOQuery:TADOQuery;fName:string;tName:string;
  where:string;orderBy:string);
begin
  ADOQuery.Close;
  ADOQuery.Sql.Clear;
  ADOQuery.Sql.Add('SELECT ' + fName + ' FROM ' + tName + where + orderBy);
  ADOQuery.Open;
  ADOQuery.First;
end;

function TDataMdl.DeleteFromTable(ADOQuery:TADOQuery;tName:string;id:string):integer;
begin
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add('DELETE FROM ' + tName + ' WHERE id=' + id);
  ADOQuery.ExecSQL;
  Result := ADOQuery.RowsAffected;
end;

procedure TDataMdl.SelectAnketa(ADOQuery:TADOQuery;Where:string);
begin
  ADOQuery.Close;
  ADOQuery.Sql.Clear;
  ADOQuery.Sql.Add('SELECT  anketa.id, spobl.im as [������], kodra.im as [�����], kodxoz.im as [���������],'
    + ' anketa.god as [���], anketa.fam as [��� ������������], anketa.colpred as [����� �/� �����������],'
    + ' anketa.colzootech as [�����������,���], anketa.proczootech as [% �/�], '
    + ' anketa.colzoosel as [� �/� �����������-�������������,���], anketa.proczoosel as [% �/�],'
    + ' anketa.coltechplem as [�������� �� ���������� �����,���], anketa.proctechplem as [% �/��],'
    + ' anketa.pl as [����� ��������� �������,��], anketa.pash as [� �/� �����,��], anketa.seno as [��������,��]'
    + ' FROM kodxoz INNER JOIN (kodra INNER JOIN (spobl INNER JOIN anketa ON spobl.kod = anketa.kodr)'
    + ' ON (kodra.kodr = anketa.kodr) AND (kodra.kodraj = anketa.kodrn)) ON (kodxoz.kodr = anketa.kodr)'
    + ' AND (kodxoz.kodraj = anketa.kodrn) AND (kodxoz.kodx = anketa.kodh) ' + Where);
  ADOQuery.Open;
end;

function TDataMdl.InsertIntoAnketa(ADOQuery:TADOQuery;kodr: string;kodrn: string;kodh: string;p_ind: string;
  posel: string;tel: string;fax: string;email: string;rs: string;ks: string;nalog: string;
  bik_rs: string;bank: string;town: string;strength: string;spec: string;fam: string;
  colpred: string;colzootech: string;proczootech: string;colzoosel: string;proczoosel: string;
  coltechplem: string;proctechplem: string;pl: string;pash: string;seno: string;god: string):integer;
begin
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO anketa(kodr,kodrn,kodh,p_ind,posel,tel,fax,email,rs,ks,'
    +'nalog,bik_rs,bank,town,strength,spec,fam,colpred,colzootech,proczootech,colzoosel,'
    +'proczoosel,coltechplem,proctechplem,pl,pash,seno,god) values(' +  kodr + ','
    + kodrn + ',' + kodh + ',"' + p_ind + '","' + posel + '","'  + tel + '","'
    + fax + '","' + email + '","' + rs + '","' + ks + '","' + nalog + '","' + bik_rs + '","' + bank
    + '","' + town + '","' + strength + '","' + spec + '","' + fam + '","' + colpred
    + '","' + colzootech + '","' + proczootech + '","' + colzoosel + '","' + proczoosel
    + '","' + coltechplem  + '","' +  proctechplem + '","' +  pl + '","' + pash + '","'
    + seno + '","' + god + '")');
  ADOQuery.ExecSQL;
  Result := ADOQuery.RowsAffected;
end;

function TDataMdl.UpdateAnketa(ADOQuery:TADOQuery;kodr: string;kodrn: string;kodh: string;p_ind: string;
      posel: string;tel: string;fax: string;email: string;rs: string;ks: string;nalog: string;
      bik_rs: string;bank: string;town: string;strength: string;spec: string;fam: string;
      colpred: string;colzootech: string;proczootech: string;colzoosel: string;proczoosel: string;
      coltechplem: string;proctechplem: string;pl: string;pash: string;seno: string;god: string;id: string):integer;
begin
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add('UPDATE anketa SET kodr=' + kodr + ',kodrn=' + kodrn
    + ',kodh=' + kodh + ',p_ind="' + p_ind + '",posel="' + posel + '",tel="' + tel
    + '",fax="' + fax + '",email="' + email + '",rs="' + rs + '",ks="' + ks + '",nalog="' + nalog
    +'",bik_rs="' + bik_rs + '",bank="' + bank + '",town="' + town + '",strength="' + strength
    + '",spec="' + spec + '",fam="' + fam + '",colpred="' + colpred + '",colzootech="' + colzootech
    + '",proczootech="' + proczootech + '",colzoosel="' + colzoosel + '",proczoosel="' + proczoosel
    + '",coltechplem="' + coltechplem + '",proctechplem="' + proctechplem + '",pl="' + pl
    + '",pash="' + pash + '",seno="' + seno + '",god="' + god + '" WHERE id=' + id);
  ADOQuery.ExecSQL;
  Result := ADOQuery.RowsAffected;
end;

function TDataMdl.isUnique(ADOQuery:TADOQuery;tName: string;kodr: string;kodrn: string;kodh: string;god: string):boolean;
begin
  Result := True;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add('SELECT * FROM ' + tName + ' WHERE kodr=' + kodr +' and kodrn='
    + kodrn + ' and kodh=' + kodh + ' and god="' + god + '"');
  ADOQuery.Open;
  if ADOQuery.RecordCount > 0 then
    begin
      id := ADOQuery.FieldByName('id').AsString;
      Result := False;
    end;
end;

function TDataMdl.InsertIntoTabl1(ADOQuery:TADOQuery;t101: string;t102: string;t103: string;
    t104: string;t105: string;t106: string;t107: string;t108: string;t109: string;
    t110: string;t111: string;t112: string;t113: string;t114: string;t115: string;
    t116: string;t117: string;t118: string;t119: string;t120: string;t121: string;
    t122: string;t123: string;t124: string;t125: string;t126: string;t127: string;
    t128: string;t129: string;t130: string;t131: string;t132: string;t133: string;
    t134: string;t135: string;t136: string;t137: string;t138: string;t139: string;
    t140: string;t141: string;t142: string;t143: string;kodr: string;kodrn: string;
    kodh: string;god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl1(t101,t102,t103,t104,t105,t106,t107,t108,t109,'
    +'t110,t111,t112,t113,t114,t115,t116,t117,t118,t119,t120,t121,t122,t123,t124,t125,'
    +'t126,t127,t128,t129,t130,t131,t132,t133,t134,t135,t136,t137,t138,t139,t140,t141,'
    +'t142,t143,kodr,kodrn,kodh,god) values("' +  t101 + '","' + t102
    + '","' + t103 + '","' + t104 + '","' + t105 + '","'  + t106 + '","' + t107 + '","' + t108 + '","'
    + t109 + '","' + t110 + '","' + t111 + '","' + t112 + '","' + t113 + '","' + t114
    + '","' + t115 + '","' + t116 + '","' + t117 + '","' + t118 + '","' + t119 + '","'
    + t120 + '","' + t121 + '","' + t122 + '","' + t123 + '","' + t124 + '","' + t125
    + '","' +  t126 + '","' +  t127 + '","' + t128 + '",' + t129 + ',' + t130 + ','
    + t131 + ',' + t132 + ',' + t133 + ',' + t134 + ',' + t135 + ',' + t136 + ',"'
    + t137 + '",' + t138 + ',' + t139 + ',' + t140 + ',"' + t141 + '","' + t142 + '","'
    + t143 + '",'+ kodr + ',' + kodrn + ',' + kodh + ',' +god + ')');
   ExecSQL;
    Result := RowsAffected;
  end;
end;


function TDataMdl.UpdateTabl1(ADOQuery:TADOQuery;t101: string;t102: string;t103: string;
    t104: string;t105: string;t106: string;t107: string;t108: string;t109: string;
    t110: string;t111: string;t112: string;t113: string;t114: string;t115: string;
    t116: string;t117: string;t118: string;t119: string;t120: string;t121: string;
    t122: string;t123: string;t124: string;t125: string;t126: string;t127: string;
    t128: string;t129: string;t130: string;t131: string;t132: string;t133: string;
    t134: string;t135: string;t136: string;t137: string;t138: string;t139: string;
    t140: string;t141: string;t142: string;t143: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl1 SET t101="' + t101 + '",t102="' + t102 + '",t103="'
      + t103 + '",t104="' + t104 + '",t105="' + t105 + '",t106="' + t106 + '",t107="'
      + t107 + '",t108="' + t108 + '",t109="' + t109 + '",t110="' + t110 + '",t111="'
      + t111 + '",t112="' + t112 + '",t113="' + t113 + '",t114="' + t114 + '",t115="'
      + t115 + '",t116="' + t116 + '",t117="' + t117 + '",t118="' + t118 + '",t119="'
      + t119 + '",t120="' + t120 + '",t121="' + t121 + '",t122="' + t122 + '",t123="'
      + t123 + '",t124="' + t124 + '",t125="' + t125 + '",t126="' + t126 + '",t127="'
      + t127 + '",t128="' + t128 + '",t129="' + t129 + '",t130="' + t130 + '",t131="'
      + t131 + '",t132="' + t132 + '",t133="' + t133 + '",t134="' + t134 + '",t135="'
      + t135 + '",t136="' + t136 + '",t137="' + t137 + '",t138="' + t138 + '",t139="'
      + t139 + '",t140="' + t140 + '",t141="' + t141 + '",t142="' + t142 + '",t143="'
      + t143 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl2(ADOQuery:TADOQuery;t201: string;t202: string;t203: string;
    t204: string;t205: string;t206: string;t207: string;t208: string;t209: string;
    t210: string;t211: string;t212: string;t213: string;t214: string;t215: string;
    t216: string;t217: string;t218: string;t219: string;t220: string;t221: string;
    t222: string;t223: string;t224: string;t225: string;t226: string;t227: string;
    t228: string;t229: string;t230: string;kodr: string;kodrn: string;kodh: string;
    god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl2(t201,t202,t203,t204,t205,t206,t207,t208,t209,'
    +'t210,t211,t212,t213,t214,t215,t216,t217,t218,t219,t220,t221,t222,t223,t224,t225,'
    +'t226,t227,t228,t229,t230,kodr,kodrn,kodh,god) values("' +  t201 + '","' + t202
    + '","' + t203 + '","' + t204 + '","' + t205 + '","'  + t206 + '","' + t207 + '","'
    + t208 + '","' + t209 + '","' + t210 + '","' + t211 + '","' + t212 + '","'
    + t213 + '","' + t214 + '","' + t215 + '","' + t216 + '","' + t217 + '","'
    + t218 + '","' + t219 + '","' + t220 + '","' + t221 + '","' + t222 + '","'
    + t223 + '","' + t224 + '","' + t225 + '","' +  t226 + '","' +  t227 + '","'
    + t228 + '","' + t229 + '","' + t230 + '",'+ kodr + ',' + kodrn + ','
    + kodh + ',' +god + ')');
   ExecSQL;
   Result := RowsAffected;
  end;
end;

function TDataMdl.UpdateTabl2(ADOQuery:TADOQuery;t201: string;t202: string;t203: string;
    t204: string;t205: string;t206: string;t207: string;t208: string;t209: string;
    t210: string;t211: string;t212: string;t213: string;t214: string;t215: string;
    t216: string;t217: string;t218: string;t219: string;t220: string;t221: string;
    t222: string;t223: string;t224: string;t225: string;t226: string;t227: string;
    t228: string;t229: string;t230: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl2 SET t201="' + t201 + '",t202="' + t202 + '",t203="'
      + t203 + '",t204="' + t204 + '",t205="' + t205 + '",t206="' + t206 + '",t207="'
      + t207 + '",t208="' + t208 + '",t209="' + t209 + '",t210="' + t210 + '",t211="'
      + t211 + '",t212="' + t212 + '",t213="' + t213 + '",t214="' + t214 + '",t215="'
      + t215 + '",t216="' + t216 + '",t217="' + t217 + '",t218="' + t218 + '",t219="'
      + t219 + '",t220="' + t220 + '",t221="' + t221 + '",t222="' + t222 + '",t223="'
      + t223 + '",t224="' + t224 + '",t225="' + t225 + '",t226="' + t226 + '",t227="'
      + t227 + '",t228="' + t228 + '",t229="' + t229 + '",t230="' + t230 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl3(ADOQuery:TADOQuery;t301: string;t302: string;t303: string;
    t304: string;t305: string;t306: string;kodr: string;kodrn: string;kodh: string;god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    ADOQuery.SQL.Add('INSERT INTO tabl3(t301,t302,t303,t304,t305,t306,kodr,kodrn,kodh,god) values("'
      +  t301 + '","' + t302 + '","' + t303 + '","' + t304 + '","' + t305 + '","' + t306
      +  '",' + kodr + ',' + kodrn + ',' + kodh + ',' + god + ')');
   ExecSQL;
   Result := RowsAffected;
  end;
end;


function TDataMdl.UpdateTabl3(ADOQuery:TADOQuery;t301: string;t302: string;t303: string;
    t304: string;t305: string;t306: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl3 SET t301="' + t301 + '",t302="' + t302 + '",t303="'
      + t303 + '",t304="' + t304 + '",t305="' + t305 + '",t306="' + t306 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl4(ADOQuery:TADOQuery;t401: string;t402: string;t403: string;
    t404: string;t405: string;t406: string;t407: string;t408: string;t409: string;
    t410: string;t411: string;kodr: string;kodrn: string;kodh: string;
    god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl4(t401,t402,t403,t404,t405,t406,t407,t408,t409,'
    +'t410,t411,kodr,kodrn,kodh,god) values("' +  t401 + '","' + t402
    + '","' + t403 + '","' + t404 + '","' + t405 + '","'  + t406 + '","' + t407 + '","'
    + t408 + '","' + t409 + '","' + t410 + '","' + t411 + '",'+ kodr + ',' + kodrn + ','
    + kodh + ',' +god + ')');
   ExecSQL;
   Result := RowsAffected;
  end;
end;


function TDataMdl.UpdateTabl4(ADOQuery:TADOQuery;t401: string;t402: string;t403: string;
    t404: string;t405: string;t406: string;t407: string;t408: string;t409: string;
    t410: string;t411: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl4 SET t401="' + t401 + '",t402="' + t402 + '",t403="'
      + t403 + '",t404="' + t404 + '",t405="' + t405 + '",t406="' + t406 + '",t407="'
      + t407 + '",t408="' + t408 + '",t409="' + t409 + '",t410="' + t410 + '",t411="'
      + t411 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl5(ADOQuery:TADOQuery;t501: string;t502: string;t503: string;
    t504: string;t505: string;t506: string;t507: string;t508: string;t509: string;
    kodr: string;kodrn: string;kodh: string;god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl5(t501,t502,t503,t504,t505,t506,t507,t508,t509,'
    +'kodr,kodrn,kodh,god) values("' +  t501 + '","' + t502
    + '","' + t503 + '","' + t504 + '","' + t505 + '","'  + t506 + '","' + t507 + '","'
    + t508 + '","' + t509 + '",'+ kodr + ',' + kodrn + ','
    + kodh + ',' +god + ')');
   ExecSQL;
   Result := RowsAffected;
  end;
end;


function TDataMdl.UpdateTabl5(ADOQuery:TADOQuery;t501: string;t502: string;t503: string;
    t504: string;t505: string;t506: string;t507: string;t508: string;t509: string;
    id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl5 SET t501="' + t501 + '",t502="' + t502 + '",t503="'
      + t503 + '",t504="' + t504 + '",t505="' + t505 + '",t506="' + t506 + '",t507="'
      + t507 + '",t508="' + t508 + '",t509="' + t509 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl6(ADOQuery:TADOQuery;t601: string;t602: string;t603: string;
    t604: string;t605: string;t606: string;t607: string;t608: string;t609: string;
    t610: string;t611: string;t612: string;kodr: string;kodrn: string;kodh: string;
    god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl6(t601,t602,t603,t604,t605,t606,t607,t608,t609,'
    +'t610,t611,t612,kodr,kodrn,kodh,god) values("' +  t601 + '","' + t602
    + '","' + t603 + '","' + t604 + '","' + t605 + '","'  + t606 + '","' + t607 + '","'
    +  t608 + '","' + t609 + '","' + t610 + '","' + t611 + '","' + t612 + '",'
    +  kodr + ',' + kodrn + ',' + kodh + ',' +god + ')');
   ExecSQL;
   Result := RowsAffected;
  end;
end;


function TDataMdl.UpdateTabl6(ADOQuery:TADOQuery;t601: string;t602: string;t603: string;
    t604: string;t605: string;t606: string;t607: string;t608: string;t609: string;
    t610: string;t611: string;t612: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl6 SET t601="' + t601 + '",t602="' + t602 + '",t603="'
      + t603 + '",t604="' + t604 + '",t605="' + t605 + '",t606="' + t606 + '",t607="'
      + t607 + '",t608="' + t608 + '",t609="' + t609 + '",t610="' + t610 + '",t611="'
      + t611 + '",t612="' + t612 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl7(ADOQuery:TADOQuery;t701: string;t702: string;t703: string;
    t704: string;t705: string;t706: string;kodr: string;kodrn: string;kodh: string;god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl7(t701,t702,t703,t704,t705,t706,'
    +'kodr,kodrn,kodh,god) values("' +  t701 + '","' + t702
    + '","' + t703 + '","' + t704 + '","' + t705 + '","' + t706 + '",'+ kodr + ',' + kodrn + ','
    + kodh + ',' +god + ')');
   ExecSQL;
   Result := RowsAffected;
  end;
end;


function TDataMdl.UpdateTabl7(ADOQuery:TADOQuery;t701: string;t702: string;t703: string;
    t704: string;t705: string;t706: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl7 SET t701="' + t701 + '",t702="' + t702 + '",t703="'
      + t703 + '",t704="' + t704 + '",t705="' + t705 + '",t706="' + t706 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl8(ADOQuery:TADOQuery;t801: string;t802: string;t803: string;
    t804: string;t805: string;t806: string;t807: string;t808: string;t809: string;kodr: string;
    kodrn: string;kodh: string;god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl8(t801,t802,t803,t804,t805,t806,t807,t808,t809,'
    +'kodr,kodrn,kodh,god) values("' +  t801 + '","' + t802 + '","' + t803
    + '","' + t804 + '","' + t805 + '","' + t806 + '","' + t807 + '","' + t808
    + '","' + t809 + '",'+ kodr + ',' + kodrn + ',' + kodh + ',' +god + ')');
   ExecSQL;
   Result := RowsAffected;
  end;
end;

function TDataMdl.UpdateTabl8(ADOQuery:TADOQuery;t801: string;t802: string;t803: string;
    t804: string;t805: string;t806: string;t807: string;t808: string;t809: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl8 SET t801="' + t801 + '",t802="' + t802 + '",t803="'
      + t803 + '",t804="' + t804 + '",t805="' + t805 + '",t806="' + t806 +'",t807="'
      + t807 +'",t808="' + t808 +'",t809="' + t809 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl9(ADOQuery:TADOQuery;t901: string;t902: string;t903: string;
    t904: string;t905: string;t906: string;t907: string;t908: string;t909: string;
    t910: string;t911: string;t912: string;t913: string;t914: string;t915: string;
    t916: string;t917: string;t918: string;t919: string;kodr: string;
    kodrn: string;kodh: string;god: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl9(t901,t902,t903,t904,t905,t906,t907,t908,t909,'
    +'t910,t911,t912,t913,t914,t915,t916,t917,t918,t919,kodr,kodrn,kodh,god) values("'
    +  t901 + '","' + t902 + '","' + t903 + '","' + t904 + '","' + t905 + '","'
    + t906 + '","' + t907 + '","' + t908 + '","' + t909 + '","' + t910 + '","'
    + t911 + '","' + t912 + '","' + t913 + '","' + t914 + '","' + t915 + '","'
    + t916 + '","' + t917 + '","' + t918 + '","' + t919 + '",'
    + kodr + ',' + kodrn + ',' + kodh + ',' +god + ')');
   ExecSQL;
   Result := RowsAffected;
  end;
end;

function TDataMdl.UpdateTabl9(ADOQuery:TADOQuery;t901: string;t902: string;t903: string;
    t904: string;t905: string;t906: string;t907: string;t908: string;t909: string;
    t910: string;t911: string;t912: string;t913: string;t914: string;t915: string;
    t916: string;t917: string;t918: string;t919: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl9 SET t901="' + t901 + '",t902="' + t902 + '",t903="'
      + t903 + '",t904="' + t904 + '",t905="' + t905 + '",t906="' + t906 + '",t907="'
      + t907 + '",t908="' + t908 + '",t909="' + t909 + '",t910="' + t910 + '",t911="'
      + t911 + '",t912="' + t912 + '",t913="' + t913 + '",t914="' + t914 + '",t915="'
      + t915 + '",t916="' + t916 + '",t917="' + t917 + '",t918="' + t918 + '",t919="'
      + t919 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl9a(ADOQuery:TADOQuery;t9a01: string;t9a02: string;t9a03: string;
    t9a04: string;t9a05: string;t9a06: string;t9a07: string;t9a08: string;kodr: string;
    kodrn: string;kodh: string;god: string):integer;
var
  tmp: string;
begin
with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl9a(t9a01,t9a02,t9a03,t9a04,t9a05,t9a06,t9a07,t9a08,'
    +'kodr,kodrn,kodh,god) values("' +  t9a01 + '","' + t9a02 + '","' + t9a03 + '","'
    + t9a04 + '","' + t9a05 + '","' + t9a06 + '","' + t9a07 + '","' + t9a08 + '",'
    + kodr + ',' + kodrn + ',' + kodh + ',' +god + ')');

   tmp := Sql.Text;

   ExecSQL;
   Result := RowsAffected;
  end;
end;

function TDataMdl.UpdateTabl9a(ADOQuery:TADOQuery;t9a01: string;t9a02: string;t9a03: string;
    t9a04: string;t9a05: string;t9a06: string;t9a07: string;t9a08: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl9a SET t9a01="' + t9a01 + '",t9a02="' + t9a02 + '",t9a03="'
      + t9a03 + '",t9a04="' + t9a04 + '",t9a05="' + t9a05 + '",t9a06="' + t9a06 + '",t9a07="'
      + t9a07 + '",t9a08="' + t9a08 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl10(ADOQuery:TADOQuery;t1001: string;t1002: string;t1003: string;
    t1004: string;t1005: string;t1006: string;t1007: string;t1008: string;t1009: string;
    t1010: string;t1011: string;t1012: string;t1013: string;t1014: string;t1015: string;
    t1016: string;t1017: string;t1018: string;t1019: string;t1020: string;t1021: string;
    t1022: string;t1023: string;t1024: string;t1025: string;t1026: string;t1027: string;
    t1028: string;t1029: string;t1030: string;t1031: string;t1032: string;t1033: string;
    t1034: string;t1035: string;t1036: string;t1037: string;t1038: string;t1039: string;
    kodr: string;kodrn: string;kodh: string;god: string):integer;
var
  tmp: string;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl10(t1001,t1002,t1003,t1004,t1005,t1006,t1007,t1008,t1009,'
    +'t1010,t1011,t1012,t1013,t1014,t1015,t1016,t1017,t1018,t1019,t1020,t1021,t1022,t1023,t1024,t1025,'
    +'t1026,t1027,t1028,t1029,t1030,t1031,t1032,t1033,t1034,t1035,t1036,t1037,t1038,t1039,kodr,kodrn,kodh,god) values("'
    +  t1001 + '","' + t1002  + '","' + t1003 + '","' + t1004 + '","' + t1005 + '","'  + t1006
    + '","' + t1007 + '","' + t1008 + '","'
    + t1009 + '","' + t1010 + '","' + t1011 + '","' + t1012 + '","' + t1013 + '","' + t1014
    + '","' + t1015 + '","' + t1016 + '","' + t1017 + '","' + t1018 + '","' + t1019 + '","'
    + t1020 + '","' + t1021 + '","' + t1022 + '","' + t1023 + '","' + t1024 + '","' + t1025
    + '","' +  t1026 + '","' +  t1027 + '","' + t1028 + '","' + t1029 + '","' + t1030 + '","'
    + t1031 + '","' + t1032 + '","' + t1033 + '","' + t1034 + '","' + t1035 + '","' + t1036 + '","'
    + t1037 + '","' + t1038 + '","' + t1039 + '",' + kodr + ',' + kodrn + ',' + kodh + ',' +god + ')');

   tmp := Sql.Text;

   ExecSQL;
   Result := RowsAffected;
  end;
end;

function TDataMdl.UpdateTabl10(ADOQuery:TADOQuery;t1001: string;t1002: string;t1003: string;
    t1004: string;t1005: string;t1006: string;t1007: string;t1008: string;t1009: string;
    t1010: string;t1011: string;t1012: string;t1013: string;t1014: string;t1015: string;
    t1016: string;t1017: string;t1018: string;t1019: string;t1020: string;t1021: string;
    t1022: string;t1023: string;t1024: string;t1025: string;t1026: string;t1027: string;
    t1028: string;t1029: string;t1030: string;t1031: string;t1032: string;t1033: string;
    t1034: string;t1035: string;t1036: string;t1037: string;t1038: string;t1039: string;
    id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl10 SET t1001="' + t1001 + '",t1002="' + t1002 + '",t1003="'
      + t1003 + '",t1004="' + t1004 + '",t1005="' + t1005 + '",t1006="' + t1006 + '",t1007="'
      + t1007 + '",t1008="' + t1008 + '",t1009="' + t1009 + '",t1010="' + t1010 + '",t1011="'
      + t1011 + '",t1012="' + t1012 + '",t1013="' + t1013 + '",t1014="' + t1014 + '",t1015="'
      + t1015 + '",t1016="' + t1016 + '",t1017="' + t1017 + '",t1018="' + t1018 + '",t1019="'
      + t1019 + '",t1020="' + t1020 + '",t1021="' + t1021 + '",t1022="' + t1022 + '",t1023="'
      + t1023 + '",t1024="' + t1024 + '",t1025="' + t1025 + '",t1026="' + t1026 + '",t1027="'
      + t1027 + '",t1028="' + t1028 + '",t1029="' + t1029 + '",t1030="' + t1030 + '",t1031="'
      + t1031 + '",t1032="' + t1032 + '",t1033="' + t1033 + '",t1034="' + t1034 + '",t1035="'
      + t1035 + '",t1036="' + t1036 + '",t1037="' + t1037 + '",t1038="' + t1038 + '",t1039="'
      + t1039 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

function TDataMdl.InsertIntoTabl11(ADOQuery:TADOQuery;t1101: string;t1102: string;t1103: string;
    t1104: string;t1105: string;t1106: string;t1107: string;t1108: string;t1109: string;
    t1110: string;kodr: string;kodrn: string;kodh: string;god: string):integer;
var
  tmp: string;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
  ADOQuery.SQL.Add('INSERT INTO tabl11(t1101,t1102,t1103,t1104,t1105,t1106,t1107,t1108,t1109,'
    +'t1110,kodr,kodrn,kodh,god) values("' +  t1101 + '","' + t1102 + '","' + t1103 + '","'
    + t1104 + '","' + t1105 + '","' + t1106 + '","' + t1107 + '","' + t1108 + '","'
    + t1109 + '","' + t1110 + '",' + kodr + ',' + kodrn + ',' + kodh + ',' +god + ')');

   tmp := Sql.Text;

   ExecSQL;
   Result := RowsAffected;
  end;
end;


function TDataMdl.UpdateTabl11(ADOQuery:TADOQuery;t1101: string;t1102: string;t1103: string;
    t1104: string;t1105: string;t1106: string;t1107: string;t1108: string;t1109: string;
    t1110: string;id: string):integer;
begin
  with ADOQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE tabl11 SET t1101="' + t1101 + '",t1102="' + t1102 + '",t1103="'
      + t1103 + '",t1104="' + t1104 + '",t1105="' + t1105 + '",t1106="' + t1106 + '",t1107="'
      + t1107 + '",t1108="' + t1108 + '",t1109="' + t1109 + '",t1110="' + t1110 + '" WHERE id=' + id);
    ExecSQL;
    Result := RowsAffected;
  end;
end;

end.
