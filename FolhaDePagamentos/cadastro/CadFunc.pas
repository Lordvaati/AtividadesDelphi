unit CadFunc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormFunc = class(TForm)
    FDQueryFunc: TFDQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    FDQueryFuncCODIGO: TIntegerField;
    FDQueryFuncNOME: TStringField;
    FDQueryFuncATIVO: TStringField;
    FDQueryFuncCONTATO: TStringField;
    FDQueryFuncCOD_CARGO: TIntegerField;
    Label1: TLabel;
    EditNome: TDBEdit;
    DataSourceFunc: TDataSource;
    Label2: TLabel;
    EditCodigo: TDBEdit;
    Label4: TLabel;
    EditContato: TDBEdit;
    Label3: TLabel;
    EditAtivo: TDBEdit;
    Label5: TLabel;
    EditCargo: TDBEdit;
    SalvarFunc: TButton;
    DBGrid1: TDBGrid;
    ExcluirFunc: TButton;
    NovoFunc: TButton;
    procedure NovoFuncClick(Sender: TObject);
    procedure SalvarFuncClick(Sender: TObject);
    procedure ExcluirFuncClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFunc: TFormFunc;

implementation

{$R *.dfm}

procedure TFormFunc.FormCreate(Sender: TObject);
begin
  FDQueryFunc.Active:= True;
end;

procedure TFormFunc.FormDestroy(Sender: TObject);
begin
  FDQueryFunc.Active:= False;
end;

procedure TFormFunc.ExcluirFuncClick(Sender: TObject);
begin
  DataSourceFunc.DataSet.Delete;
end;

procedure TFormFunc.NovoFuncClick(Sender: TObject);
begin
  DataSourceFunc.DataSet.Append;
end;

procedure TFormFunc.SalvarFuncClick(Sender: TObject);
begin
  DataSourceFunc.DataSet.Post;
end;

end.
