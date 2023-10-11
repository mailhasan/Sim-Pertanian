object FormTambahDataPupukObat: TFormTambahDataPupukObat
  Left = 474
  Top = 174
  Width = 355
  Height = 300
  Caption = 'Tambah Data Pupuk/Obat'
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
  object pnlBawah: TPanel
    Left = 0
    Top = 221
    Width = 339
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 0
    object btnBaru: TcxButton
      Left = 70
      Top = 8
      Width = 59
      Height = 25
      Caption = 'Baru'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TcxButton
      Left = 132
      Top = 8
      Width = 53
      Height = 25
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar: TcxButton
      Left = 187
      Top = 8
      Width = 52
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
    object cxlblId: TcxLabel
      Left = 241
      Top = 14
      Caption = 'cxlblId'
      Visible = False
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 339
    Height = 41
    Align = alTop
    Caption = 'Form Data Pupuk/Obat'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 41
    Width = 339
    Height = 180
    Align = alClient
    TabOrder = 2
    TabStop = False
    object cxtxtdtKodePupuk: TcxTextEdit
      Left = 86
      Top = 28
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxtxtdtKodePupuk'
      Width = 121
    end
    object cxtxtdtNamaObat: TcxTextEdit
      Left = 86
      Top = 55
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cxtxtdtNamaObat'
      Width = 121
    end
    object cbbSatuan: TcxLookupComboBox
      Left = 86
      Top = 82
      PopupMenu = pm1
      Properties.CaseSensitiveSearch = True
      Properties.KeyFieldNames = 'satuan'
      Properties.ListColumns = <
        item
          Caption = 'Satuan'
          FieldName = 'satuan'
        end>
      Properties.ListSource = DataModule1.dsSatuan
      Style.HotTrack = False
      TabOrder = 2
      Width = 145
    end
    object cxcrncydtStok: TcxCurrencyEdit
      Left = 86
      Top = 132
      Properties.DisplayFormat = '0'
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxlbl1: TcxLabel
      Left = 22
      Top = 109
      Caption = '(Klik Kanan Di combo box Satuan Untuk Tambah Baru)'
      Style.HotTrack = False
    end
    object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
        CaptionOptions.Text = 'Isian Data'
        ButtonOptions.Buttons = <>
        object dxlytmKodePupuk: TdxLayoutItem
          CaptionOptions.Text = 'Kode Pupuk'
          Control = cxtxtdtKodePupuk
          ControlOptions.ShowBorder = False
        end
        object dxlytmNamaObat: TdxLayoutItem
          CaptionOptions.Text = 'Nama Obat'
          Control = cxtxtdtNamaObat
          ControlOptions.ShowBorder = False
        end
        object dxlytmSatuan: TdxLayoutItem
          CaptionOptions.Text = 'Satuan '
          Control = cbbSatuan
          ControlOptions.ShowBorder = False
        end
        object dxlytmdxlytcntrl1Item1: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel1'
          CaptionOptions.Visible = False
          Control = cxlbl1
          ControlOptions.ShowBorder = False
        end
        object dxlytmStok: TdxLayoutItem
          CaptionOptions.Text = 'Stok'
          Control = cxcrncydtStok
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object pm1: TPopupMenu
    Left = 267
    Top = 213
    object ambahSatuan1: TMenuItem
      Caption = 'Tambah Satuan'
      OnClick = ambahSatuan1Click
    end
  end
end
