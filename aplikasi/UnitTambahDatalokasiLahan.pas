unit UnitTambahDatalokasiLahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Menus, StdCtrls, cxButtons;

type
  TFormDataLokasiLahan = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxtxtdtKodeLokasiLahan: TcxTextEdit;
    dxlytmKodeLokasiLahan: TdxLayoutItem;
    cxtxtdtLokasiLahan: TcxTextEdit;
    dxlytmLokasiLahan: TdxLayoutItem;
    cxdtdtTglPembelian: TcxDateEdit;
    dxlytmTglPembelian: TdxLayoutItem;
    cbbStatus: TcxComboBox;
    dxlytmStatus: TdxLayoutItem;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnKeluar: TcxButton;
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FormDataLokasiLahan: TFormDataLokasiLahan;

implementation

{$R *.dfm}
uses UnitDm,UnitUtama,ZDataset;

procedure TFormDataLokasiLahan.baru;
begin
  cxtxtdtKodeLokasiLahan.Text := '';
  cxtxtdtLokasiLahan.Text := '';
  cxdtdtTglPembelian.Text := '';
  cbbStatus.ItemIndex := 0;
  btnSimpan.Caption := 'Simpan';
end;

procedure TFormDataLokasiLahan.btnBaruClick(Sender: TObject);
begin
 baru;
end;

procedure TFormDataLokasiLahan.btnSimpanClick(Sender: TObject);
var
  tgl,user :String;
begin
if (cxtxtdtKodeLokasiLahan.Text='') or (cxtxtdtLokasiLahan.Text='') or (cbbStatus.Text='') then
    MessageDlg('Data Tidak Oleh Kosong...!',mtWarning,[mbOK],0)
    else
    begin
      tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
      ShowMessage(tgl);
      user := FormUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'Simpan' then
        begin
          if DataModule1.zqryLahan.Locate('kodeLokasiLahan',cxtxtdtKodeLokasiLahan.Text,[])  then
             MessageDlg('Kode Data Sudah Digunakan...!',mtWarning,[mbOK],0)
          else
          begin
            with DataModule1.zqryLahan do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into lahan (kodeLokasiLahan,lokasiLahan,tanggalPembelian,status,createDate,createUser) values (:kodeLokasiLahan,:lokasiLahan,:tanggalPembelian,:status,:createDate,:createUser)';
              Params.ParamByName('kodeLokasiLahan').Value := cxtxtdtKodeLokasiLahan.Text;
              Params.ParamByName('lokasiLahan').Value := cxtxtdtLokasiLahan.Text;
              Params.ParamByName('tanggalPembelian').Value := FormatDateTime('YYYY-MM-dd',cxdtdtTglPembelian.Date);
              Params.ParamByName('status').Value := cbbStatus.Text;
              Params.ParamByName('createDate').Value := tgl;
              Params.ParamByName('createUser').Value := user;
              ExecSQL;
              SQL.Text := 'select * from lahan';
              Open;
            end;
          end;
        end
        else
        begin
          with DataModule1.zqryLahan do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update lahan set kodeLokasiLahan="'+cxtxtdtKodeLokasiLahan.Text+'",lokasiLahan="'+cxtxtdtLokasiLahan.Text+'",'+
                        'tanggalPembelian="'+FormatDateTime('YYYY-MM-dd',cxdtdtTglPembelian.Date)+'",modifDate="'+tgl+'",modifUser="'+user+'" where kodeLokasiLahan="'+cxtxtdtKodeLokasiLahan.Text+'" ';
            ExecSQL;
            SQL.Text := 'select * from lahan';
            Open;
          end;
        end;
    end;
end;

procedure TFormDataLokasiLahan.btnKeluarClick(Sender: TObject);
begin
  Close
end;

end.
