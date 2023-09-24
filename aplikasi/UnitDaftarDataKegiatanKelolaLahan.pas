unit UnitDaftarDataKegiatanKelolaLahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxLabel, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxMaskEdit, cxDropDownEdit, dxSkinsdxNavBar2Painter, dxNavBarCollns,
  dxNavBarBase, dxNavBar;

type
  TFormDaftarDataKegiatanKelolaLahan = class(TForm)
    pnlTengah: TPanel;
    pnlAtas: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    pnlBawah: TPanel;
    cxlbl1: TcxLabel;
    cxtxtdtPencarian: TcxTextEdit;
    cxlbl2: TcxLabel;
    cbbStatus: TcxComboBox;
    pnlKanan: TPanel;
    dxnvbr1: TdxNavBar;
    dxnvbrgrpMenu: TdxNavBarGroup;
    dxnvbrtmKegiatan: TdxNavBarItem;
    dxnvbrtmTambah: TdxNavBarItem;
    dxnvbrtmUbah: TdxNavBarItem;
    dxnvbrtmHapus: TdxNavBarItem;
    dxnvbrgrpKegiatan: TdxNavBarGroup;
    dxnvbrtmKelolaHarianLahan: TdxNavBarItem;
    dxnvbrgrpPendapatan: TdxNavBarGroup;
    dxnvbrgrpPengeluaran: TdxNavBarGroup;
    dxnvbrtmHasilPanen: TdxNavBarItem;
    dxnvbrtmPengeluaranAlat: TdxNavBarItem;
    dxnvbrtmPembayaranPekerja: TdxNavBarItem;
    dxnvbrtmObatobatan: TdxNavBarItem;
    cxgrdbclmnGrid1DBTableView1noKegiatanKelolahLahan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tanggalMulaiKegiatan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tanggalSelesaiKegiatan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kodeLokasiLahan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1LokasiLahan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kodeJenisTanam: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jenisTanam: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1pendapatan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1pengeluaran: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1keuntungan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxtxtdtPencarianPropertiesChange(Sender: TObject);
    procedure dxnvbrtmTambahClick(Sender: TObject);
    procedure dxnvbrtmUbahClick(Sender: TObject);
    procedure dxnvbrtmHapusClick(Sender: TObject);
    procedure dxnvbrtmKelolaHarianLahanClick(Sender: TObject);
    procedure dxnvbrtmHasilPanenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
    procedure Tampildata;
  end;

var
  FormDaftarDataKegiatanKelolaLahan: TFormDaftarDataKegiatanKelolaLahan;



implementation

{$R *.dfm}
uses UnitDm, ZDataset,UnitFormTambahKegiatanKelolaHarian,UnitHapusKegiatanKelolaLahan,UnitKelolaLahan,
     UnitHasilPanen;

/// procedure baru
procedure TFormDaftarDataKegiatanKelolaLahan.baru;
begin
  cxtxtdtPencarian.Clear;
  cbbStatus.ItemIndex := 0;
  Tampildata;
end;

procedure TFormDaftarDataKegiatanKelolaLahan.Tampildata;
begin
  if (cxtxtdtPencarian.Text ='') then
   begin
    with DataModule1.zqrykegiatanKelolahLahan do
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from kegiatanKelolahLahan where status="'+cbbStatus.Text+'"';
     Open;
    end;
   end
   else
   begin
    with DataModule1.zqrykegiatanKelolahLahan do
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from kegiatanKelolahLahan where (lokasiLahan like "%'+cxtxtdtPencarian.Text+'%") and (status="'+cbbStatus.Text+'")';
     Open;
    end;
   end;
end;


procedure TFormDaftarDataKegiatanKelolaLahan.btnKeluarClick(
  Sender: TObject);
begin
Close;
end;

procedure TFormDaftarDataKegiatanKelolaLahan.FormShow(Sender: TObject);
begin
 baru;
end;

procedure TFormDaftarDataKegiatanKelolaLahan.cxtxtdtPencarianPropertiesChange(
  Sender: TObject);
begin
  Tampildata;
end;

