object FormFunc: TFormFunc
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Cadastro de Funcion'#225'rio'
  ClientHeight = 459
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 801
    Height = 459
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 240
    ExplicitTop = 168
    ExplicitWidth = 289
    ExplicitHeight = 193
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 793
        Height = 361
        Align = alTop
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object ExcluirFunc: TButton
        Left = 16
        Top = 384
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Label1: TLabel
        Left = 40
        Top = 75
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = EditNome
      end
      object Label2: TLabel
        Left = 40
        Top = 32
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = EditCodigo
      end
      object Label4: TLabel
        Left = 40
        Top = 121
        Width = 49
        Height = 13
        Caption = 'CONTATO'
        FocusControl = EditContato
      end
      object Label3: TLabel
        Left = 40
        Top = 167
        Width = 31
        Height = 13
        Caption = 'ATIVO'
        FocusControl = EditAtivo
      end
      object Label5: TLabel
        Left = 40
        Top = 207
        Width = 64
        Height = 13
        Caption = 'COD_CARGO'
        FocusControl = EditCargo
      end
      object EditNome: TDBEdit
        Left = 40
        Top = 94
        Width = 241
        Height = 21
        DataField = 'NOME'
        DataSource = DataSourceFunc
        TabOrder = 0
      end
      object EditCodigo: TDBEdit
        Left = 40
        Top = 48
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DataSourceFunc
        TabOrder = 1
      end
      object EditContato: TDBEdit
        Left = 40
        Top = 140
        Width = 241
        Height = 21
        DataField = 'CONTATO'
        DataSource = DataSourceFunc
        TabOrder = 2
      end
      object EditAtivo: TDBEdit
        Left = 40
        Top = 183
        Width = 81
        Height = 21
        DataField = 'ATIVO'
        DataSource = DataSourceFunc
        TabOrder = 3
      end
      object EditCargo: TDBEdit
        Left = 40
        Top = 223
        Width = 134
        Height = 21
        DataField = 'COD_CARGO'
        DataSource = DataSourceFunc
        TabOrder = 4
      end
      object SalvarFunc: TButton
        Left = 168
        Top = 288
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 5
        OnClick = SalvarFuncClick
      end
      object NovoFunc: TButton
        Left = 40
        Top = 288
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 6
        OnClick = NovoFuncClick
      end
    end
  end
  object FDQueryFunc: TFDQuery
    IndexFieldNames = 'CODIGO'
    Connection = DM.Connection
    Transaction = DM.Transaction
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO')
    Left = 504
    Top = 120
    object FDQueryFuncCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryFuncNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDQueryFuncATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQueryFuncCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 100
    end
    object FDQueryFuncCOD_CARGO: TIntegerField
      FieldName = 'COD_CARGO'
      Origin = 'COD_CARGO'
      Required = True
    end
  end
  object DataSourceFunc: TDataSource
    DataSet = FDQueryFunc
    Left = 504
    Top = 184
  end
end
