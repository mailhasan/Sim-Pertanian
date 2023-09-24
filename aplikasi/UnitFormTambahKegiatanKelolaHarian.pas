unit UnitFormTambahKegiatanKelolaHarian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, dxSkinscxPCPainter,
  dxLayoutControl, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxLayoutLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFormTambahKegiatanKelolaHarian = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnKeluar: TcxButton;
    pnlTengah: TPanel;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxtxtdtNoKegiatan: TcxTextEdit;
    dxlytmNoKegiatan: TdxLayoutItem;
    cxdtdtTglMulai: TcxDateEdit;
    dxlytmTglMulai: TdxLayoutItem;
    cxdtdtTglSelesai: TcxDateEdit;
    dxlytmTglSelesai: TdxLayoutItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytwblkndfl1: TdxLayoutWebLookAndFeel;
    cbbLokasiLahan: TcxLookupComboBox;
    dxlytmLokasiLahan: TdxLayoutItem;
    cbbJenisTanaman: TcxLookupComboBox;
    dxlytmJenisTanaman: TdxLayoutItem;
    cbbStatus: TcxComboBox;
    dxlytmStatus: TdxLayoutItem;
    procedure btnBaruClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FormTambahKegiatanKelolaHarian: TFormTambahKegiatanKelolaHarian;

implementation

{$R *.dfm}
uses UnitDm,UnitUtama;

procedure TFormTambahKegiatanKelolaHarian.baru;
begin
 cxtxtdtNoKegiatan.Text := FormatDateTime('ddMMYYYY-hhmmss',Now);
 cxdtdtTglMulai.Date := Now;
 cxdtdtTglSelesai.Text := '';
 cbbLokasiLahan.Text := '';
 cbbJenisTanaman.Text := '';
 cbbStatus.ItemIndex := 0;
 btnSimpan.Caption := 'Simpan';
end;

procedure TFormTambahKegiatanKelolaHarian.btnBaruClick(Sender: TObject);
begin
 baru;
end;

procedure TFormTambahKegiatanKelolaHarian.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

procedure TFormTambahKegiatanKelolaHarian.btnSimpanClick(Sender: TObject);
var
  tgl,user :String;
begin
if (cxdtdtTglMulai.Text ='') or (cbbLokasiLahan.Text='') or (cbbJenisTanaman.Text='') then
    MessageDlg('Data Wajib Di isi...!',mtWarning,[mbOK],0)
    else
    begin
      /// simpan dan update kegiatan kelola harian
      tgl := FormatDateTime('YYYY-MM-dd  HH:MM:SS.SSS',Now);
      user := FormUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'Simpan' then
        begin
          if DataModule1.zqrykegiatanKelolahLahan.Locate('noKegiatanKelolahLahan',cxtxtdtNoKegiatan.Text,[])  then
             MessageDlg('Kode Data Sudah Digunakan...!',mtWarning,[mbOK],0)
          else
          begin
            /// simpan
            with DataModule1.zqrykegiatanKelolahLahan do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into kegiatankelolahlahan (noKegiatanKelolahLahan,tanggalMulaiKegiatan,tanggalSelesaiKegiatan,kodeLokasiLahan,kodeJenisTanam,lokasiLahan,jenisTanam,status,createDate,createUser) values '+
                          '(:noKegiatanKelolahLahan,:tanggalMulaiKegiatan,:tanggalSelesaiKegiatan,:kodeLokasiLahan,:kodeJenisTanam,:lokasiLahan,:jenisTanam,:status,:createDate,:createUser)';
              Params.ParamByName('noKegiatanKelolahLahan').Text := cxtxtdtNoKegiatan.Text;
              Params.ParamByName('tanggalMulaiKegiatan').Value := FormatDateTime('YYYY-MM-dd HH:MM:ss',cxdtdtTglMulai.Date);
              Params.ParamByName('tanggalSelesaiKegiatan').Value := FormatDateTime('YYYY-MM-dd HH:MM:ss',cxdtdtTglSelesai.Date);
              Params.ParamByName('kodeLokasiLahan').Value := cbbLokasiLahan.EditValue;
              Params.ParamByName('kodeJenisTanam').Value := cbbJenisTanaman.EditValue;
              Params.ParamByName('lokasiLahan').Value := cbbLokasiLahan.Text;
              Params.ParamByName('jenisTanam').Value := cbbJenisTanaman.Text;
              Params.ParamByName('status').Value := cbbStatus.Text;
              Params.ParamByName('createDate').Value := tgl;
              Params.ParamByName('createUser').Value := user;
              ExecSQL;
              SQL.Text := 'select * from kegiatankelolahlahan';
              Open;
            end;
          end;
        end
        else
        begin
          /// ubah
          with DataModule1.zqrykegiatanKelolahLahan do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'update kegiatankelolahlahan set tanggalMulaiKegiatan=:tanggalMulaiKegiatan,tanggalSelesaiKegiatan=:tanggalSelesaiKegiatan,'+
                          'kodeLokasiLahan=:kodeLokasiLahan,kodeJenisTanam=:kodeJenisTanam,lokasiLahan=:lokasiLahan,jenisTanam=:jenisTanam,status=:status,'+
                          'modifDate=:modifDate,modifUser=:modifUser where noKegiatanKelolahLahan=:noKegiatanKelolahLahan';
              Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
              Params.ParamByName('tanggalMulaiKegiatan').Value := FormatDateTime('YYYY-MM-dd HH:MM:ss',cxdtdtTglMulai.Date);
              Params.ParamByName('tanggalSelesaiKegiatan').Value := FormatDateTime('YYYY-MM-dd HH:MM:ss',cxdtdtTglSelesai.Date);
              Params.ParamByName('kodeLokasiLahan').Value := cbbLokasiLahan.EditValue;
              Params.ParamByName('kodeJenisTanam').Value := cbbJenisTanaman.EditValue;
              Params.ParamByName('lokasiLahan').Value := cbbLokasiLahan.Text;
              Params.ParamByName('jenisTanam').Value := cbbJenisTanaman.Text;
              Params.ParamByName('status').Value := cbbStatus.Text;
              Params.ParamByName('modifDate').Value := tgl;
              Params.ParamByName('modifUser').Value := user;
              ExecSQL;
              SQL.Text := 'select * from kegiatankelolahlahan';
              Open;
            end;
        end;
    end;
end;

end.
