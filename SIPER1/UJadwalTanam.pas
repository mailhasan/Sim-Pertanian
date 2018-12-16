unit UJadwalTanam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFJadwalTanam = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    dbgrdhJadwalTanam: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FJadwalTanam: TFJadwalTanam;

implementation

{$R *.dfm}

uses Umodule;

end.
