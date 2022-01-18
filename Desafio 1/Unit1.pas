unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Salario: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CalcularIRRF(salarioBase: Currency): String;
  end;

var
  Form1: TForm1;

implementation

function TForm1.CalcularIRRF(salarioBase: Currency): String;
var
  resultado: Currency;
begin
  Result := '';




  if salarioBase <= 1903.98 then
    Result := 'ISENTO'
  else if salarioBase <= 2826.65 then
  begin
    resultado := (salarioBase * 0.075) - 142.80;
    Result := 'IRFF: R$ ' + FormatFloat('###,###,##0.00', resultado);
  end
  else if salarioBase <= 3751.05 then
  begin
    resultado := (salarioBase * 0.15) - 354.80;
    Result := 'IRFF: R$ ' + FormatFloat('###,###,##0.00', resultado);
  end
  else if salarioBase <= 4664.68 then
  begin
    resultado := (salarioBase * 0.225) - 636.13;
    Result := 'IRFF: R$ ' + FormatFloat('###,###,##0.00', resultado);
  end
  else
  begin
    resultado := (salarioBase * 0.275) - 869.36;
    Result := 'IRFF: R$ ' + FormatFloat('###,###,##0.00', resultado);
  end;
end;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 salarioBase, resultado : Currency;
begin
  Memo1.Clear;

  try
    salarioBase := StrToCurr(Edit1.Text);
    Memo1.Lines.Add(CalcularIRRF(salarioBase));
  except on E: Exception do
    ShowMessage('Valor informado inv�lido!' + #13+#10 + E.Message);
  end;
end;

end.
