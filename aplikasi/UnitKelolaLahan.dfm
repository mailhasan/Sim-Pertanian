object FormKelolaLahan: TFormKelolaLahan
  Left = 404
  Top = 129
  Width = 571
  Height = 526
  Caption = 'Kelola Lahan'
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
    Width = 555
    Height = 41
    Align = alTop
    Caption = 'Kegiatan'
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
    Width = 555
    Height = 406
    Align = alClient
    Color = clHighlightText
    TabOrder = 1
    object cxgrpbx1: TcxGroupBox
      Left = 1
      Top = 146
      Align = alClient
      Caption = 'Daftar Data Kegiatan'
      TabOrder = 0
      Height = 259
      Width = 553
      object cxgrd1: TcxGrid
        Left = 2
        Top = 18
        Width = 549
        Height = 239
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataModule1.dsdetailKegiatanKelolahLahan
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxgrdbclmnGrid1DBTableView1keterangankegiatanKelolahLahan: TcxGridDBColumn
            Caption = 'KETERANGAN'
            DataBinding.FieldName = 'keterangankegiatanKelolahLahan'
            Width = 347
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
    object cxgrpbx2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Form Kegiatan'
      TabOrder = 1
      Height = 145
      Width = 553
      object cxlbl2: TcxLabel
        Left = 7
        Top = 20
        Caption = 'No Kegiatan'
      end
      object cxtxtdtNoKegiatan: TcxTextEdit
        Left = 97
        Top = 18
        Enabled = False
        TabOrder = 1
        Text = 'cxtxtdtNoKegiatan'
        Width = 224
      end
      object cxlbl3: TcxLabel
        Left = 9
        Top = 49
        Caption = 'keterangan'
      end
      object cxmKeterangan: TcxMemo
        Left = 97
        Top = 45
        Lines.Strings = (
          'cxmKeterangan')
        TabOrder = 3
        Height = 54
        Width = 372
      end
      object pnl1: TPanel
        Left = 2
        Top = 102
        Width = 549
        Height = 41
        Align = alBottom
        Color = 15000804
        TabOrder = 4
        object btnSimpan: TcxButton
          Left = 164
          Top = 9
          Width = 61
          Height = 25
          Caption = 'Simpan'
          TabOrder = 0
          OnClick = btnSimpanClick
        end
        object btnBaru: TcxButton
          Left = 99
          Top = 9
          Width = 61
          Height = 25
          Caption = 'Baru'
          TabOrder = 1
          OnClick = btnBaruClick
        end
        object btnUbah: TcxButton
          Left = 228
          Top = 9
          Width = 54
          Height = 25
          Caption = 'Ubah'
          TabOrder = 2
          OnClick = btnUbahClick
        end
        object btnHapus: TcxButton
          Left = 283
          Top = 9
          Width = 50
          Height = 25
          Caption = 'Hapus'
          TabOrder = 3
          OnClick = btnHapusClick
        end
        object btnKeluar: TcxButton
          Left = 334
          Top = 9
          Width = 55
          Height = 25
          Caption = 'Keluar'
          TabOrder = 4
          OnClick = btnKeluarClick
        end
      end
      object cxlblid: TcxLabel
        Left = 347
        Top = 18
        Caption = 'id'
        Visible = False
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 447
    Width = 555
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 2
    object cxlbl1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Cari'
    end
    object cxtxtdtPencarian: TcxTextEdit
      Left = 41
      Top = 9
      Properties.OnChange = cxtxtdtPencarianPropertiesChange
      TabOrder = 1
      Text = 'cxtxtdtPencarian'
      Width = 337
    end
  end
end
