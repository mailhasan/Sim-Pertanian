unit UnitTambahDataPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters, Menus,
  StdCtrls, cxButtons, dxLayoutControl, cxMaskEdit, cxDropDownEdit,
  cxTextEdit, ExtCtrls, cxLabel;

type
  TFormTambahDataPegawai = class(TForm)
    pnlBawah: TPanel;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnKeluar: TcxButton;
    pnlAtas: TPanel;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxtxtdtNama: TcxTextEdit;
    dxlytmNama: TdxLayoutItem;
    cbbStatus: TcxComboBox;
    dxlytmStatus: TdxLayoutItem;
    cxlblId: TcxLabel;
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
  FormTambahDataPegawai: TFormTambahDataPegawai;

implementation

uses UnitDm,UnitUtama;

{$R *.dfm}

procedure TFormTambahDataPegawai.baru;
begin
  cxtxtdtNama.Text := '';
  cbbStatus.ItemIndex := 0;
  btnSimpan.Caption := 'Simpan';
end;

procedure TFormTambahDataPegawai.btnBaruClick(Sender: TObject);
begin
  baru;
end;

procedure TFormTambahDataPegawai.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
if cxtxtdtNama.Text = '' then
  MessageDlg('Data Tidak Boleh Kosong...!',mtWarning,[mbOK],0)
  else
  begin
  tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
  user := FormUtama.stat1.Panels[0].Text;
  if btnSimpan.Caption = 'Simpan' then
    begin
     with DataModule1.zqryPegawai do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into pegawai (nama,status,createDate,createUser) values (:nama,:status,:createDate,:createUser)';
      Params.ParamByName('nama').Value := cxtxtdtNama.Text;
      Params.ParamByName('status').Value := cbbStatus.Text;
      Params.ParamByName('createDate').Value := tgl;
      Params.ParamByName('createUser').Value := user;
      ExecSQL;
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
      SQL.Text := 'update pegawai set nama=:nama,status=:status,modifDate=:modifDate,modifUser=:modifUser where id=:id';
      Params.ParamByName('id').Value := cxlblId.Caption;
      Params.ParamByName('nama').Value := cxtxtdtNama.Text;
      Params.ParamByName('status').Value := cbbStatus.Text;
      Params.ParamByName('modifDate').Value := tgl;
      Params.ParamByName('modifUser').Value := user;
      ExecSQL;
      SQL.Text := 'select * from pegawai';
      Open;
     end;
    end;
  end  
end;

procedure TFormTambahDataPegawai.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

end.
