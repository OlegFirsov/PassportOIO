unit WebDAV;

interface

uses
  Vcl.Forms, Winapi.Windows, System.Classes, Vcl.Dialogs, System.SysUtils, Vcl.StdCtrls, httpsend, synacode, ssl_openssl, synautil, httpapp;


const
  cWebDAVServer = 'https://webdav.yandex.ru/CentrePassportOIO/';

type
  TWebDAVSend = class
  private
    FHTTP: THTTPSend;
    FToken: String;
    FPassword: string;
    FLogin: string;
    procedure SetLogin(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetToken;
    function EncodeUTF8URI(const URI: string): string;
    function GetRequestURL(const Element: string):string;
  public
    constructor Create;
    destructor Destroy; override;

    /// <summary>
    /// ��������� ������� �������� ��� �����.
    /// </summary>
    /// <param name="Depth">
    /// 0 � ������������� �������� ����� ��� ��������, ���������������
    /// ���������� � �������. 1 � ������������� �������� ��������, � �����
    /// ���� ���������, ����������� �� ������ ������ ��������.
    /// </param>
    /// <param name="Element">
    /// ���� ��� ������� ��� �������� ���������� �������� ��������.
    /// </param>
    /// <returns>
    /// XML-��������, ���������� ����������� ��������
    /// </returns>
    /// <remarks>
    /// ���� Element �� ���������, �� ������������ �������� ��������� ��������
    /// </remarks>
    function PROPFIND(Depth: integer; const Element: String): string;

    ///	<summary>
    ///	  �������� ������ �������� �� �������
    ///	</summary>
    ///	<param name="ElementPath">
    ///	  ���� � ������ ��������, ������� ��� ���. �������� ���������, �
    ///	  ���������� ������ ������� ����� ���� ������ ������ ���� �������. ����
    ///	  ���������� ���������� ������ � �������� �������� a/b/c/, � � ��������
    ///	  a/ ��� �������� b/, �� ������ �� ������� ������� b/, � �������� c
    ///	  ����� 409 Conflict.
    ///	</param>
    ///	<returns>
    ///	  True - ���� ������� ������ �������
    ///	</returns>
    function MKCOL(const ElementPath: string):boolean;
    function PUT(const ElementHref: string; aFileName: string): string;
    function GET(const ElementHref: string; aFileName: string): boolean;
    property Login: string read FLogin write SetLogin;
    property Password: string read FPassword write SetPassword;
  end;

implementation

resourcestring
  rsPropfindError = '������ ��� ���������� ������� PROPFIND';

{ TWebDAVSend }

constructor TWebDAVSend.Create;
begin
  inherited;
  FHTTP := THTTPSend.Create;
end;

destructor TWebDAVSend.Destroy;
begin
  FHTTP.Free;
  inherited;
end;

function TWebDAVSend.EncodeUTF8URI(const URI: string): string;
var
  i: integer;
  Char: AnsiChar;
  Test: string;
begin
  Test := EncodeURL(URI);
  OutputDebugString(PChar(Test));

  result := '';
  for i := 1 to length(URI) do
  begin
    //if not(URI[i] in URLFullSpecialChar) then
    if not CharInSet(URI[i],URLFullSpecialChar) then
      begin
      for Char in UTF8String(URI[i]) do
        Result := Result+'%'+IntToHex(Ord(Char), 2)
      end
    else
      Result:=Result+URI[i];
  end;
OutputDebugString(PChar(Result));
end;

function TWebDAVSend.GetRequestURL(const Element: string): string;
var URI: string;
begin
  if Length(Element)>0 then
    begin
      URI := Element;
      if URI[1]='/' then
        Delete(URI,1,1);
      Result := cWebDAVServer+EncodeUTF8URI(URI);
    end
  else
   Result := cWebDAVServer;
end;

function TWebDAVSend.MKCOL(const ElementPath: string): boolean;
begin
  Result := False;
  with FHTTP do
  begin
    Headers.Clear;
    Document.Clear;
    Headers.Add('Authorization: Basic ' + FToken);
    //Headers.Add('Authorization: OAuth ' + FToken);
    Headers.Add('Accept: */*');
    if HTTPMethod('MKCOL', GetRequestURL(ElementPath)) then
      begin
        Result := ResultCode=201;
        if not Result then
          raise Exception.Create(IntToStr(ResultCode)+' '+ResultString);
      end
    else
      raise Exception.Create(rsPropfindError+' '+ResultString);
  end;

end;

function TWebDAVSend.PROPFIND(Depth: integer; const Element: String): string;
begin
  with FHTTP do
  begin
    Headers.Clear;
    Document.Clear;
    Headers.Add('Authorization: Basic ' + FToken);
    Headers.Add('Depth: ' + IntToStr(Depth));
    Headers.Add('Accept: */*');
    if HTTPMethod('PROPFIND', GetRequestURL(Element)) then
      result := ReadStrFromStream(Document, Document.Size)
    else
      raise Exception.Create(rsPropfindError+' '+ResultString);
  end;
end;

function TWebDAVSend.PUT(const ElementHref: string; aFileName: string): string;
var
st : String;
s: TFileStream;
begin
s := TFileStream.Create(aFileName,fmOpenRead);
with FHTTP do
begin
  Headers.Clear;
  Document.Clear;
  Headers.Add('Authorization: Basic ' + FToken);
  //Headers.Add('Authorization: OAuth ' + '94eeb1a2e8f841c389f0d4eabc3af3bb');
  Headers.Add('Accept: */*');
  //Headers.Add('Expect: 100-continue');
  Headers.Add('Content-Type: application/binary');
  //Headers.Add('Transfer-Encoding: chunked');
  Headers.Add('Host: webdav.yandex.ru');
  //MimeType := 'Application/octet-stream';
  st := GetRequestURL(ElementHref);
  Document.LoadFromStream(s);
  if HTTPMethod('PUT', st) then begin
  result := 'ResultCode=100';
  ShowMessage(IntToStr(ResultCode)+' '+ResultString);
  end
  else
  raise Exception.Create(IntToStr(ResultCode) + ' ' + ResultString);
  end;
  if (s<>nil) then s.Free;
end;

function TWebDAVSend.GET(const ElementHref: string; aFileName: string): boolean;
var
  url : String;
  Response: TMemoryStream;
begin
URL := GetRequestURL(ElementHref);
with FHTTP do
begin
  Headers.Clear;
  Document.Clear;
  Headers.Add('Authorization: Basic ' + FToken);
  Headers.Add('Accept: */*');
  if HTTPMethod('GET', URL) then begin
  result := ResultCode=200;
    if not result then
      //raise Exception.Create(IntToStr(ResultCode) + ' ' + ResultString)  �� �������� ����������
      Application.MessageBox('����������� ���� ����������.���������� � ��������������.', '����������', MB_OK)
   else
    begin
      try
        Response := TMemoryStream.Create;
        //if not Assigned(Response) then exit;
        Document.SaveToStream(Response);
        TMemoryStream(Response).SaveToFile(aFileName);
      finally
        Response.Free;
      end;
    end;
  end
  else
    //raise Exception.Create(rsPropfindError + ' ' + ResultString);  �� �������� ����������
    Application.MessageBox('����������� ����� � �������� ����������.��������� ��������.', '����������', MB_OK);
end;
end;

procedure TWebDAVSend.SetToken;
begin
  FToken := EncodeBase64(FLogin + ':' + FPassword);
end;

procedure TWebDAVSend.SetLogin(const Value: string);
begin
  FLogin := Value;
  SetToken;
end;

procedure TWebDAVSend.SetPassword(const Value: string);
begin
  FPassword := Value;
  SetToken;
end;

end.
