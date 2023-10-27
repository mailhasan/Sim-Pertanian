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
  StdCtrls, cxButtons, cxLabel;

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
    cxgrdbclmnGrid1DBTableView1kodePupukObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaPupukObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jumlahPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1hargaBeli: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1subTotalPembelian: TcxGridDBColumn;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxcrncydtTotalPembayaran: TcxCurrencyEdit;
    cxcrncydtSisaPembayaran: TcxCurrencyEdit;
    cbbStatus: TcxComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure cbbNamaObatKeyPress(Sender: TObject; var Key: Char);
    procedure cbbNamaObatDblClick(Sender: TObject);
    procedure btnInputClick(Sender: TObject);
    procedure cxcrncydtHargaBeliPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SelesaiInputData;
    procedure baru;
    procedure tampilDataMasterObat;
  end;

var
  FormTambahDataPembelianPupukObat: TFormTambahDataPembelianPupukObat;

implementation

{$R *.dfm}
uses UnitUtama,UnitDm, ZDataset, ZAbstractRODataset;

procedure TFormTambahDataPembelianPupukObat.SelesaiInputData;
begin
 cbbNamaObat.Text := '';
 cxtxtdtSatuan.Text := '';
 cxcrncydtJmlStok.Value := 0;
 cxcrncydtJmlPembelian.Value := 0;
 cxcrncydtHargaBeli.Value := 0;
 cxcrncydtSubTotalPembelian.Value := 0;
end;

procedure TFormTambahDataPembelianPupukObat.baru;
begin
  cxtxtdtNoPembelian.Text := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
  cxdtdtTglPembelian.Date := Now;
  cxcrncydtTotalPembelian.Value := 0;
  SelesaiInputData;
end;

procedure TFormTambahDataPembelianPupukObat.tampilDataMasterObat;
begin
  with DataModule1.zqrypupukobat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from pupukobat';
    Open;
  end;
end;

procedure TFormTambahDataPembelianPupukObat.FormShow(Sender: TObject);
begin
 baru;
end;

procedure TFormTambahDataPembelianPupukObat.btnBaruClick(Sender: TObject);
begin
 SelesaiInputData;

 cbbNamaObat.SetFocus;
 /// panggil procedure
 tampilDataMasterObat;
end;

procedure TFormTambahDataPembelianPupukObat.cbbNamaObatKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
  Key:=#0;
  if cbbNamaObat.Text = '' then
    MessageDlg('Nama Obat Masih Kosong...!',mtInformation,[mbok],0)
    else
    begin
      with DataModule1.zqrypupukobat do
      begin
       Close;
       SQL.Clear;
       SQL.Text := 'select * from pupukobat where kodePupukObat="'+cbbNamaObat.EditValue+'"';
       Open;
      end;

      if DataModule1.zqrypupukobat.RecordCount >= 1 then
        begin
          cbbNamaObat.EditValue := DataModule1.zqrypupukobat.Fieldbyname('kodePupukObat').AsString;
          cxtxtdtSatuan.Text := DataModule1.zqrypupukobat.Fieldbyname('satuan').AsString;
          cxcrncydtJmlStok.Value := DataModule1.zqrypupukobat.Fieldbyname('stok').AsFloat;
          cxcrncydtJmlPembelian.SetFocus;
        end
        else
         MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
    end;
end;
end;

procedure TFormTambahDataPembelianPupukObat.cbbNamaObatDblClick(
  Sender: TObject);
begin
 btnBaruClick(Sender);
end;

procedure TFormTambahDataPembelianPupukObat.btnInputClick(Sender: TObject);
var
  tgl,user:String;
