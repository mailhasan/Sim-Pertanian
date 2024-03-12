object FormPenggunaanPupukObat: TFormPenggunaanPupukObat
  Left = 331
  Top = 73
  Width = 728
  Height = 585
  BorderIcons = [biSystemMenu]
  Caption = 'Penggunaan Pupuk/Obat'
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
    Width = 720
    Height = 41
    Align = alTop
    Caption = 'Form Penggunaan Pupuk/Obat" an'
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
    Top = 517
    Width = 720
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 720
    Height = 476
    Align = alClient
    TabOrder = 2
    object dxlytcntrl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 718
      Height = 222
      Align = alTop
      TabOrder = 0
      TabStop = False
      LayoutLookAndFeel = dxlytwblkndfl1
      object cxdtdtTglPengeluaranPupuk: TcxDateEdit
        Left = 342
        Top = 36
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 1
        Width = 121
      end
      object cxtxtdtNoKegiatan: TcxTextEdit
        Left = 98
        Top = 36
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 0
        Text = 'cxtxtdtNoKegiatan'
        Width = 121
      end
      object cxlkpcmbxNamaPupuk: TcxLookupComboBox
        Left = 98
        Top = 95
        Properties.DropDownWidth = 750
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            Caption = 'Nama Pupuk Obat'
            Width = 250
            FieldName = 'namaPupukObat'
          end
          item
            Caption = 'No Pembelian'
            Width = 100
            FieldName = 'noPembelian'
          end
          item
            Caption = 'Tanggal Pembelian'
            SortOrder = soDescending
            Width = 100
            FieldName = 'tanggalPembelian'
          end
          item
            Caption = 'Jml Pembelian'
            Width = 80
            FieldName = 'jumlahPembelian'
          end
          item
            Caption = 'Jml Digunakan'
            Width = 80
            FieldName = 'jumlahPenggunaan'
          end
          item
            Caption = 'Satuan'
            Width = 100
            FieldName = 'satuan'
          end
          item
            Caption = 'Harga Beli'
            Width = 100
            FieldName = 'hargaBeli'
          end>
        Properties.ListSource = DataModule1.dsTampilPupukObat
        Properties.MaxLength = 150
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 3
        OnKeyPress = cxlkpcmbxNamaPupukKeyPress
        Width = 406
      end
      object cxtxtdtKodePupuk: TcxTextEdit
        Left = 574
        Top = 95
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Text = 'cxtxtdtKodePupuk'
        Width = 80
      end
      object cxcrncydtHargaPupuk: TcxCurrencyEdit
        Left = 537
        Top = 122
        Enabled = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        StyleDisabled.BorderColor = cl3DLight
        StyleDisabled.Color = clCaptionText
        StyleDisabled.TextColor = clBlack
        TabOrder = 7
        Width = 121
      end
      object cxcrncydtJmlPenggunaan: TcxCurrencyEdit
        Left = 98
        Top = 149
        Enabled = False
        Properties.AssignedValues.DisplayFormat = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        StyleDisabled.BorderColor = cl3DLight
        StyleDisabled.Color = clCaptionText
        StyleDisabled.TextColor = clBlack
        TabOrder = 8
        Width = 121
      end
      object cxcrncydtSubTotal: TcxCurrencyEdit
        Left = 537
        Top = 149
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 10
        Width = 121
      end
      object cxcrncydtStok: TcxCurrencyEdit
        Left = 98
        Top = 122
        Enabled = False
        Properties.AssignedValues.DisplayFormat = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.Color = clWindow
        Style.HotTrack = False
        StyleDisabled.BorderColor = cl3DLight
        StyleDisabled.Color = clCaptionText
        StyleDisabled.TextColor = clBlack
        TabOrder = 5
        Width = 121
      end
      object cxcrncydtJmlPembelian: TcxCurrencyEdit
        Left = 342
        Top = 122
        Enabled = False
        Properties.AssignedValues.DisplayFormat = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        StyleDisabled.BorderColor = cl3DLight
        StyleDisabled.Color = clCaptionText
        StyleDisabled.TextColor = clBlack
        TabOrder = 6
        Width = 121
      end
      object cxlblId: TcxLabel
        Left = 469
        Top = 36
        Caption = 'cxlblId'
        Style.HotTrack = False
      end
      object cxtxtdtKeterangan: TcxTextEdit
        Left = 71
        Top = 183
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 11
        Text = 'cxtxtdtKeterangan'
        Width = 121
      end
      object cxcrncydtJml: TcxCurrencyEdit
        Left = 342
        Top = 149
        Properties.AssignedValues.DisplayFormat = True
        Properties.OnEditValueChanged = cxcrncydtJmlPropertiesEditValueChanged
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 9
        Width = 121
      end
      object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Data Kegiatan'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          object dxlytmdxlytcntrl1Item11: TdxLayoutItem
            CaptionOptions.Text = 'No Kegiatan'
            Control = cxtxtdtNoKegiatan
            ControlOptions.ShowBorder = False
          end
          object dxlytmdxlytcntrl1Item1: TdxLayoutItem
            CaptionOptions.Text = 'Tgl Pengeluaran Pupuk'
            Control = cxdtdtTglPengeluaranPupuk
            ControlOptions.ShowBorder = False
          end
          object dxlytmId: TdxLayoutItem
            CaptionOptions.Text = 'cxLabel1'
            CaptionOptions.Visible = False
            Control = cxlblId
            ControlOptions.ShowBorder = False
          end
        end
        object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Input Data Pupuk/Obat" an'
          ButtonOptions.Buttons = <>
          object dxlytcntrl1Group1: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmNamaPupuk: TdxLayoutItem
              CaptionOptions.Text = 'Nama Pupuk'
              Control = cxlkpcmbxNamaPupuk
              ControlOptions.ShowBorder = False
            end
            object dxlytmKodePupuk: TdxLayoutItem
              CaptionOptions.Text = 'Kode Pupuk'
              Control = cxtxtdtKodePupuk
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmStok: TdxLayoutItem
              CaptionOptions.Text = 'Stok'
              Enabled = False
              Control = cxcrncydtStok
              ControlOptions.ShowBorder = False
            end
            object dxlytmJmlPemakaian: TdxLayoutItem
              CaptionOptions.Text = 'Jumlah Pembelian'
              Enabled = False
              Control = cxcrncydtJmlPembelian
              ControlOptions.ShowBorder = False
            end
            object dxlytmHargaPupuk: TdxLayoutItem
              CaptionOptions.Text = 'Harga Pupuk'
              Enabled = False
              Control = cxcrncydtHargaPupuk
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmJmlPenggunaan: TdxLayoutItem
              CaptionOptions.Text = 'Jml Digunakan'
              Enabled = False
              Control = cxcrncydtJmlPenggunaan
              ControlOptions.ShowBorder = False
            end
            object dxlytmJml: TdxLayoutItem
              CaptionOptions.Text = 'Jml Pengguna'
              Control = cxcrncydtJml
              ControlOptions.ShowBorder = False
            end
            object dxlytmSubTotal: TdxLayoutItem
              CaptionOptions.Text = 'Sub Total'
              Control = cxcrncydtSubTotal
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxlytmKeterangan: TdxLayoutItem
          CaptionOptions.Text = 'Keterangan'
          Control = cxtxtdtKeterangan
          ControlOptions.ShowBorder = False
        end
      end
    end
    object cxgrd1: TcxGrid
      Left = 1
      Top = 264
      Width = 718
      Height = 211
      Align = alClient
      TabOrder = 1
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dspenggunaanpupukobat
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxgrdbclmnGrid1DBTableView1tanggalPupuk: TcxGridDBColumn
          Caption = 'Tanggal Pupuk'
          DataBinding.FieldName = 'tanggalPupuk'
          Width = 106
        end
        object cxgrdbclmnGrid1DBTableView1namaPupuk: TcxGridDBColumn
          Caption = 'Nama Pupuk'
          DataBinding.FieldName = 'namaPupuk'
          Width = 188
        end
        object cxgrdbclmnGrid1DBTableView1hargaPupuk: TcxGridDBColumn
          Caption = 'Harga Pupuk'
          DataBinding.FieldName = 'hargaPupuk'
          Width = 77
        end
        object cxgrdbclmnGrid1DBTableView1jumlahPupuk: TcxGridDBColumn
          Caption = 'Jumlah Pupuk'
          DataBinding.FieldName = 'jumlahPupuk'
          Width = 81
        end
        object cxgrdbclmnGrid1DBTableView1subTotalPupuk: TcxGridDBColumn
          Caption = 'Sub Total Pupuk'
          DataBinding.FieldName = 'subTotalPupuk'
          Width = 85
        end
        object cxgrdbclmnGrid1DBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 82
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
    object pnlMenu: TPanel
      Left = 1
      Top = 223
      Width = 718
      Height = 41
      Align = alTop
      Color = 15000804
      TabOrder = 2
      object btnBaru: TcxButton
        Left = 54
        Top = 7
        Width = 45
        Height = 25
        Caption = 'Baru'
        TabOrder = 0
        OnClick = btnBaruClick
      end
      object btnSimpan: TcxButton
        Left = 100
        Top = 7
        Width = 50
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        OnClick = btnSimpanClick
      end
      object btnHapus: TcxButton
        Left = 154
        Top = 6
        Width = 47
        Height = 25
        Caption = 'Hapus'
        TabOrder = 2
        OnClick = btnHapusClick
      end
      object btnKeluar: TcxButton
        Left = 202
        Top = 6
        Width = 48
        Height = 25
        Caption = 'Keluar'
        TabOrder = 3
      end
    end
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    object dxlytwblkndfl1: TdxLayoutWebLookAndFeel
    end
  end
end
