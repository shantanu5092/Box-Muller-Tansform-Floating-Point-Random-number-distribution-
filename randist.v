module randist(clk,rst,pushin,U1,U2,pushout,Z);
  input clk, rst, pushin;
  input [63:0] U1, U2;
  output [63:0] Z;
  output pushout;

  //------------------------------------------------Declarations for U1
  reg [10:0] U1_exp;
  reg [63:0] u1;
  reg [5:0] x_1;
  reg [10:0] exp_1;
  reg [5:0] y_1;
  reg [63:0] delta_1;
  reg [63:0] M1;
  wire [63:0] a_1, b_1, c_1, d_1;
  wire [63:0] z1;
  integer i;

  //------------------------------------------------Declarations for U2
  reg [10:0] U2_exp;
  reg [63:0] u2;
  reg [5:0] x_2;
  reg [10:0] exp_2;
  reg [5:0] y_2;
  reg [63:0] delta_2;
  reg [63:0] M2;
  wire [63:0] a_2, b_2, c_2;
  wire [63:0] z2;
  integer j;

  //----------------------------------------------------------declaration for flip-flop variables-----------------------------------------------------
  reg pushin_ff1,      pushin_ff2;
  wire pushoutU1_d3,    pushoutU2_da,
       pushoutU1_da,    pushoutU2_dab,
       pushoutU1_dab,   pushoutU2_db,
       pushoutU1_dcd,  pushout_sin,
       pushoutU1_db,
       pushoutU1_dc,
      
       pushout_l;
      
  reg [63:0] U1_ff1, U2_ff1;
  wire [63:0] z_ff2;  
  reg [63:0] z_l;
  //-------------------------------------------------------------declarations of extra variables---------------------------------------------------
  wire [63:0] w1, r1_1, r2_1, r3_1;
  wire [63:0] s1_1, s2_1;
  wire [63:0] r1_2, r2_2;
  wire [63:0] s1_2;
  wire [63:0] one;
  //----------------------------------------------------------------------end of declarations---------------------------------------------

  assign pushout=pushin_ff2;
  assign Z=z_l;
  assign one={2'b0,10'b1,52'b0};
  //---------------------------------------------------------code for calculation of a-------------------------------------------------------------
  
  always @(posedge clk or posedge rst) begin
  
    if(rst) begin
      U1_ff1 <= 0;
      U2_ff1 <= 0;
      pushin_ff1 <= 0;
    end
    else begin
      U1_ff1 <= #1 U1;
      U2_ff1 <= #1 U2;
      pushin_ff1 <= #1 pushin;
    end
      
  end 
  denorm d1 (clk,rst,pushin_ff1,U1_ff1,1'b0,pushout_dnormU1,dU1_vin,dU1_delta);          //denorm U1
  denorm d2 (clk,rst,pushin_ff1,U2_ff1,1'b1,pushout_dnormU2,dU2_vin,dU2_delta);          //denorm U2
  
  always @(posedge clk or posedge rst) begin
  
    if(rst) begin
      dU1_vin_ff <= 0;
      dU1_delta_ff <= 0;
      
      dU2_vin_ff <= 0;
      dU2_delta_ff <= 0;
      
      pushout_dnormU1_ff <= 0;
      pushout_dnormU2_ff <= 0;
    end
    else begin
      dU1_vin_ff <= #1 dU1_vin;
      dU1_delta_ff <= #1 dU1_delta;
      
      dU1_vin_ff <= #1 dU2_vin;
      dU2_delta_ff <= #1 dU2_delta;
      
      pushout_dnormU1_ff <= #1 pushout_dnormU1;
      pushout_dnormU2_ff <= #1 pushout_dnormU2;
    end
      
  end 
  
  sqrtln m1 (dU1_vin_ff, a_1, b_1, c_1, d_1);                   //calling the lookup table for U1
  sin_lookup m2 (dU2_vin_ff, a_2, b_2, c_2);                           //calling the lookup table for U2
  
  always @(posedge clk or posedge rst) begin
    if(rst) begin
      a_1_ff <= 0;
      b_1_ff <= 0;
      c_1_ff <= 0;
      d_1_ff <= 0;
      
      a_2_ff <= 0;
      b_2_ff <= 0;
      c_2_ff <= 0;
      
      dU1_delta_ff2 <= 0;
      dU2_delta_ff2 <= 0;
      
      pushout_dnormU1_ff2 <= 0;
      pushout_dnormU2_ff2 <= 0;
    end
    else begin
      a_1_ff <= #1 a_1;
      b_1_ff <= #1 b_1;
      c_1_ff <= #1 c_1;
      d_1_ff <= #1 d_1;
      
      a_2_ff <= #1 a_2;
      b_2_ff <= #1 b_2;
      c_2_ff <= #1 c_2;
      
      dU1_delta_ff2 <= #1 dU1_delta_ff;
      dU2_delta_ff2 <= #1 dU2_delta_ff;
      
      pushout_dnormU1_ff2 <= #1 pushout_dnormU1_ff;
      pushout_dnormU2_ff2 <= #1 pushout_dnormU2_ff;
    end
  end 
  
  
//-----------------------------------------------------------------operations for U1
  //---------------------------------------------------------------fpmul instantiation

  fpmul mul1 (clk,rst,pushout_dnormU1_ff2, dU1_delta_ff2, dU1_delta_ff2, dU1_delta_ff2, pushoutU1_d3, w1);  //fpmul instantiation for 3 variables multiplication   (delta cubed)
  fpmul mul2 (clk,rst,pushout_dnormU1_ff2, one, a_1_ff, w1, pushoutU1_da, r1_1);            //fpmul instantiation for 2 variables multiplication and the third is 1. (delta cubed * a)
  fpmul mul3 (clk,rst,pushout_dnormU1_ff2, b_1_ff, dU1_delta_ff2, dU1_delta_ff2, pushoutU1_db, r2_1);    //fpmul instantiation for 3 variables multiplication (b * delta squared)
  
  fpmul mul4 (clk,rst,pushout_dnormU1_ff2, one, c_1_ff, dU1_delta_ff2, pushoutU1_dc, r3_1);       //fpmul instantiation for 2 variables multiplication and the third is 1. (c * delta)

  //need flip flops to hold d till addition estimated 9 ff (counter on clock edge)<********************************************************************************
  
  //--------------------------------------fpadd instantiation
  fpadd add1 (clk,rst,pushoutU1_db&pushoutU1_da, r1_1, r2_1, pushoutU1_dab, s1_1);            //fpadd instantiation for 2 variables (da + db)
  fpadd add2 (clk,rst,pushoutU1_dc, d_1_ff/*some ff#*/, r3_1, pushoutU1_dcd, s2_1);            //fpadd instantiation for 2 variables (dc + d)
  fpadd add3 (clk,rst,pushoutU1_dab&pushoutU1_dcd, s2_1, s1_1, pushout_sqrtln, z1);               //fpadd instantiation for 2 variables ((da+db) + (dc+d))
  

//------------------------------------------------------------------operations for U2
  //----------------------------------------------------------------fpmul instantiation

  fpmul mul5 (clk,rst,pushout_dnormU2_ff2, a_2_ff, dU2_delta_ff2, dU2_delta_ff2, pushoutU2_da, r1_2); //fpmul instantiation for 3 variables multiplication (a * delta squared)
  fpmul mul6 (clk,rst,pushout_dnormU2_ff2, one, b_2_ff, dU2_delta_ff2, pushoutU2_db, r2_2);     //fpmul instantiation for 2 variables multiplication and the third is 1. (b * delta)

  //--------------------------------------fpadd instantiation
  fpadd add4 (clk,rst,pushoutU2_da&pushoutU2_db, r1_2, r2_2, pushoutU2_dab, s1_2);            //fpadd instantiation for 2 variables
  
  //need flip flops to hold c till addition estimated 9 ff (counter on clock edge)<********************************************************************************
  fpadd add5 (clk,rst,pushoutU2_dab, s1_2, c_2_ff, pushout_sin, z2);               //fpadd instantiation for 2 variables

  
  //-------------------------------------------------------------final result calculation------------------------------------------------------------

  fpmul mul7 (clk,rst,pushout_sin&pushout_sqrtln, one, z1, z2, pushout_l, z_ff2);
  
//---------------------------------------------------------always block for pipeline stages--------------------------------------------------------
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        begin
	  pushin_ff2<=0;
	  z_l <= 0;
        end
      else
        begin
	  pushin_ff2<= #1 pushout_l;
	  z_l <= #1 z_ff2;
        end
    end 
  
endmodule
