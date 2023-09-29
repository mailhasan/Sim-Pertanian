object FormTambahDataPegawai: TFormTambahDataPegawai
  Left = 475
  Top = 152
  Width = 350
  Height = 229
  Caption = 'Tambah Data Pegawai'
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
    Top = 150
    Width = 334
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
    object cxlblId: TcxLabel
      Left = 260
      Top = 14
      Caption = 'cxlblId'
      Visible = False
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 334
    Height = 41
    Align = alTop
    Caption = 'Form Data Pegawai'
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
    Width = 334
    Height = 109
    Align = alClient
    TabOrder = 2
    TabStop = False
    object cxtxtdtNama: TcxTextEdit
      Left = 57
      Top = 28
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxtxtdtNama'
      Width = 121
    end
    object cbbStatus: TcxComboBox
      Left = 57
      Top = 55
      Properties.Items.Strings = (
        'y'
        'n')
      Style.HotTrack = False
      TabOrder = 1
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
        object dxlytmNama: TdxLayoutItem
          CaptionOptions.Text = 'Nama'
          Control = cxtxtdtNama
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
