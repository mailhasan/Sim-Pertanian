unit UnitHasilPanen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, Menus, cxTextEdit, cxLabel,
  StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox,
  ExtCtrls, dxLayoutControl, dxLayoutcxEditAdapters, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit;

type
  TFormHasilPanen = class(TForm)
    pnlTengah: TPanel;
    cxgrpbx1: TcxGroupBox;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrpbx2: TcxGroupBox;
    pnl1: TPanel;
    btnSimpan: TcxButton;
    btnBaru: TcxButton;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    btnKeluar: TcxButton;
    pnlBawah: TPanel;
    cxlbl1: TcxLabel;
    pnlAtas: TPanel;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    cxtxtdtNoKegiatan: TcxTextEdit;
    dxlytmNoKegiatan: TdxLayoutItem;
    cxdtdtTglPanen: TcxDateEdit;
    dxlytmTglPanen: TdxLayoutItem;
    cbbSatuan: TcxComboBox;
    dxlytmSatuan: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxcrncydtJmlPanen: TcxCurrencyEdit;
    dxlytmJmlPanen: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    cxcrncydtHargaPanen: TcxCurrencyEdit;
    dxlytmHargaPanen: TdxLayoutItem;
    cxcrncydtSubTotalPanen: TcxCurrencyEdit;
    dxlytmSubTotalPanen: TdxLayoutItem;
    cxgrdbclmnGrid1DBTableView1tanggalPanen: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jumlahPanen: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1hargaJual: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1subTotalPanen: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    cxlblId: TcxLabel;
    cxdtdtMulai: TcxDateEdit;
    cxdtdtSelesai: TcxDateEdit;
    cxlbl2: TcxLabel;
    btnTampil: TcxButton;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure cxcrncydtJmlPanenPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
    procedure tampilData;
  end;

var
  FormHasilPanen: TFormHasilPanen;

implementation

{$R *.dfm}
uses UnitUtama,UnitDm, ZDataset, ZAbstractRODataset;

procedure TFormHasilPanen.baru;
begin
  cxdtdtTglPanen.Date := Now;
  cbbSatuan.ItemIndex := 0;
  cxcrncydtJmlPanen.Value := 0;
  cxcrncydtHargaPanen.Value := 0;
  cxcrncydtSubTotalPanen.Value := 0;
  btnSimpan.Caption := 'Simpan';
  /// panggil procedure
  tampilData
end;

/// tampil data berdasarkan no kegiatan
procedure TFormHasilPanen.tampilData;
begin
  with DataModule1.zqryhasilPanen do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from hasilpanen where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
   Open;
  end;
end;

procedure TFormHasilPanen.btnKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TFormHasilPanen.btnBaruClick(Sender: TObject);
begin
  baru;
end;

procedure TFormHasilPanen.btnSimpanClick(Sender: TObject);
var
  tgl,user :String;
