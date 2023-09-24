unit UnitTambahDataJenisTanaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutControl, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TFormTambahDataJenisTanaman = class(TForm)
    pnlBawah: TPanel;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnKeluar: TcxButton;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxtxtdtKodeJenisTanaman: TcxTextEdit;
    dxlytmKodeJenisTanaman: TdxLayoutItem;
    cxtxtdtJenisTanaman: TcxTextEdit;
    dxlytmJenisTanaman: TdxLayoutItem;
    cbbStatus: TcxComboBox;
    dxlytmStatus: TdxLayoutItem;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FormTambahDataJenisTanaman: TFormTambahDataJenisTanaman;

implementation

uses UnitDm,UnitUtama;

{$R *.dfm}

procedure TFormTambahDataJenisTanaman.baru;
begin
  cxtxtdtKodeJenisTanaman.Text := '';
  cxtxtdtJenisTanaman.Text := '';
  cbbStatus.ItemIndex := 0;
  btnSimpan.Caption := 'Simpan';
end;

procedure TFormTambahDataJenisTanaman.btnKeluarClick(Sender: TObject);
begin
 Close;
end;

procedure TFormTambahDataJenisTanaman.btnBaruClick(Sender: TObject);
begin
 baru;
end;

procedure TFormTambahDataJenisTanaman.btnSimpanClick(Sender: TObject);
var
  tgl,user :String;
begin
if (cxtxtdtKodeJenisTanaman.Text='') or (cxtxtdtJenisTanaman.Text='') or (cbbStatus.Text='') then
    MessageDlg('Data Tidak Oleh Kosong...!',mtWarning,[mbOK],0)
    else
    begin
      tgl := FormatDateTime('YYYY-MM-dd HH:MM:SS.SSS',Now);
      user := FormUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'Simpan' then
        begin
          if DataModule1.zqryJenisTanaman.Locate('kodeJenisTanaman',cxtxtdtKodeJenisTanaman.Text,[])  then
             MessageDlg('Kode Data Sudah Digunakan...!',mtWarning,[mbOK],0)
          else
          begin
            with DataModule1.zqryJenisTanaman do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into jenisTanaman (kodeJenisTanaman,jenisTanaman,status,createDate,createUser) values (:kodeJenisTanaman,:jenisTanaman,:status,:createDate,:createUser)';
              Params.ParamByName('kodeJenisTanaman').Value := cxtxtdtKodeJenisTanaman.Text;
              Params.ParamByName('jenisTanaman').Value := cxtxtdtJenisTanaman.Text;
              Params.ParamByName('status').Value := cbbStatus.Text;
              Params.ParamByName('createDate').Value := tgl;
              Params.ParamByName('createUser').Value := user;
              ExecSQL;
              SQL.Text := 'select * from jenisTanaman';
              Open;
            end;
          end;
        end
        else
        begin
          with DataModule1.zqryJenisTanaman do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update jenisTanaman set kodeJenisTanaman="'+cxtxtdtKodeJenisTanaman.Text+'",jenisTanaman="'+cxtxtdtJenisTanaman.Text+'",'+
                        'status="'+cbbStatus.Text+'",modifDate="'+tgl+'",modifUser="'+user+'" where kodeJenisTanaman="'+cxtxtdtKodeJenisTanaman.Text+'" ';
            ExecSQL;
            SQL.Text := 'select * from jenisTanaman';
            Open;
          end;
        end;
    end;
end;

procedure TFormTambahDataJenisTanaman.FormCreate(Sender: TObject);
begin
 baru;
end;

end.
