object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Valor: TLabel
    Left = 8
    Top = 21
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Parcelas: TLabel
    Left = 112
    Top = 21
    Width = 40
    Height = 13
    Caption = 'Parcelas'
  end
  object Memo1: TMemo
    Left = 8
    Top = 80
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 40
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 112
    Top = 40
    Width = 81
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 205
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end
