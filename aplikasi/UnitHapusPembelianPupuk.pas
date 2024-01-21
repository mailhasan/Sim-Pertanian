unit UnitHapusPembelianPupuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinDarkSide,
  dxSkinOffice2007Silver, cxLabel, StdCtrls, cxButtons, cxTextEdit,
  cxCurrencyEdit, cxMemo;

type
  TFormHapusPembelianPupuk = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnHapus: TcxButton;
    pnlTengah: TPanel;
    cxtxtdtNoPembelian: TcxTextEdit;
    cxlbl: TcxLabel;
    cxlbl1: TcxLabel;
    cxcrncydtTotalPembelian: TcxCurrencyEdit;
    cxlbl2: TcxLabel;
    cxmKeterangan: TcxMemo;
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHapusPembelianPupuk: TFormHapusPembelianPupuk;

implementation

uses UnitDm;

{$R *.dfm}

procedure TFormHapusPembelianPupuk.btnHapusClick(Sender: TObject);
begin
if cxmKeterangan.Text = '' then
  MessageDlg('Keterangan Harus Di Isi...!',mtWarning,[mbOK],0)
  else
  begin
 /// simpan pembelian pupuk
  with DataModule1.zqrypembelianPupukObat do
  begin
  Close;
  SQL.Clear;
  SQL.Text := 'update pembelianpupukobat set status=:status,keterangan=:keterangan where noPembelian=:noPembelian';
  Params.ParamByName('noPembelian').Value := cxtxtdtNoPembelian.Text;
  Params.ParamByName('status').Value := 'batal';
  Params.ParamByName('keterangan').value := cxmKeterangan.Text;
  ExecSQL;
  SQL.Text := 'select * from pembelianpupukobat';
  Open;
  end;
  MessageDlg('Transaksi Pembelian Pupuk Berhasil Di Hapus...!',mtInformation,[mbOK],0);
  end; 
end;

end.
