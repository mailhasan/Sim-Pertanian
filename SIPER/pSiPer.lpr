program pSiPer;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, uSiPer, uDataAset, uModule
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TFSiPertanian, FSiPertanian);
  Application.CreateForm(TFDataAset, FDataAset);
  Application.CreateForm(TFmodule, Fmodule);
  Application.Run;
end.

