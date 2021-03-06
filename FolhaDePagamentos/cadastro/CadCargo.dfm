object FormCargo: TFormCargo
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cargo'
  ClientHeight = 388
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 459
    Height = 388
    ActivePage = Cadastro
    Align = alClient
    TabOrder = 0
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 3
        Top = 248
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = EditCod1
      end
      object Label2: TLabel
        Left = 160
        Top = 248
        Width = 59
        Height = 13
        Caption = 'DESCRICAO'
        FocusControl = EditCargo
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 445
        Height = 242
        Align = alTop
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object SalvarCargo: TButton
        Left = 130
        Top = 312
        Width = 89
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = SalvarCargoClick
      end
      object NovoCargo: TButton
        Left = 22
        Top = 312
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 2
        OnClick = NovoCargoClick
      end
      object ExcluirCargo: TButton
        Left = 352
        Top = 312
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 3
        OnClick = ExcluirCargoClick
      end
      object EditCod1: TDBEdit
        Left = 3
        Top = 267
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DataSource1
        TabOrder = 4
      end
      object EditCargo: TDBEdit
        Left = 160
        Top = 267
        Width = 289
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DataSource1
        TabOrder = 5
      end
      object EditarCargo: TButton
        Left = 247
        Top = 312
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 6
        OnClick = EditarCargoClick
      end
    end
  end
  object FDQueryCargo: TFDQuery
    IndexFieldNames = 'CODIGO'
    Connection = DM.Connection
    Transaction = DM.Transaction
    SQL.Strings = (
      'SELECT * FROM CARGO')
    Left = 340
    Top = 160
    object FDQueryCargoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryCargoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = FDQueryCargo
    Left = 400
    Top = 160
  end
end
