object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 387
  Width = 580
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=E:\Dropbox\projects\SMSSender\db.sqlite3'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 88
    Top = 40
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 88
    Top = 96
  end
end