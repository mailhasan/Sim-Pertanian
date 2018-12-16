object DataModuleSiper: TDataModuleSiper
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 588
  Width = 572
  object conSiper: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ih_pe' +
      'rtanian;Initial Catalog=ih_pertanian'
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object qryAset: TADOQuery
    Active = True
    Connection = conSiper
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_aset')
    Left = 32
    Top = 80
  end
  object dsAset: TDataSource
    DataSet = qryAset
    Left = 80
    Top = 80
  end
  object qryLokasi: TADOQuery
    Active = True
    Connection = conSiper
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_lokasilahan')
    Left = 32
    Top = 144
  end
  object dsLokasi: TDataSource
    DataSet = qryLokasi
    Left = 88
    Top = 144
  end
  object qryProduk: TADOQuery
    Active = True
    Connection = conSiper
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_produk')
    Left = 32
    Top = 216
  end
  object dsProduk: TDataSource
    DataSet = qryProduk
    Left = 88
    Top = 216
  end
  object qryTanaman: TADOQuery
    Active = True
    Connection = conSiper
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tanaman')
    Left = 32
    Top = 280
  end
  object dsTanaman: TDataSource
    DataSet = qryTanaman
    Left = 96
    Top = 280
  end
  object qryBahan: TADOQuery
    Active = True
    Connection = conSiper
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_barang')
    Left = 32
    Top = 344
  end
  object dsBahan: TDataSource
    DataSet = qryBahan
    Left = 96
    Top = 344
  end
  object qryJadwalTanam: TADOQuery
    Connection = conSiper
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_jadwaltanam')
    Left = 176
    Top = 80
  end
  object qryVwJadwalTanam: TADOQuery
    Active = True
    Connection = conSiper
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_jadwaltanam.kdJadwalTnm,'
      't_jadwaltanam.periodeThn,'
      't_jadwaltanam.tglMulai,'
      't_jadwaltanam.tglSelesai,'
      't_tanaman.tanaman,'
      't_lokasilahan.lokasiLahan'
      'FROM'
      't_jadwaltanam'
      
        'Inner Join t_tanaman ON t_jadwaltanam.kdTanaman = t_tanaman.kdTa' +
        'naman'
      
        'Inner Join t_lokasilahan ON t_jadwaltanam.kdLokasi = t_lokasilah' +
        'an.kdLokasi')
    Left = 176
    Top = 144
  end
  object dsVwJadwalTanam: TDataSource
    DataSet = qryVwJadwalTanam
    Left = 280
    Top = 144
  end
end
