object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 219
  ClientWidth = 140
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 32
    Height = 13
    Caption = 'Lado 1'
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Lado 2'
  end
  object Label3: TLabel
    Left = 8
    Top = 128
    Width = 32
    Height = 13
    Caption = 'Lado 3'
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 8
    Top = 147
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 32
    Top = 186
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button1Click
  end
end
