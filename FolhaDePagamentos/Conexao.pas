unit Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB, Vcl.Dialogs, Vcl.Forms;

type
  TDM = class(TDataModule)
    Connection: TFDConnection;
    Transaction: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FAppPath: String;
  public
    { Public declarations }
    property AppPath: String Read FAppPath;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    Connection.Connected := True;
  except
    ShowMessage('Falha ao iniciar a aplica??o');
    Application.Terminate;
  end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  Connection.Connected := False;
end;

end.
