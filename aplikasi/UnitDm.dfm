object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 426
  Top = 206
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
  object zqrypelaksanapekerja: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from pelaksanapekerja')
    Params = <>
    Left = 301
    Top = 219
  end
  object dspelaksanapekerja: TDataSource
    DataSet = zqrypelaksanapekerja
    Left = 384
    Top = 239
  end
  object zqrypupukobat: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from pupukobat')
    Params = <>
    Left = 317
    Top = 302
  end
  object dspupukobat: TDataSource
    DataSet = zqrypupukobat
    Left = 404
    Top = 317
  end
  object zqrySatuan: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 314
    Top = 377
  end
  object dsSatuan: TDataSource
    DataSet = zqrySatuan
    Left = 382
    Top = 385
  end
  object zqrypembelianPupukObat: TZQuery
    Connection = conFarm
    Active = True
    SQL.Strings = (
      'select * from pembelianPupukObat')
    Params = <>
    Left = 447
    Top = 26
  end
  object dspembelianPupukObat: TDataSource
    DataSet = zqrypembelianPupukObat
    Left = 532
    Top = 48
  end
end
