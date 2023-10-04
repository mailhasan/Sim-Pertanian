object FormUtama: TFormUtama
  Left = 200
  Top = 130
  Width = 979
  Height = 563
  Align = alClient
  Caption = 'Aplikasi Pencatatan Nfi Farm (By www.nfikreatif.com)'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Color = 15000804
    TabOrder = 0
    object pnlAtasKanan: TPanel
      Left = 1
      Top = 1
      Width = 190
      Height = 39
      Align = alLeft
      TabOrder = 0
      object lbl1: TLabel
        Left = 56
        Top = 3
        Width = 65
        Height = 18
        Caption = 'NFI FARM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Book Antiqua'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 47
        Top = 22
        Width = 87
        Height = 15
        Caption = 'www.nfikreatif.com'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object pnlTengah: TPanel
    Left = 190
    Top = 41
    Width = 773
    Height = 465
    Align = alClient
    Color = clHighlightText
    TabOrder = 1
  end
  object stat1: TStatusBar
    Left = 0
    Top = 506
    Width = 963
    Height = 19
    Panels = <
      item
        Text = '1'
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object pnlKanan: TPanel
    Left = 0
    Top = 41
    Width = 190
    Height = 465
    Align = alLeft
    TabOrder = 3
    object dxnvbr1: TdxNavBar
      Left = 1
      Top = 1
      Width = 188
      Height = 463
      Align = alClient
      ActiveGroupIndex = 2
      TabOrder = 0
      View = 18
      ViewStyle.ColorSchemeName = 'Silver'
      object dxnvbrgrpDATAMASTER: TdxNavBarGroup
        Caption = 'DATA MASTER'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmDataLahan
          end
          item
            Item = dxnvbrtmDataLokasiLahan
          end
          item
            Item = dxnvbrtmDataPegawai
          end
          item
            Item = dxnvbrtmDataPupukObat
          end>
      end
      object dxnvbrgrpTRANSAKSI: TdxNavBarGroup
        Caption = 'TRANSAKSI'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmPEMBELIANPUPUKOBAT
          end>
      end
      object dxnvbrgrpPertanian: TdxNavBarGroup
        Caption = 'PERTANIAN'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmKegiatanKelolaLahan
          end
          item
            Item = dxnvbrtmPengeluaran
          end
          item
            Item = dxnvbrtmPENDAPATAN
          end>
      end
      object dxnvbrgrpPETERNAKAN: TdxNavBarGroup
        Caption = 'PETERNAKAN'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object dxnvbrgrpLAPORAN: TdxNavBarGroup
        Caption = 'LAPORAN'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object dxnvbrtmDataLahan: TdxNavBarItem
        Caption = 'DATA LAHAN'
        OnClick = dxnvbrtmDataLahanClick
      end
      object dxnvbrtmDataLokasiLahan: TdxNavBarItem
        Caption = 'DATA JENIS TANAMAN'
        OnClick = dxnvbrtmDataLokasiLahanClick
      end
      object dxnvbrtmKegiatanKelolaLahan: TdxNavBarItem
        Caption = 'KEGIATAN KELOLA LAHAN'
        OnClick = dxnvbrtmKegiatanKelolaLahanClick
      end
      object dxnvbrtmPengeluaran: TdxNavBarItem
        Caption = 'PENGELUARAN'
      end
      object dxnvbrtmPENDAPATAN: TdxNavBarItem
        Caption = 'PENDAPATAN'
      end
      object dxnvbrtmDataPegawai: TdxNavBarItem
        Caption = 'DATA PEGAWAI'
        OnClick = dxnvbrtmDataPegawaiClick
      end
      object dxnvbrtmDataPupukObat: TdxNavBarItem
        Caption = 'DATA PUPUK/OBAT'
        OnClick = dxnvbrtmDataPupukObatClick
      end
      object dxnvbrtmPEMBELIANPUPUKOBAT: TdxNavBarItem
        Caption = 'PEMBELIAN PUPUK/OBAT'
      end
    end
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 693
    Top = 58
    object dxlytwblkndfl1: TdxLayoutWebLookAndFeel
    end
  end
  object dxskncntrlr1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2007Silver'
    Left = 328
    Top = 67
  end
end
