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

module fpadd(clk,rst,pushin,a,b,pushout,r);

input clk;
input rst;
input [63:0] a,b;	// the a and b inputs
input pushin;
reg   pushin_s1,
      pushin_s2,
      pushin_s3,
      pushin_s4;

output [63:0] r;	// the results from this multiply
output pushout;		// indicates we have an answer this cycle

parameter fbw=104;

reg sA, sB,
    sA_ff, sB_ff,		// the signs of the a and b inputs
    sA_ff2, sB_ff2,		// the signs of the a and b inputs
    sA_s1, sB_s1,		// the signs of the a and b inputs
    sA_s2, sB_s2;		// the signs of the a and b inputs
    
reg [10:0] expA,expB,expR,		// the exponents of each
           expA_ff,expB_ff,expR_ff,
           expA_ff2,expB_ff2,expR_ff2,
           expA_ff3,         expR_ff3,
           expA_ff4;
           
           
reg [10:0] expA_s1,expB_s1,     //placeholders for always blocks
           expA_s2,expB_s2,expR_s2,
           expA_s3,         expR_s3,
           expA_s4,         expR_s4,
                            expR_s4h;
           
reg [fbw:0] fractA, fractB,fractR,              // the fraction of A and B  present
            fractA_ff, fractB_ff, fractR_ff,    //fractional flops
            fractA_ff2,fractB_ff2,fractR_ff2,
            fractA_ff3,            fractR_ff3,
            fractA_ff4,

            fractA_s1, fractB_s1,               //fractional placeholders
            fractA_s2, fractB_s2, fractR_s2,
            fractA_s3,            fractR_s3,
            fractA_s4,            fractR_s4;
            
reg zeroA,zeroB;	// a zero operand (special case for later)


reg signres,		// sign of the result
    signres_ff, 
    signres_ff2,
    signres_ff3,
    
    signres_s2, 
    signres_s3,
    signres_s4;
    
reg [10:0] expres;	// the exponent result
reg [63:0] resout;	// the output value from the always block

integer ied,	// exponent stuff for difference...
        ied_ff, 
        ied_ff2,
        ied_ff3,
        
        ied_s2, 
        ied_s3,
        ied_s4;
        
integer renorm,
        renorm_ff,
        renorm_s4;		// How much to renormalize...
parameter [fbw:0] zero=0;

// always @(posedge clk or posedge rst) begin
  // if(rst) begin
  
  // end else begin
  
  // end

// end

assign r=resout;
assign pushout=pushin_s4;

always @(posedge clk or posedge rst) begin
  if(rst) begin
    //stage 1
    sA_ff <= 0;
    sB_ff <= 0;
    expA_ff <= 0;
    expB_ff <= 0;
    fractA_ff <= 0;
    fractB_ff <= 0;
    
    //stage 2
    sA_ff2 <= 0;
    sB_ff2 <= 0;
    expA_ff2 <= 0;
    fractA_ff2 <= 0;
    fractB_ff2 <= 0;
    ied_ff <= 0;
    signres_ff <= 0;
    expR_ff <= 0;
    fractR_ff <= 0;
    
    //stage 3
    expA_ff3 <= 0;
    fractA_ff3 <= 0;
    
    signres_ff2 <= 0;
    ied_ff2 <= 0;
    expR_ff2 <= 0;
    fractR_ff2 <= 0;
    
    //stage 4
    expA_ff4 <= 0;
    fractA_ff4 <= 0;
    
    ied_ff3 <= 0;
    fractR_ff3 <= 0;
    expR_ff3 <= 0;
    signres_ff3 <= 0;
    
    renorm_ff <= 0;
    
    //pushes
    pushin_s1 <= 0;
    pushin_s2 <= 0;
    pushin_s3 <= 0;
    pushin_s4 <= 0;
  end else begin
    //stage 1
    sA_ff <= #1 sA;
    sB_ff <= #1 sB;
    expA_ff <= #1 expA;
    expB_ff <= #1 expB;
    fractA_ff <= #1 fractA;
    fractB_ff <= #1 fractB;
    
    //stage 2
    sA_ff2 <= #1 sA_s1;
    sB_ff2 <= #1 sB_s1;
    expA_ff2 <= #1 expA_s1;
    fractA_ff2 <= #1 fractA_s1;
    fractB_ff2 <= #1 fractB_s1;
    ied_ff <= #1 ied;
    signres_ff <= #1 signres;
    expR_ff <= #1 expR;
    fractR_ff <= #1 fractR;
    
    //stage 3
    expA_ff3 <= #1 expA_s2;
    fractA_ff3 <= #1 fractA_s2;
    
    signres_ff2 <= #1 signres_ff;
    ied_ff2 <= #1 ied_s2;
    expR_ff2 <= #1 expR_s2;
    fractR_ff2 <= #1 fractR_s2;
    
    //stage 4
    expA_ff4 <= #1 expA_s3;
    fractA_ff4 <= #1 fractA_s3;
    
    ied_ff3 <= #1 ied_s3;
    fractR_ff3 <= #1 fractR_s3;
    expR_ff3 <= #1 expR_ff2;
    signres_ff3 <= #1 signres_ff2;
    
    renorm_ff <= #1 renorm;
    
    //pushes
    pushin_s1 <= #1 pushin;
    pushin_s2 <= #1 pushin_s1;
    pushin_s3 <= #1 pushin_s2;
    pushin_s4 <= #1 pushin_s3;
  end
