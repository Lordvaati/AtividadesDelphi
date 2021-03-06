unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Conexao, CadFunc, CadCargo, CadEvento;

type
  TFormPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastros1: TMenuItem;
    Cargos1: TMenuItem;
    Eventos1: TMenuItem;
    Funcionrios2: TMenuItem;
    N1: TMenuItem;
    abeladeINSS1: TMenuItem;
    abeladeIRRF1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Sair3: TMenuItem;
    Processos1: TMenuItem;
    MudanadeSalrioss1: TMenuItem;
    LanarEventoparaFuncionrios1: TMenuItem;
    FolhadaPagamento1: TMenuItem;
    Relatrios1: TMenuItem;
    FolhadePagamento1: TMenuItem;
    Funcionrios1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure Funcionrios2Click(Sender: TObject);
    procedure Eventos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}


procedure TFormPrincipal.Cargos1Click(Sender: TObject);
begin
  FormCargo:= TFormCargo.Create(Self);
  FormCargo.ShowModal;
  FormCargo.Free;
end;

procedure TFormPrincipal.Eventos1Click(Sender: TObject);
begin
 FormEvento:= TFormEvento.Create(Self);
 FormEvento.ShowModal;
 FormEvento.Free;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  DM:= TDM.Create(Self);
end;

procedure TFormPrincipal.FormDestroy(Sender: TObject);
begin
  DM.Free;
end;


procedure TFormPrincipal.Funcionrios2Click(Sender: TObject);
begin
 FormFunc:= TFormFunc.Create(Self);
 FormFunc.ShowModal;
 FormFunc.Free;
end;

end.
