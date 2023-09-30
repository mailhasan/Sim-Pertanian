object FormDaftarDataKegiatanKelolaLahan: TFormDaftarDataKegiatanKelolaLahan
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Align = alClient
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Daftar Data Kegiatan Pengelolaan Lahan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 190
    Top = 41
    Width = 722
    Height = 401
    Align = alClient
    Color = clHighlightText
    TabOrder = 0
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 720
      Height = 358
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dskegiatanKelolahLahan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Column = cxgrdbclmnGrid1DBTableView1pendapatan
          end
          item
            Column = cxgrdbclmnGrid1DBTableView1pengeluaran
          end
          item
            Column = cxgrdbclmnGrid1DBTableView1keuntungan
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        object cxgrdbclmnGrid1DBTableView1noKegiatanKelolahLahan: TcxGridDBColumn
          Caption = 'No Kegiatan'
          DataBinding.FieldName = 'noKegiatanKelolahLahan'
          Width = 156
        end
        object cxgrdbclmnGrid1DBTableView1tanggalMulaiKegiatan: TcxGridDBColumn
          Caption = 'Tanggal Mulai Kegiatan'
          DataBinding.FieldName = 'tanggalMulaiKegiatan'
          Width = 108
        end
        object cxgrdbclmnGrid1DBTableView1tanggalSelesaiKegiatan: TcxGridDBColumn
          Caption = 'Tanggal Selesai Kegiatan'
          DataBinding.FieldName = 'tanggalSelesaiKegiatan'
          Width = 117
        end
        object cxgrdbclmnGrid1DBTableView1kodeLokasiLahan: TcxGridDBColumn
          Caption = 'Kode Lokasi Lahan'
          DataBinding.FieldName = 'kodeLokasiLahan'
          Width = 91
        end
        object cxgrdbclmnGrid1DBTableView1LokasiLahan: TcxGridDBColumn
          Caption = 'Lokasi Lahan'
          DataBinding.FieldName = 'LokasiLahan'
          Width = 67
        end
        object cxgrdbclmnGrid1DBTableView1kodeJenisTanam: TcxGridDBColumn
          Caption = 'Kode Jenis Tanam'
          DataBinding.FieldName = 'kodeJenisTanam'
        end
        object cxgrdbclmnGrid1DBTableView1jenisTanam: TcxGridDBColumn
          Caption = 'Jenis Tanam'
          DataBinding.FieldName = 'jenisTanam'
          Width = 60
        end
        object cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
        end
        object cxgrdbclmnGrid1DBTableView1pendapatan: TcxGridDBColumn
          DataBinding.FieldName = 'pendapatan'
        end
        object cxgrdbclmnGrid1DBTableView1pengeluaran: TcxGridDBColumn
          DataBinding.FieldName = 'pengeluaran'
        end
        object cxgrdbclmnGrid1DBTableView1keuntungan: TcxGridDBColumn
          DataBinding.FieldName = 'keuntungan'
        end
        object cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn
          Caption = 'Create Date'
          DataBinding.FieldName = 'createDate'
        end
        object cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn
          Caption = 'Create User'
          DataBinding.FieldName = 'createUser'
          Width = 146
        end
        object cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn
          Caption = 'Modif Date'
          DataBinding.FieldName = 'modifDate'
          Width = 99
        end
        object cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn
          Caption = 'Modif User'
          DataBinding.FieldName = 'modifUser'
          Width = 98
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
    object pnlBawah: TPanel
      Left = 1
      Top = 359
      Width = 720
      Height = 41
      Align = alBottom
      Color = 15000804
      TabOrder = 1
      object cxlbl1: TcxLabel
        Left = 10
        Top = 12
        Caption = 'Cari'
      end
      object cxtxtdtPencarian: TcxTextEdit
        Left = 39
        Top = 10
        Properties.OnChange = cxtxtdtPencarianPropertiesChange
        TabOrder = 1
        Text = 'cxtxtdtPencarian'
        Width = 255
      end
      object cxlbl2: TcxLabel
        Left = 297
        Top = 15
        Caption = 'Status'
      end
      object cbbStatus: TcxComboBox
        Left = 336
        Top = 11
        Properties.Items.Strings = (
          'aktif'
          'tidak aktif')
        TabOrder = 3
        Text = 'cbbStatus'
        Width = 97
      end
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Caption = 'Daftar Data Kegiatan Pengelolaan Lahan'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pnlKanan: TPanel
    Left = 0
    Top = 41
    Width = 190
    Height = 401
    Align = alLeft
    Color = clHighlightText
    TabOrder = 2
    object dxnvbr1: TdxNavBar
      Left = 1
      Top = 1
      Width = 188
      Height = 399
      Align = alClient
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 18
      ViewStyle.ColorSchemeName = 'Silver'
      object dxnvbrgrpMenu: TdxNavBarGroup
        Caption = 'MENU'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmTambah
          end
          item
            Item = dxnvbrtmUbah
          end
          item
            Item = dxnvbrtmHapus
          end>
      end
      object dxnvbrgrpKegiatan: TdxNavBarGroup
        Caption = 'KEGIATAN'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmKelolaHarianLahan
          end>
      end
      object dxnvbrgrpPendapatan: TdxNavBarGroup
        Caption = 'PENDAPATAN'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmHasilPanen
          end>
      end
      object dxnvbrgrpPengeluaran: TdxNavBarGroup
        Caption = 'PENGELUARAN'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmPengeluaranAlat
          end
          item
            Item = dxnvbrtmPembayaranPekerja
          end
          item
            Item = dxnvbrtmObatobatan
          end>
      end
      object dxnvbrtmKegiatan: TdxNavBarItem
        Caption = 'KEGIATAN'
      end
      object dxnvbrtmTambah: TdxNavBarItem
        Caption = 'TAMBAH'
        OnClick = dxnvbrtmTambahClick
      end
      object dxnvbrtmUbah: TdxNavBarItem
        Caption = 'UBAH'
        OnClick = dxnvbrtmUbahClick
      end
      object dxnvbrtmHapus: TdxNavBarItem
        Caption = 'HAPUS'
        OnClick = dxnvbrtmHapusClick
      end
      object dxnvbrtmKelolaHarianLahan: TdxNavBarItem
        Caption = 'KELOLA LAHAN'
        OnClick = dxnvbrtmKelolaHarianLahanClick
      end
      object dxnvbrtmHasilPanen: TdxNavBarItem
        Caption = 'HASIL PANEN'
        OnClick = dxnvbrtmHasilPanenClick
      end
      object dxnvbrtmPengeluaranAlat: TdxNavBarItem
        Caption = 'ALAT'
        OnClick = dxnvbrtmPengeluaranAlatClick
      end
      object dxnvbrtmPembayaranPekerja: TdxNavBarItem
        Caption = 'PEKERJA'
        OnClick = dxnvbrtmPembayaranPekerjaClick
      end
      object dxnvbrtmObatobatan: TdxNavBarItem
        Caption = 'PUPUK, OBAT, DLL'
      end
    end
  end
end