end


always @(*) begin
  //check if either a or b are zeros for optimization!
  zeroA = (a[62:0]==0)?1:0;
  zeroB = (b[62:0]==0)?1:0;
//sets renormalization flag to off
  renorm = 0;
  
  //add flip flop1
  
//if all of b is greater than a then:
//exponentA = bits 62-52 of b
//exponentB = bits 62-52 of a
//signA = top bit of b
//signB = top bit of a
//fractional A = (if b is zero, then =0 else..) bit part {01, bits 51-0 of b, then 50 more bits of 0} = 104 bits total
//fractional B = (if a is zero, then =0 else..) bit part {01, bits 51-0 of a, then 50 more bits of 0} = 104 bits total
//then we have this weird mofo signres = signed bit of A
  if( b[62:0] > a[62:0] ) begin
    expA = b[62:52];
    expB = a[62:52];
    sA = b[63];
    sB = a[63];
    fractA = (zeroB)?0:{ 2'b1, b[51:0],zero[fbw:54]};
    fractB = (zeroA)?0:{ 2'b1, a[51:0],zero[fbw:54]};
    //signres=sA;
  end
//if all of a is greater than b then:
//exponentA = bits 62-52 of a
//exponentB = bits 62-52 of b
//signA = top bit of a
//signB = top bit of b
//fractional A = (if a is zero, then =0 else..) bit part {01, bits 51-0 of a, then 50 more bits of 0} = 104 bits total
//fractional B = (if b is zero, then =0 else..) bit part {01, bits 51-0 of b, then 50 more bits of 0} = 104 bits total
  else begin
    sA = a[63];
    sB = b[63];
    expA = a[62:52];
    expB = b[62:52];
    fractA = (zeroA)?0:{ 2'b1, a[51:0],zero[fbw:54]};
    fractB = (zeroB)?0:{ 2'b1, b[51:0],zero[fbw:54]};
    //signres=sA;
  end

  //flop1 variables
  sA_s1 = sA_ff;
  sB_s1 = sB_ff;
  expA_s1 = expA_ff;
  expB_s1 = expB_ff;
  fractA_s1 = fractA_ff;
  fractB_s1 = fractB_ff;
  
  //flop1
  //integer exponent difference (ied)
  ied = expA_s1-expB_s1;
  //if the difference is greater than 60, 0000111100, then the exponent results = expA??
  //and the fractional results = fractA???
  signres = sA_s1;
  
  
  if(ied > 60) begin
    expR = expA_s1;
    fractR = fractA_s1;
  end else begin
    expR = expA_s1;
    fractR = 0;
    //denormB=0;
    
    fractB_s1 = (ied[5])?{32'b0,fractB_s1[fbw:32]} : {fractB_s1};
    fractB_s1 = (ied[4])?{16'b0,fractB_s1[fbw:16]} : {fractB_s1};
    fractB_s1 = (ied[3])?{ 8'b0,fractB_s1[fbw:8 ]} : {fractB_s1};
    fractB_s1 = (ied[2])?{ 4'b0,fractB_s1[fbw:4 ]} : {fractB_s1};
    fractB_s1 = (ied[1])?{ 2'b0,fractB_s1[fbw:2 ]} : {fractB_s1};
    fractB_s1 = (ied[0])?{ 1'b0,fractB_s1[fbw:1 ]} : {fractB_s1};
    //operation!
    
    //3nd flops here
    //fractAdd=fractR;
    //renormalize the fraction
  end
  
  //flop 2
  expA_s2 = expA_ff2;
  
  sA_s2 = sA_ff2;
  sB_s2 = sB_ff2;
  fractA_s2 = fractA_ff2;
  fractB_s2 = fractB_ff2;
  expR_s2 = expR_ff;
  fractR_s2 = fractR_ff;
  ied_s2 = ied_ff;
  
  if(ied_s2 < 61) begin
    
    if(sA_s2 == sB_s2) fractR_s2 = fractA_s2+fractB_s2;
    else fractR_s2 = fractA_s2-fractB_s2;
  
    if(fractR_s2[fbw]) begin
      fractR_s2 = {1'b0,fractR_s2[fbw:1]};
      expR_s2 = expR_s2+1;
    end
//   end
  end else begin
    expR_s2 = expA_s2;
    fractR_s2 = fractA_s2;
  end
  
  //flop3
  
  expA_s3 = expA_ff3;
  fractA_s3 = fractA_ff3;
  
  ied_s3 = ied_ff2;
  fractR_s3 = fractR_ff2;
  expR_s3 = expR_ff2;
  
  if(ied_s3 < 61) begin
    
    renorm = 0;
    if(fractR_s3[fbw-1:fbw-32] == 0) begin 
      renorm[5] = 1; 
      fractR_s3 = { 1'b0,fractR_s3[fbw-33:0],32'b0 }; 
    end
    if(fractR_s3[fbw-1:fbw-16] == 0) begin 
      renorm[4] = 1; 
      fractR_s3 = { 1'b0,fractR_s3[fbw-17:0],16'b0 }; 
    end
    if(fractR_s3[fbw-1:fbw-8] == 0) begin 
      renorm[3] = 1; 
      fractR_s3 = { 1'b0,fractR_s3[fbw-9:0], 8'b0 }; 
    end
    if(fractR_s3[fbw-1:fbw-4] == 0) begin 
      renorm[2] = 1; 
      fractR_s3 = { 1'b0,fractR_s3[fbw-5:0], 4'b0 }; 
    end
    if(fractR_s3[fbw-1:fbw-2] == 0) begin 
      renorm[1] = 1; 
      fractR_s3 = { 1'b0,fractR_s3[fbw-3:0], 2'b0 }; 
    end
    if(fractR_s3[fbw-1   ] == 0) begin
      renorm[0] = 1; 
      fractR_s3 = { 1'b0,fractR_s3[fbw-2:0], 1'b0 }; 
    end
//   end
  end else begin
    expR_s3 = expA_s3;
    fractR_s3 = fractA_s3;
  end
  
  
  //flop4
  expA_s4 = expA_ff4;
  fractA_s4 = fractA_ff4;
  
  expR_s4 = expA_ff4;
  fractR_s4 = fractA_ff4;
  
  signres_s4 = signres_ff3;
  ied_s4 = ied_ff3;
  expR_s4 = expR_ff3;
  fractR_s4 = fractR_ff3;
  
  renorm_s4 = renorm_ff;
  
  if(ied_s4 < 61) begin
    if(fractR_s4 != 0) begin
      if(fractR_s4[fbw-55:0] == 0 && fractR_s4[fbw-54]==1) begin
        if(fractR_s4[fbw-53] == 1) fractR_s4 = fractR_s4+{1'b1,zero[fbw-54:0]};
      end else begin
        if(fractR_s4[fbw-54] == 1) fractR_s4 = fractR_s4+{1'b1,zero[fbw-54:0]};
      end
      
      expR_s4=expR_s4-renorm_s4;
      
      if(fractR_s4[fbw-1]==0) begin
        expR_s4=expR_s4+1;
        fractR_s4={1'b0,fractR_s4[fbw-1:1]};
      end
    end else begin
      expR_s4=0;
      signres_s4=0;
    end
//   end
  end else begin
    expR_s4 = expA_s4;
    fractR_s4 = fractA_s4;
  end
  
  resout={signres_s4,expR_s4,fractR_s4[fbw-2:fbw-53]};

end


endmodule
