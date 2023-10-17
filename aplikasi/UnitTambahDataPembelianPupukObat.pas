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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  StdCtrls, cxButtons;

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
    cxcrncydtHargaBeli: TcxCurrencyEdit;
    dxlytmHargaBeli: TdxLayoutItem;
    cxcrncydtSubTotalPembelian: TcxCurrencyEdit;
    dxlytmSubTotalPembelian: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    btnInput: TcxButton;
    dxlytmInput: TdxLayoutItem;
    btnBaru: TcxButton;
    dxlytmBaru: TdxLayoutItem;
    cxgrdbclmnGrid1DBTableView1noPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kodePupukObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaPupukObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jumlahPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1hargaBeli: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1subTotalPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
    procedure baru;
  end;

var
  FormTambahDataPembelianPupukObat: TFormTambahDataPembelianPupukObat;

implementation

{$R *.dfm}
uses UnitUtama,UnitDm;

procedure TFormTambahDataPembelianPupukObat.awal;
begin
  cxtxtdtNoPembelian.Text := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
  cxdtdtTglPembelian.Date := Now;
  cxcrncydtTotalPembelian.Value := 0;
  cbbNamaObat.Text := '';
  cxtxtdtSatuan.Text := '';
  cxcrncydtJmlStok.Value := 0;
  cxcrncydtJmlPembelian.Value := 0;
  cxcrncydtHargaBeli.Value := 0;
  cxcrncydtSubTotalPembelian.Value := 0;
end;

end.