begin
if (cbbNamaObat.Text='') or (cxcrncydtJmlPembelian.Value=0) or (cxcrncydtHargaBeli.Value=0) then
    MessageDlg('Data Tanda * Wajib Di Isi....!',mtWarning,[mbOK],0)
    else
    begin
       tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
       user := FormUtama.stat1.Panels[0].Text;
       /// pengujian apakah no sudah ada
         if DataModule1.zqrypembelianPupukObat.Locate('noPembelian',cxtxtdtNoPembelian.Text,[]) then
            /// update di tabel pembelian pupuk
            begin

              /// update stok di data master pupuk obat
              with DataModule1.zqrypupukobat do
              begin
              Close;
              SQL.Clear;
              SQL.Text := 'update pupukobat set stok=:stok,modifDate=:modifDate,modifUser=:modifUser where kodePupukObat=:kodePupukObat';
              Params.ParamByName('kodePupukObat').Value := cbbNamaObat.EditValue;
              Params.ParamByName('stok').Value := cxcrncydtJmlStok.Value+cxcrncydtJmlPembelian.Value;
              Params.ParamByName('modifDate').Value := tgl;
              Params.ParamByName('modifUser').Value := user;
              ExecSQL;
              SQL.Text := 'select * from pupukobat';
              Open;
              end;
              
               /// insert di tabel detail pembelian
              with DataModule1.zqrydetailPembelianPupukObat do
              begin
                Close;
                SQL.Clear;
                SQL.Text := 'insert into detailPembelianPupukObat (noPembelian,kodePupukObat,namaPupukObat,satuan,jumlahPembelian,hargaBeli,subTotalPembelian,createDate,createUser) values '+
                '(:noPembelian,:kodePupukObat,:namaPupukObat,:satuan,:jumlahPembelian,:hargaBeli,:subTotalPembelian,:createDate,:createUser)';
                Params.ParamByName('noPembelian').Value := cxtxtdtNoPembelian.Text;
                Params.ParamByName('kodePupukObat').Value := cbbNamaObat.EditValue;
                Params.ParamByName('namaPupukObat').Value := cbbNamaObat.Text;
                Params.ParamByName('satuan').Value := cxtxtdtSatuan.Text;
                Params.ParamByName('jumlahPembelian').Value := cxcrncydtJmlPembelian.Value;
                Params.ParamByName('hargaBeli').Value := cxcrncydtHargaBeli.Value;
                Params.ParamByName('subTotalPembelian').Value := cxcrncydtSubTotalPembelian.Value;
                Params.ParamByName('createDate').Value := tgl;
                Params.ParamByName('createUser').Value := user;
                ExecSQL;
              end;

              /// tampil data berdasarkan no pembelian
              with DataModule1.zqrydetailPembelianPupukObat do
              begin
                Close;
                SQL.Clear;
                SQL.Text := 'select * from detailPembelianPupukObat where noPembelian="'+cxtxtdtNoPembelian.Text+'"';
                Open;
              end;

              /// update pada tabel pembelian pupuk
              with DataModule1.zqrypembelianPupukObat do
              begin
                Close;
                SQL.Clear;
                SQL.Text := 'update pembelianpupukobat set tanggalPembelian=:tanggalPembelian,totalPembelian=:totalPembelian,sisaPembayaran=:sisaPembayaran,status=:status where noPembelian=:noPembelian';
                Params.ParamByName('noPembelian').Value := cxtxtdtNoPembelian.Text;
                Params.ParamByName('tanggalPembelian').Value := FormatDateTime('yyyy-MM-dd',cxdtdtTglPembelian.Date);
                Params.ParamByName('totalPembelian').Value := cxcrncydtTotalPembelian.Value;
                Params.ParamByName('sisaPembayaran').Value := cxcrncydtSisaPembayaran.Value;
                Params.ParamByName('status').Value := cbbStatus.Text;
                ExecSQL;
                SQL.Text := 'select * from pembelianpupukobat where noPembelian="'+cxtxtdtNoPembelian.Text+'"';
                Open;
              end;

            end
          else
            /// insert di tabel pembelian pupuk
            begin
              /// insert pada tabel pembelian pupuk
              with DataModule1.zqrypembelianPupukObat do
              begin
                Close;
                SQL.Clear;
                SQL.Text := 'insert into pembelianpupukobat (noPembelian,tanggalPembelian,totalPembelian,sisaPembayaran,status,createDate,createUser) values (:noPembelian,:tanggalPembelian,:totalPembelian,:sisaPembayaran,:status,:createDate,:createUser)';
                Params.ParamByName('noPembelian').Value := cxtxtdtNoPembelian.Text;
                Params.ParamByName('tanggalPembelian').Value := FormatDateTime('yyyy-MM-dd',cxdtdtTglPembelian.Date);
                Params.ParamByName('totalPembelian').Value := cxcrncydtTotalPembelian.Value;
                Params.ParamByName('sisaPembayaran').Value := cxcrncydtSisaPembayaran.Value;
                Params.ParamByName('status').Value := cbbStatus.Text;
                Params.ParamByName('createDate').Value := tgl;
                Params.ParamByName('createUser').Value := user;
                ExecSQL;
                SQL.Text := 'select * from pembelianpupukobat where noPembelian="'+cxtxtdtNoPembelian.Text+'"';
                Open;
              end;

              /// update stok di data master pupuk obat
              with DataModule1.zqrypupukobat do
              begin
              Close;
              SQL.Clear;
              SQL.Text := 'update pupukobat set stok=:stok,modifDate=:modifDate,modifUser=:modifUser where kodePupukObat=:kodePupukObat';
              Params.ParamByName('kodePupukObat').Value := cbbNamaObat.EditValue;
              Params.ParamByName('stok').Value := cxcrncydtJmlStok.Value+cxcrncydtJmlPembelian.Value;
              Params.ParamByName('modifDate').Value := tgl;
              Params.ParamByName('modifUser').Value := user;
              ExecSQL;
              SQL.Text := 'select * from pupukobat';
              Open;
              end;

              // insert pada tabel detail
              with DataModule1.zqrydetailPembelianPupukObat do
              begin
                Close;
                SQL.Clear;
                SQL.Text := 'insert into detailPembelianPupukObat (noPembelian,kodePupukObat,namaPupukObat,satuan,jumlahPembelian,hargaBeli,subTotalPembelian,createDate,createUser) values '+
                '(:noPembelian,:kodePupukObat,:namaPupukObat,:satuan,:jumlahPembelian,:hargaBeli,:subTotalPembelian,:createDate,:createUser)';
                Params.ParamByName('noPembelian').Value := cxtxtdtNoPembelian.Text;
                Params.ParamByName('kodePupukObat').Value := cbbNamaObat.EditValue;
                Params.ParamByName('namaPupukObat').Value := cbbNamaObat.Text;
                Params.ParamByName('satuan').Value := cxtxtdtSatuan.Text;
                Params.ParamByName('jumlahPembelian').Value := cxcrncydtJmlPembelian.Value;
                Params.ParamByName('hargaBeli').Value := cxcrncydtHargaBeli.Value;
                Params.ParamByName('subTotalPembelian').Value := cxcrncydtSubTotalPembelian.Value;
                Params.ParamByName('createDate').Value := tgl;
                Params.ParamByName('createUser').Value := user;
                ExecSQL;
              end;

              /// tampil data berdasarkan no pembelian
              with DataModule1.zqrydetailPembelianPupukObat do
              begin
                Close;
                SQL.Clear;
                SQL.Text := 'select * from detailPembelianPupukObat where noPembelian="'+cxtxtdtNoPembelian.Text+'"';
                Open;
              end;

            end;
    end;
end;

procedure TFormTambahDataPembelianPupukObat.cxcrncydtHargaBeliPropertiesChange(
  Sender: TObject);
begin
cxcrncydtSubTotalPembelian.Value := cxcrncydtHargaBeli.Value * cxcrncydtJmlPembelian.Value;
end;

end.