procedure TFormDaftarDataKegiatanKelolaLahan.dxnvbrtmTambahClick(
  Sender: TObject);
begin
 Application.CreateForm(TFormTambahKegiatanKelolaHarian, FormTambahKegiatanKelolaHarian);
 FormTambahKegiatanKelolaHarian.baru;
 FormTambahKegiatanKelolaHarian.ShowModal;
end;

procedure TFormDaftarDataKegiatanKelolaLahan.dxnvbrtmUbahClick(
  Sender: TObject);
begin
if DataModule1.zqrykegiatanKelolahLahan.RecordCount >= 1 then
  begin
   Application.CreateForm(TFormTambahKegiatanKelolaHarian, FormTambahKegiatanKelolaHarian);
   with FormTambahKegiatanKelolaHarian do
   begin
    cxtxtdtNoKegiatan.Text :=  DataModule1.zqrykegiatanKelolahLahan.FieldByname('noKegiatanKelolahLahan').AsString;
    cxdtdtTglMulai.Date := DataModule1.zqrykegiatanKelolahLahan.Fieldbyname('tanggalMulaiKegiatan').AsDateTime;
    cxdtdtTglSelesai.Date := DataModule1.zqrykegiatanKelolahLahan.FieldByname('tanggalSelesaiKegiatan').AsDateTime;
    cbbLokasiLahan.EditValue := DataModule1.zqrykegiatanKelolahLahan.fieldbyname('kodeLokasiLahan').AsString;
    cbbJenisTanaman.EditValue := DataModule1.zqrykegiatanKelolahLahan.fieldbyname('kodeJenisTanam').AsString;
    cbbLokasiLahan.Text := DataModule1.zqrykegiatanKelolahLahan.fieldbyname('lokasiLahan').AsString;
    cbbJenisTanaman.Text := DataModule1.zqrykegiatanKelolahLahan.fieldbyname('jenisTanam').asstring;
    cbbStatus.Text := DataModule1.zqrykegiatanKelolahLahan.fieldbyname('status').AsString;
    ShowModal;
    btnSimpan.Caption := 'Ubah';
   end;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormDaftarDataKegiatanKelolaLahan.dxnvbrtmHapusClick(
  Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqrykegiatanKelolahLahan.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data kegiatan lokasi lahan "'+DataModule1.zqrykegiatanKelolahLahan['lokasiLahan']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqrykegiatanKelolahLahan['noKegiatanKelolahLahan'];
    Application.CreateForm(TFormHapusKegiatanKelolaLahan, FormHapusKegiatanKelolaLahan);
    with FormHapusKegiatanKelolaLahan do
     begin
      cxtxtdtNoKegiatan.Text := DataModule1.zqrykegiatanKelolahLahan.Fieldbyname('noKegiatanKelolahLahan').AsString;
      cxmKeterangan.Text := DataModule1.zqrykegiatanKelolahLahan.Fieldbyname('keterangan').AsString;
      ShowModal;
     end;
  end else
  abort;
  end;
end;

procedure TFormDaftarDataKegiatanKelolaLahan.dxnvbrtmKelolaHarianLahanClick(
  Sender: TObject);
begin
 Application.CreateForm(TFormKelolaLahan, FormKelolaLahan);
 if DataModule1.zqrykegiatanKelolahLahan.RecordCount >= 1 then
  begin
   FormKelolaLahan.cxtxtdtNoKegiatan.Text := DataModule1.zqrykegiatanKelolahLahan.FieldByname('noKegiatanKelolahLahan').AsString;
   FormKelolaLahan.ShowModal;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormDaftarDataKegiatanKelolaLahan.dxnvbrtmHasilPanenClick(
  Sender: TObject);
begin
if DataModule1.zqrykegiatanKelolahLahan.RecordCount >= 1 then
  begin
   Application.CreateForm(TFormHasilPanen, FormHasilPanen);
   FormHasilPanen.cxtxtdtNoKegiatan.Text := DataModule1.zqrykegiatanKelolahLahan.fieldByname('noKegiatanKelolahLahan').AsString;
   FormHasilPanen.baru;
   FormHasilPanen.ShowModal;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

end.
