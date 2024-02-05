unit UnitDataPembelianPupukObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Silver,
  dxSkinOffice2010Silver, dxSkinsdxNavBar2Painter, dxNavBarCollns,
  cxClasses, dxNavBarBase, dxNavBar, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, dxSkinDarkSide, cxContainer, cxLabel, Menus,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFormDaftarDataPembelianPupukObat = class(TForm)
    pnlAtas: TPanel;
    pnlKiri: TPanel;
    dxnvbr1: TdxNavBar;
    dxnvbrgrpMenu: TdxNavBarGroup;
    dxnvbrtmTambah: TdxNavBarItem;
    dxnvbrtmUbah: TdxNavBarItem;
    dxnvbrtmHapus: TdxNavBarItem;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1noPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tanggalPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1totalPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    dxnvbrtmPembayaran: TdxNavBarItem;
    cxlbl1: TcxLabel;
    cxdtdtTglMulai: TcxDateEdit;
    cxlbl2: TcxLabel;
    cxdtdtTglSelesai: TcxDateEdit;
    btnTampil: TcxButton;
    procedure dxnvbrtmTambahClick(Sender: TObject);
    procedure dxnvbrtmUbahClick(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxnvbrtmHapusClick(Sender: TObject);
    procedure dxnvbrtmPembayaranClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDaftarDataPembelianPupukObat: TFormDaftarDataPembelianPupukObat;

implementation

{$R *.dfm}
uses UnitDm,UnitTambahDataPembelianPupukObat,UnitHapusPembelianPupuk, ZDataset, UnitTambahPembayaranPembelianPupuk;

procedure TFormDaftarDataPembelianPupukObat.dxnvbrtmTambahClick(
  Sender: TObject);
begin
 Application.CreateForm(TFormTambahDataPembelianPupukObat, FormTambahDataPembelianPupukObat);
 FormTambahDataPembelianPupukObat.baru;
 FormTambahDataPembelianPupukObat.ShowModal;
end;

procedure TFormDaftarDataPembelianPupukObat.dxnvbrtmUbahClick(
  Sender: TObject);
var
  noPmbl:String;
begin
if DataModule1.zqrypembelianPupukObat.RecordCount >= 1 then
  begin
   noPmbl := DataModule1.zqrypembelianPupukObat.Fieldbyname('noPembelian').AsString;
   Application.CreateForm(TFormTambahDataPembelianPupukObat, FormTambahDataPembelianPupukObat);
   with FormTambahDataPembelianPupukObat do
   begin
    cxtxtdtNoPembelian.Text := noPmbl;
    cxdtdtTglPembelian.Date := DataModule1.zqrypembelianPupukObat.Fieldbyname('tanggalPembelian').AsDateTime;
    cxcrncydtTotalPembelian.Value := DataModule1.zqrypembelianPupukObat.Fieldbyname('totalPembelian').AsFloat;
    cxcrncydtSisaPembayaran.Value := DataModule1.zqrypembelianPupukObat.Fieldbyname('sisaPembayaran').AsFloat;
    cbbStatus.Text := DataModule1.zqrypembelianPupukObat.Fieldbyname('status').AsString;
    /// panggil procedure selesai input data
    SelesaiInputData;
    /// panggil procedure tampil data
    tampilDetailPembelian;

    ShowModal;
   end;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormDaftarDataPembelianPupukObat.btnTampilClick(
  Sender: TObject);
begin
 with DataModule1.zqrypembelianPupukObat do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from pembelianpupukobat where tanggalPembelian BETWEEN "'+FormatDateTime('yyyy-MM-dd',cxdtdtTglMulai.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',cxdtdtTglSelesai.Date)+'"';
  Open;
 end;
end;

procedure TFormDaftarDataPembelianPupukObat.FormShow(Sender: TObject);
begin
 cxdtdtTglMulai.Date := Now;
 cxdtdtTglSelesai.Date := Now+1;
 btnTampilClick(Sender);
end;

procedure TFormDaftarDataPembelianPupukObat.dxnvbrtmHapusClick(
  Sender: TObject);
begin
if DataModule1.zqrypembelianPupukObat.RecordCount >= 1 then
  begin
   Application.CreateForm(TFormHapusPembelianPupuk, FormHapusPembelianPupuk);
   with FormHapusPembelianPupuk do
   begin
     cxtxtdtNoPembelian.Text :=  DataModule1.zqrypembelianPupukObat.Fieldbyname('noPembelian').AsString;
     cxcrncydtTotalPembelian.Value := DataModule1.zqrypembelianPupukObat.Fieldbyname('totalPembelian').AsFloat;
     ShowModal;
   end;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormDaftarDataPembelianPupukObat.dxnvbrtmPembayaranClick(
  Sender: TObject);
begin
if DataModule1.zqrypembelianPupukObat.RecordCount >= 1 then
 begin
 Application.CreateForm(TFormPembayaranPembelianPupuk, FormPembayaranPembelianPupuk);
 with FormPembayaranPembelianPupuk do
 begin
  cxcrncydtSisaPembayaran.Value := DataModule1.zqrypembelianPupukObat.FIeldbyname('sisaPembayaran').AsCurrency;
  cxtxtdtStatus.Text := DataModule1.zqrypembelianPupukObat.FIeldbyname('status').AsString;
  cxtxtdtNoPembelian.Text := DataModule1.zqrypembelianPupukObat.FIeldbyname('noPembelian').AsString;
  baru;
  ShowModal;
 end
end;
end;
end.
