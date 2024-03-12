object FormPenggunaanAlat: TFormPenggunaanAlat
  Left = 222
  Top = 131
  Width = 785
  Height = 541
  Caption = 'Penggunaan Alat'
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
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 777
    Height = 432
    Align = alClient
    Color = clHighlightText
    TabOrder = 0
    object cxgrpbx1: TcxGroupBox
      Left = 1
      Top = 165
      Align = alClient
      Caption = 'DAFTAR DATA HASIL PANEN'
      TabOrder = 0
      Height = 266
      Width = 775
      object cxgrd1: TcxGrid
        Left = 2
        Top = 18
        Width = 771
        Height = 246
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataModule1.dspenggunaanalat
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxgrdbclmnGrid1DBTableView1tanggalAlat: TcxGridDBColumn
            Caption = 'Tanggal Alat'
            DataBinding.FieldName = 'tanggalAlat'
            Width = 81
          end
          object cxgrdbclmnGrid1DBTableView1namaAlat: TcxGridDBColumn
            Caption = 'Nama Alat'
            DataBinding.FieldName = 'namaAlat'
            Width = 188
          end
          object cxgrdbclmnGrid1DBTableView1biayaAlat: TcxGridDBColumn
            Caption = 'Biaya Alat'
            DataBinding.FieldName = 'biayaAlat'
            Width = 98
          end
          object cxgrdbclmnGrid1DBTableView1ketarangan: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Options.Editing = False
            Width = 232
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
    object cxgrpbx2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'FORM DATA PENGGUNAAN ALAT'
      TabOrder = 1
      Height = 164
      Width = 775
      object pnl1: TPanel
        Left = 2
        Top = 121
        Width = 771
        Height = 41
        Align = alBottom
        Color = 15000804
        TabOrder = 0
        object btnSimpan: TcxButton
          Left = 140
          Top = 7
          Width = 61
          Height = 25
          Caption = 'Simpan'
          TabOrder = 0
          OnClick = btnSimpanClick
        end
        object btnBaru: TcxButton
          Left = 75
          Top = 7
          Width = 61
          Height = 25
          Caption = 'Baru'
          TabOrder = 1
          OnClick = btnBaruClick
        end
        object btnUbah: TcxButton
          Left = 204
          Top = 7
          Width = 54
          Height = 25
          Caption = 'Ubah'
          TabOrder = 2
          OnClick = btnUbahClick
        end
        object btnHapus: TcxButton
          Left = 259
          Top = 7
          Width = 50
          Height = 25
          Caption = 'Hapus'
          TabOrder = 3
          OnClick = btnHapusClick
        end
        object btnKeluar: TcxButton
          Left = 310
          Top = 7
          Width = 55
          Height = 25
          Caption = 'Keluar'
          TabOrder = 4
          OnClick = btnKeluarClick
        end
        object cxlblId: TcxLabel
          Left = 445
          Top = 14
          Caption = 'cxlblId'
          Visible = False
        end
      end
      object dxlytcntrl1: TdxLayoutControl
        Left = 2
        Top = 18
        Width = 771
        Height = 103
        Align = alClient
        TabOrder = 1
        TabStop = False
        object cxtxtdtNoKegiatan: TcxTextEdit
          Left = 74
          Top = 10
          Style.HotTrack = False
          TabOrder = 0
          Text = 'cxtxtdtNoKegiatan'
          Width = 121
        end
        object cxdtdtTglPenggunaan: TcxDateEdit
          Left = 292
          Top = 10
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cxtxtdtNamaAlat: TcxTextEdit
          Left = 74
          Top = 37
          Style.HotTrack = False
          TabOrder = 2
          Text = 'cxtxtdtNamaAlat'
          Width = 121
        end
        object cxcrncydtBiaya: TcxCurrencyEdit
          Left = 74
          Top = 64
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxmKeterangan: TcxMemo
          Left = 479
          Top = 10
          Lines.Strings = (
            'cxmKeterangan')
          Style.HotTrack = False
          TabOrder = 5
          Height = 89
          Width = 255
        end
        object cbbStatus: TcxComboBox
          Left = 292
          Top = 64
          Properties.Items.Strings = (
            'lunas'
            'belum lunas')
          Style.HotTrack = False
          TabOrder = 4
          Text = 'cbbStatus'
          Width = 121
        end
        object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmNoKegiatan: TdxLayoutItem
                CaptionOptions.Text = 'No Kegiatan'
                Control = cxtxtdtNoKegiatan
                ControlOptions.ShowBorder = False
              end
              object dxlytmTglPenggunaan: TdxLayoutItem
                CaptionOptions.Text = 'Tgl Penggunaan *'
                Control = cxdtdtTglPenggunaan
                ControlOptions.ShowBorder = False
              end
            end
            object dxlytmNamaAlat: TdxLayoutItem
              CaptionOptions.Text = 'Nama Alat *'
              Control = cxtxtdtNamaAlat
              ControlOptions.ShowBorder = False
            end
            object dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmBiaya: TdxLayoutItem
                CaptionOptions.Text = 'Biaya'
                Control = cxcrncydtBiaya
                ControlOptions.ShowBorder = False
              end
              object dxlytmStatus: TdxLayoutItem
                CaptionOptions.Text = 'Status'
                Control = cbbStatus
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxlytmKeterangan: TdxLayoutItem
            CaptionOptions.Text = 'Keterangan'
            Control = cxmKeterangan
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 473
    Width = 777
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
    object cxlbl1: TcxLabel
      Left = 10
      Top = 11
      Caption = 'Tanggal '
    end
    object cxdtdtMulai: TcxDateEdit
      Left = 58
      Top = 10
      TabOrder = 1
      Width = 121
    end
    object cxdtdtSelesai: TcxDateEdit
      Left = 204
      Top = 9
      TabOrder = 2
      Width = 121
    end
    object cxlbl2: TcxLabel
      Left = 183
      Top = 12
      Caption = 'Sd'
    end
    object btnTampil: TcxButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Tampil'
      TabOrder = 4
      OnClick = btnTampilClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 41
    Align = alTop
    Caption = 'Penggunaan Alat'
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
