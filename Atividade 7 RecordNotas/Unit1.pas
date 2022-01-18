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
type
 RAluno= record
 Nome: string;
 Nota: integer;
 end;

var
 Alunos: array of RAluno;
 I, Soma, MaiorNota, MenorNota: integer;
 Media: double;
 MaiorNotaAluno, MenorNotaAluno: string;

begin
  Soma:= 0;
  MaiorNota:= 0;
  MenorNota:= 11;
  SetLength(Alunos, 11);
  Memo1.Clear;
  for I := Low(Alunos)+1 to High(Alunos) do
    begin
      Alunos[I].Nome:= 'Aluno ' + I.ToString;
      Alunos[I].Nota:= Random(10);
      Soma:= Soma + Alunos[I].Nota;
      if Alunos[i].Nota <= MenorNota then
        begin
          MenorNotaAluno:= Alunos[I].Nome;
          MenorNota:= Alunos[i].Nota;
        end
      else if Alunos[I].Nota >= MaiorNota then
        begin
          MaiorNotaAluno:= Alunos[i].Nome;
          MaiorNota:= Alunos[I].Nota;
        end;
      Memo1.Lines.Add(Alunos[I].Nome + ': ' + Alunos[I].Nota.ToString);
    end;


    Media:= Soma/10;
    Memo1.Lines.Add('');
    Memo1.Lines.Add('A m�dia da turma �: ' + Media.ToString);
    Memo1.Lines.Add('Aluno com Maior nota: ' + MaiorNotaAluno + ' (' + MaiorNota.ToString + ')');
    Memo1.Lines.Add('Aluno com Menor nota: ' + MenorNotaAluno + ' (' + MenorNota.ToString + ')');
end;

end.
