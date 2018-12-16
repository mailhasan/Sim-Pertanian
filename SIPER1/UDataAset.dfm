object FDataAset: TFDataAset
  Left = 192
  Top = 125
  BorderStyle = bsNone
  Caption = 'Data Aset'
  ClientHeight = 524
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'Data Aset'
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 881
      Top = 1
      Width = 81
      Height = 39
      Align = alRight
      Caption = 'Keluar'
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 963
    Height = 442
    Align = alClient
    TabOrder = 1
    object dbgrdhAset: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 440
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DataModuleSiper.dsAset
      DrawMemoText = True
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      IndicatorOptions = [gioShowRowIndicatorEh]
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrdhAsetDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'kdAset'
          Footer.Value = 'Jumlah Aset :'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = 'Kode'
          Width = 93
        end
        item
          EditButtons = <>
          FieldName = 'nmAset'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Nama'
          Width = 205
        end
        item
          EditButtons = <>
          FieldName = 'spesifikasi'
          Footers = <>
          Title.Caption = 'Spesifikasi'
          Width = 229
        end
        item
          EditButtons = <>
          FieldName = 'kondisiPembelian'
          Footers = <>
          Title.Caption = 'kondisi'
          Width = 111
        end
        item
          EditButtons = <>
          FieldName = 'tglPembelian'
          Footers = <>
          Title.Caption = 'Tanggal'
          Width = 102
        end
        item
          EditButtons = <>
          FieldName = 'keterangan'
          Footer.Value = 'Total Nominal : '
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = 'Keterangan'
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'hargaPembelian'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'harga'
          Width = 102
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object cbbKondisi: TComboBox
      Left = 544
      Top = 344
      Width = 113
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Visible = False
      Items.Strings = (
        'baru'
        'bekas')
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 483
    Width = 963
    Height = 41
    Align = alBottom
    Color = clGray
    TabOrder = 2
    object dbnvgrAset: TDBNavigator
      Left = 216
      Top = 16
      Width = 240
      Height = 25
      DataSource = DataModuleSiper.dsAset
      TabOrder = 0
    end
    object edtCari: TEdit
      Left = 8
      Top = 16
      Width = 201
      Height = 21
      TabOrder = 1
      Text = 'Masukan Nama '
      OnChange = edtCariChange
      OnClick = edtCariClick
    end
  end
end
