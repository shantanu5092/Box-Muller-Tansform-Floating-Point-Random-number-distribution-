//this file is to denormalize IEEE 754
//double precision format. Result output
//is a 9-bit or 10-bit fractional part
//after denorm and a delta corresponding
//to either U1 or U2 signified by a select bit
//sel bit: U1 = 0, U2 = 1; 

module denorm(clk,rst,pushin,num,sel,pushout,vin,z);
input clk, rst, pushin,sel;
input [63:0] num;

output pushout;
output [63:0] delta;
output [9:0] vin;

parameter fbw = 61;
parameter [fbw:0] zero = 0;

reg [63:0] normf,normd;
reg [10:0] diff;
reg [10:0] exp,expd;
reg [fbw:0] fract;
reg [51:0] fractR;

assign vin = fractR;
assign delta = normf;

always @(*) begin

  exp = num[62:52];
  fract = {1'b1,num[51:0],zero[fbw:fbw-53]};
  
  diff = 11'd1022 - exp;
  
  if(diff > 9) begin
    normf = num;
    vin = 0;
  end 
  else begin
    //in case there is a difference with vin possible, append for delta and find vin
  
//     expd = exp + diff;
//     normd = {num[63],expd,fract[fbw-diff:fbw-(diff+51)]}
  
    //get vin by shifting
//     fract = (diff[5])?{32'b0,fract[fbw:32]} : {fract};
//     fract = (diff[4])?{16'b0,fract[fbw:16]} : {fract};   //used for fpadd, shifting for max ~64bits
    fract = (diff[3])?{ 8'b0,fract[fbw:8 ]} : {fract};
    fract = (diff[2])?{ 4'b0,fract[fbw:4 ]} : {fract};
    fract = (diff[1])?{ 2'b0,fract[fbw:2 ]} : {fract};
    fract = (diff[0])?{ 1'b0,fract[fbw:1 ]} : {fract};
  
    if(sel) begin
      vin = fract[fbw:fbw-8];
      
      expd = exp - (11'd9 - diff);
      normd = {1'b0,expd,fract[fbw-9:fbw-(51-9)]};
    end else begin
      vin = fract[fbw:fbw-9];
      
      expd = exp - (11'd10 - diff);
      normd = {1'b0,expd,fract[fbw-10:fbw-(51-10)]};
    end
  
  end
  
end


//change to output denormalized vin for lookup table and normalized delta
