unit UnitPenggunaanPupukObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinDarkSide,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, dxLayoutControlAdapters, Menus,
  StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel;

type
  TFormPenggunaanPupukObat = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytwblkndfl1: TdxLayoutWebLookAndFeel;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxdtdtTglPengeluaranPupuk: TcxDateEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    cxtxtdtNoKegiatan: TcxTextEdit;
    dxlytmdxlytcntrl1Item11: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    cxlkpcmbxNamaPupuk: TcxLookupComboBox;
    dxlytmNamaPupuk: TdxLayoutItem;
    cxtxtdtKodePupuk: TcxTextEdit;
    dxlytmKodePupuk: TdxLayoutItem;
    cxcrncydtHargaPupuk: TcxCurrencyEdit;
    dxlytmHargaPupuk: TdxLayoutItem;
    cxcrncydtJmlPenggunaan: TcxCurrencyEdit;
    dxlytmJmlPenggunaan: TdxLayoutItem;
    cxcrncydtSubTotal: TcxCurrencyEdit;
    dxlytmSubTotal: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group6: TdxLayoutGroup;
    cxcrncydtStok: TcxCurrencyEdit;
    dxlytmStok: TdxLayoutItem;
    cxcrncydtJmlPemakaian: TcxCurrencyEdit;
    dxlytmJmlPemakaian: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxlblId: TcxLabel;
    dxlytmId: TdxLayoutItem;
    cxgrdbclmnGrid1DBTableView1tanggalPupuk: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaPupuk: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1hargaPupuk: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jumlahPupuk: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1subTotalPupuk: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxtxtdtKeterangan: TcxTextEdit;
    dxlytmKeterangan: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup;
    pnlMenu: TPanel;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    btnKeluar: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPenggunaanPupukObat: TFormPenggunaanPupukObat;

implementation

{$R *.dfm}
uses UnitDm;

end.
