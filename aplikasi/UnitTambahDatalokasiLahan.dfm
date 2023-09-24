object FormDataLokasiLahan: TFormDataLokasiLahan
  Left = 443
  Top = 219
  Width = 298
  Height = 290
  BorderIcons = [biSystemMenu]
  Caption = 'Form Data Lokasi Lahan'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 282
    Height = 41
    Align = alTop
    Caption = 'Form Data Lokasi Lahan'
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
    Width = 282
    Height = 170
    Align = alClient
    Color = clHighlightText
    TabOrder = 1
    object dxlytcntrl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 280
      Height = 168
      Align = alClient
      TabOrder = 0
      TabStop = False
      object cxtxtdtKodeLokasiLahan: TcxTextEdit
        Left = 119
        Top = 28
        Style.HotTrack = False
        TabOrder = 0
        Text = 'cxtxtdtKodeLokasiLahan'
        Width = 121
      end
      object cxtxtdtLokasiLahan: TcxTextEdit
        Left = 119
        Top = 55
        Style.HotTrack = False
        TabOrder = 1
        Text = 'cxtxtdtLokasiLahan'
        Width = 121
      end
      object cxdtdtTglPembelian: TcxDateEdit
        Left = 119
        Top = 82
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object cbbStatus: TcxComboBox
        Left = 119
        Top = 109
        Properties.Items.Strings = (
          'aktif'
          'tidak aktif')
        Style.HotTrack = False
        TabOrder = 3
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
          CaptionOptions.Text = 'Isi Data....'
          ButtonOptions.Buttons = <>
          object dxlytmKodeLokasiLahan: TdxLayoutItem
            CaptionOptions.Text = 'Kode Lokasi Lahan'
            Control = cxtxtdtKodeLokasiLahan
            ControlOptions.ShowBorder = False
          end
          object dxlytmLokasiLahan: TdxLayoutItem
            CaptionOptions.Text = 'Lokasi Lahan'
            Control = cxtxtdtLokasiLahan
            ControlOptions.ShowBorder = False
          end
          object dxlytmTglPembelian: TdxLayoutItem
            CaptionOptions.Text = 'Tgl Pembelian'
            Control = cxdtdtTglPembelian
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
  object pnlBawah: TPanel
    Left = 0
    Top = 211
    Width = 282
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 2
    object btnBaru: TcxButton
      Left = 48
      Top = 9
      Width = 59
      Height = 25
      Caption = 'Baru'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TcxButton
      Left = 110
      Top = 9
      Width = 53
      Height = 25
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar: TcxButton
      Left = 165
      Top = 9
      Width = 52
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
  end
end
