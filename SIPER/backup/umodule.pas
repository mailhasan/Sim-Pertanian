unit uModule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, odbcconn, sqldb, db, FileUtil, Forms, Controls, Graphics,
  Dialogs;

type

  { TFmodule }

  TFmodule = class(TForm)
    DataSourceAset: TDataSource;
    ODBCSiper: TODBCConnection;
    SQLAset: TSQLQuery;
    SQLAsethargaPembelian: TFloatField;
    SQLAsetkdAset: TStringField;
    SQLAsetketerangan: TMemoField;
    SQLAsetkondisiPembelian: TMemoField;
    SQLAsetnmAset: TStringField;
    SQLAsetspesifikasi: TMemoField;
    SQLAsettglPembelian: TDateField;
    SQLSiper: TSQLTransaction;
    procedure ODBCSiperAfterConnect(Sender: TObject);
    procedure SQLAsetspesifikasiGetText(Sender: TField; var aText: string;
      DisplayText: Boolean);
  private

  public

  end;

var
  Fmodule: TFmodule;

implementation

{$R *.lfm}

{ TFmodule }

procedure TFmodule.ODBCSiperAfterConnect(Sender: TObject);
begin

end;

procedure TFmodule.SQLAsetspesifikasiGetText(Sender: TField; var aText: string;
  DisplayText: Boolean);
begin
  Text := Copy(SQLAsetspesifikasi.AsString, 1, 200);
end;

end.

