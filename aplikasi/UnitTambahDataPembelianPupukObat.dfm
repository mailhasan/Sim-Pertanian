object FormTambahDataPembelianPupukObat: TFormTambahDataPembelianPupukObat
  Left = 353
  Top = 146
  Width = 889
  Height = 609
  Caption = 'Tambah Data Pembelian pupuk'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 873
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
    Top = 493
    Width = 873
    Height = 78
    Align = alBottom
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object cxlbl1: TcxLabel
      Left = 27
      Top = 12
      Caption = 'Total Pembayaran'
    end
    object cxlbl2: TcxLabel
      Left = 30
      Top = 47
      Caption = 'Sisa Pembayaran'
    end
    object cxlbl3: TcxLabel
      Left = 362
      Top = 13
      Caption = 'Status'
    end
    object cxcrncydtTotalPembayaran: TcxCurrencyEdit
      Left = 188
      Top = 9
      Properties.OnEditValueChanged = cxcrncydtTotalPembayaranPropertiesEditValueChanged
      TabOrder = 3
      Width = 168
    end
    object cxcrncydtSisaPembayaran: TcxCurrencyEdit
      Left = 190
      Top = 45
      TabOrder = 4
      Width = 165
    end
    object cbbStatus: TcxComboBox
      Left = 425
      Top = 11
      Properties.Items.Strings = (
        'LUNAS'
        'BELUM LUNAS')
      TabOrder = 5
      Text = 'cbbStatus'
      Width = 217
    end
    object btnSimpan: TcxButton
      Left = 365
      Top = 48
      Width = 76
      Height = 25
      Caption = 'Simpan'
      TabOrder = 6
      OnClick = btnSimpanClick
    end
    object btnPrint: TcxButton
      Left = 514
      Top = 48
      Width = 69
      Height = 25
      Caption = 'Print'
      TabOrder = 7
    end
    object btnBaruPembelian: TcxButton
      Left = 443
      Top = 48
      Width = 69
      Height = 25
      Caption = 'Baru'
      TabOrder = 8
      OnClick = btnBaruPembelianClick
    end
    object btnKeluar: TcxButton
      Left = 585
      Top = 48
      Width = 72
      Height = 25
      Caption = 'Keluar'
      TabOrder = 9
      OnClick = btnKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 873
    Height = 452
    Align = alClient
    TabOrder = 2
    object dxlytcntrl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 871
      Height = 186
      Align = alTop
      TabOrder = 0
      TabStop = False
      object cxtxtdtNoPembelian: TcxTextEdit
        Left = 93
        Top = 28
        Style.HotTrack = False
        TabOrder = 0
        Text = 'cxtxtdtNoPembelian'
        Width = 121
      end
      object cxdtdtTglPembelian: TcxDateEdit
        Left = 323
        Top = 28
        Style.HotTrack = False
        TabOrder = 1
        Width = 90
      end
      object cbbNamaObat: TcxLookupComboBox
        Left = 93
        Top = 85
        Properties.KeyFieldNames = 'kodePupukObat'
        Properties.ListColumns = <
          item
            Caption = 'Nama Pupuk Obat-obataan'
            FieldName = 'namaPupukObat'
          end>
        Properties.ListSource = DataModule1.dspupukobat
        Style.HotTrack = False
        TabOrder = 3
        OnDblClick = cbbNamaObatDblClick
        OnKeyPress = cbbNamaObatKeyPress
        Width = 482
      end
      object cxtxtdtSatuan: TcxTextEdit
        Left = 93
        Top = 112
        Style.HotTrack = False
        TabOrder = 4
        Text = 'cxtxtdtSatuan'
        Width = 121
      end
      object cxcrncydtJmlStok: TcxCurrencyEdit
        Left = 323
        Top = 112
        Properties.AssignedValues.DisplayFormat = True
        Style.HotTrack = False
        TabOrder = 5
        Width = 119
      end
      object cxcrncydtJmlPembelian: TcxCurrencyEdit
        Left = 520
        Top = 112
        Properties.AssignedValues.DisplayFormat = True
        Style.HotTrack = False
        TabOrder = 6
        Width = 96
      end
      object cxcrncydtHargaBeli: TcxCurrencyEdit
        Left = 93
        Top = 139
        Properties.OnChange = cxcrncydtHargaBeliPropertiesChange
        Style.HotTrack = False
        TabOrder = 7
        Width = 121
      end
      object cxcrncydtSubTotalPembelian: TcxCurrencyEdit
        Left = 323
        Top = 139
        Style.HotTrack = False
        TabOrder = 8
        Width = 121
      end
      object btnInput: TcxButton
        Left = 450
        Top = 139
        Width = 71
        Height = 25
        Caption = 'Input'
        TabOrder = 9
        OnClick = btnInputClick
      end
      object btnBaru: TcxButton
        Left = 527
        Top = 139
        Width = 70
        Height = 25
        Caption = 'Baru'
        TabOrder = 10
        OnClick = btnBaruClick
      end
      object cxcrncydtTotalPembelian: TcxCurrencyEdit
        Left = 460
        Top = 10
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -32
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.HotTrack = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 201
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
          object dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
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
            end
            object dxlytmTotalPembelian: TdxLayoutItem
              CaptionOptions.Text = 'Total'
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
            object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmHargaBeli: TdxLayoutItem
                CaptionOptions.Text = 'Harga Beli'
                Control = cxcrncydtHargaBeli
                ControlOptions.ShowBorder = False
              end
              object dxlytmSubTotalPembelian: TdxLayoutItem
                CaptionOptions.Text = 'Sub Total Pembelian'
                Control = cxcrncydtSubTotalPembelian
                ControlOptions.ShowBorder = False
              end
              object dxlytmInput: TdxLayoutItem
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = btnInput
                ControlOptions.ShowBorder = False
              end
              object dxlytmBaru: TdxLayoutItem
                CaptionOptions.Text = 'cxButton1'
                CaptionOptions.Visible = False
                Control = btnBaru
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object cxgrd1: TcxGrid
      Left = 1
      Top = 187
      Width = 871
      Height = 264
      Align = alClient
      TabOrder = 1
      RootLevelStyles.Tab = cxstyl1
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = pm1
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dsdetailPembelianPupukObat
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxgrdbclmnGrid1DBTableView1subTotalPembelian
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        object cxgrdbclmnGrid1DBTableView1kodePupukObat: TcxGridDBColumn
          Caption = 'Kode '
          DataBinding.FieldName = 'kodePupukObat'
        end
        object cxgrdbclmnGrid1DBTableView1namaPupukObat: TcxGridDBColumn
          Caption = 'Nama Pupuk Obat'
          DataBinding.FieldName = 'namaPupukObat'
          Width = 274
        end
        object cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 159
        end
        object cxgrdbclmnGrid1DBTableView1jumlahPembelian: TcxGridDBColumn
          Caption = 'Jumlah Pembelian'
          DataBinding.FieldName = 'jumlahPembelian'
          Width = 91
        end
        object cxgrdbclmnGrid1DBTableView1hargaBeli: TcxGridDBColumn
          Caption = 'Harga Beli'
          DataBinding.FieldName = 'hargaBeli'
          Width = 55
        end
        object cxgrdbclmnGrid1DBTableView1subTotalPembelian: TcxGridDBColumn
          Caption = 'Sub Total Pembelian'
          DataBinding.FieldName = 'subTotalPembelian'
          Width = 104
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
  end
  object cxstylrpstry1: TcxStyleRepository
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
    end
  end
  object pm1: TPopupMenu
    Left = 457
    Top = 337
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      OnClick = Hapus1Click
    end
  end
end
