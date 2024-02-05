object FormHapusPembelianPupuk: TFormHapusPembelianPupuk
  Left = 551
  Top = 187
  Width = 331
  Height = 288
  BorderIcons = [biSystemMenu]
  Caption = 'Hapus Pembelian Pupuk'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 41
    Align = alTop
    Caption = 'Hapus Pembelian Pupuk'
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
    Top = 209
    Width = 315
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
    object btnHapus: TcxButton
      Left = 13
      Top = 8
      Width = 53
      Height = 25
      Caption = 'Hapus'
      TabOrder = 0
      OnClick = btnHapusClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 315
    Height = 168
    Align = alClient
    TabOrder = 2
    object cxtxtdtNoPembelian: TcxTextEdit
      Left = 107
      Top = 10
      Enabled = False
      TabOrder = 0
      Text = 'cxtxtdtNoPembelian'
      Width = 162
    end
    object cxlbl: TcxLabel
      Left = 9
      Top = 10
      Caption = 'No Pembelian'
    end
    object cxlbl1: TcxLabel
      Left = 9
      Top = 39
      Caption = 'Total Pembelian'
    end
    object cxcrncydtTotalPembelian: TcxCurrencyEdit
      Left = 106
      Top = 36
      Enabled = False
      TabOrder = 3
      Width = 194
    end
    object cxlbl2: TcxLabel
      Left = 11
      Top = 60
      Caption = 'Keterangan Batal'
    end
    object cxmKeterangan: TcxMemo
      Left = 105
      Top = 63
      Lines.Strings = (
        'cxmKeterangan')
      TabOrder = 5
      Height = 89
      Width = 196
    end
  end
end
