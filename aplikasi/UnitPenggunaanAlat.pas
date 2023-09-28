unit UnitPenggunaanAlat;

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
  dxLayoutControl, cxCurrencyEdit, cxDropDownEdit, cxMaskEdit, cxCalendar,
  cxTextEdit, cxLabel, StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, ExtCtrls, cxMemo;

type
  TFormPenggunaanAlat = class(TForm)
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
    pnlBawah: TPanel;
    cxlbl1: TcxLabel;
    cxdtdtMulai: TcxDateEdit;
    cxdtdtSelesai: TcxDateEdit;
    cxlbl2: TcxLabel;
    btnTampil: TcxButton;
    pnlAtas: TPanel;
    cxgrdbclmnGrid1DBTableView1tanggalAlat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaAlat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1biayaAlat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1ketarangan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    cxtxtdtNoKegiatan: TcxTextEdit;
    dxlytmNoKegiatan: TdxLayoutItem;
    cxdtdtTglPenggunaan: TcxDateEdit;
    dxlytmTglPenggunaan: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxtxtdtNamaAlat: TcxTextEdit;
    dxlytmNamaAlat: TdxLayoutItem;
    cxcrncydtBiaya: TcxCurrencyEdit;
    dxlytmBiaya: TdxLayoutItem;
    cxmKeterangan: TcxMemo;
    dxlytmKeterangan: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    cbbStatus: TcxComboBox;
    dxlytmStatus: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
    procedure tampilData;
  end;

var
  FormPenggunaanAlat: TFormPenggunaanAlat;

implementation

{$R *.dfm}
uses UnitDm,UnitUtama, ZDataset;

procedure TFormPenggunaanAlat.baru;
begin
  //cxtxtdtNoKegiatan.Text := '';
  cxdtdtTglPenggunaan.Date := Now;
  cxtxtdtNamaAlat.Text := '';
  cxcrncydtBiaya.Value := 0;
  cbbStatus.ItemIndex := 1;
  cxmKeterangan.Text := '';
  btnSimpan.Caption := 'Simpan';

  /// panggil procedure
  tampilData;
end;

procedure TFormPenggunaanAlat.tampilData;
begin
  with DataModule1.zqrypenggunaanalat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from penggunaanalat where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
    Open;
  end;
end;

procedure TFormPenggunaanAlat.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

procedure TFormPenggunaanAlat.btnBaruClick(Sender: TObject);
begin
 baru;
end;

procedure TFormPenggunaanAlat.btnSimpanClick(Sender: TObject);
var
  tgl,user :String;
