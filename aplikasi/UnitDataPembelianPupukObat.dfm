object FormDaftarDataPembelianPupukObat: TFormDaftarDataPembelianPupukObat
  Left = 335
  Top = 138
  Width = 979
  Height = 561
  Caption = 'Daftar Data Pembelian Pupuk/Obat'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'Daftar Data Pembelian Pupuk/Obat'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlKiri: TPanel
    Left = 0
    Top = 41
    Width = 190
    Height = 482
    Align = alLeft
    Color = clHighlightText
    TabOrder = 1
    object dxnvbr1: TdxNavBar
      Left = 1
      Top = 1
      Width = 188
      Height = 480
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
          end
          item
            Item = dxnvbrtmPembayaran
          end>
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
      object dxnvbrtmPembayaran: TdxNavBarItem
        Caption = 'PEMBAYARAN'
        OnClick = dxnvbrtmPembayaranClick
      end
    end
  end
  object pnlTengah: TPanel
    Left = 190
    Top = 41
    Width = 773
    Height = 482
    Align = alClient
    Color = clHighlightText
    TabOrder = 2
    object pnlBawah: TPanel
      Left = 1
      Top = 440
      Width = 771
      Height = 41
      Align = alBottom
      Color = 15000804
      TabOrder = 0
      object cxlbl1: TcxLabel
        Left = 8
        Top = 14
        Caption = 'Tanggal Mulai'
      end
      object cxdtdtTglMulai: TcxDateEdit
        Left = 86
        Top = 12
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 1
        Width = 121
      end
      object cxlbl2: TcxLabel
        Left = 213
        Top = 15
        Caption = 'SD'
      end
      object cxdtdtTglSelesai: TcxDateEdit
        Left = 232
        Top = 13
        Properties.SaveTime = False
        Properties.ShowTime = False
        TabOrder = 3
        Width = 121
      end
      object btnTampil: TcxButton
        Left = 360
        Top = 12
        Width = 69
        Height = 25
        Caption = 'Tampil'
        TabOrder = 4
        OnClick = btnTampilClick
      end
    end
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 771
      Height = 439
      Align = alClient
      TabOrder = 1
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dspembelianPupukObat
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1noPembelian: TcxGridDBColumn
          Caption = 'No Pembelian'
          DataBinding.FieldName = 'noPembelian'
          Width = 132
        end
        object cxgrdbclmnGrid1DBTableView1tanggalPembelian: TcxGridDBColumn
          Caption = 'Tanggal Pembelian'
          DataBinding.FieldName = 'tanggalPembelian'
          Width = 126
        end
        object cxgrdbclmnGrid1DBTableView1totalPembelian: TcxGridDBColumn
          Caption = 'Total Pembelian'
          DataBinding.FieldName = 'totalPembelian'
          Width = 104
        end
        object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Sisa Pembayaran'
          DataBinding.FieldName = 'sisaPembayaran'
          Width = 146
        end
        object cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'status'
        end
        object cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn
          Caption = 'Create Date'
          DataBinding.FieldName = 'createDate'
        end
        object cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn
          Caption = 'Create User'
          DataBinding.FieldName = 'createUser'
        end
        object cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn
          Caption = 'Modif Date'
          DataBinding.FieldName = 'modifDate'
        end
        object cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn
          Caption = 'Modif User'
          DataBinding.FieldName = 'modifUser'
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
end
