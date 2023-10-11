unit UnitTambahDataPembelianPupukObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDarkSide,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxLayoutControl, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormTambahDataPembelianPupukObat = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpDataTransaksi: TdxLayoutGroup;
    dxlytgrpDataObat: TdxLayoutGroup;
    cxtxtdtNoPembelian: TcxTextEdit;
    dxlytmNoPembelian: TdxLayoutItem;
    cxdtdtTglPembelian: TcxDateEdit;
    dxlytmTglPembelian: TdxLayoutItem;
    cxcrncydtTotalPembelian: TcxCurrencyEdit;
    dxlytmTotalPembelian: TdxLayoutItem;
    cbbNamaObat: TcxLookupComboBox;
    dxlytmNamaObat: TdxLayoutItem;
    cxtxtdtSatuan: TcxTextEdit;
    dxlytmSatuan: TdxLayoutItem;
    cxcrncydtJmlStok: TcxCurrencyEdit;
    dxlytmJmlStok: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxcrncydtJmlPembelian: TcxCurrencyEdit;
    dxlytmJmlPembelian: TdxLayoutItem;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTambahDataPembelianPupukObat: TFormTambahDataPembelianPupukObat;

implementation

{$R *.dfm}
uses UnitUtama;

end.
