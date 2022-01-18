unit CadCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Conexao,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormCargo = class(TForm)
    PageControl1: TPageControl;
    Cadastro: TTabSheet;
    DBGrid1: TDBGrid;
    SalvarCargo: TButton;
    NovoCargo: TButton;
    ExcluirCargo: TButton;
    FDQueryCargo: TFDQuery;
    FDQueryCargoCODIGO: TIntegerField;
    FDQueryCargoDESCRICAO: TStringField;
    Label1: TLabel;
    EditCod1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    EditCargo: TDBEdit;
    EditarCargo: TButton;
    procedure SalvarCargoClick(Sender: TObject);
    procedure NovoCargoClick(Sender: TObject);
    procedure ExcluirCargoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EditarCargoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCargo: TFormCargo;

implementation

{$R *.dfm}


procedure TFormCargo.FormCreate(Sender: TObject);
begin
   FDQueryCargo.Active:= True;
end;

procedure TFormCargo.FormDestroy(Sender: TObject);
begin
  FDQueryCargo.Active:= False;
end;

procedure TFormCargo.NovoCargoClick(Sender: TObject);
begin
  DataSource1.DataSet.Append;
end;

procedure TFormCargo.SalvarCargoClick(Sender: TObject);
 begin
    if (TrimLeft(EditCod1.Text) = '') AND (TrimLeft(EditCargo.Text) = '')  then
      begin
        ShowMessage('O código e nome do cargo é obrigatório.');
        Abort;
      end;
    if (TrimLeft(EditCod1.Text) = '') then
      begin
        ShowMessage('O código do cargo é obrigatório.');
        Abort;
      end;
    if (TrimLeft(EditCargo.Text) = '') then
      begin
        ShowMessage('O nome do cargo é obrigatório.');
        Abort;
      end;

   DataSource1.DataSet.Post;
 end;


procedure TFormCargo.EditarCargoClick(Sender: TObject);
begin
    if (TrimLeft(EditCod1.Text) = '') AND (TrimLeft(EditCargo.Text) = '')  then
      begin
        ShowMessage('O código e nome do cargo é obrigatório.');
        Abort;
      end;
    if (TrimLeft(EditCod1.Text) = '') then
      begin
        ShowMessage('O código do cargo é obrigatório.');
        Abort;
      end;
    if (TrimLeft(EditCargo.Text) = '') then
      begin
        ShowMessage('O nome do cargo é obrigatório.');
        Abort;
      end;

  DataSource1.DataSet.Edit;
end;

procedure TFormCargo.ExcluirCargoClick(Sender: TObject);
begin
  DataSource1.DataSet.Delete;
end;

end.
