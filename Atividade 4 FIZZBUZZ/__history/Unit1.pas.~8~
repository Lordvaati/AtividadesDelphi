unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
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
var
  I, valor, Contf, Contb, Contfb: integer;
begin

 Contf:= 0;
 Contb:= 0;
 Contfb:= 0;
 valor:= StrToInt(Edit1.Text);
 for I := 1 to valor do
  begin
    if (I mod 3 = 0) AND (I mod 5 = 0) then
      begin
        Memo1.Lines.Add(IntToStr(i) + ': FIZZBUZZ!');
        Contfb:= Contfb + 1;
      end
    else if I mod 3 = 0 then
      begin
        Memo1.Lines.Add(IntToStr(i) + ': FIZZ!');
        Contf:= Contf + 1;
      end
    else if I mod 5 = 0 then
      begin
        Memo1.Lines.Add(IntToStr(i) + ': BUZZ!');
        Contb:= Contb + 1;
      end
    else
      begin
        Memo1.Lines.Add(IntToStr(I));
      end;

  end;

  Label3.Caption:= IntToStr(Contf);
  Label5.Caption:= IntToStr(Contb);
  Label7.Caption:= IntToStr(Contfb);

end;

end.
