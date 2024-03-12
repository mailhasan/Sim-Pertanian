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
  cxLabel, dxSkinOffice2007Black;

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
    cxcrncydtStok: TcxCurrencyEdit;
    dxlytmStok: TdxLayoutItem;
    cxcrncydtJmlPembelian: TcxCurrencyEdit;
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
    cxtxtdtKeterangan: TcxTextEdit;
    dxlytmKeterangan: TdxLayoutItem;
    pnlMenu: TPanel;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnHapus: TcxButton;
    btnKeluar: TcxButton;
    cxcrncydtJml: TcxCurrencyEdit;
    dxlytmJml: TdxLayoutItem;
    dxlytcntrl1Group1: TdxLayoutGroup;
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxlkpcmbxNamaPupukKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtJmlPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
    procedure baruSelesaiInput;
    procedure tampilDataPupukOat;
  end;

var
  FormPenggunaanPupukObat: TFormPenggunaanPupukObat;

implementation

{$R *.dfm}
uses UnitDm, ZDataset, ZAbstractRODataset;

/// tampil query obat pada combo box
procedure TFormPenggunaanPupukObat.tampilDataPupukOat;
begin
 with DataModule1.zqryTampilPupukObat do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT '+
                '`detailpembelianpupukobat`.`id`'+
                ', `pembelianpupukobat`.`tanggalPembelian`'+
                ', `detailpembelianpupukobat`.`noPembelian`'+
                ', `detailpembelianpupukobat`.`kodePupukObat`'+
                ', `detailpembelianpupukobat`.`namaPupukObat`'+
                ', `detailpembelianpupukobat`.`satuan`'+
                ', `detailpembelianpupukobat`.`jumlahPembelian`'+
                ', `detailpembelianpupukobat`.`jumlahPenggunaan`'+
                ', `detailpembelianpupukobat`.`hargaBeli`'+
                ', `detailpembelianpupukobat`.`subTotalPembelian`'+
            'FROM'+
                '`detailpembelianpupukobat`'+
                'INNER JOIN `pembelianpupukobat`'+
                   ' ON (`detailpembelianpupukobat`.`noPembelian` = `pembelianpupukobat`.`noPembelian`) WHERE (jumlahPenggunaan<jumlahPembelian) OR jumlahPenggunaan IS NULL ORDER BY tanggalPembelian DESC';
  Open;
 end;
end;

procedure TFormPenggunaanPupukObat.baru;
begin
 dxlytmId.Caption := '';
 cxdtdtTglPengeluaranPupuk.Date := Now;
 /// panggil procedure
 baruSelesaiInput;
 /// tampil data penggunaan pupuk
 with DataModule1.zqrypenggunaanpupukobat do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from penggunaanpupukobat where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
  Open;
 end;
end;

procedure TFormPenggunaanPupukObat.baruSelesaiInput;
begin
 tampilDataPupukOat;
 cxlblId.Caption := '';
 cxlkpcmbxNamaPupuk.Text := '';
 cxtxtdtKodePupuk.Text := '';
 cxcrncydtStok.Value := 0;
 cxcrncydtJmlPembelian.Value := 0;
 cxcrncydtJmlPenggunaan.Value := 0;
 cxcrncydtJml.Value := 0;
 cxcrncydtSubTotal.Value := 0;
 cxtxtdtKeterangan.Text := '';
 btnSimpan.Caption := 'Simpan';
 /// panggil procedure
end;

procedure TFormPenggunaanPupukObat.btnBaruClick(Sender: TObject);
begin
  baruSelesaiInput;
end;

procedure TFormPenggunaanPupukObat.btnSimpanClick(Sender: TObject);
var
  jmlPgnan,jmlUpdateStok:Real;
