object FormTambahKegiatanKelolaHarian: TFormTambahKegiatanKelolaHarian
  Left = 459
  Top = 137
  Width = 398
  Height = 350
  Align = alCustom
  BorderIcons = [biSystemMenu]
  Caption = 'Tambah Kegiatan Kelola Harian'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 41
    Align = alTop
    Caption = 'Form Data Kegiatan Kelola Harian'
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
    Top = 271
    Width = 382
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
    object btnBaru: TcxButton
      Left = 105
      Top = 7
      Width = 59
      Height = 25
      Caption = 'Baru'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TcxButton
      Left = 167
      Top = 7
      Width = 53
      Height = 25
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar: TcxButton
      Left = 222
      Top = 7
      Width = 52
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 382
    Height = 230
    Align = alClient
    TabOrder = 2
    object dxlytcntrl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 380
      Height = 228
      Align = alClient
      TabOrder = 0
      TabStop = False
      object cxtxtdtNoKegiatan: TcxTextEdit
        Left = 100
        Top = 36
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 0
        Text = 'No Kegiatan'
        Width = 121
      end
      object cxdtdtTglMulai: TcxDateEdit
        Left = 100
        Top = 63
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 1
        Width = 121
      end
      object cxdtdtTglSelesai: TcxDateEdit
        Left = 100
        Top = 90
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 2
        Width = 121
      end
      object cbbLokasiLahan: TcxLookupComboBox
        Left = 100
        Top = 117
        Properties.KeyFieldNames = 'kodeLokasiLahan'
        Properties.ListColumns = <
          item
            Caption = 'LOKASI LAHAN'
            SortOrder = soAscending
            FieldName = 'lokasiLahan'
          end>
        Properties.ListSource = DataModule1.dsLahan
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 3
        Width = 145
      end
      object cbbJenisTanaman: TcxLookupComboBox
        Left = 100
        Top = 144
        Properties.KeyFieldNames = 'kodeJenisTanaman'
        Properties.ListColumns = <
          item
            Caption = 'Jenis Tanaman'
            FieldName = 'jenisTanaman'
          end>
        Properties.ListSource = DataModule1.dsJenisTanaman
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 4
        Width = 145
      end
      object cbbStatus: TcxComboBox
        Left = 100
        Top = 171
        Properties.Items.Strings = (
          'aktif'
          'tidak aktif')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 5
        Text = 'cbbStatus'
        Width = 121
      end
      object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = dxlytwblkndfl1
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Isi Data'
          ButtonOptions.Buttons = <>
          object dxlytmNoKegiatan: TdxLayoutItem
            CaptionOptions.Text = 'No Kegiatan'
            Control = cxtxtdtNoKegiatan
            ControlOptions.ShowBorder = False
          end
          object dxlytmTglMulai: TdxLayoutItem
            CaptionOptions.Text = 'Tgl Mulai'
            Control = cxdtdtTglMulai
            ControlOptions.ShowBorder = False
          end
          object dxlytmTglSelesai: TdxLayoutItem
            CaptionOptions.Text = 'Tgl Selesai'
            Control = cxdtdtTglSelesai
            ControlOptions.ShowBorder = False
          end
          object dxlytmLokasiLahan: TdxLayoutItem
            CaptionOptions.Text = 'Lokasi Lahan'
            Control = cbbLokasiLahan
            ControlOptions.ShowBorder = False
          end
          object dxlytmJenisTanaman: TdxLayoutItem
            CaptionOptions.Text = 'Jenis Tanaman'
            Control = cbbJenisTanaman
            ControlOptions.ShowBorder = False
          end
          object dxlytmStatus: TdxLayoutItem
            CaptionOptions.Text = 'Status'
            Control = cbbStatus
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 139
    Top = 174
    object dxlytwblkndfl1: TdxLayoutWebLookAndFeel
    end
  end
end
