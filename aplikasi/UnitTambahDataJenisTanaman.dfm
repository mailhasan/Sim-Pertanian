object FormTambahDataJenisTanaman: TFormTambahDataJenisTanaman
  Left = 522
  Top = 153
  Width = 343
  Height = 253
  BorderIcons = [biSystemMenu]
  Caption = 'Form Data Jenis Tanaman'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBawah: TPanel
    Left = 0
    Top = 174
    Width = 327
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 0
    object btnBaru: TcxButton
      Left = 74
      Top = 10
      Width = 59
      Height = 25
      Caption = 'Baru'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TcxButton
      Left = 136
      Top = 10
      Width = 53
      Height = 25
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar: TcxButton
      Left = 191
      Top = 10
      Width = 52
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 41
    Align = alTop
    Caption = 'Form Data Jenis Tanaman'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 327
    Height = 133
    Align = alClient
    TabOrder = 2
    object dxlytcntrl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 325
      Height = 131
      Align = alClient
      TabOrder = 0
      TabStop = False
      object cxtxtdtKodeJenisTanaman: TcxTextEdit
        Left = 99
        Top = 28
        Style.HotTrack = False
        TabOrder = 0
        Text = 'cxtxtdtKodeJenisTanaman'
        Width = 121
      end
      object cxtxtdtJenisTanaman: TcxTextEdit
        Left = 99
        Top = 55
        Style.HotTrack = False
        TabOrder = 1
        Text = 'cxtxtdtJenisTanaman'
        Width = 121
      end
      object cbbStatus: TcxComboBox
        Left = 99
        Top = 82
        Properties.Items.Strings = (
          'aktif'
          'tidak aktif')
        Style.HotTrack = False
        TabOrder = 2
        Text = 'cbbStatus'
        Width = 121
      end
      object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Isi an Data'
          ButtonOptions.Buttons = <>
          object dxlytmKodeJenisTanaman: TdxLayoutItem
            CaptionOptions.Text = 'Kode'
            Control = cxtxtdtKodeJenisTanaman
            ControlOptions.ShowBorder = False
          end
          object dxlytmJenisTanaman: TdxLayoutItem
            CaptionOptions.Text = 'Jenis Tanaman'
            Control = cxtxtdtJenisTanaman
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
end