begin
if (cxdtdtTglPenggunaan.Text = '') or (cxtxtdtNamaAlat.Text='') then
    MessageDlg('Data Tanda * Wajib Di isi...!',mtWarning,[mbOK],0)
    else
    begin
      tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
      user := FormUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'Simpan' then
      /// simpan
      begin
       with DataModule1.zqrypenggunaanalat do
       begin
         Close;
         SQL.Clear;
         SQL.Text := 'insert into penggunaanalat (noKegiatanKelolahLahan,tanggalAlat,namaAlat,biayaAlat,keterangan,status,createDate,createUser) values'+
                  '(:noKegiatanKelolahLahan,:tanggalAlat,:namaAlat,:biayaAlat,:keterangan,:status,:createDate,:createUser)';
         Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
         Params.ParamByName('tanggalAlat').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPenggunaan.Date);
         Params.ParamByName('namaAlat').Value := cxtxtdtNamaAlat.Text;
         Params.ParamByName('biayaAlat').Value := cxcrncydtBiaya.Value;
         Params.ParamByName('keterangan').Value := cxmKeterangan.Text;
         Params.ParamByName('status').Value := cbbStatus.Text;
         Params.ParamByName('createDate').Value := tgl;
         Params.ParamByName('createUser').Value := user;
         ExecSQL;
         SQL.Text := 'select * from penggunaanalat';

         SQL.Text := 'select * from penggunaanalat where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
         Open;
       end;
      end
      else
      begin
        /// ubah
       with DataModule1.zqrypenggunaanalat do
       begin
         Close;
         SQL.Clear;
         SQL.Text := 'update penggunaanalat set noKegiatanKelolahLahan=:noKegiatanKelolahLahan,tanggalAlat=:tanggalAlat,namaAlat=:namaAlat,biayaAlat=:biayaAlat,keterangan=:keterangan,status=:status,modifDate=:modifDate,modifUser=:modifUser where id=:id';
         Params.ParamByName('id').Text := cxlblId.Caption;
         Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
         Params.ParamByName('tanggalAlat').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPenggunaan.Date);
         Params.ParamByName('namaAlat').Value := cxtxtdtNamaAlat.Text;
         Params.ParamByName('biayaAlat').Value := cxcrncydtBiaya.Value;
         Params.ParamByName('keterangan').Value := cxmKeterangan.Text;
         Params.ParamByName('status').Value := cbbStatus.Text;
         Params.ParamByName('modifDate').Value := tgl;
         Params.ParamByName('modifUser').Value := user;
         ExecSQL;
         SQL.Text := 'select * from penggunaanalat';

         SQL.Text := 'select * from penggunaanalat where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
         Open;
       end;
      end;
    end;
end;

procedure TFormPenggunaanAlat.btnUbahClick(Sender: TObject);
begin
if DataModule1.zqrypenggunaanalat.RecordCount >= 1 then
  begin
    cxlblId.Caption := DataModule1.zqrypenggunaanalat.fieldByname('id').AsString;
    cxtxtdtNoKegiatan.Text := DataModule1.zqrypenggunaanalat.fieldByname('noKegiatanKelolahLahan').AsString;
    cxdtdtTglPenggunaan.Date := DataModule1.zqrypenggunaanalat.fieldByname('tanggalAlat').AsDateTime;
    cxtxtdtNamaAlat.Text := DataModule1.zqrypenggunaanalat.fieldByname('namaAlat').AsString;
    cxcrncydtBiaya.Value := DataModule1.zqrypenggunaanalat.fieldByname('biayaAlat').AsCurrency;
    cxmKeterangan.Text :=   DataModule1.zqrypenggunaanalat.fieldByname('keterangan').AsString;
    cbbStatus.Text :=      DataModule1.zqrypenggunaanalat.fieldByname('status').AsString;
    btnSimpan.Caption := 'Ubah'; 
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbYes],0);
end;

procedure TFormPenggunaanAlat.btnHapusClick(Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqrypenggunaanalat.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataModule1.zqrypenggunaanalat.Fieldbyname('tanggalAlat').AsString+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqrypenggunaanalat['id'];
    //cxlblId.Caption := IntToStr(Kode);
    with DataModule1.zqrypenggunaanalat do
    begin
    Close;
    SQL.Text:='delete from penggunaanalat WHERE id="'+(Kode)+'"';
    ExecSQL;
    SQL.Text:='select * from penggunaanalat';
    Open;

    SQL.Text := 'select * from penggunaanalat where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
    Open;
    end;
  end else
  abort;
end;
end;

procedure TFormPenggunaanAlat.btnTampilClick(Sender: TObject);
begin
if (cxdtdtMulai.Text = '') or (cxdtdtSelesai.Text='') then
   begin
    /// panggil procedure
    tampilData;
   end
   else
   begin
    /// tampil berdasarkan tanggal
    with DataModule1.zqrypenggunaanalat do
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from penggunaanalat where (tanggalAlat BETWEEN "'+FormatDateTime('YYYY-MM-dd',cxdtdtMulai.Date)+'" and "'+FormatDateTime('YYYY-MM-dd',cxdtdtSelesai.Date+1)+'" ) and (noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'")';
     Open;
    end;
   end;
end;

end.
