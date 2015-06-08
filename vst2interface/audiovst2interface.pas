{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit audioVst2Interface;

interface

uses
  Config, DVSTBasicModule, DVSTCustomModule, DVSTEffect, DVSTEffectFunctions, 
  DVSTHost, DVSTModule, DVSTModuleWithDsp, DVSTModuleWithMidi, 
  DVSTModuleWithPrograms, DVSTParameters, DVSTPluginWizardDialog, 
  DVSTPluginWizardFrm, DVSTPrograms, DVSTShellPlugins, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('DVSTHost', @DVSTHost.Register);
end;

initialization
  RegisterPackage('audioVst2Interface', @Register);
end.
