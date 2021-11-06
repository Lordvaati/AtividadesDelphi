unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  EDias = (Segunda, Terca, Quarta, Quinta, Sexta, Sabado, Domingo);

  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  EDiasNome: array [EDias] of string = ('Segunda', 'Terca', 'Quarta', 'Quinta', 'Sexta', 'Sabado', 'Domingo');

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Dias: set of EDias;
  Dia: EDias;
begin

  Dias:= [Terca, Quinta, Domingo];
  Memo1.Clear;
  for Dia in Dias do
    Memo1.Lines.Add(IntToStr(Ord(Dia)));


end;

end.
