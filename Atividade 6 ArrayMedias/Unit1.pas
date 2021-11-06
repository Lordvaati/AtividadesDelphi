unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
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

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  IArray: array[0..19] of Integer;
  I, Soma, Maior, Menor: Integer;
  Media: Double;
begin
  Maior:= 0;
  Menor:= 10;
  Soma:= 0;
  for I:= Low(IArray) to High(IArray) do
    begin
      IArray[I]:= Random(10)+1;
      Memo1.Lines.Add('Array' + IntToStr(i +1) + '= ' + IArray[I].ToString);
      Soma:= Soma + IArray[I];
    end;
  for I := Low(IArray) to High(IArray) do
    begin
      if IArray[I] <= Menor then
        begin
          Menor:= IArray[I];
        end
      else if IArray[i] >= Maior then
        begin
          Maior:= IArray[I];
        end;
    end;



  Media:= Soma/20;
  //Memo1.Clear
  Memo1.Lines.Add('A m�dia dos Arrays �: ' + Media.ToString);
  Memo1.Lines.Add('O maior Array �: ' + Maior.ToString);
  Memo1.Lines.Add('O menor Array �: ' + Menor.ToString);


end;

end.