begin
if (cxlkpcmbxNamaPupuk.Text ='') or (cxtxtdtKodePupuk.Text='') or (cxcrncydtJml.Value=0) then
  MessageDlg('Data Wajib Di Isi Semua...',mtWarning,[mbOK],0)
  else
  begin
   if btnSimpan.Caption = 'Simpan' then
    begin
     /// simpan
     with DataModule1.zqrypenggunaanpupukobat do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into penggunaanpupukobat (id,noKegiatanKelolahLahan,tanggalPupuk,namaPupuk,hargaPupuk,jumlahPupuk,subTotalPupuk,keterangan) values (:id,:noKegiatanKelolahLahan,:tanggalPupuk,:namaPupuk,:hargaPupuk,:jumlahPupuk,:subTotalPupuk,:keterangan)';
      Params.ParamByName('id').Value := cxlkpcmbxNamaPupuk.EditValue;
      Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
      Params.ParamByName('tanggalPupuk').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPengeluaranPupuk.Date);
      Params.ParamByName('namaPupuk').Value := cxlkpcmbxNamaPupuk.Text;
      Params.ParamByName('hargaPupuk').Value := cxcrncydtHargaPupuk.Value;
      Params.ParamByName('jumlahPupuk').Value := cxcrncydtJml.Value;
      Params.ParamByName('subTotalPupuk').Value := cxcrncydtSubTotal.Value;
      Params.ParamByName('keterangan').Value := cxtxtdtKeterangan.Text;
      ExecSQL;
      SQL.Text := 'select * from penggunaanpupukobat where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
      Open;
     end;


     jmlPgnan := StrToFloat(FloatToStr(cxcrncydtJmlPenggunaan.Value))+StrToFloat(FloatToStr(cxcrncydtJml.Value));
     /// update pada tabel detailpembelianpupukobat
     with DataModule1.zqrydetailPembelianPupukObat do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'update detailpembelianpupukobat set jumlahPenggunaan="'+FloatToStr(jmlPgnan)+'" where id="'+IntToStr(cxlkpcmbxNamaPupuk.EditValue)+'"';
      ExecSQL;
      SQL.Text := 'select * from detailpembelianpupukobat';
      Open;
     end;

     /// tampil stok dari data master
     with DataModule1.zqrypupukobat do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'select kodePupukObat,stok from pupukobat where kodePupukObat="'+cxtxtdtKodePupuk.Text+'"';
      Open;
     end;

     /// perhitungan penguran stok
     jmlUpdateStok := DataModule1.zqrypupukobat.fieldbyname('stok').AsFloat - cxcrncydtJml.Value;
     /// update stok pupukobat
     with DataModule1.zqrypupukobat do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'update pupukobat set stok="'+FloatToStr(jmlUpdateStok)+'" where kodePupukObat="'+cxtxtdtKodePupuk.Text+'"';
      ExecSQL;
      SQL.Text := 'select * from pupukobat';
      Open;
     end;
    end
    else
    begin
     /// ubah
     with DataModule1.zqrypenggunaanpupukobat do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'update penggunaanpupukobat set id=:id,noKegiatanKelolahLahan=:noKegiatanKelolahLahan,tanggalPupuk=:tanggalPupuk,namaPupuk=:namaPupuk,hargaPupuk=:hargaPupuk,jumlahPupuk=:jumlahPupuk,subTotalPupuk=:subTotalPupuk,keterangan=:keterangan where id=:id';
      ExecSQL;
      Params.ParamByName('id').Value := cxlkpcmbxNamaPupuk.EditValue;
      Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
      Params.ParamByName('tanggalPupuk').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPengeluaranPupuk.Date);
      Params.ParamByName('namaPupuk').Value := cxlkpcmbxNamaPupuk.Text;
      Params.ParamByName('hargaPupuk').Value := cxcrncydtHargaPupuk.Value;
      Params.ParamByName('jumlahPupuk').Value := cxcrncydtJml.Value;
      Params.ParamByName('subTotalPupuk').Value := cxcrncydtSubTotal.Value;
      Params.ParamByName('keterangan').Value := cxtxtdtKeterangan.Text;
      SQL.Text := 'select * from penggunaanpupukobat where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
      Open;
     end;
    end;
    MessageDlg('Data Berhasil Di Simpan...!',mtInformation,[mbOK],0);
  end
end;

procedure TFormPenggunaanPupukObat.cxlkpcmbxNamaPupukKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if DataModule1.zqryTampilPupukObat.RecordCount >= 1 then
      begin
       cxtxtdtKodePupuk.Text := DataModule1.zqryTampilPupukObat.FIeldbyname('kodePupukObat').AsString;
       with DataModule1.zqrypupukobat do
       begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT kodePupukObat,stok FROM pupukobat WHERE kodePupukObat="'+cxtxtdtKodePupuk.Text+'" ';
        Open;
       end;
       cxcrncydtStok.Value := DataModule1.zqrypupukobat.FIeldbyname('stok').AsFloat;
       cxcrncydtJmlPembelian.Value := DataModule1.zqryTampilPupukObat.FIeldbyname('jumlahPembelian').AsFloat;
       cxcrncydtHargaPupuk.Value := DataModule1.zqryTampilPupukObat.FIeldbyname('hargaBeli').AsFloat;
       cxcrncydtJmlPenggunaan.Value := DataModule1.zqryTampilPupukObat.FIeldbyname('jumlahPenggunaan').AsFloat;
       cxcrncydtJml.Value :=0;
       cxcrncydtJml.SetFocus;
       cxcrncydtSubTotal.Value := 0;
       cxtxtdtKeterangan.Text := '';

      end
    else
      MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
  end;
end;

procedure TFormPenggunaanPupukObat.cxcrncydtJmlPropertiesEditValueChanged(
  Sender: TObject);
begin
 cxcrncydtSubTotal.Value := cxcrncydtJml.Value*cxcrncydtHargaPupuk.Value;
end;

procedure TFormPenggunaanPupukObat.FormShow(Sender: TObject);
begin
 baru;
end;

procedure TFormPenggunaanPupukObat.btnUbahClick(Sender: TObject);
begin
if DataModule1.zqrypenggunaanpupukobat.RecordCount >= 1 then
  begin

  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0)
end;

procedure TFormPenggunaanPupukObat.btnHapusClick(Sender: TObject);
begin
if DataModule1.zqrypenggunaanpupukobat.RecordCount >= 1 then
  begin

  end
  else
  MessageDlg('Data Tidak DiTemukan...!',mtWarning,[mbOK],0);
end;

end.
