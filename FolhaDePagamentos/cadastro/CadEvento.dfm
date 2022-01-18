object FormEvento: TFormEvento
  Left = 0
  Top = 0
  Caption = 'FormEvento'
  ClientHeight = 401
  ClientWidth = 583
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
    Width = 583
    Height = 401
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label1: TLabel
        Left = 16
        Top = 176
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = EditCodEvento
      end
      object Label2: TLabel
        Left = 16
        Top = 216
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = EditNomeEvento
      end
      object Label3: TLabel
        Left = 16
        Top = 256
        Width = 24
        Height = 13
        Caption = 'TIPO'
        FocusControl = EditTipoEvento
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 575
        Height = 170
        Align = alTop
        DataSource = DataSourceEvento
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object EditCodEvento: TDBEdit
        Left = 16
        Top = 189
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DataSourceEvento
        TabOrder = 1
      end
      object EditNomeEvento: TDBEdit
        Left = 16
        Top = 229
        Width = 209
        Height = 21
        DataField = 'NOME'
        DataSource = DataSourceEvento
        TabOrder = 2
      end
      object SalvarEvento: TButton
        Left = 112
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = SalvarEventoClick
      end
      object NovoEvento: TButton
        Left = 16
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 4
        OnClick = NovoEventoClick
      end
      object ExcluirEvento: TButton
        Left = 208
        Top = 320
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 5
        OnClick = ExcluirEventoClick
      end
      object EditTipoEvento: TDBEdit
        Left = 16
        Top = 272
        Width = 134
        Height = 21
        DataField = 'TIPO'
        DataSource = DataSourceEvento
        TabOrder = 6
      end
    end
  end
  object FDQueryEvento: TFDQuery
    Connection = DM.Connection
    Transaction = DM.Transaction
    SQL.Strings = (
      'SELECT * FROM EVENTOS')
    Left = 388
    Top = 256
    object FDQueryEventoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryEventoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDQueryEventoTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
  end
  object DataSourceEvento: TDataSource
    DataSet = FDQueryEvento
    Left = 472
    Top = 256
  end
end
