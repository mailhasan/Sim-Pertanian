unit UDataProduk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFDataProduk = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    dbnvgrAset: TDBNavigator;
    pnlAtas: TPanel;
    dbgrdhProduk: TDBGridEh;
    pnlKeluar: TPanel;
    procedure btnKeluarClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataProduk: TFDataProduk;

implementation

{$R *.dfm}
uses Umodule;

procedure TFDataProduk.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataProduk.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
