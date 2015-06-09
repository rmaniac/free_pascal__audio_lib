unit DAVDBufferMathPascal;

interface

uses DAVDCommon;

{-------------------------------------------------------------------------------------------
EVERYTHING FOR SINGLE
--------------------------------------------------------------------------------------------}
{$J+}
{TYPE: TAVDSingleDynArray}
procedure AddArrays( input1, input2, output: TAVDSingleDynArray;  dim2: integer); overload;
procedure SubArrays( from,   amount, output: TAVDSingleDynArray;  dim2: integer); overload;
procedure MulArrays( input1, input2, output: TAVDSingleDynArray;  dim2: integer); overload;

procedure AddArrays( input1: TAVDSingleDynArray;  input2: single;  output: TAVDSingleDynArray;  dim2: integer); overload;
procedure SubArrays( from:   TAVDSingleDynArray;  amount: single;  output: TAVDSingleDynArray;  dim2: integer); overload;
procedure MulArrays( input1: TAVDSingleDynArray;  input2: single;  output: TAVDSingleDynArray;  dim2: integer); overload;

procedure AddScaledArrays( input1, input2: TAVDSingleDynArray;  factor1, factor2: single;  output: TAVDSingleDynArray;  dim2: integer); overload;
procedure AddModulatedArrays( input1, input2, envelope1, envelope2: TAVDSingleDynArray;  output: TAVDSingleDynArray;  dim2: integer); overload;

procedure MulAddArrays( factor1, factor2, summand, output: TAVDSingleDynArray;  dim2: integer); overload;
procedure MulAddArrays( factor1: TAVDSingleDynArray;  factor2: single;  summand, output: TAVDSingleDynArray;  dim2: integer); overload;
procedure MulAddArrays( factor1, factor2: TAVDSingleDynArray;  summand: single;  output: TAVDSingleDynArray;  dim2: integer); overload;
procedure MulAddArrays( factor1: TAVDSingleDynArray;  factor2, summand: single;  output: TAVDSingleDynArray;  dim2: integer); overload;

procedure AddMulArrays( summand1, summand2, factor, output: TAVDSingleDynArray;  dim2: integer); overload;
procedure AddMulArrays( summand1: TAVDSingleDynArray;  summand2: single;  factor, output: TAVDSingleDynArray;  dim2: integer); overload;
procedure AddMulArrays( summand1, summand2: TAVDSingleDynArray;  factor: single;  output: TAVDSingleDynArray;  dim2: integer); overload;
procedure AddMulArrays( summand1: TAVDSingleDynArray;  summand2, factor: single;  output: TAVDSingleDynArray;  dim2: integer); overload;

procedure GetPeaks( input: TAVDSingleDynArray; var outputmin, outputmax: Single;  dim2: integer); overload;
procedure GetSums( input: TAVDSingleDynArray; var outputmin, outputmax: Single;  dim2: integer); overload;

{TYPE: TAVDArrayOfSingleDynArray}
procedure AddArrays( input1, input2, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);  overload;
procedure SubArrays( from,   amount, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);  overload;
procedure MulArrays( input1, input2, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);  overload;

