object FormLancarEventosFuncionarios: TFormLancarEventosFuncionarios
  Left = 0
  Top = 0
  Caption = 'Lancar Eventos para  Funcionarios'
  ClientHeight = 376
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    675
    376)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 13
    Width = 42
    Height = 13
    Caption = 'M'#234's/Ano'
  end
  object Label2: TLabel
    Left = 216
    Top = 129
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
  end
  object Label3: TLabel
    Left = 216
    Top = 67
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object Label4: TLabel
    Left = 216
    Top = 193
    Width = 34
    Height = 13
    Caption = 'Evento'
  end
  object Label5: TLabel
    Left = 216
    Top = 248
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object EditMesAno: TMaskEdit
    Left = 216
    Top = 32
    Width = 58
    Height = 21
    EditMask = '!99/0000;0;_'
    MaxLength = 7
    TabOrder = 0
    Text = ''
  end
  object LkpCargos: TDBLookupComboBox
    Left = 216
    Top = 86
    Width = 225
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = DtsCargos
    NullValueKey = 16462
    TabOrder = 1
  end
  object LkpFuncionarios: TDBLookupComboBox
    Left = 216
    Top = 148
    Width = 225
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DtsFuncionarios
    NullValueKey = 16462
    TabOrder = 2
  end
  object LkpEventos: TDBLookupComboBox
    Left = 216
    Top = 212
    Width = 225
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = DtsEventos
    NullValueKey = 16462
    TabOrder = 3
  end
  object BtnSalvar: TButton
    Left = 251
    Top = 335
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = BtnSalvarClick
  end
  object BtnCancelar: TButton
    Left = 345
    Top = 335
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'Cancelar'
    TabOrder = 6
  end
  object EditValor: TEdit
    Left = 216
    Top = 267
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DtsCargos: TDataSource
    DataSet = QryCargos
    Left = 392
    Top = 40
  end
  object DtsFuncionarios: TDataSource
    DataSet = QryFuncionarios
    Left = 408
    Top = 104
  end
  object QryCargos: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from cargos')
    Left = 320
    Top = 40
    object QryCargosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCargosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 20
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object QryFuncionarios: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from funcionarios')
    Left = 328
    Top = 104
    object QryFuncionariosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFuncionariosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
  end
  object QryEventos: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from eventos')
    Left = 320
    Top = 176
    object QryEventosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEventosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object DtsEventos: TDataSource
    DataSet = QryEventos
    Left = 392
    Top = 176
  end
  object QryFuncSelecionados: TFDQuery
    Connection = DM.FDConnection1
    Left = 600
    Top = 256
  end
  object QryAux: TFDQuery
    Connection = DM.FDConnection1
    Left = 600
    Top = 312
  end
end
