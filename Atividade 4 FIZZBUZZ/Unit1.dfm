object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 297
  ClientWidth = 170
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
