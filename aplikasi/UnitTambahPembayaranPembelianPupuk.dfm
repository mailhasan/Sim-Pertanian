object FormPembayaranPembelianPupuk: TFormPembayaranPembelianPupuk
  Left = 423
  Top = 198
  Width = 389
  Height = 331
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pembayaran Pembelian Pupuk'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBawah: TPanel
    Left = 0
    Top = 252
    Width = 373
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 0
    object btnSimpan: TcxButton
      Left = 13
      Top = 8
      Width = 53
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = btnSimpanClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 373
    Height = 41
    Align = alTop
    Caption = 'Pembayaran / Pelunasan Pembelian Pupuk'
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
    Width = 373
    Height = 211
    Align = alClient
    TabOrder = 2
    object cxgrpbxDataPenjualan: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Data Pembayaran Penjualan Sekarang'
      Enabled = False
      TabOrder = 0
      Height = 119
      Width = 371
      object cxlbl3: TcxLabel
        Left = 8
        Top = 24
        Caption = 'Sisa Pembayaran'
      end
      object cxlbl4: TcxLabel
        Left = 8
        Top = 48
        Caption = 'Status'
      end
      object cxcrncydtSisaPembayaran: TcxCurrencyEdit
        Left = 128
        Top = 24
        TabOrder = 2
        Width = 185
      end
      object cxtxtdtStatus: TcxTextEdit
        Left = 128
        Top = 48
        TabOrder = 3
        Text = 'cxtxtdtStatus'
        Width = 233
      end
      object cxtxtdtNoPembelian: TcxTextEdit
        Left = 128
        Top = 72
        TabOrder = 4
        Text = 'cxtxtdtNoPembelian'
        Width = 121
      end
      object cxlbl8: TcxLabel
        Left = 8
        Top = 72
        Caption = 'No Pembelian'
      end
    end
    object cxgrpbxDataPembayaran: TcxGroupBox
      Left = 1
      Top = 120
      Align = alBottom
      Caption = 'Data Pembayaran'
      TabOrder = 1
      Height = 90
      Width = 371
      object cxlbl6: TcxLabel
        Left = 8
        Top = 40
        Caption = 'Sisa Pembayaran'
      end
      object cxlbl7: TcxLabel
        Left = 8
        Top = 64
        Caption = 'Status'
      end
      object cxcrncydtSisaPembayaranSelanjutnya: TcxCurrencyEdit
        Left = 128
        Top = 40
        TabOrder = 2
        Width = 193
      end
      object cxtxtdtStatusPembayaranSelanjutnya: TcxTextEdit
        Left = 128
        Top = 64
        TabOrder = 3
        Text = 'cxtxtdtStatusPembayaranSelanjutnya'
        Width = 193
      end
      object cxlbl1: TcxLabel
        Left = 8
        Top = 16
        Caption = 'Pembayaran'
      end
      object cxcrncydtPembayaran: TcxCurrencyEdit
        Left = 128
        Top = 16
        Properties.OnChange = cxcrncydtPembayaranPropertiesChange
        TabOrder = 5
        Width = 193
      end
    end
  end
end
