unit UnitDaftarDataPupukObat;

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
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxContainer, cxTextEdit,
  cxLabel, StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ExtCtrls;

type
  TFormDaftarDataPupukObat = class(TForm)
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
    cxgrdbclmnGrid1DBTableView1kodePupukObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaPupukObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1satuan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1stok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    procedure cxtxtdtPencarianPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDaftarDataPupukObat: TFormDaftarDataPupukObat;

implementation

{$R *.dfm}
uses UnitDm,UnitTambahDataPupukObat,UnitUtama, ZDataset;

procedure TFormDaftarDataPupukObat.cxtxtdtPencarianPropertiesChange(
  Sender: TObject);
begin
if (cxtxtdtPencarian.Text = '') then
    begin
     with DataModule1.zqrypupukobat do
     begin
       Close;
       SQL.Clear;
       SQL.Text := 'select * from pupukobat order by kodePupukObat asc';
       Open;
     end;
    end
    else
    begin
     with DataModule1.zqrypupukobat do
     begin
       Close;
       SQL.Clear;
       SQL.Text := 'select * from pupukobat where namaPupukObat like "%'+cxtxtdtPencarian.Text+'%"';
       Open;
     end;
    end;
end;

procedure TFormDaftarDataPupukObat.btnTambahClick(Sender: TObject);
begin
 Application.CreateForm(TFormTambahDataPupukObat, FormTambahDataPupukObat);
 FormTambahDataPupukObat.baru;
 FormTambahDataPupukObat.ShowModal;
end;

procedure TFormDaftarDataPupukObat.FormShow(Sender: TObject);
begin
 cxtxtdtPencarian.Text := '';
end;

procedure TFormDaftarDataPupukObat.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

procedure TFormDaftarDataPupukObat.btnUbahClick(Sender: TObject);
begin
If DataModule1.zqrypupukobat.RecordCount >= 1 then
    begin
     with FormTambahDataPupukObat do
      begin
        cxtxtdtKodePupuk.Text :=  DataModule1.zqrypupukobat.Fieldbyname('kodePupukObat').AsString;
        cxtxtdtNamaObat.Text := DataModule1.zqrypupukobat.Fieldbyname('namaPupukObat').AsString;
        cbbSatuan.Text :=  DataModule1.zqrypupukobat.Fieldbyname('satuan').AsString;
        cxcrncydtStok.Value := DataModule1.zqrypupukobat.Fieldbyname('stok').Value;
        btnSimpan.Caption := 'Ubah';
        ShowModal;
      end;
    end
 else
    MessageDlg('Data Tidak Di Temukan...',mtWarning,[mbOK],0); 
end;

procedure TFormDaftarDataPupukObat.btnHapusClick(Sender: TObject);
var
  Kode:String;
begin
if DataModule1.zqrypupukobat.RecordCount<=0 then
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0) else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataModule1.zqrypupukobat['namaPupukObat']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataModule1.zqrypupukobat['kodePupukObat'];
    with DataModule1.zqrypupukobat do
    begin
    Close;
    SQL.Text:='delete from pupukobat where kodePupukObat="'+Kode+'" ';
    ExecSQL;
    SQL.Text:='select * from pupukobat';
    Open;
    end;
  end else
  abort;
end;
end;

end.
