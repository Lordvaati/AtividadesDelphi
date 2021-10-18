object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 297
  ClientWidth = 383
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
    Left = 24
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label2: TLabel
    Left = 160
    Top = 179
    Width = 30
    Height = 13
    Caption = 'FIZZ!:'
  end
  object Label3: TLabel
    Left = 196
    Top = 179
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 232
    Top = 179
    Width = 33
    Height = 13
    Caption = 'BUZZ!:'
  end
  object Label5: TLabel
    Left = 271
    Top = 179
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 296
    Top = 179
    Width = 55
    Height = 13
    Caption = 'FIZZBUZZ!:'
  end
  object Label7: TLabel
    Left = 357
    Top = 179
    Width = 8
    Height = 16
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 196
    Top = 104
    Width = 127
    Height = 25
    Caption = 'CONTADOR!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 48
    Top = 64
    Width = 75
    Height = 25
    Caption = 'FIZZBUZZ!'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 104
    Width = 121
    Height = 185
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
