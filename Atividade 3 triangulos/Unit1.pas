unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
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
var lado1, lado2, lado3: integer;
begin
  lado1:= strtoint(Edit1.Text);
  lado2:= strtoint(Edit2.Text);
  lado3:= strtoint(Edit3.Text);
  if lado1 >= (lado2 + lado3) then
  begin
    ShowMessage('Não é um triangulo');
  end;
  if (lado1 = lado2) AND (lado2 = lado3) then
  begin
    ShowMessage('Equilatéro');
  end;
  if (lado1 = lado2) OR (lado2 = lado3) OR (lado1 = lado3) then
  begin
    ShowMessage('Isósceles');
  end;
  if (lado1 <> lado2) AND (lado2 <> lado3) AND (lado3 <> lado1) then
  begin
    ShowMessage('Escaleno');
  end;

end;

end.
