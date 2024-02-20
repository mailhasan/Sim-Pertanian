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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 712
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
    Top = 506
    Width = 712
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 712
    Height = 465
    Align = alClient
    TabOrder = 2
    object dxlytcntrl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 710
      Height = 222
      Align = alTop
      TabOrder = 0
      TabStop = False
      LayoutLookAndFeel = dxlytwblkndfl1
      object cxdtdtTglPengeluaranPupuk: TcxDateEdit
        Left = 351
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
        Left = 107
        Top = 36
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 0
        Text = 'cxtxtdtNoKegiatan'
        Width = 121
      end
      object cxlkpcmbxNamaPupuk: TcxLookupComboBox
        Left = 107
        Top = 95
        Properties.DropDownWidth = 700
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            Width = 200
            FieldName = 'namaPupukObat'
          end
          item
            Caption = 'Pembelian'
            Width = 100
            FieldName = 'jumlahPembelian'
          end
          item
            Caption = 'Penggunaan'
            Width = 100
            FieldName = 'jumlahPenggunaan'
          end
          item
            Caption = 'Harga'
            Width = 100
            FieldName = 'hargaBeli'
          end
          item
            Caption = 'No Pembelian'
            Width = 120
            FieldName = 'noPembelian'
          end>
        Properties.ListSource = DataModule1.dsTampilPupukObat
        Properties.MaxLength = 150
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        Style.ButtonStyle = btsHotFlat
        Style.PopupBorderStyle = epbsSingle
        TabOrder = 3
        Width = 319
      end
      object cxtxtdtKodePupuk: TcxTextEdit
        Left = 546
        Top = 95
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 8
        Text = 'cxtxtdtKodePupuk'
        Width = 80
      end
      object cxcrncydtHargaPupuk: TcxCurrencyEdit
        Left = 546
        Top = 122
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 9
        Width = 121
      end
      object cxcrncydtJmlPenggunaan: TcxCurrencyEdit
        Left = 107
        Top = 149
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 6
        Width = 121
      end
      object cxcrncydtSubTotal: TcxCurrencyEdit
        Left = 351
        Top = 149
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 7
        Width = 121
      end
      object cxcrncydtStok: TcxCurrencyEdit
        Left = 107
        Top = 122
        Properties.AssignedValues.DisplayFormat = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 4
        Width = 121
      end
      object cxcrncydtJmlPemakaian: TcxCurrencyEdit
        Left = 351
        Top = 122
        Properties.AssignedValues.DisplayFormat = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsSingle
        Style.HotTrack = False
        TabOrder = 5
        Width = 121
      end
      object cxlblId: TcxLabel
        Left = 478
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
        TabOrder = 10
        Text = 'cxtxtdtKeterangan'
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
          LayoutDirection = ldHorizontal
          object dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxlytmNamaPupuk: TdxLayoutItem
              CaptionOptions.Text = 'Nama Pupuk'
              Control = cxlkpcmbxNamaPupuk
              ControlOptions.ShowBorder = False
            end
            object dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmStok: TdxLayoutItem
                CaptionOptions.Text = 'Stok'
                Control = cxcrncydtStok
                ControlOptions.ShowBorder = False
              end
              object dxlytmJmlPemakaian: TdxLayoutItem
                CaptionOptions.Text = 'Jumlah Pemakaian'
                Control = cxcrncydtJmlPemakaian
                ControlOptions.ShowBorder = False
              end
            end
            object dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytmJmlPenggunaan: TdxLayoutItem
                CaptionOptions.Text = 'Jml Penggunaan'
                Control = cxcrncydtJmlPenggunaan
                ControlOptions.ShowBorder = False
              end
              object dxlytmSubTotal: TdxLayoutItem
                CaptionOptions.Text = 'Sub Total'
                Control = cxcrncydtSubTotal
                ControlOptions.ShowBorder = False
              end
            end
          end
          object dxlytgrpdxlytcntrl1Group6: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxlytmKodePupuk: TdxLayoutItem
              CaptionOptions.Text = 'Kode Pupuk'
              Control = cxtxtdtKodePupuk
              ControlOptions.ShowBorder = False
            end
            object dxlytmHargaPupuk: TdxLayoutItem
              CaptionOptions.Text = 'Harga Pupuk'
              Control = cxcrncydtHargaPupuk
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
      Width = 710
      Height = 200
      Align = alClient
      TabOrder = 1
      object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataModule1.dspenggunaanpupukobat
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxgrdbclmnGrid1DBTableView1tanggalPupuk: TcxGridDBColumn
          DataBinding.FieldName = 'tanggalPupuk'
          Width = 106
        end
        object cxgrdbclmnGrid1DBTableView1namaPupuk: TcxGridDBColumn
          DataBinding.FieldName = 'namaPupuk'
          Width = 188
        end
        object cxgrdbclmnGrid1DBTableView1hargaPupuk: TcxGridDBColumn
          DataBinding.FieldName = 'hargaPupuk'
          Width = 77
        end
        object cxgrdbclmnGrid1DBTableView1jumlahPupuk: TcxGridDBColumn
          DataBinding.FieldName = 'jumlahPupuk'
          Width = 81
        end
        object cxgrdbclmnGrid1DBTableView1subTotalPupuk: TcxGridDBColumn
          DataBinding.FieldName = 'subTotalPupuk'
          Width = 80
        end
        object cxgrdbclmnGrid1DBTableView1keterangan: TcxGridDBColumn
          DataBinding.FieldName = 'keterangan'
          Width = 82
        end
        object cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Width = 66
        end
      end
      object cxgrdlvlGrid1Level1: TcxGridLevel
        GridView = cxgrdbtblvwGrid1DBTableView1
      end
    end
    object pnlMenu: TPanel
      Left = 1
      Top = 223
      Width = 710
      Height = 41
      Align = alTop
      Color = 15000804
      TabOrder = 2
      object btnBaru: TcxButton
        Left = 16
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Baru'
        TabOrder = 0
      end
      object btnSimpan: TcxButton
        Left = 96
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
      end
      object btnUbah: TcxButton
        Left = 176
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Ubah'
        TabOrder = 2
      end
      object btnHapus: TcxButton
        Left = 256
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Hapus'
        TabOrder = 3
      end
      object btnKeluar: TcxButton
        Left = 336
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Keluar'
        TabOrder = 4
      end
    end
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    object dxlytwblkndfl1: TdxLayoutWebLookAndFeel
    end
  end
end
