{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit audiodsp;

interface

uses
  DDspBaseComponent, DDSPBaseOsc, DDspBesselFilter, DDspButterworthFilter, 
  DDspChebyshevFilter, DDspDFT, DDspDitherNoiseShaper, DDspDynamics, 
  DDspEnvelope, DDspEnvelopeFollower, DDspFFT, DDspFilter, DDspInterpolation, 
  DDspMetronome, DDspMinBlep, DDSPOscAbsSine, DDSPOscNoise, DDSPOscRamp, 
  DDSPOscSaw, DDSPOscSine, DDSPOscSquare, DDspPhaser, DDspRegister, DDSPRemez, 
  DDSPStateVariableFilter, DDspVoice, DDspVoiceController, DDspVoiceList, 
  DDspWaveshaper, DDspWindowing, DspInterfaces, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('audiodsp', @Register);
end.
