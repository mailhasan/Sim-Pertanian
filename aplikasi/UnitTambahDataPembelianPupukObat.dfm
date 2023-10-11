object FormTambahDataPembelianPupukObat: TFormTambahDataPembelianPupukObat
  Left = 353
  Top = 146
  Width = 893
  Height = 563
  Caption = 'Tambah Data Pembelian pupuk'
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
    Width = 877
    Height = 41
    Align = alTop
    Caption = 'Form Data Pembelian Pupuk/Obat'
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
    Top = 484
    Width = 877
    Height = 41
    Align = alBottom
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
    Width = 877
    Height = 443
    Align = alClient
    TabOrder = 2
    object dxlytcntrl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 875
      Height = 179
      Align = alTop
      TabOrder = 0
      TabStop = False
      LayoutLookAndFeel = FormUtama.dxlytwblkndfl1
      object cxtxtdtNoPembelian: TcxTextEdit
        Left = 94
        Top = 36
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 0
        Text = 'cxtxtdtNoPembelian'
        Width = 121
      end
      object cxdtdtTglPembelian: TcxDateEdit
        Left = 293
        Top = 36
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 1
        Width = 121
      end
      object cxcrncydtTotalPembelian: TcxCurrencyEdit
        Left = 501
        Top = 36
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object cbbNamaObat: TcxLookupComboBox
        Left = 94
        Top = 95
        Properties.ListColumns = <>
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 3
        Width = 145
      end
      object cxtxtdtSatuan: TcxTextEdit
        Left = 94
        Top = 122
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Text = 'cxtxtdtSatuan'
        Width = 121
      end
      object cxcrncydtJmlStok: TcxCurrencyEdit
        Left = 293
        Top = 122
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 5
        Width = 121
      end
      object cxcrncydtJmlPembelian: TcxCurrencyEdit
        Left = 501
        Top = 122
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 6
        Width = 121
      end
      object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytgrpDataTransaksi: TdxLayoutGroup
          CaptionOptions.Text = 'DATA TRANSAKSI PEMBELIAN'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          object dxlytmNoPembelian: TdxLayoutItem
            CaptionOptions.Text = 'No Pembelian'
            Control = cxtxtdtNoPembelian
            ControlOptions.ShowBorder = False
          end
          object dxlytmTglPembelian: TdxLayoutItem
            CaptionOptions.Text = 'Tgl Pembelian'
            Control = cxdtdtTglPembelian
            ControlOptions.ShowBorder = False
          end
          object dxlytmTotalPembelian: TdxLayoutItem
            CaptionOptions.Text = 'Total Pembelian'
            Control = cxcrncydtTotalPembelian
            ControlOptions.ShowBorder = False
          end
        end
        object dxlytgrpDataObat: TdxLayoutGroup
          CaptionOptions.Text = 'DATA OBAT'
          ButtonOptions.Buttons = <>
          object dxlytmNamaObat: TdxLayoutItem
            CaptionOptions.Text = 'Nama Obat'
            Control = cbbNamaObat
            ControlOptions.ShowBorder = False
          end
          object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmSatuan: TdxLayoutItem
              CaptionOptions.Text = 'Satuan'
              Control = cxtxtdtSatuan
              ControlOptions.ShowBorder = False
            end
            object dxlytmJmlStok: TdxLayoutItem
              CaptionOptions.Text = 'Jml Stok'
              Control = cxcrncydtJmlStok
              ControlOptions.ShowBorder = False
            end
            object dxlytmJmlPembelian: TdxLayoutItem
              CaptionOptions.Text = 'Jml Pembelian'
              Control = cxcrncydtJmlPembelian
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object cxgrd1: TcxGrid
      Left = 1
      Top = 180
      Width = 875
      Height = 262
      Align = alClient
      TabOrder = 1
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
end
