program Chameleon;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, MainForm, imagebutton, Settings, AboutForm, VersionSupport,
  SettingsForm, Win32;

{$R *.res}

begin
  Application.Scaled := True;
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TChameleonForm, ChameleonForm);
  Application.CreateForm(TAboutDialog, AboutDialog);
  Application.CreateForm(TSettingsDialog, SettingsDialog);
  Application.Run;
end.

