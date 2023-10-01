unit UnitFormPelaksanaPekerja;

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
  cxData, cxDataStorage, DB, cxDBData, Menus, dxLayoutcxEditAdapters,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutControl, cxMaskEdit, cxCalendar, cxTextEdit, cxLabel, StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox,
  ExtCtrls, cxCurrencyEdit, cxMemo;

type
  TFormPelaksanaPekerja = class(TForm)
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
    cxlblId: TcxLabel;
    dxlytcntrl1: TdxLayoutControl;
    cxtxtdtNoKegiatan: TcxTextEdit;
    cxdtdtTglPekerjaan: TcxDateEdit;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytmNoKegiatan: TdxLayoutItem;
    dxlytmTglPekerjaan: TdxLayoutItem;
    pnlBawah: TPanel;
    cxlbl1: TcxLabel;
    cxdtdtMulai: TcxDateEdit;
    cxdtdtSelesai: TcxDateEdit;
    cxlbl2: TcxLabel;
    btnTampil: TcxButton;
    pnlAtas: TPanel;
    cbbNama: TcxLookupComboBox;
    dxlytmNama: TdxLayoutItem;
    pm1: TPopupMenu;
    ambah1: TMenuItem;
    cxlbl3: TcxLabel;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    cxcrncydtUpah: TcxCurrencyEdit;
    dxlytmUpah: TdxLayoutItem;
    cbbStatus: TcxComboBox;
    dxlytmStatus: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    cxmKeterangan: TcxMemo;
    dxlytmKeterangan: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    cxgrdbclmnGrid1DBTableView1tanggalBekerja: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1nama: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1upah: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    procedure cbbNamaKeyPress(Sender: TObject; var Key: Char);
    procedure ambah1Click(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
    procedure tampilData;
  end;

var
  FormPelaksanaPekerja: TFormPelaksanaPekerja;

implementation

{$R *.dfm}
uses UnitDm, UnitTambahDataPegawai,UnitUtama, ZDataset;

procedure  TFormPelaksanaPekerja.baru;
begin
  cxdtdtTglPekerjaan.Date := Now;
  cbbNama.Text := '';
  cbbStatus.ItemIndex := 1;
  cxcrncydtUpah.Value := 0;
  cxmKeterangan.Text := '';
  btnSimpan.Caption := 'Simpan';

  /// panggil procedure
  tampilData;
end;

procedure TFormPelaksanaPekerja.tampilData;
begin
  with DataModule1.zqrypelaksanapekerja do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from pelaksanapekerja where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
   Open;
  end;
end;

procedure TFormPelaksanaPekerja.cbbNamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;

  end;
end;

procedure TFormPelaksanaPekerja.ambah1Click(Sender: TObject);
begin
 Application.CreateForm(TFormTambahDataPegawai, FormTambahDataPegawai);
 FormTambahDataPegawai.baru;
 FormTambahDataPegawai.ShowModal;
end;

procedure TFormPelaksanaPekerja.btnBaruClick(Sender: TObject);
begin
  ///panggil procedure baru
  baru;
end;

procedure TFormPelaksanaPekerja.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
if (cbbNama.Text='') then
     MessageDlg('Hasil Panen Tidak Boleh Kosong...!',mtWarning,[mbOK],0)
     else
     begin
       tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
     user := FormUtama.stat1.Panels[0].Text;
     if btnSimpan.Caption = 'Simpan' then
      /// simpan
      begin
       with DataModule1.zqrypelaksanapekerja do
       begin
         Close;
         SQL.Clear;
         SQL.Text := 'insert into pelaksanapekerja (noKegiatanKelolahLahan,tanggalBekerja,nama,upah,keterangan,status,createDate,createUser) values'+
                  '(:noKegiatanKelolahLahan,:tanggalBekerja,:nama,:upah,:keterangan,:status,:createDate,:createUser)';
         Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
         Params.ParamByName('tanggalBekerja').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPekerjaan.Date);
         Params.ParamByName('nama').Value := cbbNama.Text;
         Params.ParamByName('upah').Value := cxcrncydtUpah.Value;
         Params.ParamByName('keterangan').Value := cxmKeterangan.Text;
         Params.ParamByName('status').Value := cbbStatus.Text;
         Params.ParamByName('createDate').Value := tgl;
         Params.ParamByName('createUser').Value := user;
         ExecSQL;
         SQL.Text := 'select * from pelaksanapekerja';

         SQL.Text := 'select * from pelaksanapekerja where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
         Open;
       end;
      end
      else
      begin
        /// ubah
       with DataModule1.zqrypelaksanapekerja do
       begin
         Close;
         SQL.Clear;
         SQL.Text := 'update pelaksanapekerja set noKegiatanKelolahLahan=:noKegiatanKelolahLahan,tanggalBekerja=:tanggalBekerja,nama=:nama,upah=:upah,keterangan=:keterangan,status=:status,modifDate=:modifDate,modifUser=:modifUser where id=:id';
         Params.ParamByName('id').Text := cxlblId.Caption;
         Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
         Params.ParamByName('tanggalBekerja').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPekerjaan.Date);
         Params.ParamByName('nama').Value := cbbNama.Text;
         Params.ParamByName('upah').Value := cxcrncydtUpah.Value;
         Params.ParamByName('keterangan').Value := cxmKeterangan.Text;
         Params.ParamByName('status').Value := cbbStatus.Text;
         Params.ParamByName('modifDate').Value := tgl;
         Params.ParamByName('modifUser').Value := user;
         ExecSQL;
         SQL.Text := 'select * from pelaksanapekerja';

         SQL.Text := 'select * from pelaksanapekerja where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
         Open;
       end;
      end;
     end;
