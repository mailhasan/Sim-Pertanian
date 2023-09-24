unit UnitHapusKegiatanKelolaLahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, cxMemo, cxTextEdit, cxLabel, Menus,
  cxButtons;

type
  TFormHapusKegiatanKelolaLahan = class(TForm)
    cxgrpbx1: TcxGroupBox;
    cxlbl1: TcxLabel;
    cxtxtdtNoKegiatan: TcxTextEdit;
    cxmKeterangan: TcxMemo;
    cxlbl2: TcxLabel;
    btnHapus: TcxButton;
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHapusKegiatanKelolaLahan: TFormHapusKegiatanKelolaLahan;

implementation

{$R *.dfm}
uses UnitDm;

procedure TFormHapusKegiatanKelolaLahan.btnHapusClick(Sender: TObject);
begin
 with DataModule1.zqrykegiatanKelolahLahan do
 begin
  Close;
  SQL.Text:='update kegiatankelolahlahan set status="tidak aktif",keterangan="'+cxmKeterangan.Text+'" WHERE noKegiatanKelolahLahan="'+cxtxtdtNoKegiatan.Text+'"';
  ExecSQL;
  SQL.Text:='select * from kegiatankelolahlahans';
  Open;
 end
end;

end.
