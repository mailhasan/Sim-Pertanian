unit UnitTambahPembayaranPembelianPupuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinDarkSide, dxSkinOffice2007Silver, cxGroupBox,
  cxTextEdit, cxCurrencyEdit, cxLabel;

type
  TFormPembayaranPembelianPupuk = class(TForm)
    pnlBawah: TPanel;
    btnSimpan: TcxButton;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    cxgrpbxDataPenjualan: TcxGroupBox;
    cxgrpbxDataPembayaran: TcxGroupBox;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cxcrncydtSisaPembayaran: TcxCurrencyEdit;
    cxtxtdtStatus: TcxTextEdit;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    cxcrncydtSisaPembayaranSelanjutnya: TcxCurrencyEdit;
    cxtxtdtStatusPembayaranSelanjutnya: TcxTextEdit;
    cxtxtdtNoPembelian: TcxTextEdit;
    cxlbl8: TcxLabel;
    cxlbl1: TcxLabel;
    cxcrncydtPembayaran: TcxCurrencyEdit;
    procedure cxcrncydtPembayaranPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FormPembayaranPembelianPupuk: TFormPembayaranPembelianPupuk;

implementation

uses Math,UnitDm,UnitUtama, DB, ZDataset, ZAbstractRODataset,UnitDataPembelianPupukObat;

{$R *.dfm}
/// tambah baru
procedure TFormPembayaranPembelianPupuk.baru;
begin
 cxcrncydtPembayaran.Value := 0;
 cxcrncydtSisaPembayaranSelanjutnya.Value :=0;
 cxtxtdtStatusPembayaranSelanjutnya.Text := '';
end;

procedure TFormPembayaranPembelianPupuk.cxcrncydtPembayaranPropertiesChange(
  Sender: TObject);
begin
 if cxtxtdtStatus.Text = 'lunas' then
  MessageDlg('Status Pembayaran Sudah Lunas',mtWarning,[mbOK],0)
 else
  begin
    cxcrncydtSisaPembayaranSelanjutnya.Value := cxcrncydtSisaPembayaran.Value - cxcrncydtPembayaran.Value;
    if cxcrncydtSisaPembayaranSelanjutnya.Value >= cxcrncydtSisaPembayaran.Value then
     cxtxtdtStatusPembayaranSelanjutnya.Text := 'lunas'
    else
     cxtxtdtStatusPembayaranSelanjutnya.Text := 'belum lunas';
  end;

end;

procedure TFormPembayaranPembelianPupuk.btnSimpanClick(Sender: TObject);
begin
if  cxtxtdtStatus.Text = 'lunas' then
  MessageDlg('Status Pembayaran Sudah Lunas...',mtWarning,[mbOK],0)
  else
  begin
    if cxcrncydtPembayaran.Value = 0 then
      begin
        MessageDlg('Nominal Pembayaran Masih 0',mtWarning,[mbOK],0)
      end
    else
      begin
        /// update
        with DataModule1.zqrypembelianPupukObat do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'update pembelianpupukobat set sisaPembayaran=:sisaPembayaran,status=:status,modifDate=:modifDate,modifUser=:modifUser where noPembelian=:noPembelian';
         Params.ParamByName('noPembelian').Value := cxtxtdtNoPembelian.Text;
         Params.ParamByName('sisaPembayaran').Value := cxcrncydtSisaPembayaranSelanjutnya.Value;
         Params.ParamByName('status').Value := cxtxtdtStatusPembayaranSelanjutnya.Text;
         Params.ParamByName('modifDate').Value := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
         Params.ParamByName('modifUser').Value := FormUtama.stat1.Panels[0].Text;
         ExecSQL;
         SQL.Text := 'select * from pembelianpupukobat';
         Open;
        end;
        MessageDlg('Data Berhasil Di Simpan...!',mtWarning,[mbOK],0);
      end;
  end;
end;

procedure TFormPembayaranPembelianPupuk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 FormDaftarDataPembelianPupukObat.btnTampilClick(Sender);
end;

end.
