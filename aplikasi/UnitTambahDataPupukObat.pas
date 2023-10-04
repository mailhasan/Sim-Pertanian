unit UnitTambahDataPupukObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, StdCtrls, cxButtons, ExtCtrls,
  dxSkinscxPCPainter, dxLayoutControl, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit;

type
  TFormTambahDataPupukObat = class(TForm)
    pnlBawah: TPanel;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnKeluar: TcxButton;
    cxlblId: TcxLabel;
    pnlAtas: TPanel;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxtxtdtKodePupuk: TcxTextEdit;
    dxlytmKodePupuk: TdxLayoutItem;
    cxtxtdtNamaObat: TcxTextEdit;
    dxlytmNamaObat: TdxLayoutItem;
    cbbSatuan: TcxLookupComboBox;
    dxlytmSatuan: TdxLayoutItem;
    cxcrncydtStok: TcxCurrencyEdit;
    dxlytmStok: TdxLayoutItem;
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FormTambahDataPupukObat: TFormTambahDataPupukObat;

implementation

{$R *.dfm}
uses UnitDm,UnitUtama;

procedure TFormTambahDataPupukObat.baru;
begin
  cxtxtdtKodePupuk.Text := '';
  cxtxtdtNamaObat.Text := '';
  cbbSatuan.Text := '';
  cxcrncydtStok.Value := 0;
  btnSimpan.Caption := 'Simpan';
end;

procedure TFormTambahDataPupukObat.btnBaruClick(Sender: TObject);
begin
 baru;
end;

procedure TFormTambahDataPupukObat.btnSimpanClick(Sender: TObject);
var
  tgl,user :String;
begin
if (cxtxtdtKodePupuk.Text='') or (cxtxtdtNamaObat.Text='') or (cbbSatuan.Text='') then
    MessageDlg('Data Tidak Boleh Kosong...!',mtWarning,[mbOK],0)
    else
    begin
      tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
      user := FormUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'Simpan' then
        begin
         /// simpan
         if DataModule1.zqrypupukobat.Locate('kodePupukObat',cxtxtdtKodePupuk.Text,[])  then
             MessageDlg('Kode Data Sudah Digunakan...!',mtWarning,[mbOK],0)
          else
          begin
            with DataModule1.zqrypupukobat do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into pupukobat (kodePupukObat,namaPupukObat,satuan,stok,createDate,createUser) values (:kodePupukObat,:namaPupukObat,:satuan,:stok,:createDate,:createUser)';
              Params.ParamByName('kodePupukObat').Value := cxtxtdtKodePupuk.Text;
              Params.ParamByName('namaPupukObat').Value := cxtxtdtNamaObat.Text;
              Params.ParamByName('satuan').Value := cbbSatuan.Text;
              Params.ParamByName('stok').Value := cxcrncydtStok.Value;
              Params.ParamByName('createDate').Value := tgl;
              Params.ParamByName('createUser').Value := user;
              ExecSQL;
              SQL.Text := 'select * from pupukobat';
              Open;
            end;
          end;
        end
        else
        begin
         /// update
         with DataModule1.zqrypupukobat do
         begin
          Close;
          SQL.Clear;
          SQL.Text := 'update pupukobat set kodePupukObat=:kodePupukObat,namaPupukObat=:namaPupukObat,satuan=:satuan,stok=:stok,modifDate=:modifDate,modifUser=:modifUser where id:id';
          Params.ParamByName('kodePupukObat').Value := cxtxtdtKodePupuk.Text;
          Params.ParamByName('namaPupukObat').Value := cxtxtdtNamaObat.Text;
          Params.ParamByName('satuan').Value := cbbSatuan.Text;
          Params.ParamByName('stok').Value := cxcrncydtStok.Value;
          Params.ParamByName('modifDate').Value := tgl;
          Params.ParamByName('modifUser').Value := user;
          ExecSQL;
          SQL.Text := 'select * from pupukobat';
          Open;
         end;
        end;
    end;
end;

end.
