//
// This is a simple version of a 64 bit floating point multiplier 
// used in EE287 as a homework problem.
// This is a reduced complexity floating point.  There is no NaN
// overflow, underflow, or infinity values processed.
//
// Inspired by IEEE 754-2008 (Available from the SJSU library to students)
//
// 63  62:52 51:0
// S   Exp   Fract (assumed high order 1)
// 
// Note: all zero exp and fract is a zero 
// 
//

module fpmul(clk,rst,pushin, a,b,c,pushout,r);
input clk,rst;
input pushin; 	        // A valid a,b,c
input [63:0] a,b,c;	// the a,b and c inputs
output [63:0] r;	// the results from this multiply
output pushout;		// indicates we have an answer this cycle

reg sA, sB, sC;		// the signs of the a and b inputs
    
reg [10:0] expA, expB, expC,
           expA_ff, expB_ff, expC_ff,
           expA_ff2, expB_ff2, expC_ff2,
           
           expA_s2, expB_s2, expC_s2;
           
reg [52:0] fractA;
reg [52:0]               fractB, fractC,	// the fraction of A and B  present
                                 fractC_ff,
                                 fractC_ff2,
                                 fractC_ff3,
                                 fractC_ff4,
                                 fractC_ff5,
                                 fractC_ff6 = 0,
                                 
                                 fractC_s6 = 0;
           
reg zeroA,zeroB,zeroC,	// a zero operand (special case for later)
    zeroA_ff,zeroB_ff,zeroC_ff,
    zeroA_ff2,zeroB_ff2,zeroC_ff2,
    zeroA_ff3,zeroB_ff3,zeroC_ff3,
    zeroA_ff4,zeroB_ff4,zeroC_ff4,
    zeroA_ff5,zeroB_ff5,zeroC_ff5,
    zeroA_ff6,zeroB_ff6,zeroC_ff6,
    zeroA_ff7,zeroB_ff7,zeroC_ff7,
    zeroA_ff8,zeroB_ff8,zeroC_ff8,
    zeroA_ff9,zeroB_ff9,zeroC_ff9,
    zeroA_ff10,zeroB_ff10,zeroC_ff10,
    zeroA_ff11,zeroB_ff11,zeroC_ff11,
    zeroA_ff12,zeroB_ff12,zeroC_ff12,
    
    zeroA_s11,zeroB_s11,zeroC_s11;

// result of the multiplication, rounded result, rounding constant
reg [158:0] rres = 0, rconstant = 0,
            mres_ff11 = 0,
            mres_s11 = 0;
            
wire [158:0] mres_s10h;
wire [105:0] mresh;

wire [52:0] wfractA,wfractB,
            wfractC_s6;
            
wire [105:0] wmresh_s5;

reg [105:0] mresh_ff = 0,
            mresh_s6 = 0;
            
reg signres,		// sign of the result
    signres_ff, 
    signres_ff2,
    signres_ff3,
    signres_ff4,
    signres_ff5,
    signres_ff6,
    signres_ff7,
    signres_ff8,
    signres_ff9,
    signres_ff10,
    signres_ff11,
    
    signres_s11;
    
    
reg [10:0] expres,	// the exponent result
           expres_ff, 
           expres_ff2, 
           expres_ff3, 
           expres_ff4, 
           expres_ff5, 
           expres_ff6, 
           expres_ff7, 
           expres_ff8, 
           expres_ff9,
           
           expres_s11;
           
reg [63:0] resout;	// the output value from the always block

reg pushin_s1,
    pushin_s2,
    pushin_s3,
    pushin_s4,
    pushin_s5,
    pushin_s6,
    pushin_s7,
    pushin_s8,
    pushin_s9,
    pushin_s10,
    pushin_s11,
    pushin_s12;

// assign wfractA = fractA;
// assign wfractB = fractB;
// assign wfractC_s6 = fractC_s6;
// assign wmresh_s5 = mresh_s6;

//assign mres = fractA_ff * fractB_ff;  #(53,53)
DW02_mult_4_stage #(53,53)dw_mres(fractA,fractB,1'b0,clk,mresh);

//assign mres_s5h = mres_ff5 * fractC_ff6;  #(106,53)
DW02_mult_5_stage #(106,53)dw_mresC(mresh_ff,fractC_ff4,1'b0,clk,mres_s10h);

assign r=resout;
assign pushout=pushin_s9;

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
  zeroA_ff <= 0;
  zeroB_ff <= 0;
  zeroC_ff <= 0;
  signres_ff <= 0;
  expA_ff <= 0;
  expB_ff <= 0;
  expC_ff <= 0;
  fractC_ff <= 0;
  end else begin
  //flop1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
  zeroA_ff <= #1 zeroA;
  zeroB_ff <= #1 zeroB;
  zeroC_ff <= #1 zeroC;
  signres_ff <= #1 signres;
  expA_ff <= #1 expA;
  expB_ff <= #1 expB;
  expC_ff <= #1 expC;
  fractC_ff <= #1 fractC;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
