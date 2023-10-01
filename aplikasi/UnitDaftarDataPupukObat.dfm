object FormDaftarDataPupukObat: TFormDaftarDataPupukObat
  Left = 375
  Top = 146
  Width = 733
  Height = 557
  Caption = 'PupukObat'
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
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 717
    Height = 437
    Align = alClient
    Color = clHighlightText
    TabOrder = 0
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 715
      Height = 435
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dspupukobat
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1kodePupukObat: TcxGridDBColumn
          Caption = 'kode'
          DataBinding.FieldName = 'kodePupukObat'
          Width = 70
        end
        object cxgrdbclmnGrid1DBTableView1namaPupukObat: TcxGridDBColumn
          Caption = 'Nama Pupuk/Obat'
          DataBinding.FieldName = 'namaPupukObat'
          Width = 286
        end
        object cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 97
        end
        object cxgrdbclmnGrid1DBTableView1stok: TcxGridDBColumn
          Caption = 'Stok'
          DataBinding.FieldName = 'stok'
          Width = 68
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
  object pnlBawah: TPanel
    Left = 0
    Top = 478
    Width = 717
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
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
    end
    object btnHapus: TcxButton
      Left = 317
      Top = 10
      Width = 50
      Height = 25
      Caption = 'Hapus'
      TabOrder = 2
    end
    object btnKeluar: TcxButton
      Left = 367
      Top = 10
      Width = 55
      Height = 25
      Caption = 'Keluar'
      TabOrder = 3
    end
    object cxlbl1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Cari'
    end
    object cxtxtdtPencarian: TcxTextEdit
      Left = 44
      Top = 10
      Properties.OnChange = cxtxtdtPencarianPropertiesChange
      TabOrder = 5
      Text = 'cxtxtdtPencarian'
      Width = 152
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 41
    Align = alTop
    Caption = 'Daftar Data Pupuk/Obat-obatan'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
