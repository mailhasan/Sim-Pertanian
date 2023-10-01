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

end.
