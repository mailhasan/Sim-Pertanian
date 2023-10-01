object FormPelaksanaPekerja: TFormPelaksanaPekerja
  Left = 192
  Top = 152
  Width = 979
  Height = 563
  Caption = 'Pelaksana Pekerjaan'
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
    Width = 963
    Height = 443
    Align = alClient
    Color = clHighlightText
    TabOrder = 0
    object cxgrpbx1: TcxGroupBox
      Left = 1
      Top = 205
      Align = alClient
      Caption = 'DAFTAR DATA HASIL PANEN'
      TabOrder = 0
      Height = 237
      Width = 961
      object cxgrd1: TcxGrid
        Left = 2
        Top = 18
        Width = 957
        Height = 217
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataModule1.dspelaksanapekerja
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'upah'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          object cxgrdbclmnGrid1DBTableView1tanggalBekerja: TcxGridDBColumn
            Caption = 'Tanggal Bekerja'
            DataBinding.FieldName = 'tanggalBekerja'
            Width = 84
          end
          object cxgrdbclmnGrid1DBTableView1nama: TcxGridDBColumn
            Caption = 'Nama'
            DataBinding.FieldName = 'nama'
            Width = 314
          end
          object cxgrdbclmnGrid1DBTableView1upah: TcxGridDBColumn
            Caption = 'Upah'
            DataBinding.FieldName = 'upah'
          end
          object cxgrdbclmnGrid1DBTableView1keterangan: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'keterangan'
            Width = 192
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
      Caption = 'FORM DATA HASIL PANEN'
      TabOrder = 1
      Height = 204
      Width = 961
      object pnl1: TPanel
        Left = 2
        Top = 161
        Width = 957
        Height = 41
        Align = alBottom
        Color = 15000804
        TabOrder = 0
        object btnSimpan: TcxButton
          Left = 147
          Top = 7
          Width = 61
          Height = 25
          Caption = 'Simpan'
          TabOrder = 0
          OnClick = btnSimpanClick
        end
        object btnBaru: TcxButton
          Left = 82
          Top = 7
          Width = 61
          Height = 25
          Caption = 'Baru'
          TabOrder = 1
          OnClick = btnBaruClick
        end
        object btnUbah: TcxButton
          Left = 211
          Top = 7
          Width = 54
          Height = 25
          Caption = 'Ubah'
          TabOrder = 2
          OnClick = btnUbahClick
        end
        object btnHapus: TcxButton
          Left = 266
          Top = 7
          Width = 50
          Height = 25
          Caption = 'Hapus'
          TabOrder = 3
          OnClick = btnHapusClick
        end
        object btnKeluar: TcxButton
          Left = 317
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
        Width = 957
        Height = 143
        Align = alClient
        TabOrder = 1
        TabStop = False
        object cxtxtdtNoKegiatan: TcxTextEdit
          Left = 74
          Top = 10
          Enabled = False
          Style.HotTrack = False
          TabOrder = 0
          Text = 'cxtxtdtNoKegiatan'
          Width = 121
        end
        object cxdtdtTglPekerjaan: TcxDateEdit
          Left = 272
          Top = 10
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cbbNama: TcxLookupComboBox
          Left = 74
          Top = 37
          PopupMenu = pm1
          Properties.KeyFieldNames = 'nama'
          Properties.ListColumns = <
            item
              FieldName = 'nama'
            end>
          Properties.ListSource = DataModule1.dspegawai
          Style.HotTrack = False
          TabOrder = 2
          OnKeyPress = cbbNamaKeyPress
          Width = 145
        end
        object cxlbl3: TcxLabel
          Left = 10
          Top = 64
          Caption = '* Klik Kanan Di Nama Jika Ada  Pegawai Belum Terdaftar'
          Style.HotTrack = False
        end
        object cxcrncydtUpah: TcxCurrencyEdit
          Left = 272
          Top = 87
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object cbbStatus: TcxComboBox
          Left = 74
          Top = 87
          Properties.Items.Strings = (
            'lunas'
            'belum lunas')
          Style.HotTrack = False
          TabOrder = 4
          Text = 'cbbStatus'
          Width = 121
        end
        object cxmKeterangan: TcxMemo
          Left = 459
          Top = 10
          Lines.Strings = (
            'cxmKeterangan')
          Style.HotTrack = False
          TabOrder = 6
          Height = 89
          Width = 270
        end
        object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmNoKegiatan: TdxLayoutItem
                CaptionOptions.Text = 'No Kegiatan'
                Enabled = False
                Control = cxtxtdtNoKegiatan
                ControlOptions.ShowBorder = False
              end
              object dxlytmTglPekerjaan: TdxLayoutItem
                CaptionOptions.Text = 'Tgl Pekerjaan'
                Control = cxdtdtTglPekerjaan
                ControlOptions.ShowBorder = False
              end
            end
            object dxlytmNama: TdxLayoutItem
              CaptionOptions.Text = 'Nama'
              Control = cbbNama
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl1Item1: TdxLayoutItem
              CaptionOptions.Text = 'cxLabel1'
              CaptionOptions.Visible = False
              Control = cxlbl3
              ControlOptions.ShowBorder = False
            end
            object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmStatus: TdxLayoutItem
                CaptionOptions.Text = 'Status'
                Control = cbbStatus
                ControlOptions.ShowBorder = False
              end
              object dxlytmUpah: TdxLayoutItem
                CaptionOptions.Text = 'Upah'
                Control = cxcrncydtUpah
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
    Top = 484
    Width = 963
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
    Width = 963
    Height = 41
    Align = alTop
    Caption = 'Pelaksana Pekerjaan'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object pm1: TPopupMenu
    Left = 456
    Top = 72
    object ambah1: TMenuItem
      Caption = 'Tambah Pegawai'
      OnClick = ambah1Click
    end
  end
end
