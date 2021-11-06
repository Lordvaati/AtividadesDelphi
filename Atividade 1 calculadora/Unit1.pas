unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    RadioGroup1: TRadioGroup;
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
var val1, val2, resul: real;
begin
  val1:= strtofloat(Edit1.Text);
  val2:= strtofloat(Edit2.Text);
  case RadioGroup1.ItemIndex of
    -1: ShowMessage('Escolha uma operação');
    0: resul:= val1 + val2;
    1: resul:= val1 - val2;
    2: resul:= val1 * val2;
    3: resul:= val1 / val2;
  end;
  Edit3.Text:= floattostr(resul)

end;

end.
