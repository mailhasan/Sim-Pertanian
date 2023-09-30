unit UnitDaftarDataPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDropDownEdit, cxBlobEdit, cxContainer,
  Menus, StdCtrls, cxButtons, cxTextEdit, cxLabel;

type
  TFormDAFTARDATAPEGAWAI = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1nama: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    cxlbl1: TcxLabel;
    cxtxtdtPencarian: TcxTextEdit;
    btnTambah: TcxButton;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    btnKeluar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxtxtdtPencarianPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDAFTARDATAPEGAWAI: TFormDAFTARDATAPEGAWAI;

implementation

{$R *.dfm}
uses UnitDm, ZDataset,UnitTambahDataPegawai;

procedure TFormDAFTARDATAPEGAWAI.FormShow(Sender: TObject);
begin
  cxtxtdtPencarian.Text := '';
end;

procedure TFormDAFTARDATAPEGAWAI.cxtxtdtPencarianPropertiesChange(
  Sender: TObject);
begin
if cxtxtdtPencarian.Text = '' then
  begin
   with DataModule1.zqryPegawai do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from pegawai';
    Open;
   end;
  end
  else
  begin
   with DataModule1.zqryPegawai do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from pegawai where nama like "%'+cxtxtdtPencarian.Text+'%"';
    Open;
   end;
  end;
end;

procedure TFormDAFTARDATAPEGAWAI.btnTambahClick(Sender: TObject);
begin
 Application.CreateForm(TFormTambahDataPegawai, FormTambahDataPegawai);
 FormTambahDataPegawai.baru;
 FormTambahDataPegawai.ShowModal;
end;

procedure TFormDAFTARDATAPEGAWAI.btnUbahClick(Sender: TObject);
var
  st:string;
begin
if DataModule1.zqryPegawai.RecordCount >= 1 then
  begin
   Application.CreateForm(TFormTambahDataPegawai, FormTambahDataPegawai);
   with FormTambahDataPegawai do
   begin
     cxtxtdtNama.Text := DataModule1.zqryPegawai.FieldByname('nama').AsString;
     if DataModule1.zqryPegawai.FieldByName('status').AsBoolean = true then
        st := 'y'
     else
        st := 'n';
     cbbStatus.Text := st;
     cxlblId.Caption := DataModule1.zqryPegawai.FieldByname('id').AsString;
     btnSimpan.Caption := 'Ubah';
     ShowModal;
   end;
  end
  else
  MessageDlg('Data Tidak Di Temukan..!',mtWarning,[mbOK],0);
end;

procedure TFormDAFTARDATAPEGAWAI.btnHapusClick(Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqryPegawai.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataModule1.zqryPegawai['nama']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqryPegawai['id'];
    with DataModule1.zqryPegawai do
    begin
    Close;
    SQL.Text:='update pegawai set status="tidak aktif" WHERE id="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from pegawai';
    Open;
  end;
  end else
  abort;
end;
end;

procedure TFormDAFTARDATAPEGAWAI.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

end.
