unit UnitDataLokasiLahan;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCalendar, cxMemo;

type
  TFormDaftarDataLokasiLahan = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnTambah: TcxButton;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    btnKeluar: TcxButton;
    cxlbl1: TcxLabel;
    cxtxtdtPencarian: TcxTextEdit;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1kodeLokasiLahan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1lokasiLahan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tanggalPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    procedure btnTambahClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure cxtxtdtPencarianPropertiesChange(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDaftarDataLokasiLahan: TFormDaftarDataLokasiLahan;

implementation

{$R *.dfm}
uses UnitTambahDatalokasiLahan,UnitDm, Math, ZDataset;

procedure TFormDaftarDataLokasiLahan.btnTambahClick(Sender: TObject);
begin
  Application.CreateForm(TFormDataLokasiLahan, FormDataLokasiLahan);
  FormDataLokasiLahan.baru;
  FormDataLokasiLahan.ShowModal;
end;

procedure TFormDaftarDataLokasiLahan.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

procedure TFormDaftarDataLokasiLahan.FormShow(Sender: TObject);
begin
  cxtxtdtPencarian.Text := '';
end;

procedure TFormDaftarDataLokasiLahan.btnUbahClick(Sender: TObject);
begin
 If DataModule1.zqryLahan.RecordCount >= 1 then
    begin
     Application.CreateForm(TFormDataLokasiLahan, FormDataLokasiLahan);
     with FormDataLokasiLahan do
      begin
        cxtxtdtKodeLokasiLahan.Text :=  DataModule1.zqryLahan.Fieldbyname('kodeLokasiLahan').AsString;
        cxtxtdtLokasiLahan.Text := DataModule1.zqryLahan.Fieldbyname('lokasiLahan').AsString;
        cxdtdtTglPembelian.Text := DataModule1.zqryLahan.Fieldbyname('tanggalPembelian').AsString;
        cbbStatus.Text :=  DataModule1.zqryLahan.Fieldbyname('status').AsString;
        btnSimpan.Caption := 'Ubah';
        Show;
      end;
    end
 else
    MessageDlg('Data Tidak Di Temukan...',mtWarning,[mbOK],0);
end;

procedure TFormDaftarDataLokasiLahan.cxtxtdtPencarianPropertiesChange(
  Sender: TObject);
begin
if cxtxtdtPencarian.Text = '' then
  begin
   with DataModule1.zqryLahan do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from lahan';
      Open;
    end;
  end
else
  begin
   with DataModule1.zqryLahan do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from lahan where lokasiLahan like "%'+cxtxtdtPencarian.Text+'%"';
      Open;
    end;
  end;
end;

procedure TFormDaftarDataLokasiLahan.btnHapusClick(Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqryLahan.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataModule1.zqryLahan['lokasiLahan']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqryLahan['kodeLokasiLahan'];
    with DataModule1.zqryLahan do
    begin
    Close;
    SQL.Text:='update lahan set status="tidak aktif" WHERE kodeLokasiLahan="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from lahan';
    Open;
  end;
  end else
  abort;
end;
end;

end.