//flop2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
  zeroA_ff2 <= 0;
  zeroB_ff2 <= 0;
  zeroC_ff2 <= 0;
  signres_ff2 <= 0;
  expA_ff2 <= 0;
  expB_ff2 <= 0;
  expC_ff2 <= 0;
  fractC_ff2 <= 0;
  end else begin
  //flop2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
  zeroA_ff2 <= #1 zeroA_ff;
  zeroB_ff2 <= #1 zeroB_ff;
  zeroC_ff2 <= #1 zeroC_ff;
  signres_ff2 <= #1 signres_ff;
  expA_ff2 <= #1 expA_ff;
  expB_ff2 <= #1 expB_ff;
  expC_ff2 <= #1 expC_ff;
  fractC_ff2 <= #1 fractC_ff;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
  zeroA_ff3 <= 0;
  zeroB_ff3 <= 0;
  zeroC_ff3 <= 0;
  signres_ff3 <= 0;
  expres_ff <= 0;

  fractC_ff3 <= 0;
  end else begin
  //flop3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
  zeroA_ff3 <= #1 zeroA_ff2;
  zeroB_ff3 <= #1 zeroB_ff2;
  zeroC_ff3 <= #1 zeroC_ff2;
  signres_ff3 <= #1 signres_ff2;
  expres_ff <= #1 expres;

  fractC_ff3 <= #1 fractC_ff2;
  end
  
end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
  zeroA_ff4 <= 0;
  zeroB_ff4 <= 0;
  zeroC_ff4 <= 0;
  signres_ff4 <= 0;
  expres_ff2 <= 0;

  fractC_ff4 <= 0;
  end else begin
  //flop4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
  zeroA_ff4 <= #1 zeroA_ff3;
  zeroB_ff4 <= #1 zeroB_ff3;
  zeroC_ff4 <= #1 zeroC_ff3;
  signres_ff4 <= #1 signres_ff3;
  expres_ff2 <= #1 expres_ff;

  fractC_ff4 <= #1 fractC_ff3;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop55555555555555555555555555555555555555555555555555555555555555555555555555555555555555
  zeroA_ff5 <= 0;
  zeroB_ff5 <= 0;
  zeroC_ff5 <= 0;
  signres_ff5 <= 0;
  expres_ff3 <= 0;
  
  fractC_ff5 <= 0;
  mresh_ff <= 0;
  end else begin
  //flop55555555555555555555555555555555555555555555555555555555555555555555555555555555555555
  zeroA_ff5 <= #1 zeroA_ff4;
  zeroB_ff5 <= #1 zeroB_ff4;
  zeroC_ff5 <= #1 zeroC_ff4;
  signres_ff5 <= #1 signres_ff4;
  expres_ff3 <= #1 expres_ff2;
  
  fractC_ff5 <= #1 fractC_ff4;
  mresh_ff <= #1 mresh;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop66666666666666666666666666666666666666666666666666666666666666666666666666666666666666
  zeroA_ff6 <= 0;
  zeroB_ff6 <= 0;
  zeroC_ff6 <= 0;
  signres_ff6 <= 0;
  expres_ff4 <= 0;
  end else begin
  //flop66666666666666666666666666666666666666666666666666666666666666666666666666666666666666
  zeroA_ff6 <= #1 zeroA_ff5;
  zeroB_ff6 <= #1 zeroB_ff5;
  zeroC_ff6 <= #1 zeroC_ff5;
  signres_ff6 <= #1 signres_ff5;
  expres_ff4 <= #1 expres_ff3;
  
  fractC_ff6 <= #1 fractC_ff5;
  
  //mresh_ff <=  mresh;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop7777777777777777777777777777777777777777777777777777777777777777777777777777777777777
  zeroA_ff7 <= 0;
  zeroB_ff7 <= 0;
  zeroC_ff7 <= 0;
  signres_ff7 <= 0;
  expres_ff5 <= 0;
  end else begin
  //flop7777777777777777777777777777777777777777777777777777777777777777777777777777777777777
  zeroA_ff7 <= #1 zeroA_ff6;
  zeroB_ff7 <= #1 zeroB_ff6;
  zeroC_ff7 <= #1 zeroC_ff6;
  signres_ff7 <= #1 signres_ff6;
  expres_ff5 <= #1 expres_ff4;
  
  //mres_ff7 <=  mres_ff6;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop88888888888888888888888888888888888888888888888888888888888888888888888888888888888888
  zeroA_ff8 <= 0;
  zeroB_ff8 <= 0;
  zeroC_ff8 <= 0;
  signres_ff8 <= 0;
  expres_ff6 <= 0;
  end else begin
  //flop88888888888888888888888888888888888888888888888888888888888888888888888888888888888888
  zeroA_ff8 <= #1 zeroA_ff7;
  zeroB_ff8 <= #1 zeroB_ff7;
  zeroC_ff8 <= #1 zeroC_ff7;
  signres_ff8 <= #1 signres_ff7;
  expres_ff6 <= #1 expres_ff5;
  
  //mres_ff8 <=  mres_ff7;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
  zeroA_ff9 <= 0;
  zeroB_ff9 <= 0;
  zeroC_ff9 <= 0;
  signres_ff9 <= 0;
  expres_ff7 <= 0;
  end else begin
  //flop9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
  zeroA_ff9 <= #1 zeroA_ff8;
  zeroB_ff9 <= #1 zeroB_ff8;
  zeroC_ff9 <= #1 zeroC_ff8;
  signres_ff9 <= #1 signres_ff8;
  expres_ff7 <= #1 expres_ff6;
  
  //mres_ff9 <=  mres_ff8;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten
  zeroA_ff10 <= 0;
  zeroB_ff10 <= 0;
  zeroC_ff10 <= 0;
  signres_ff10 <= 0;
  expres_ff8 <= 0;
  end else begin
  //flop_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten_ten
  zeroA_ff10 <= #1 zeroA_ff9;
  zeroB_ff10 <= #1 zeroB_ff9;
  zeroC_ff10 <= #1 zeroC_ff9;
  signres_ff10 <= #1 signres_ff9;
  expres_ff8 <= #1 expres_ff7;
  
  //mres_ff10 <=  mres_ff9;
  end

