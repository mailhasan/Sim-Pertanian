object FormDAFTARDATAPEGAWAI: TFormDAFTARDATAPEGAWAI
  Left = 380
  Top = 165
  Width = 710
  Height = 416
  Caption = 'DAFTAR DATA PEGAWAI'
  Color = clBtnFace
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
    Width = 694
    Height = 41
    Align = alTop
    Caption = 'DAFTAR DATA PEGAWAI'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 337
    Width = 694
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
    object cxlbl1: TcxLabel
      Left = 10
      Top = 8
      Caption = 'Cari'
    end
    object cxtxtdtPencarian: TcxTextEdit
      Left = 41
      Top = 9
      TabOrder = 1
      Text = 'cxtxtdtPencarian'
      Width = 152
    end
    object btnTambah: TcxButton
      Left = 201
      Top = 9
      Width = 61
      Height = 25
      Caption = 'Tambah'
      TabOrder = 2
    end
    object btnUbah: TcxButton
      Left = 263
      Top = 9
      Width = 54
      Height = 25
      Caption = 'Ubah'
      TabOrder = 3
    end
    object btnHapus: TcxButton
      Left = 317
      Top = 10
      Width = 50
      Height = 25
      Caption = 'Hapus'
      TabOrder = 4
    end
    object btnKeluar: TcxButton
      Left = 367
      Top = 10
      Width = 55
      Height = 25
      Caption = 'Keluar'
      TabOrder = 5
    end
  end
  object cxgrd1: TcxGrid
    Left = 0
    Top = 41
    Width = 694
    Height = 296
    Align = alClient
    TabOrder = 2
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataModule1.dspegawai
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      object cxgrdbclmnGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxgrdbclmnGrid1DBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
      end
      object cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn
        DataBinding.FieldName = 'status'
      end
      object cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn
        DataBinding.FieldName = 'createDate'
      end
      object cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn
        DataBinding.FieldName = 'createUser'
      end
      object cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn
        DataBinding.FieldName = 'modifDate'
      end
      object cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn
        DataBinding.FieldName = 'modifUser'
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
end