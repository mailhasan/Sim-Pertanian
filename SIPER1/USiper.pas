unit USiper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, XPMan, ComCtrls, Menus;

type
  TFSiper = class(TForm)
    pnlTengah: TPanel;
    img1: TImage;
    pnlatas: TPanel;
    lbl1: TLabel;
    xpmnfst1: TXPManifest;
    statSiper: TStatusBar;
    mmSiper: TMainMenu;
    MasterData1: TMenuItem;
    Aser1: TMenuItem;
    Bahan1: TMenuItem;
    LokasiLahan1: TMenuItem;
    Produk1: TMenuItem;
    anaman1: TMenuItem;
    Penanaman1: TMenuItem;
    Penjadwalan1: TMenuItem;
    Kegiatan1: TMenuItem;
    Pembelian1: TMenuItem;
    Bahan2: TMenuItem;
    Aset1: TMenuItem;
    Penjualan1: TMenuItem;
    Produk2: TMenuItem;
    Pengeluaran1: TMenuItem;
    Gaji1: TMenuItem;
    LainLain1: TMenuItem;
    Pendapatan1: TMenuItem;
    Setting1: TMenuItem;
    procedure Aser1Click(Sender: TObject);
    procedure LokasiLahan1Click(Sender: TObject);
    procedure Produk1Click(Sender: TObject);
    procedure anaman1Click(Sender: TObject);
    procedure Bahan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSiper: TFSiper;

implementation

{$R *.dfm}
uses UDataAset,ULokasiLahan,UDataProduk,UDataTanaman,UDataBahan;

procedure TFSiper.Aser1Click(Sender: TObject);
var
  data_A : TFDataAset;
begin
  data_A := TFDataAset.Create(nil);
  data_A.Parent:= pnlTengah;
  data_A.Align := alClient;
  data_A.Show;
end;

procedure TFSiper.LokasiLahan1Click(Sender: TObject);
var
  data_ll : TFLokasiLahan;
begin
  data_ll := TFLokasiLahan.Create(nil);
  data_ll.Parent:= pnlTengah;
  data_ll.Align := alClient;
  data_ll.Show;
end;

procedure TFSiper.Produk1Click(Sender: TObject);
var
  data_p : TFDataProduk;
begin
  data_p := TFDataProduk.Create(nil);
  data_p.Parent:= pnlTengah;
  data_p.Align := alClient;
  data_p.Show;
end;

procedure TFSiper.anaman1Click(Sender: TObject);
var
  data_t : TFDataTanaman;
begin
  data_t := TFDataTanaman.Create(nil);
  data_t.Parent:= pnlTengah;
  data_t.Align := alClient;
  data_t.Show;
end;

procedure TFSiper.Bahan1Click(Sender: TObject);
var
  data_b : TFDataBahan;
begin
  data_b := TFDataBahan.Create(nil);
  data_b.Parent:= pnlTengah;
  data_b.Align := alClient;
  data_b.Show;
end;

end.
