unit UnitKelolaLahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  cxMemo, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormKelolaLahan = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    cxlbl1: TcxLabel;
    cxtxtdtPencarian: TcxTextEdit;
    cxgrpbx1: TcxGroupBox;
    cxgrpbx2: TcxGroupBox;
    cxlbl2: TcxLabel;
    cxtxtdtNoKegiatan: TcxTextEdit;
    cxlbl3: TcxLabel;
    cxmKeterangan: TcxMemo;
    pnl1: TPanel;
    btnSimpan: TcxButton;
    btnBaru: TcxButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1keterangankegiatanKelolahLahan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    btnKeluar: TcxButton;
    cxlblid: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxtxtdtPencarianPropertiesChange(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilDataAwal;
  end;

var
  FormKelolaLahan: TFormKelolaLahan;

implementation

{$R *.dfm}
uses UnitDm, ZDataset, ZAbstractRODataset,UnitUtama;

procedure TFormKelolaLahan.tampilDataAwal;
begin
 with DataModule1.zqrydetailKegiatanKelolahLahan do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from detailKegiatanKelolahLahan where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
  Open;
 end;
end;

procedure TFormKelolaLahan.FormShow(Sender: TObject);
begin
 cxtxtdtPencarian.Clear;
 cxmKeterangan.Text := '';
 btnSimpan.Caption := 'Simpan';
 /// panggil procedure
 tampilDataAwal;
end;

procedure TFormKelolaLahan.btnBaruClick(Sender: TObject);
begin
 cxmKeterangan.Text := '';
 btnSimpan.Caption := 'Simpan';
end;

procedure TFormKelolaLahan.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
if (cxmKeterangan.Text = '') then
  MessageDlg('Keterangan Tidak Boleh Kosong...!',mtWarning,[mbOK],0)
  else
  begin
   tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
   user := FormUtama.stat1.Panels[0].Text;
   if btnSimpan.Caption = 'Simpan' then
    begin
     /// simpan
     with DataModule1.zqrydetailKegiatanKelolahLahan do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into detailKegiatanKelolahLahan(noKegiatanKelolahLahan,keterangankegiatanKelolahLahan,createDate,createUser) values'+
                  '(:noKegiatanKelolahLahan,:keterangankegiatanKelolahLahan,:createDate,:createUser)';
      Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
      Params.ParamByName('keterangankegiatanKelolahLahan').Value := cxmKeterangan.Text;
      Params.ParamByName('createDate').Value := tgl;
      Params.ParamByName('createUser').Value := user;
      ExecSQL;
      SQL.Text := 'select * from detailKegiatanKelolahLahan';
      Open;

      SQL.Text := 'select * from detailKegiatanKelolaLahan where noKegiatanKelolahLahan=:noKegiatanKelolahLahan'
     end;

    end
    else
    begin
     /// ubah
     with DataModule1.zqrydetailKegiatanKelolahLahan do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'update detailKegiatanKelolahLahan set keterangankegiatanKelolahLahan=:keterangankegiatanKelolahLahan,modifDate=:modifDate,modifUser=:modifUser where id=:id';
      Params.ParamByName('id').AsString := cxlblid.Caption;
      Params.ParamByName('keterangankegiatanKelolahLahan').Value := cxmKeterangan.Text;
      Params.ParamByName('modifDate').AsString := tgl;
      Params.ParamByName('modifUser').AsString := user;
      ExecSQL;
      SQL.Text := 'select * from detailKegiatanKelolahLahan';
      Open;

      SQL.Text := 'select * from detailKegiatanKelolahLahan where noKegiatanKelolahLahan=:noKegiatanKelolahLahan';
      Params.ParamByName('noKegiatanKelolahLahan').Value := cxtxtdtNoKegiatan.Text;
      Open;
     end;
    end;
  end;
end;

procedure TFormKelolaLahan.cxtxtdtPencarianPropertiesChange(
  Sender: TObject);
begin
if cxtxtdtPencarian.Text = '' then
  begin
   /// panggil procedure
   tampilDataAwal;
  end
  else
  begin
   with DataModule1.zqrydetailKegiatanKelolahLahan do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from detailKegiatanKelolahLahan where (noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'") and (keterangankegiatanKelolahLahan like "%'+cxtxtdtPencarian.Text+'%")';
    Open;
   end;
  end;
end;

procedure TFormKelolaLahan.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

procedure TFormKelolaLahan.btnUbahClick(Sender: TObject);
begin
/// ambil data untuk ubah
if DataModule1.zqrydetailKegiatanKelolahLahan.RecordCount >= 1 then
  begin
   cxmKeterangan.Text := DataModule1.zqrydetailKegiatanKelolahLahan.FieldByname('keterangankegiatanKelolahLahan').AsString;
   cxlblid.Caption := DataModule1.zqrydetailKegiatanKelolahLahan.FieldByname('id').AsString;
   btnSimpan.Caption := 'Ubah';
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormKelolaLahan.btnHapusClick(Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqrydetailKegiatanKelolahLahan.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataModule1.zqrydetailKegiatanKelolahLahan['keterangankegiatanKelolahLahan']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqrydetailKegiatanKelolahLahan['id'];
    with DataModule1.zqrydetailKegiatanKelolahLahan do
    begin
    Close;
    SQL.Text:='delete from detailKegiatanKelolahLahan WHERE id="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from detailKegiatanKelolahLahan';
    Open;

    SQL.Text := 'select * from detailKegiatanKelolahLahan where noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
    Open;
    end;
  end else
  abort;
end;
end;

end.
