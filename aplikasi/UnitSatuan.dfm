object FormSatuan: TFormSatuan
  Left = 444
  Top = 242
  Width = 369
  Height = 321
  Caption = 'satuan'
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
    Width = 353
    Height = 41
    Align = alTop
    Caption = 'Daftar Data Satuan'
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
    Top = 242
    Width = 353
    Height = 41
    Align = alBottom
    Color = 15000804
    TabOrder = 1
  end
  object cxgrd1: TcxGrid
    Left = 0
    Top = 41
    Width = 353
    Height = 201
    Align = alClient
    TabOrder = 2
    object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataModule1.dsSatuan
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      object cxgrdbclmnGrid1DBTableView1id: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        Options.Editing = False
        Width = 46
      end
      object cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Width = 279
      end
    end
    object cxgrdlvlGrid1Level1: TcxGridLevel
      GridView = cxgrdbtblvwGrid1DBTableView1
    end
  end
end
