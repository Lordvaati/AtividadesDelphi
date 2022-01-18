program AppFolha;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FormPrincipal},
  Conexao in 'Conexao.pas' {DM: TDataModule},
  CadCargo in 'cadastro\CadCargo.pas' {FormCargo},
  CadFunc in 'cadastro\CadFunc.pas' {FormFunc},
  CadEvento in 'cadastro\CadEvento.pas' {FormEvento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
