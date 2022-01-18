object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 177
  Width = 240
  object Connection: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'Database=C:\Dados\dados.fdb'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'User_Name=SYSDBA')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 24
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 56
    Top = 96
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 160
    Top = 48
  end
end
