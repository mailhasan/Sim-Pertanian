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
      object cxcrncydtTotalPembelian: TcxCurrencyEdit
        Left = 500
        Top = 28
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object cbbNamaObat: TcxLookupComboBox
        Left = 93
        Top = 85
        Properties.ListColumns = <>
        Style.HotTrack = False
        TabOrder = 3
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
        Style.HotTrack = False
        TabOrder = 5
        Width = 119
      end
      object cxcrncydtJmlPembelian: TcxCurrencyEdit
        Left = 520
        Top = 112
        Style.HotTrack = False
        TabOrder = 6
        Width = 96
      end
      object cxcrncydtHargaBeli: TcxCurrencyEdit
        Left = 93
        Top = 139
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
      end
      object btnBaru: TcxButton
        Left = 527
        Top = 139
        Width = 70
        Height = 25
        Caption = 'Baru'
        TabOrder = 10
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
      Width = 875
      Height = 255
      Align = alClient
      TabOrder = 1
      RootLevelStyles.Tab = cxstyl1
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dsdetailpembelianpupukobattemp
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxgrdbclmnGrid1DBTableView1noPembelian: TcxGridDBColumn
          DataBinding.FieldName = 'noPembelian'
        end
        object cxgrdbclmnGrid1DBTableView1kodePupukObat: TcxGridDBColumn
          DataBinding.FieldName = 'kodePupukObat'
        end
        object cxgrdbclmnGrid1DBTableView1namaPupukObat: TcxGridDBColumn
          DataBinding.FieldName = 'namaPupukObat'
        end
        object cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn
          DataBinding.FieldName = 'satuan'
        end
        object cxgrdbclmnGrid1DBTableView1jumlahPembelian: TcxGridDBColumn
          DataBinding.FieldName = 'jumlahPembelian'
        end
        object cxgrdbclmnGrid1DBTableView1hargaBeli: TcxGridDBColumn
          DataBinding.FieldName = 'hargaBeli'
        end
        object cxgrdbclmnGrid1DBTableView1subTotalPembelian: TcxGridDBColumn
          DataBinding.FieldName = 'subTotalPembelian'
        end
        object cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn
          DataBinding.FieldName = 'createDate'
        end
        object cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn
          DataBinding.FieldName = 'createUser'
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
end