procedure AddArrays( input1: TAVDArrayOfSingleDynArray;  input2:single;
                     output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure SubArrays( from:   TAVDArrayOfSingleDynArray;  amount:single;
                     output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure MulArrays( input1: TAVDArrayOfSingleDynArray;  input2:single;
                     output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;


procedure MulAddArrays( factor1, factor2, summand, output: TAVDArrayOfSingleDynArray;
                        dim1, dim2: integer); overload;
procedure MulAddArrays( factor1: TAVDArrayOfSingleDynArray;  factor2: single;
                        summand, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure MulAddArrays( factor1, factor2: TAVDArrayOfSingleDynArray;  summand: single;
                        output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure MulAddArrays( factor1: TAVDArrayOfSingleDynArray;  factor2, summand: single;
                        output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;

procedure AddMulArrays( summand1, summand2, factor, output: TAVDArrayOfSingleDynArray;
                        dim1, dim2: integer); overload;
procedure AddMulArrays( summand1: TAVDArrayOfSingleDynArray;  summand2: single;
                        factor, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure AddMulArrays( summand1, summand2: TAVDArrayOfSingleDynArray;  factor: single;
                        output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure AddMulArrays( summand1: TAVDArrayOfSingleDynArray;  summand2, factor: single;
                        output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;

procedure AddScaledArrays( input1, input2: TAVDArrayOfSingleDynArray;  factor1, factor2: single; output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure AddModulatedArrays( input1, input2, envelope1, envelope2, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;


procedure ClearArrays( output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure CopyArrays( input, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;

// when output has no dimensions use this:
procedure CreateArrayCopy( input: TAVDArrayOfSingleDynArray; out output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;
procedure CreateEmptyArray(out output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer); overload;

procedure GetPeaks( input: TAVDArrayOfSingleDynArray;  outputmin, outputmax: TAVDSingleDynArray;  dim1, dim2: integer); overload;
procedure GetSums( input: TAVDArrayOfSingleDynArray;  outputmin, outputmax: TAVDSingleDynArray;  dim1, dim2: integer); overload;

{-------------------------------------------------------------------------------------------
EVERYTHING AGAIN FOR DOUBLE
--------------------------------------------------------------------------------------------}

{TYPE: TAVDDoubleDynArray}
procedure AddArrays( input1, input2, output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure SubArrays( from,   amount, output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure MulArrays( input1, input2, output: TAVDDoubleDynArray;  dim2: integer); overload;

procedure AddArrays( input1: TAVDDoubleDynArray;  input2: Double;  output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure SubArrays( from:   TAVDDoubleDynArray;  amount: Double;  output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure MulArrays( input1: TAVDDoubleDynArray;  input2: Double;  output: TAVDDoubleDynArray;  dim2: integer); overload;

procedure AddScaledArrays( input1, input2: TAVDDoubleDynArray;  factor1, factor2: Double;  output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure AddModulatedArrays( input1, input2, envelope1, envelope2: TAVDDoubleDynArray;  output: TAVDDoubleDynArray;  dim2: integer); overload;

procedure MulAddArrays( factor1, factor2, summand, output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure MulAddArrays( factor1: TAVDDoubleDynArray;  factor2: Double;  summand, output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure MulAddArrays( factor1, factor2: TAVDDoubleDynArray;  summand: Double;  output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure MulAddArrays( factor1: TAVDDoubleDynArray;  factor2, summand: Double;  output: TAVDDoubleDynArray;  dim2: integer); overload;

procedure AddMulArrays( summand1, summand2, factor, output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure AddMulArrays( summand1: TAVDDoubleDynArray;  summand2: Double;  factor, output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure AddMulArrays( summand1, summand2: TAVDDoubleDynArray;  factor: Double;  output: TAVDDoubleDynArray;  dim2: integer); overload;
procedure AddMulArrays( summand1: TAVDDoubleDynArray;  summand2, factor: Double;  output: TAVDDoubleDynArray;  dim2: integer); overload;

procedure GetPeaks( input: TAVDDoubleDynArray; var outputmin, outputmax: Double;  dim2: integer); overload;
procedure GetSums( input: TAVDDoubleDynArray; var outputmin, outputmax: Double;  dim2: integer); overload;


{TYPE: TAVDArrayOfDoubleDynArray}
procedure AddArrays( input1, input2, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);  overload;
procedure SubArrays( from,   amount, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);  overload;
procedure MulArrays( input1, input2, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);  overload;

procedure AddArrays( input1: TAVDArrayOfDoubleDynArray;  input2:Double;
                     output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure SubArrays( from:   TAVDArrayOfDoubleDynArray;  amount:Double;
                     output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure MulArrays( input1: TAVDArrayOfDoubleDynArray;  input2:Double;
                     output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;


procedure MulAddArrays( factor1, factor2, summand, output: TAVDArrayOfDoubleDynArray;
                        dim1, dim2: integer); overload;
procedure MulAddArrays( factor1: TAVDArrayOfDoubleDynArray;  factor2: Double;
                        summand, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure MulAddArrays( factor1, factor2: TAVDArrayOfDoubleDynArray;  summand: Double;
                        output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure MulAddArrays( factor1: TAVDArrayOfDoubleDynArray;  factor2, summand: Double;
                        output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;

procedure AddMulArrays( summand1, summand2, factor, output: TAVDArrayOfDoubleDynArray;
                        dim1, dim2: integer); overload;
procedure AddMulArrays( summand1: TAVDArrayOfDoubleDynArray;  summand2: Double;
                        factor, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure AddMulArrays( summand1, summand2: TAVDArrayOfDoubleDynArray;  factor: Double;
                        output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure AddMulArrays( summand1: TAVDArrayOfDoubleDynArray;  summand2, factor: Double;
                        output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;

procedure AddScaledArrays( input1, input2: TAVDArrayOfDoubleDynArray;  factor1, factor2: Double; output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure AddModulatedArrays( input1, input2, envelope1, envelope2, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;


procedure ClearArrays( output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure CopyArrays( input, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;

// when output has no dimensions use this:
procedure CreateArrayCopy( input: TAVDArrayOfDoubleDynArray; out output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;
procedure CreateEmptyArray(out output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer); overload;

procedure SetDimensions(var output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);

procedure GetPeaks( input: TAVDArrayOfDoubleDynArray;  outputmin, outputmax: TAVDDoubleDynArray;  dim1, dim2: integer); overload;
procedure GetSums( input: TAVDArrayOfDoubleDynArray;  outputmin, outputmax: TAVDDoubleDynArray;  dim1, dim2: integer); overload;

implementation


{-------------------------------------------------------------------------------------------
EVERYTHING FOR SINGLE
--------------------------------------------------------------------------------------------}
procedure AddArrays( input1, input2, output: TAVDSingleDynArray; dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] + input2[j];
end;

procedure SubArrays( from, amount, output: TAVDSingleDynArray;  dim2: integer);
var input1: TAVDSingleDynArray absolute from;
    input2: TAVDSingleDynArray absolute amount;
    outp: TAVDSingleDynArray absolute output;
    j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] - input2[j];
end;

procedure MulArrays( input1, input2,output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] * input2[j];
end;

procedure AddArrays( input1: TAVDSingleDynArray;  input2: single;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] + input2;
end;

procedure SubArrays( from:   TAVDSingleDynArray;  amount: single;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := from[j] - amount;
end;

procedure MulArrays( input1: TAVDSingleDynArray;  input2: single;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] * input2;
end;


procedure MulAddArrays( factor1, factor2, summand, output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := factor1[j] * factor2[j] + summand[j];
end;

procedure MulAddArrays( factor1: TAVDSingleDynArray;  factor2: single;  summand, output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := factor1[j] * factor2 + summand[j];
end;

procedure MulAddArrays( factor1, factor2: TAVDSingleDynArray;  summand: single;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := factor1[j] * factor2[j] + summand;
end;

procedure MulAddArrays( factor1: TAVDSingleDynArray;  factor2, summand: single;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := factor1[j] * factor2 + summand;
end;

procedure AddMulArrays( summand1, summand2, factor, output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := (summand1[j] + summand2[j]) * factor[j];
end;

procedure AddMulArrays( summand1: TAVDSingleDynArray;  summand2: single;  factor, output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := (summand1[j] + summand2) * factor[j];
end;

procedure AddMulArrays( summand1, summand2: TAVDSingleDynArray;  factor: single;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := (summand1[j] + summand2[j]) * factor;
end;

procedure AddMulArrays( summand1: TAVDSingleDynArray;  summand2, factor: single;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := (summand1[j] + summand2) * factor;
end;




procedure AddScaledArrays( input1, input2: TAVDSingleDynArray;  factor1, factor2: single;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j]*factor1 + input2[j]*factor2;
end;



procedure AddModulatedArrays( input1, input2, envelope1, envelope2: TAVDSingleDynArray;  output: TAVDSingleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j]*envelope1[j] + input2[j]*envelope2[j];
end;





procedure AddArrays( input1,input2, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddArrays(input1[i], input2[i], output[i], dim2);
end;

procedure SubArrays( from, amount, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do SubArrays(from[i], amount[i], output[i], dim2);
end;

procedure MulArrays( input1, input2, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulArrays(input1[i], input2[i], output[i], dim2);
end;





procedure AddArrays( input1: TAVDArrayOfSingleDynArray;  input2: single;  output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddArrays(input1[i], input2, output[i], dim2);
end;


procedure SubArrays( from: TAVDArrayOfSingleDynArray;  amount: single;  output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do SubArrays(from[i], amount, output[i], dim2);
end;

procedure MulArrays( input1: TAVDArrayOfSingleDynArray;  input2: single;  output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulArrays(input1[i], input2, output[i], dim2);
end;





procedure MulAddArrays( factor1, factor2, summand, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulAddArrays(factor1[i], factor2[i], summand[i], output[i], dim2);
end;

procedure MulAddArrays( factor1: TAVDArrayOfSingleDynArray;  factor2: single;
                        summand, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulAddArrays(factor1[i], factor2, summand[i], output[i], dim2);
end;

procedure MulAddArrays( factor1, factor2: TAVDArrayOfSingleDynArray;  summand: single;
                        output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulAddArrays(factor1[i], factor2[i], summand, output[i], dim2);
end;

procedure MulAddArrays( factor1: TAVDArrayOfSingleDynArray;  factor2, summand: single;
                        output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulAddArrays(factor1[i], factor2, summand, output[i], dim2);
end;




procedure AddMulArrays( summand1, summand2, factor, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddMulArrays(summand1[i], summand2[i], factor[i], output[i], dim2);
end;

procedure AddMulArrays( summand1: TAVDArrayOfSingleDynArray;  summand2: single;  factor, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddMulArrays(summand1[i], summand2, factor[i], output[i], dim2);
end;

procedure AddMulArrays( summand1, summand2: TAVDArrayOfSingleDynArray;  factor: single;  output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddMulArrays(summand1[i], summand2[i], factor, output[i], dim2);
end;

procedure AddMulArrays( summand1: TAVDArrayOfSingleDynArray;  summand2, factor: single;  output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddMulArrays(summand1[i], summand2, factor, output[i], dim2);
end;



procedure AddScaledArrays( input1, input2: TAVDArrayOfSingleDynArray;  factor1, factor2: single; output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddScaledArrays(input1[i], input2[i], factor1, factor2, output[i], dim2);
end;




procedure AddModulatedArrays( input1, input2, envelope1, envelope2, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddModulatedArrays(input1[i], input2[i], envelope1[i], envelope2[i], output[i], dim2);
end;




procedure ClearArrays( output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do Fillchar(output[i,0], dim2 * SizeOf(Single),0);
end;




procedure CopyArrays( input, output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do move(input[i,0], output[i,0], dim2 * SizeOf(Single));
end;


procedure CreateArrayCopy( input: TAVDArrayOfSingleDynArray; out output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
begin
  SetLength(output, dim1, dim2);
  CopyArrays(input, output, dim1, dim2);
end;

procedure CreateEmptyArray(out output: TAVDArrayOfSingleDynArray;  dim1, dim2: integer);
begin
  SetLength(output, dim1, dim2);
  ClearArrays(output, dim1, dim2);
end;








{-------------------------------------------------------------------------------------------
EVERYTHING AGAIN FOR DOUBLE
--------------------------------------------------------------------------------------------}

procedure AddArrays( input1, input2, output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] + input2[j];
end;

procedure SubArrays( from, amount, output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := from[j] - amount[j];
end;

procedure MulArrays( input1, input2,output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] * input2[j];
end;

procedure AddArrays( input1: TAVDDoubleDynArray;  input2: Double;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] + input2;
end;

procedure SubArrays( from:   TAVDDoubleDynArray;  amount: Double;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := from[j] - amount;
end;

procedure MulArrays( input1: TAVDDoubleDynArray;  input2: Double;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j] * input2;
end;


procedure MulAddArrays( factor1, factor2, summand, output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := factor1[j] * factor2[j] + summand[j];
end;

procedure MulAddArrays( factor1: TAVDDoubleDynArray;  factor2: Double;  summand, output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := factor1[j] * factor2 + summand[j];
end;

procedure MulAddArrays( factor1, factor2: TAVDDoubleDynArray;  summand: Double;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := factor1[j] * factor2[j] + summand;
end;

procedure MulAddArrays( factor1: TAVDDoubleDynArray;  factor2, summand: Double;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := factor1[j] * factor2 + summand;
end;

procedure AddMulArrays( summand1, summand2, factor, output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := (summand1[j] + summand2[j]) * factor[j];
end;

procedure AddMulArrays( summand1: TAVDDoubleDynArray;  summand2: Double;  factor, output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := (summand1[j] + summand2) * factor[j];
end;

procedure AddMulArrays( summand1, summand2: TAVDDoubleDynArray;  factor: Double;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := (summand1[j] + summand2[j]) * factor;
end;

procedure AddMulArrays( summand1: TAVDDoubleDynArray;  summand2, factor: Double;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := (summand1[j] + summand2) * factor;
end;




procedure AddScaledArrays( input1, input2: TAVDDoubleDynArray;  factor1, factor2: Double;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j]*factor1 + input2[j]*factor2;
end;



procedure AddModulatedArrays( input1, input2, envelope1, envelope2: TAVDDoubleDynArray;  output: TAVDDoubleDynArray;  dim2: integer);
var j: integer;
begin
  for j:=0 to dim2-1 do
    output[j] := input1[j]*envelope1[j] + input2[j]*envelope2[j];
end;





procedure AddArrays( input1,input2, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddArrays(input1[i], input2[i], output[i], dim2);
end;

procedure SubArrays( from, amount, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do SubArrays(from[i], amount[i], output[i], dim2);
end;

procedure MulArrays( input1, input2, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulArrays(input1[i], input2[i], output[i], dim2);
end;





procedure AddArrays( input1: TAVDArrayOfDoubleDynArray;  input2: Double;  output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddArrays(input1[i], input2, output[i], dim2);
end;


procedure SubArrays( from: TAVDArrayOfDoubleDynArray;  amount: Double;  output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do SubArrays(from[i], amount, output[i], dim2);
end;

procedure MulArrays( input1: TAVDArrayOfDoubleDynArray;  input2: Double;  output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulArrays(input1[i], input2, output[i], dim2);
end;





procedure MulAddArrays( factor1, factor2, summand, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulAddArrays(factor1[i], factor2[i], summand[i], output[i], dim2);
end;

procedure MulAddArrays( factor1: TAVDArrayOfDoubleDynArray;  factor2: Double;
                        summand, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulAddArrays(factor1[i], factor2, summand[i], output[i], dim2);
end;

procedure MulAddArrays( factor1, factor2: TAVDArrayOfDoubleDynArray;  summand: Double;
                        output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulAddArrays(factor1[i], factor2[i], summand, output[i], dim2);
end;

procedure MulAddArrays( factor1: TAVDArrayOfDoubleDynArray;  factor2, summand: Double;
                        output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do MulAddArrays(factor1[i], factor2, summand, output[i], dim2);
end;




procedure AddMulArrays( summand1, summand2, factor, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddMulArrays(summand1[i], summand2[i], factor[i], output[i], dim2);
end;

procedure AddMulArrays( summand1: TAVDArrayOfDoubleDynArray;  summand2: Double;  factor, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddMulArrays(summand1[i], summand2, factor[i], output[i], dim2);
end;

procedure AddMulArrays( summand1, summand2: TAVDArrayOfDoubleDynArray;  factor: Double;  output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddMulArrays(summand1[i], summand2[i], factor, output[i], dim2);
end;

procedure AddMulArrays( summand1: TAVDArrayOfDoubleDynArray;  summand2, factor: Double;  output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddMulArrays(summand1[i], summand2, factor, output[i], dim2);
end;



procedure AddScaledArrays( input1, input2: TAVDArrayOfDoubleDynArray;  factor1, factor2: Double; output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddScaledArrays(input1[i], input2[i], factor1, factor2, output[i], dim2);
end;




procedure AddModulatedArrays( input1, input2, envelope1, envelope2, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do AddModulatedArrays(input1[i], input2[i], envelope1[i], envelope2[i], output[i], dim2);
end;




procedure ClearArrays( output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do Fillchar(output[i,0], dim2 * SizeOf(Double),0);
end;




procedure CopyArrays( input, output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do move(input[i,0], output[i,0], dim2 * SizeOf(Double))
end;

procedure CreateArrayCopy( input: TAVDArrayOfDoubleDynArray; out output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
begin
  SetLength(output, dim1, dim2);
  CopyArrays(input, output, dim1, dim2);
end;

procedure CreateEmptyArray(out output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
begin
  SetLength(output, dim1, dim2);
  ClearArrays(output, dim1, dim2);
end;   

procedure SetDimensions(var output: TAVDArrayOfDoubleDynArray;  dim1, dim2: integer);
begin
  setlength(output, dim1, dim2);
end;

procedure GetPeaks( input: TAVDSingleDynArray; var outputmin, outputmax: Single;  dim2: integer);
var j: integer;
begin
  outputmin := input[0];
  outputmax := input[0];
  for j:=1 to dim2-1 do
  begin
    if      outputmin>input[j] then outputmin := input[j]
    else if outputmax<input[j] then outputmax := input[j];
  end;
end;

procedure GetSums( input: TAVDSingleDynArray; var outputmin, outputmax: Single;  dim2: integer);
var j: integer;
begin
  outputmin := 0;
  outputmax := 0;
  for j:=1 to dim2-1 do
  begin
    if input[j]<0 then outputmin := outputmin + input[j]
    else               outputmax := outputmax + input[j];
  end;
end;

procedure GetPeaks( input: TAVDDoubleDynArray; var outputmin, outputmax: Double;  dim2: integer);
var j: integer;
begin
  outputmin := input[0];
  outputmax := input[0];
  for j:=1 to dim2-1 do
  begin
    if      outputmin>input[j] then outputmin := input[j]
    else if outputmax<input[j] then outputmax := input[j];
  end;
end;

procedure GetSums( input: TAVDDoubleDynArray; var outputmin, outputmax: Double;  dim2: integer);
var j: integer;
begin
  outputmin := 0;
  outputmax := 0;
  for j:=1 to dim2-1 do
  begin
    if input[j]<0 then outputmin := outputmin + input[j]
    else               outputmax := outputmax + input[j];
  end;
end;

procedure GetPeaks( input: TAVDArrayOfSingleDynArray;  outputmin, outputmax: TAVDSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do
    GetPeaks(input[i], outputmin[i], outputmax[i], dim2);
end;

procedure GetSums( input: TAVDArrayOfSingleDynArray;  outputmin, outputmax: TAVDSingleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do
    GetSums(input[i], outputmin[i], outputmax[i], dim2);
end;

procedure GetPeaks( input: TAVDArrayOfDoubleDynArray;  outputmin, outputmax: TAVDDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do
    GetPeaks(input[i], outputmin[i], outputmax[i], dim2);
end;

procedure GetSums( input: TAVDArrayOfDoubleDynArray;  outputmin, outputmax: TAVDDoubleDynArray;  dim1, dim2: integer);
var i: integer;
begin
  for i:=0 to dim1-1 do
    GetSums(input[i], outputmin[i], outputmax[i], dim2);
end;


end.
