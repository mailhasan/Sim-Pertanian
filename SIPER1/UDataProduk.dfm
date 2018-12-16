object FDataProduk: TFDataProduk
  Left = 198
  Top = 125
  BorderStyle = bsNone
  Caption = 'Data Produk'
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
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 963
    Height = 442
    Align = alClient
    TabOrder = 0
    object dbgrdhProduk: TDBGridEh
      Left = 1
      Top = 1
      Width = 961
      Height = 440
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DataModuleSiper.dsProduk
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
      object RowDetailData: TRowDetailPanelControlEh
      end
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
    object dbnvgrAset: TDBNavigator
      Left = 8
      Top = 16
      Width = 240
      Height = 25
      DataSource = DataModuleSiper.dsProduk
      TabOrder = 0
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'Data Produk'
    TabOrder = 2
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
end
