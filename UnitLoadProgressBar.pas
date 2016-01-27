unit UnitLoadProgressBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.GIFImg, XMLDoc, XMLIntf,
  IdHashMessageDigest, idHash, Winapi.ShellAPI;

type
  TFormLoadProgBar = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLoadProgBar: TFormLoadProgBar;

implementation

{$R *.dfm}

uses UnitMain, WebDAV;

procedure TFormLoadProgBar.FormCreate(Sender: TObject);
begin
  (Image1.Picture.Graphic as TGIFImage).Animate := true;
  (Image1.Picture.Graphic as TGIFImage).AnimationSpeed := 500;
  //FormLoadProgBar.DoubleBuffered := true;
end;



procedure TFormLoadProgBar.FormShow(Sender: TObject);
begin
//проверка есть ли на яндекс.диск обновление программы
//  TestUpdate();
end;

end.
