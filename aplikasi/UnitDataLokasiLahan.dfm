object FormDaftarDataLokasiLahan: TFormDaftarDataLokasiLahan
  Left = 422
  Top = 122
  Width = 580
  Height = 533
  BorderIcons = [biSystemMenu]
  Caption = 'Data Lokasi Lahan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 41
    Align = alTop
    Caption = 'Daftar Data Lokasi Lahan'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 564
    Height = 413
    Align = alClient
    Color = clHighlightText
    TabOrder = 1
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 562
      Height = 411
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dsLahan
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1kodeLokasiLahan: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kodeLokasiLahan'
          Options.Editing = False
          Width = 64
        end
        object cxgrdbclmnGrid1DBTableView1lokasiLahan: TcxGridDBColumn
          Caption = 'Lokasi Lahan'
          DataBinding.FieldName = 'lokasiLahan'
          Width = 90
        end
        object cxgrdbclmnGrid1DBTableView1tanggalPembelian: TcxGridDBColumn
          Caption = 'Tanggal Pembelian'
          DataBinding.FieldName = 'tanggalPembelian'
          Width = 113
        end
        object cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'status'
        end
        object cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn
          Caption = 'Create Date'
          DataBinding.FieldName = 'createDate'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 131
        end
        object cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn
          Caption = 'Create User'
          DataBinding.FieldName = 'createUser'
        end
        object cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn
          Caption = 'Modif Date'
          DataBinding.FieldName = 'modifDate'
          Width = 127
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
  object pnlBawah: TPanel
    Left = 0
    Top = 454
    Width = 564
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 2
    object btnTambah: TcxButton
      Left = 201
      Top = 9
      Width = 61
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = btnTambahClick
    end
    object btnUbah: TcxButton
      Left = 263
      Top = 9
      Width = 54
      Height = 25
      Caption = 'Ubah'
      TabOrder = 1
      OnClick = btnUbahClick
    end
    object btnHapus: TcxButton
      Left = 317
      Top = 10
      Width = 50
      Height = 25
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = btnHapusClick
    end
    object btnKeluar: TcxButton
      Left = 367
      Top = 10
      Width = 55
      Height = 25
      Caption = 'Keluar'
      TabOrder = 3
      OnClick = btnKeluarClick
    end
    object cxlbl1: TcxLabel
      Left = 10
      Top = 8
      Caption = 'Cari'
    end
    object cxtxtdtPencarian: TcxTextEdit
      Left = 41
      Top = 9
      Properties.OnChange = cxtxtdtPencarianPropertiesChange
      TabOrder = 5
      Text = 'cxtxtdtPencarian'
      Width = 152
    end
  end
end