end

always @(posedge clk or posedge rst) begin
  if(rst) begin
  //flop_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven
  zeroA_ff11 <= 0;
  zeroB_ff11 <= 0;
  zeroC_ff11 <= 0;
  signres_ff11 <= 0;
  expres_ff9 <= 0;
  
  mres_ff11 <= 0;
  end else begin
  //flop_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven_eleven
  zeroA_ff11 <= #1 zeroA_ff10;
  zeroB_ff11 <= #1 zeroB_ff10;
  zeroC_ff11 <= #1 zeroC_ff10;
  signres_ff11 <= #1 signres_ff10;
  expres_ff9 <= #1 expres_ff8;
  
  mres_ff11 <= #1 mres_s10h;
  end

end


//
//>>>>*PUSHES!<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//
always @(posedge clk or posedge rst) begin
  if(rst) begin
  //pushes
  pushin_s1 <= 0;
  pushin_s2 <= 0;
  pushin_s3 <= 0;
  pushin_s4 <= 0;
  pushin_s5 <= 0;
  pushin_s6 <= 0;
  pushin_s7 <= 0;
  pushin_s8 <= 0;
  pushin_s9 <= 0;
  pushin_s10 <= 0;
  pushin_s11 <= 0;
  //pushin_s12 <= 0;
  end else begin
  
  pushin_s1 <= #1 pushin;
  pushin_s2 <= #1 pushin_s1;
  pushin_s3 <= #1 pushin_s2;
  pushin_s4 <= #1 pushin_s3;
  pushin_s5 <= #1 pushin_s4;
  pushin_s6 <= #1 pushin_s5;
  pushin_s7 <= #1 pushin_s6;
  pushin_s8 <= #1 pushin_s7;
  pushin_s9 <= #1 pushin_s8;
  pushin_s10 <= #1 pushin_s9;
  pushin_s11 <= #1 pushin_s10;
  //pushin_s12 <= #1 pushin_s11;
  end

end


//
//>>>>*SET VARS AND SIGN RESULTS<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//
always @(*) begin
  sA = a[63];
  sB = b[63];
  sC = c[63];
  expA = a[62:52];
  expB = b[62:52];
  expC = c[62:52];
  fractA = { 1'b1, a[51:0]};
  fractB = { 1'b1, b[51:0]};
  fractC = { 1'b1, c[51:0]};
  zeroA = (a[62:0]==0)?1:0;
  zeroB = (b[62:0]==0)?1:0;
  zeroC = (c[62:0]==0)?1:0;
  
  signres=sA^sB^sC;
end
//
//>>>>*AT SECOND PIPELINE SET EXPONENT RESULT<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//
always @(*) begin
  expA_s2 = expA_ff2;
  expB_s2 = expB_ff2;
  expC_s2 = expC_ff2;
  
  expres = expA_s2+expB_s2+expC_s2-11'd2045;
end

//
//>>>>*PERFORM NORMALIZATION AND OUTPUT<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//
always @(*) begin
  //flop11
  zeroA_s11 =  zeroA_ff9;
  zeroB_s11 =  zeroB_ff9;
  zeroC_s11 =  zeroC_ff9;
  
  signres_s11 = signres_ff9;
  
  mres_s11 = mres_ff11;
  expres_s11 = expres_ff7;
  
  rconstant=0;
  if (mres_s11[158]==1) rconstant[105]=1; else if(mres_s11[157]==1'b1) rconstant[104]=1; else rconstant[103]=1;
  rres=mres_s11+rconstant;
  
  if((zeroA_s11==1) || (zeroB_s11==1) || (zeroC_s11==1)) begin // sets a zero result to a true 0
    rres = 0;
    expres_s11 = 0;
    signres_s11=0;
    resout=64'b0;
    
  end else begin
    if(rres[158]==1'b1) begin
      expres_s11=expres_s11+1;
      resout={signres_s11,expres_s11,rres[157:106]};
    end else if(rres[157]==1'b0) begin // less than 1/2
      expres_s11=expres_s11-1;
      resout={signres_s11,expres_s11,rres[155:104]};
    end else begin 
      resout={signres_s11,expres_s11,rres[156:105]};
    end
  end
end

endmodule
