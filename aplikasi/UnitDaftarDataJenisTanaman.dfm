object FormDaftarDataJenisTanaman: TFormDaftarDataJenisTanaman
  Left = 504
  Top = 202
  Width = 540
  Height = 461
  BorderIcons = [biSystemMenu]
  Caption = 'Daftar Data Jenis Tanaman'
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
    Width = 524
    Height = 341
    Align = alClient
    Color = clHighlightText
    TabOrder = 0
    object cxgrd1: TcxGrid
      Left = 1
      Top = 1
      Width = 522
      Height = 339
      Align = alClient
      TabOrder = 0
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dsJenisTanaman
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1kodeJenisTanaman: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kodeJenisTanaman'
        end
        object cxgrdbclmnGrid1DBTableView1jenisTanaman: TcxGridDBColumn
          Caption = 'Jenis Tanaman'
          DataBinding.FieldName = 'jenisTanaman'
          Width = 146
        end
        object cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'status'
        end
        object cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn
          Caption = 'Create User'
          DataBinding.FieldName = 'createUser'
          Width = 68
        end
        object cxgrdbclmnGrid1DBTableView1cretateDate: TcxGridDBColumn
          Caption = 'Cretate Date'
          DataBinding.FieldName = 'cretateDate'
          Width = 77
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
    Top = 382
    Width = 524
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
      Top = 10
      Caption = 'Cari'
    end
    object cxtxtdtPencarian: TcxTextEdit
      Left = 41
      Top = 9
      TabOrder = 5
      Text = 'cxtxtdtPencarian'
      Width = 152
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 524
    Height = 41
    Align = alTop
    Caption = 'Daftar Data Jenis Tanaman'
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
