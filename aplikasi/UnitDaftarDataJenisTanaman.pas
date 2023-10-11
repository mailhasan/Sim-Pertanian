unit UnitDaftarDataJenisTanaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMemo, Menus, cxContainer,
  cxTextEdit, cxLabel, StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls;

type
  TFormDaftarDataJenisTanaman = class(TForm)
    pnlTengah: TPanel;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    pnlBawah: TPanel;
    btnTambah: TcxButton;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    btnKeluar: TcxButton;
    cxlbl1: TcxLabel;
    cxtxtdtPencarian: TcxTextEdit;
    pnlAtas: TPanel;
    cxgrdbclmnGrid1DBTableView1kodeJenisTanaman: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jenisTanaman: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1cretateDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure cxtxtdtPencarianPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDaftarDataJenisTanaman: TFormDaftarDataJenisTanaman;

implementation

{$R *.dfm}
uses UnitDm,UnitTambahDataJenisTanaman, ZDataset;


procedure TFormDaftarDataJenisTanaman.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

procedure TFormDaftarDataJenisTanaman.FormShow(Sender: TObject);
begin
 cxtxtdtPencarian.Text := '';
end;

procedure TFormDaftarDataJenisTanaman.btnTambahClick(Sender: TObject);
begin
 Application.CreateForm(TFormTambahDataJenisTanaman, FormTambahDataJenisTanaman);
 FormTambahDataJenisTanaman.ShowModal;
end;

procedure TFormDaftarDataJenisTanaman.btnUbahClick(Sender: TObject);
begin
 If DataModule1.zqryJenisTanaman.RecordCount >= 1 then
    begin
    Application.CreateForm(TFormTambahDataJenisTanaman, FormTambahDataJenisTanaman);
     with FormTambahDataJenisTanaman do
      begin
        cxtxtdtKodeJenisTanaman.Text :=  DataModule1.zqryJenisTanaman.Fieldbyname('kodeJenisTanaman').AsString;
        cxtxtdtJenisTanaman.Text := DataModule1.zqryJenisTanaman.Fieldbyname('jenisTanaman').AsString;
        cbbStatus.Text :=  DataModule1.zqryJenisTanaman.Fieldbyname('status').AsString;
        btnSimpan.Caption := 'Ubah';
        ShowModal;
      end;
    end
 else
    MessageDlg('Data Tidak Di Temukan...',mtWarning,[mbOK],0);
end;

procedure TFormDaftarDataJenisTanaman.btnHapusClick(Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqryJenisTanaman.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataModule1.zqryJenisTanaman['jenisTanaman']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqryJenisTanaman['kodeJenisTanaman'];
    with DataModule1.zqryJenisTanaman do
    begin
    Close;
    SQL.Text:='update jenisTanaman set status="tidak aktif" WHERE kodeJenisTanaman="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from jenisTanaman';
    Open;
    end;
  end else
  abort;
end;
end;

procedure TFormDaftarDataJenisTanaman.cxtxtdtPencarianPropertiesChange(
  Sender: TObject);
begin
if cxtxtdtPencarian.Text = '' then
  begin
   with DataModule1.zqryJenisTanaman do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from jenisTanaman';
     Open;
   end;
  end
  else
  begin
   with DataModule1.zqryJenisTanaman do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from jenisTanaman where jenisTanaman like "%'+cxtxtdtPencarian.Text+'%"';
     Open;
   end;
  end;
end;

end.
