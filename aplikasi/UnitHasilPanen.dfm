object FormHasilPanen: TFormHasilPanen
  Left = 207
  Top = 123
  Width = 928
  Height = 509
  Caption = 'Hasil Panen'
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
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 912
    Height = 389
    Align = alClient
    Color = clHighlightText
    TabOrder = 0
    object cxgrpbx1: TcxGroupBox
      Left = 1
      Top = 176
      Align = alClient
      Caption = 'DAFTAR DATA HASIL PANEN'
      TabOrder = 0
      Height = 212
      Width = 910
      object cxgrd1: TcxGrid
        Left = 2
        Top = 18
        Width = 906
        Height = 192
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataModule1.dshasilpanen
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          object cxgrdbclmnGrid1DBTableView1tanggalPanen: TcxGridDBColumn
            Caption = 'Tanggal Panen'
            DataBinding.FieldName = 'tanggalPanen'
            Width = 130
          end
          object cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn
            Caption = 'Satuan'
            DataBinding.FieldName = 'satuan'
          end
          object cxgrdbclmnGrid1DBTableView1jumlahPanen: TcxGridDBColumn
            Caption = 'Jumlah Panen'
            DataBinding.FieldName = 'jumlahPanen'
            Width = 82
          end
          object cxgrdbclmnGrid1DBTableView1hargaJual: TcxGridDBColumn
            Caption = 'Harga Jual'
            DataBinding.FieldName = 'hargaJual'
            Width = 110
          end
          object cxgrdbclmnGrid1DBTableView1subTotalPanen: TcxGridDBColumn
            Caption = 'Sub Total Panen'
            DataBinding.FieldName = 'subTotalPanen'
            Width = 112
          end
          object cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn
            Caption = 'Create Date'
            DataBinding.FieldName = 'createDate'
            Width = 104
          end
          object cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn
            Caption = 'Create User'
            DataBinding.FieldName = 'createUser'
            Width = 84
          end
          object cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn
            Caption = 'Modif Date'
            DataBinding.FieldName = 'modifDate'
            Width = 94
          end
          object cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn
            Caption = 'modif User'
            DataBinding.FieldName = 'modifUser'
            Width = 118
          end
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView1
        end
      end
    end
    object cxgrpbx2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'FORM DATA HASIL PANEN'
      TabOrder = 1
      Height = 175
      Width = 910
      object pnl1: TPanel
        Left = 2
        Top = 132
        Width = 906
        Height = 41
        Align = alBottom
        Color = 15000804
        TabOrder = 0
        object btnSimpan: TcxButton
          Left = 162
          Top = 7
          Width = 61
          Height = 25
          Caption = 'Simpan'
          TabOrder = 0
          OnClick = btnSimpanClick
        end
        object btnBaru: TcxButton
          Left = 97
          Top = 7
          Width = 61
          Height = 25
          Caption = 'Baru'
          TabOrder = 1
          OnClick = btnBaruClick
        end
        object btnUbah: TcxButton
          Left = 226
          Top = 7
          Width = 54
          Height = 25
          Caption = 'Ubah'
          TabOrder = 2
          OnClick = btnUbahClick
        end
        object btnHapus: TcxButton
          Left = 281
          Top = 7
          Width = 50
          Height = 25
          Caption = 'Hapus'
          TabOrder = 3
          OnClick = btnHapusClick
        end
        object btnKeluar: TcxButton
          Left = 332
          Top = 7
          Width = 55
          Height = 25
          Caption = 'Keluar'
          TabOrder = 4
          OnClick = btnKeluarClick
        end
        object cxlblId: TcxLabel
          Left = 445
          Top = 14
          Caption = 'cxlblId'
          Visible = False
        end
      end
      object dxlytcntrl1: TdxLayoutControl
        Left = 2
        Top = 18
        Width = 906
        Height = 114
        Align = alClient
        TabOrder = 1
        TabStop = False
        object cxtxtdtNoKegiatan: TcxTextEdit
          Left = 95
          Top = 10
          Enabled = False
          Style.HotTrack = False
          TabOrder = 0
          Text = 'cxtxtdtNoKegiatan'
          Width = 121
        end
        object cxdtdtTglPanen: TcxDateEdit
          Left = 284
          Top = 10
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cbbSatuan: TcxComboBox
          Left = 95
          Top = 37
          Properties.Items.Strings = (
            'kg'
            'gelondong')
          Style.HotTrack = False
          TabOrder = 2
          Text = 'cbbSatuan'
          Width = 121
        end
        object cxcrncydtJmlPanen: TcxCurrencyEdit
          Left = 284
          Top = 37
          Properties.DisplayFormat = '0'
          Properties.OnChange = cxcrncydtJmlPanenPropertiesChange
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxcrncydtHargaPanen: TcxCurrencyEdit
          Left = 95
          Top = 64
          Properties.OnChange = cxcrncydtJmlPanenPropertiesChange
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxcrncydtSubTotalPanen: TcxCurrencyEdit
          Left = 95
          Top = 91
          Enabled = False
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmNoKegiatan: TdxLayoutItem
              CaptionOptions.Text = 'No Kegiatan'
              Enabled = False
              Control = cxtxtdtNoKegiatan
              ControlOptions.ShowBorder = False
            end
            object dxlytmTglPanen: TdxLayoutItem
              CaptionOptions.Text = 'Tgl Panen'
              Control = cxdtdtTglPanen
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytmSatuan: TdxLayoutItem
              CaptionOptions.Text = 'Satuan'
              Control = cbbSatuan
              ControlOptions.ShowBorder = False
            end
            object dxlytmJmlPanen: TdxLayoutItem
              CaptionOptions.Text = 'Hasil Panen'
              Control = cxcrncydtJmlPanen
              ControlOptions.ShowBorder = False
            end
          end
          object dxlytmHargaPanen: TdxLayoutItem
            CaptionOptions.Text = 'Harga Panen'
            Control = cxcrncydtHargaPanen
            ControlOptions.ShowBorder = False
          end
          object dxlytmSubTotalPanen: TdxLayoutItem
            CaptionOptions.Text = 'Sub Total Panen'
            Enabled = False
            Control = cxcrncydtSubTotalPanen
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 430
    Width = 912
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
    object cxlbl1: TcxLabel
      Left = 10
      Top = 11
      Caption = 'Tanggal '
    end
    object cxdtdtMulai: TcxDateEdit
      Left = 58
      Top = 10
      TabOrder = 1
      Width = 121
    end
    object cxdtdtSelesai: TcxDateEdit
      Left = 204
      Top = 9
      TabOrder = 2
      Width = 121
    end
    object cxlbl2: TcxLabel
      Left = 183
      Top = 12
      Caption = 'Sd'
    end
    object btnTampil: TcxButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Tampil'
      TabOrder = 4
      OnClick = btnTampilClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 41
    Align = alTop
    Caption = 'Hasil Panen'
    Color = 15000804
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
