unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Valor: TLabel;
    Parcelas: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var val, resuldiv, resulmult: currency;
    parc, I: integer;
begin
  val:= strtofloat(Edit1.Text);
  parc:= strtoint(Edit2.Text);
  resuldiv:= val / parc;
  resulmult:= resuldiv * parc;
  Memo1.Text:= floattostr(resuldiv);

  ShowMessage('valor total �: ' + (FormatFloat('0.00', resulmult)));


end;

end.