end;

procedure TFormPelaksanaPekerja.btnUbahClick(Sender: TObject);
begin
if DataModule1.zqrypelaksanapekerja.RecordCount >= 1 then
  begin
   cxlblId.Caption := DataModule1.zqrypelaksanapekerja.Fieldbyname('id').AsString;
   cxtxtdtNoKegiatan.Text :=  DataModule1.zqrypelaksanapekerja.Fieldbyname('noKegiatanKelolahLahan').AsString;
   cxdtdtTglPekerjaan.Date := DataModule1.zqrypelaksanapekerja.Fieldbyname('tanggalBekerja').AsDateTime;
   cbbNama.Text := DataModule1.zqrypelaksanapekerja.Fieldbyname('nama').AsString;
   cxcrncydtUpah.Value := DataModule1.zqrypelaksanapekerja.Fieldbyname('upah').Value;
   cxmKeterangan.Text :=  DataModule1.zqrypelaksanapekerja.Fieldbyname('keterangan').AsString;
   cbbStatus.Text := DataModule1.zqrypelaksanapekerja.Fieldbyname('status').AsString;
   btnSimpan.Caption := 'Ubah';
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormPelaksanaPekerja.btnHapusClick(Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqrypelaksanapekerja.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataModule1.zqrypelaksanapekerja.Fieldbyname('nama').AsString+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqrypelaksanapekerja['id'];
    //cxlblId.Caption := IntToStr(Kode);
    with DataModule1.zqrypelaksanapekerja do
    begin
    Close;
    SQL.Text:='delete from pelaksanapekerja WHERE id="'+(Kode)+'"';
    ExecSQL;
    SQL.Text:='select * from pelaksanapekerja';
    Open;

    SQL.Text := 'select * from pelaksanapekerja where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
    Open;
    end;
  end else
  abort;
end;
end;

procedure TFormPelaksanaPekerja.btnTampilClick(Sender: TObject);
begin
if (cxdtdtMulai.Text = '') or (cxdtdtSelesai.Text = '') then
  begin
    /// panggil procedure
   tampilData;
  end
  else
  begin
    with DataModule1.zqrypelaksanapekerja do
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from pelaksanapekerja where (tanggalBekerja BETWEEN "'+FormatDateTime('yyyy-MM-dd',cxdtdtMulai.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',cxdtdtSelesai.Date+1)+'" ) and (noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'") ';
     Open;
    end;
  end;
end;

procedure TFormPelaksanaPekerja.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
