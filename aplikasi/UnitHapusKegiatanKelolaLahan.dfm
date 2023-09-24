object FormHapusKegiatanKelolaLahan: TFormHapusKegiatanKelolaLahan
  Left = 505
  Top = 214
  Width = 354
  Height = 222
  BorderIcons = [biSystemMenu]
  Caption = 'Hapus Kegiatan Kelola Kegiatan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxgrpbx1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Keterangan Hapus Data'
    TabOrder = 0
    Height = 184
    Width = 338
    object cxlbl1: TcxLabel
      Left = 13
      Top = 20
      Caption = 'No Kegiatan'
    end
    object cxtxtdtNoKegiatan: TcxTextEdit
      Left = 103
      Top = 18
      Enabled = False
      TabOrder = 1
      Text = 'cxtxtdtNoKegiatan'
      Width = 224
    end
    object cxmKeterangan: TcxMemo
      Left = 106
      Top = 47
      Lines.Strings = (
        'cxmKeterangan')
      TabOrder = 2
      Height = 89
      Width = 222
    end
    object cxlbl2: TcxLabel
      Left = 17
      Top = 86
      Caption = 'Keterangan'
    end
    object btnHapus: TcxButton
      Left = 110
      Top = 146
      Width = 216
      Height = 25
      Caption = 'Hapus'
      TabOrder = 4
      OnClick = btnHapusClick
    end
  end
end
