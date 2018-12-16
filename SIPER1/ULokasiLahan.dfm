object FLokasiLahan: TFLokasiLahan
  Left = 192
  Top = 125
  BorderStyle = bsNone
  Caption = 'Lokasi Lahan'
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
    Caption = 'Data Lokasi Lahan'
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
  object pnlBawah: TPanel
    Left = 0
    Top = 483
    Width = 963
    Height = 41
    Align = alBottom
    Color = clGray
    TabOrder = 1
    object edtCari: TEdit
      Left = 8
      Top = 16
      Width = 201
      Height = 21
      TabOrder = 0
      Text = 'Masukan Lokasi'
      OnChange = edtCariChange
      OnClick = edtCariClick
    end
    object dbnvgrLokasi: TDBNavigator
      Left = 216
      Top = 16
      Width = 240
      Height = 25
      DataSource = DataModuleSiper.dsLokasi
      TabOrder = 1
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 963
    Height = 442
    Align = alClient
    TabOrder = 2
    object dbgrdhLokasi: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 440
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DataModuleSiper.dsLokasi
      DrawMemoText = True
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'kdLokasi'
          Footers = <>
          Title.Caption = 'Kode'
        end
        item
          EditButtons = <>
          FieldName = 'lokasiLahan'
          Footers = <>
          Title.Caption = 'lokasi Lahan'
          Width = 331
        end
        item
          EditButtons = <>
          FieldName = 'statusKepemilkan'
          Footers = <>
          Title.Caption = 'Status Kepemilkan'
          Width = 165
        end
        item
          EditButtons = <>
          FieldName = 'keterangan'
          Footers = <>
          Width = 236
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
