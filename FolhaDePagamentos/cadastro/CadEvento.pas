unit CadEvento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Conexao, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormEvento = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    FDQueryEvento: TFDQuery;
    FDQueryEventoCODIGO: TIntegerField;
    FDQueryEventoNOME: TStringField;
    FDQueryEventoTIPO: TIntegerField;
    Label1: TLabel;
    EditCodEvento: TDBEdit;
    DataSourceEvento: TDataSource;
    Label2: TLabel;
    EditNomeEvento: TDBEdit;
    SalvarEvento: TButton;
    NovoEvento: TButton;
    ExcluirEvento: TButton;
    Label3: TLabel;
    EditTipoEvento: TDBEdit;
    procedure NovoEventoClick(Sender: TObject);
    procedure SalvarEventoClick(Sender: TObject);
    procedure ExcluirEventoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvento: TFormEvento;

implementation

{$R *.dfm}


procedure TFormEvento.FormCreate(Sender: TObject);
begin
  FDQueryEvento.Active:= True;
end;

procedure TFormEvento.FormDestroy(Sender: TObject);
begin
  FDQueryEvento.Active:= False;
end;

procedure TFormEvento.ExcluirEventoClick(Sender: TObject);
begin
 DataSourceEvento.DataSet.Delete;
end;

procedure TFormEvento.NovoEventoClick(Sender: TObject);
begin
  DataSourceEvento.DataSet.Append;
end;

procedure TFormEvento.SalvarEventoClick(Sender: TObject);
begin
  DataSourceEvento.DataSet.Post;
end;

end.