begin
if (cxcrncydtJmlPanen.Value = 0) then
    MessageDlg('Hasil Panen Tidak Boleh Kosong...!',mtWarning,[mbOK],0)
    else
    begin
     tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
     user := FormUtama.stat1.Panels[0].Text;
     if btnSimpan.Caption = 'Simpan' then
      /// simpan
      begin
       with DataModule1.zqryhasilPanen do
       begin
         Close;
         SQL.Clear;
         SQL.Text := 'insert into hasilpanen (noKegiatanKelolahLahan,tanggalPanen,satuan,jumlahPanen,hargaJual,subTotalPanen,createDate,createUser) values'+
                  '(:noKegiatanKelolahLahan,:tanggalPanen,:satuan,:jumlahPanen,:hargaJual,:subTotalPanen,:createDate,:createUser)';
         Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
         Params.ParamByName('tanggalPanen').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPanen.Date);
         Params.ParamByName('satuan').Value := cbbSatuan.Text;
         Params.ParamByName('jumlahPanen').Value := cxcrncydtJmlPanen.Value;
         Params.ParamByName('hargaJual').Value := cxcrncydtHargaPanen.Value;
         Params.ParamByName('subTotalPanen').Value := cxcrncydtSubTotalPanen.Value;
         Params.ParamByName('createDate').Value := tgl;
         Params.ParamByName('createUser').Value := user;
         ExecSQL;
         SQL.Text := 'select * from hasilpanen';

         SQL.Text := 'select * from hasilpanen where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
         Open;
       end;
      end
      else
      begin
        /// ubah
       with DataModule1.zqryhasilPanen do
       begin
         Close;
         SQL.Clear;
         SQL.Text := 'update hasilpanen set noKegiatanKelolahLahan=:noKegiatanKelolahLahan,tanggalPanen=:tanggalPanen,satuan=:satuan,jumlahPanen=:jumlahPanen,hargaJual=:hargaJual,subTotalPanen=:subTotalPanen,modifDate=:modifDate,modifUser=:modifUser where id=:id';
         Params.ParamByName('id').Text := cxlblId.Caption;
         Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
         Params.ParamByName('tanggalPanen').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPanen.Date);
         Params.ParamByName('satuan').Value := cbbSatuan.Text;
         Params.ParamByName('jumlahPanen').Value := cxcrncydtJmlPanen.Value;
         Params.ParamByName('hargaJual').Value := cxcrncydtHargaPanen.Value;
         Params.ParamByName('subTotalPanen').Value := cxcrncydtSubTotalPanen.Value;
         Params.ParamByName('modifDate').Value := tgl;
         Params.ParamByName('modifUser').Value := user;
         ExecSQL;
         SQL.Text := 'select * from hasilpanen';

         SQL.Text := 'select * from hasilpanen where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
         Open;
       end;
      end;
    end;
end;

procedure TFormHasilPanen.btnUbahClick(Sender: TObject);
begin
if DataModule1.zqryhasilPanen.RecordCount >= 1 then
  begin
   cxlblId.Caption := DataModule1.zqryhasilPanen.Fieldbyname('id').AsString;
   cxtxtdtNoKegiatan.Text := DataModule1.zqryhasilPanen.Fieldbyname('noKegiatanKelolahLahan').AsString;
   cxdtdtTglPanen.Date := DataModule1.zqryhasilPanen.Fieldbyname('tanggalPanen').AsDateTime;
   cbbSatuan.Text := DataModule1.zqryhasilPanen.Fieldbyname('satuan').AsString;
   cxcrncydtJmlPanen.Value := DataModule1.zqryhasilPanen.Fieldbyname('jumlahPanen').Value;
   cxcrncydtHargaPanen.Value := DataModule1.zqryhasilPanen.Fieldbyname('hargaJual').Value;
   cxcrncydtSubTotalPanen.Value := DataModule1.zqryhasilPanen.Fieldbyname('subTotalPanen').Value;
   btnSimpan.Caption := 'ubah';
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormHasilPanen.btnHapusClick(Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqryhasilPanen.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataModule1.zqryhasilPanen.Fieldbyname('tanggalPanen').AsString+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqryhasilPanen['id'];
    //cxlblId.Caption := IntToStr(Kode);
    with DataModule1.zqryhasilPanen do
    begin
    Close;
    SQL.Text:='delete from hasilpanen WHERE id="'+(Kode)+'"';
    ExecSQL;
    SQL.Text:='select * from hasilpanen';
    Open;

    SQL.Text := 'select * from hasilpanen where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
    Open;
    end;
  end else
  abort;
end;
end;

procedure TFormHasilPanen.btnTampilClick(Sender: TObject);
begin
if (cxdtdtMulai.Text = '') or (cxdtdtSelesai.Text='') then
   begin
    /// panggil procedure
    tampilData;
   end
   else
   begin
    /// tampil berdasarkan tanggal
    with DataModule1.zqryhasilPanen do
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from hasilpanen where (tanggalPanen BETWEEN "'+FormatDateTime('YYYY-MM-dd',cxdtdtMulai.Date)+'" and "'+FormatDateTime('YYYY-MM-dd',cxdtdtSelesai.Date+1)+'" )(noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'")';
     Open;
    end;
   end;
end;

procedure TFormHasilPanen.cxcrncydtJmlPanenPropertiesChange(
  Sender: TObject);
begin
  cxcrncydtSubTotalPanen.Value := cxcrncydtJmlPanen.Value * cxcrncydtHargaPanen.Value;
end;

end.
