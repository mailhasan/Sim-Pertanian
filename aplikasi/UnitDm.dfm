object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 402
  Top = 175
  Height = 487
  Width = 665
  object conFarm: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    AfterConnect = conFarmAfterConnect
    HostName = 'localhost'
    Port = 3306
    Database = 'nfifarm'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\mail\Documents\GitHub\Sim-Pertanian\database\libmysql.d' +
      'll'
    Left = 46
    Top = 28
  end
  object zqryLahan: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from lahan')
    Params = <>
    Left = 66
    Top = 81
  end
  object dsLahan: TDataSource
    DataSet = zqryLahan
    Left = 117
    Top = 84
  end
  object zqryJenisTanaman: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from jenisTanaman')
    Params = <>
    Left = 68
    Top = 146
  end
  object dsJenisTanaman: TDataSource
    DataSet = zqryJenisTanaman
    Left = 158
    Top = 150
  end
  object zqrykegiatanKelolahLahan: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from kegiatankelolahlahan')
    Params = <>
    Left = 64
    Top = 207
  end
  object dskegiatanKelolahLahan: TDataSource
    DataSet = zqrykegiatanKelolahLahan
    Left = 168
    Top = 223
  end
  object zqrydetailKegiatanKelolahLahan: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from detailKegiatanKelolahLahan')
    Params = <>
    Left = 63
    Top = 277
  end
  object dsdetailKegiatanKelolahLahan: TDataSource
    DataSet = zqrydetailKegiatanKelolahLahan
    Left = 190
    Top = 293
  end
  object zqryhasilPanen: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from hasilpanen')
    Params = <>
    Left = 61
    Top = 350
  end
  object dshasilpanen: TDataSource
    DataSet = zqryhasilPanen
    Left = 142
    Top = 360
  end
  object zqrypenggunaanalat: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from penggunaanalat')
    Params = <>
    Left = 268
    Top = 78
  end
  object dspenggunaanalat: TDataSource
    DataSet = zqrypenggunaanalat
    Left = 368
    Top = 98
  end
  object zqryPegawai: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from pegawai')
    Params = <>
    Left = 261
    Top = 144
  end
  object dspegawai: TDataSource
    DataSet = zqryPegawai
    Left = 332
    Top = 156
  end
end