unit UDataBahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFDataBahan = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    dbnvgrAset: TDBNavigator;
    pnlAtas: TPanel;
    edtCari: TEdit;
    dbgrdhBahan: TDBGridEh;
    pnlKeluar: TPanel;
    procedure btnKeluarClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure edtCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataBahan: TFDataBahan;

implementation

{$R *.dfm}
uses Umodule, ADODB, DB;

procedure TFDataBahan.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataBahan.pnlKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TFDataBahan.edtCariChange(Sender: TObject);
begin
if (edtCari.Text='') or (edtCari.Text= 'Masukan Nama Bahan')  then
    begin
      with DataModuleSiper.qryBahan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_barang' ;
        Open;
      end;
    end
    else
    begin
      with DataModuleSiper.qryBahan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_barang where barang like "%'+edtCari.Text+'%"' ;
        Open;
      end;
    end;
end;

procedure TFDataBahan.edtCariClick(Sender: TObject);
begin
  edtCari.Clear;
end;

end.
