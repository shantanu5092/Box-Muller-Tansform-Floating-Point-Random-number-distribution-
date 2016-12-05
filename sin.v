//A sin table for randist
// The input is a 10 bit integer representing
// <input>/1024  You need to denormalize the FP
// Value to get a correct answer from the lookup
// Multiply the difference from the <input> by the slope
// To get an interpolated value.
// get the delta from the floating version of the lookup value
// sin = A*delta*delta+B*delta+C
//
// Answer should be good to about 1e-9 (8-10 digits)

module sin_lookup(vin,A,B,C);
input [9:0] vin;
output [63:0] A,B,C;
reg [63:0] a,b,c;
assign A=a;
assign B=b;
assign C=c;
reg [63:0] a0,b0,c0;
reg [63:0] a1,b1,c1;
reg [63:0] a2,b2,c2;
reg [63:0] a3,b3,c3;
reg [63:0] a4,b4,c4;
reg [63:0] a5,b5,c5;
reg [63:0] a6,b6,c6;
reg [63:0] a7,b7,c7;
reg [63:0] a8,b8,c8;
reg [63:0] a9,b9,c9;
reg [63:0] a10,b10,c10;
reg [63:0] a11,b11,c11;
reg [63:0] a12,b12,c12;
reg [63:0] a13,b13,c13;
reg [63:0] a14,b14,c14;
reg [63:0] a15,b15,c15;

always @(*) begin

  case(vin[5:0])
  0: begin 
      a0=64'hbfaf019691240000;
      b0=64'h401922007f3248fc;
      c0=64'h0000000000000000;
    end
  1: begin 
      a0=64'hbfc7411dcc940000;
      b0=64'h401921e17d9227b8;
      c0=64'h3f7921f0fe67006a;
    end
  2: begin 
      a0=64'hbfd360ce4a160000;
      b0=64'h401921847907d538;
      c0=64'h3f8921d1fcdec77d;
    end
  3: begin 
      a0=64'hbfdb20dddda00000;
      b0=64'h401920e97278d480;
      c0=64'h3f92d936bbe30ef8;
    end
  4: begin 
      a0=64'hbfe1705540b80000;
      b0=64'h401920106b63a7d0;
      c0=64'h3f992155f7a36677;
    end
  5: begin 
      a0=64'hbfe550108b600000;
      b0=64'h40191ef965dfcd60;
      c0=64'h3f9f693731d1cef8;
    end
  6: begin 
      a0=64'hbfe92f973fc40000;
      b0=64'h40191da4649db9c0;
      c0=64'h3fa2d865759455c8;
    end
  7: begin 
      a0=64'hbfed0edfcf680000;
      b0=64'h40191c116ae6d1c0;
      c0=64'h3fa5fc00d290cd3d;
    end
  8: begin 
      a0=64'hbff076f056360000;
      b0=64'h40191a407c9d61c0;
      c0=64'h3fa91f65f10dd80d;
    end
  9: begin 
      a0=64'hbff2664824ce0000;
      b0=64'h401918319e3c94c0;
      c0=64'h3fac428d12c0d7db;
    end
  10: begin 
      a0=64'hbff455728d480000;
      b0=64'h401915e4d4d868c0;
      c0=64'h3faf656e79f820d7;
    end
  11: begin 
      a0=64'hbff6446ac9dc0000;
      b0=64'h4019135a261da200;
      c0=64'h3fb1440134d709ae;
    end
  12: begin 
      a0=64'hbff8332c154c0000;
      b0=64'h401910919851be80;
      c0=64'h3fb2d52092ce19f1;
    end
  13: begin 
      a0=64'hbffa21b1aac80000;
      b0=64'h40190d8b3252e4c0;
      c0=64'h3fb4661179272090;
    end
  14: begin 
      a0=64'hbffc0ff6c62c0000;
      b0=64'h40190a46fb97d340;
      c0=64'h3fb5f6d00a9aa413;
    end
  15: begin 
      a0=64'hbffdfdf6a3e40000;
      b0=64'h401906c4fc2fcf00;
      c0=64'h3fb787586a5d5b1b;
    end
  16: begin 
      a0=64'hbfffebac81140000;
      b0=64'h401903053cc28e80;
      c0=64'h3fb917a6bc29b425;
    end
  17: begin 
      a0=64'hc000ec89cdc20000;
      b0=64'h4018ff07c6902540;
      c0=64'h3fbaa7b724495bfc;
    end
  18: begin 
      a0=64'hc001e31398e60000;
      b0=64'h4018facca370ebc0;
      c0=64'h3fbc3785c79ec2cd;
    end
  19: begin 
      a0=64'hc002d97141a80000;
      b0=64'h4018f653ddd56940;
      c0=64'h3fbdc70ecbae9fc0;
    end
  20: begin 
      a0=64'hc003cfa068280000;
      b0=64'h4018f19d80c63780;
      c0=64'h3fbf564e56a97305;
    end
  21: begin 
      a0=64'hc004c59eacf00000;
      b0=64'h4018eca997e3e980;
      c0=64'h3fc072a047ba8318;
    end
  22: begin 
      a0=64'hc005bb69b1100000;
      b0=64'h4018e7782f66ed00;
      c0=64'h3fc139f0cedaf572;
    end
  23: begin 
      a0=64'hc006b0ff16140000;
      b0=64'h4018e209541f7000;
      c0=64'h3fc20116d4ec7bc9;
    end
  24: begin 
      a0=64'hc007a65c7e000000;
      b0=64'h4018dc5d13753b00;
      c0=64'h3fc2c8106e8e6135;
    end
  25: begin 
      a0=64'hc0089b7f8b740000;
      b0=64'h4018d6737b679700;
      c0=64'h3fc38edbb0cd8d0e;
    end
  26: begin 
      a0=64'hc0099065e1880000;
      b0=64'h4018d04c9a8d2400;
      c0=64'h3fc45576b1293e54;
    end
  27: begin 
      a0=64'hc00a850d24080000;
      b0=64'h4018c9e88013bb80;
      c0=64'h3fc51bdf8597c5ec;
    end
  28: begin 
      a0=64'hc00b7972f7440000;
      b0=64'h4018c3473bc04600;
      c0=64'h3fc5e214448b3fc0;
    end
  29: begin 
      a0=64'hc00c6d9500380000;
      b0=64'h4018bc68ddee9700;
      c0=64'h3fc6a81304f64aab;
    end
  30: begin 
      a0=64'hc00d6170e4840000;
      b0=64'h4018b54d77914280;
      c0=64'h3fc76dd9de50bf2b;
    end
  31: begin 
      a0=64'hc00e55044a700000;
      b0=64'h4018adf51a317700;
      c0=64'h3fc83366e89c64be;
    end
  32: begin 
      a0=64'hc00f484cd9000000;
      b0=64'h4018a65fd7eecb80;
      c0=64'h3fc8f8b83c69a604;
    end
  33: begin 
      a0=64'hc0101da41bfe0000;
      b0=64'h40189e8dc37f1c80;
      c0=64'h3fc9bdcbf2dc4360;
    end
  34: begin 
      a0=64'hc01096fa07e20000;
      b0=64'h4018967ef02e5280;
      c0=64'h3fca82a025b00449;
    end
  35: begin 
      a0=64'hc011102704d40000;
      b0=64'h40188e3371de3d00;
      c0=64'h3fcb4732ef3d671b;
    end
  36: begin 
      a0=64'hc0118929e7d00000;
      b0=64'h401885ab5d065800;
      c0=64'h3fcc0b826a7e4f5b;
    end
  37: begin 
      a0=64'hc012020186440000;
      b0=64'h40187ce6c6b3a300;
      c0=64'h3fcccf8cb312b27e;
    end
  38: begin 
      a0=64'hc0127aacb6060000;
      b0=64'h401873e5c4886280;
      c0=64'h3fcd934fe5454309;
    end
  39: begin 
      a0=64'hc012f32a4d5a0000;
      b0=64'h40186aa86cbbf680;
      c0=64'h3fce56ca1e101a13;
    end
  40: begin 
      a0=64'hc0136b7922f00000;
      b0=64'h4018612ed61a9780;
      c0=64'h3fcf19f97b215f12;
    end
  41: begin 
      a0=64'hc013e3980df40000;
      b0=64'h4018577918052900;
      c0=64'h3fcfdcdc1adfedf0;
    end
  42: begin 
      a0=64'hc0145b85e5fc0000;
      b0=64'h40184d874a70f700;
      c0=64'h3fd04fb80e37fda9;
    end
  43: begin 
      a0=64'hc014d34183280000;
      b0=64'h4018435985e78400;
      c0=64'h3fd0b0d9cfdbdb8b;
    end
  44: begin 
      a0=64'hc0154ac9be080000;
      b0=64'h401838efe3864200;
      c0=64'h3fd111d262b1f673;
    end
  45: begin 
      a0=64'hc015c21d6fa00000;
      b0=64'h40182e4a7cfe5a00;
      c0=64'h3fd172a0d7765172;
    end
  46: begin 
      a0=64'hc016393b71980000;
      b0=64'h401823696c947200;
      c0=64'h3fd1d3443f4cdb39;
    end
  47: begin 
      a0=64'hc016b0229dfc0000;
      b0=64'h4018184ccd206400;
      c0=64'h3fd233bbabc3bb6c;
    end
  48: begin 
      a0=64'hc01726d1cf680000;
      b0=64'h40180cf4ba0cfa00;
      c0=64'h3fd294062ed59f01;
    end
  49: begin 
      a0=64'hc0179d47e1100000;
      b0=64'h401801614f57b600;
      c0=64'h3fd2f422daec0381;
    end
  50: begin 
      a0=64'hc0181383ae980000;
      b0=64'h4017f592a9907f00;
      c0=64'h3fd35410c2e1814c;
    end
  51: begin 
      a0=64'hc018898414540000;
      b0=64'h4017e988e5d96800;
      c0=64'h3fd3b3cefa0414b2;
    end
  52: begin 
      a0=64'hc018ff47ef180000;
      b0=64'h4017dd4421e65b00;
      c0=64'h3fd4135c941765fc;
    end
  53: begin 
      a0=64'hc01974ce1c500000;
      b0=64'h4017d0c47bfcd900;
      c0=64'h3fd472b8a557104e;
    end
  54: begin 
      a0=64'hc019ea157a000000;
      b0=64'h4017c40a12f3af00;
      c0=64'h3fd4d1e24278e764;
    end
  55: begin 
      a0=64'hc01a5f1ce6d40000;
      b0=64'h4017b7150632a300;
      c0=64'h3fd530d880af3c1e;
    end
  56: begin 
      a0=64'hc01ad3e341f80000;
      b0=64'h4017a9e575b22c00;
      c0=64'h3fd58f9a75ab1fd7;
    end
  57: begin 
      a0=64'hc01b48676b580000;
      b0=64'h40179c7b81fb2200;
      c0=64'h3fd5ee27379ea68d;
    end
  58: begin 
      a0=64'hc01bbca843740000;
      b0=64'h40178ed74c267100;
      c0=64'h3fd64c7ddd3f27c0;
    end
  59: begin 
      a0=64'hc01c30a4ab700000;
      b0=64'h401780f8f5dcbd00;
      c0=64'h3fd6aa9d7dc77e11;
    end
  60: begin 
      a0=64'hc01ca45b851c0000;
      b0=64'h401772e0a1561d00;
      c0=64'h3fd7088530fa4598;
    end
  61: begin 
      a0=64'hc01d17cbb2fc0000;
      b0=64'h4017648e7159bb00;
      c0=64'h3fd766340f2418f0;
    end
  62: begin 
      a0=64'hc01d8af4183c0000;
      b0=64'h40175602893d8600;
      c0=64'h3fd7c3a9311dcce0;
    end
  63: begin 
      a0=64'hc01dfdd398b00000;
      b0=64'h4017473d0ce5d400;
      c0=64'h3fd820e3b04eaabe;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a1=64'hc01e706918ec0000;
      b1=64'h4017383e20c50e00;
      c1=64'h3fd87de2a6aea95c;
    end
  1: begin 
      a1=64'hc01ee2b37e340000;
      b1=64'h40172905e9db5700;
      c1=64'h3fd8daa52ec8a4a9;
    end
  2: begin 
      a1=64'hc01f54b1ae940000;
      b1=64'h401719948db62e00;
      c1=64'h3fd9372a63bc93d1;
    end
  3: begin 
      a1=64'hc01fc66290b40000;
      b1=64'h401709ea32701000;
      c1=64'h3fd993716141bdf8;
    end
  4: begin 
      a1=64'hc0201be286120000;
      b1=64'h4016fa06feb02000;
      c1=64'h3fd9ef7943a8ed83;
    end
  5: begin 
      a1=64'hc020546c04860000;
      b1=64'h4016e9eb19a9bc00;
      c1=64'h3fda4b4127dea1dd;
    end
  6: begin 
      a1=64'hc0208ccd38400000;
      b1=64'h4016d996ab1c3000;
      c1=64'h3fdaa6c82b6d3fc3;
    end
  7: begin 
      a1=64'hc020c505961a0000;
      b1=64'h4016c909db523b00;
      c1=64'h3fdb020d6c7f4002;
    end
  8: begin 
      a1=64'hc020fd1493660000;
      b1=64'h4016b844d321c300;
      c1=64'h3fdb5d1009e15cb9;
    end
  9: begin 
      a1=64'hc02134f9a5cc0000;
      b1=64'h4016a747bbeb5f00;
      c1=64'h3fdbb7cf2304bcf9;
    end
  10: begin 
      a1=64'hc0216cb443620000;
      b1=64'h40169612bf99fa00;
      c1=64'h3fdc1249d8011edf;
    end
  11: begin 
      a1=64'hc021a443e2aa0000;
      b1=64'h401684a608a26900;
      c1=64'h3fdc6c7f49970003;
    end
  12: begin 
      a1=64'hc021dba7fa8a0000;
      b1=64'h40167301c2030400;
      c1=64'h3fdcc66e9931c456;
    end
  13: begin 
      a1=64'hc02212e002560000;
      b1=64'h4016612617433700;
      c1=64'h3fdd2016e8e9db53;
    end
  14: begin 
      a1=64'hc02249eb71d00000;
      b1=64'h40164f1334731b00;
      c1=64'h3fdd79775b86e382;
    end
  15: begin 
      a1=64'hc02280c9c1260000;
      b1=64'h40163cc9462b0c00;
      c1=64'h3fddd28f1481cc50;
    end
  16: begin 
      a1=64'hc022b77a68f80000;
      b1=64'h40162a48798b3300;
      c1=64'h3fde2b5d3806f633;
    end
  17: begin 
      a1=64'hc022edfce2580000;
      b1=64'h40161790fc3b1d00;
      c1=64'h3fde83e0eaf8510c;
    end
  18: begin 
      a1=64'hc0232450a6c00000;
      b1=64'h401604a2fc694400;
      c1=64'h3fdedc1952ef78ce;
    end
  19: begin 
      a1=64'hc0235a7530240000;
      b1=64'h4015f17ea8caa700;
      c1=64'h3fdf3405963fd05f;
    end
  20: begin 
      a1=64'hc0239069f8f20000;
      b1=64'h4015de24309a4e00;
      c1=64'h3fdf8ba4dbf89ab1;
    end
  21: begin 
      a1=64'hc023c62e7c040000;
      b1=64'h4015ca93c398da00;
      c1=64'h3fdfe2f64be71207;
    end
  22: begin 
      a1=64'hc023fbc234b40000;
      b1=64'h4015b6cd920c0c00;
      c1=64'h3fe01cfc874c3eb2;
    end
  23: begin 
      a1=64'hc02431249ecc0000;
      b1=64'h4015a2d1ccbe4e00;
      c1=64'h3fe0485626ae2217;
    end
  24: begin 
      a1=64'hc024665536940000;
      b1=64'h40158ea0a4fe4400;
      c1=64'h3fe073879922ffea;
    end
  25: begin 
      a1=64'hc0249b5378d00000;
      b1=64'h40157a3a4c9e3e00;
      c1=64'h3fe09e907417c5dc;
    end
  26: begin 
      a1=64'hc024d01ee2bc0000;
      b1=64'h4015659ef5f3d600;
      c1=64'h3fe0c9704d5d898a;
    end
  27: begin 
      a1=64'hc02504b6f2180000;
      b1=64'h401550ced3d76000;
      c1=64'h3fe0f426bb2a8e79;
    end
  28: begin 
      a1=64'hc025391b25200000;
      b1=64'h40153bca19a37400;
      c1=64'h3fe11eb3541b4b1e;
    end
  29: begin 
      a1=64'hc0256d4afa880000;
      b1=64'h40152690fb347200;
      c1=64'h3fe14915af336ce6;
    end
  30: begin 
      a1=64'hc025a145f1940000;
      b1=64'h40151123ace80200;
      c1=64'h3fe1734d63dedb44;
    end
  31: begin 
      a1=64'hc025d50b89f80000;
      b1=64'h4014fb82639c8400;
      c1=64'h3fe19d5a09f2b9b4;
    end
  32: begin 
      a1=64'hc026089b44040000;
      b1=64'h4014e5ad54b0ac00;
      c1=64'h3fe1c73b39ae68c4;
    end
  33: begin 
      a1=64'hc0263bf4a0740000;
      b1=64'h4014cfa4b602d800;
      c1=64'h3fe1f0f08bbc8616;
    end
  34: begin 
      a1=64'hc0266f1720980000;
      b1=64'h4014b968bdf0ae00;
      c1=64'h3fe21a799933eb54;
    end
  35: begin 
      a1=64'hc026a20246440000;
      b1=64'h4014a2f9a3568200;
      c1=64'h3fe243d5fb98ac1a;
    end
  36: begin 
      a1=64'hc026d4b593dc0000;
      b1=64'h40148c579d8ed200;
      c1=64'h3fe26d054cdd12da;
    end
  37: begin 
      a1=64'hc02707308c3c0000;
      b1=64'h40147582e471be00;
      c1=64'h3fe2960727629ca3;
    end
  38: begin 
      a1=64'hc0273972b2dc0000;
      b1=64'h40145e7bb0548400;
      c1=64'h3fe2bedb25faf3e6;
    end
  39: begin 
      a1=64'hc0276b7b8bc00000;
      b1=64'h401447423a08ee00;
      c1=64'h3fe2e780e3e8ea12;
    end
  40: begin 
      a1=64'hc0279d4a9b680000;
      b1=64'h40142fd6badcc600;
      c1=64'h3fe30ff7fce17030;
    end
  41: begin 
      a1=64'hc027cedf66f40000;
      b1=64'h401418396c994800;
      c1=64'h3fe338400d0c8e52;
    end
  42: begin 
      a1=64'hc028003974080000;
      b1=64'h4014006a89829c00;
      c1=64'h3fe36058b10659ee;
    end
  43: begin 
      a1=64'hc028315848f00000;
      b1=64'h4013e86a4c574200;
      c1=64'h3fe3884185dfeb1d;
    end
  44: begin 
      a1=64'hc028623b6c600000;
      b1=64'h4013d038f04f7600;
      c1=64'h3fe3affa292050b4;
    end
  45: begin 
      a1=64'hc02892e265d00000;
      b1=64'h4013b7d6b11cb200;
      c1=64'h3fe3d78238c5833f;
    end
  46: begin 
      a1=64'hc028c34cbd280000;
      b1=64'h40139f43cae90200;
      c1=64'h3fe3fed9534556d0;
    end
  47: begin 
      a1=64'hc028f379faf00000;
      b1=64'h401386807a568a00;
      c1=64'h3fe425ff178e6bad;
    end
  48: begin 
      a1=64'hc0292369a84c0000;
      b1=64'h40136d8cfc7ede00;
      c1=64'h3fe44cf325091dd1;
    end
  49: begin 
      a1=64'hc029531b4efc0000;
      b1=64'h401354698ef27800;
      c1=64'h3fe473b51b987342;
    end
  50: begin 
      a1=64'hc029828e79480000;
      b1=64'h40133b166fb80a00;
      c1=64'h3fe49a449b9b0934;
    end
  51: begin 
      a1=64'hc029b1c2b2200000;
      b1=64'h40132193dd4c0400;
      c1=64'h3fe4c0a145ebffff;
    end
  52: begin 
      a1=64'hc029e0b7850c0000;
      b1=64'h401307e2169fe000;
      c1=64'h3fe4e6cabbe3e5e4;
    end
  53: begin 
      a1=64'hc02a0f6c7e340000;
      b1=64'h4012ee015b199800;
      c1=64'h3fe50cc09f59a097;
    end
  54: begin 
      a1=64'hc02a3de12a540000;
      b1=64'h4012d3f1ea92fa00;
      c1=64'h3fe5328292a35591;
    end
  55: begin 
      a1=64'hc02a6c1516d00000;
      b1=64'h4012b9b405591a00;
      c1=64'h3fe5581038975132;
    end
  56: begin 
      a1=64'hc02a9a07d19c0000;
      b1=64'h40129f47ec2ba600;
      c1=64'h3fe57d69348cec9b;
    end
  57: begin 
      a1=64'hc02ac7b8e9680000;
      b1=64'h401284ade03c5200;
      c1=64'h3fe5a28d2a5d724b;
    end
  58: begin 
      a1=64'hc02af527ed700000;
      b1=64'h401269e6232e2c00;
      c1=64'h3fe5c77bbe650187;
    end
  59: begin 
      a1=64'hc02b22546d980000;
      b1=64'h40124ef0f7150200;
      c1=64'h3fe5ec349583706f;
    end
  60: begin 
      a1=64'hc02b4f3dfa700000;
      b1=64'h401233ce9e74bc00;
      c1=64'h3fe610b7551d2cd9;
    end
  61: begin 
      a1=64'hc02b7be425200000;
      b1=64'h4012187f5c40ba00;
      c1=64'h3fe63503a31c1be4;
    end
  62: begin 
      a1=64'hc02ba8467f7c0000;
      b1=64'h4011fd0373db2600;
      c1=64'h3fe6591925f07839;
    end
  63: begin 
      a1=64'hc02bd4649c0c0000;
      b1=64'h4011e15b29146400;
      c1=64'h3fe67cf78491af0b;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a2=64'hc02c003e0de80000;
      b2=64'h4011c586c02a4a00;
      c2=64'h3fe6a09e667f3bc7;
    end
  1: begin 
      a2=64'hc02c2bd268ec0000;
      b2=64'h4011a9867dc79200;
      c2=64'h3fe6c40d73c18270;
    end
  2: begin 
      a2=64'hc02c572141880000;
      b2=64'h40118d5aa7032800;
      c2=64'h3fe6e74454eaa8a9;
    end
  3: begin 
      a2=64'hc02c822a2cdc0000;
      b2=64'h40117103815f7c00;
      c2=64'h3fe70a42b3176d74;
    end
  4: begin 
      a2=64'hc02cacecc0c40000;
      b2=64'h4011548152c9dc00;
      c2=64'h3fe72d0837efff91;
    end
  5: begin 
      a2=64'hc02cd76893b40000;
      b2=64'h401137d46199c400;
      c2=64'h3fe74f948da8d288;
    end
  6: begin 
      a2=64'hc02d019d3ce00000;
      b2=64'h40111afcf4903200;
      c2=64'h3fe771e75f03725c;
    end
  7: begin 
      a2=64'hc02d2b8a54200000;
      b2=64'h4010fdfb52d6f600;
      c2=64'h3fe79400574f55e0;
    end
  8: begin 
      a2=64'hc02d552f72040000;
      b2=64'h4010e0cfc4000400;
      c2=64'h3fe7b5df226aafaa;
    end
  9: begin 
      a2=64'hc02d7e8c2fd40000;
      b2=64'h4010c37a9004c800;
      c2=64'h3fe7d7836cc33dad;
    end
  10: begin 
      a2=64'hc02da7a027740000;
      b2=64'h4010a5fbff456600;
      c2=64'h3fe7f8ece357176b;
    end
  11: begin 
      a2=64'hc02dd06af3880000;
      b2=64'h401088545a881800;
      c2=64'h3fe81a1b33b57ac6;
    end
  12: begin 
      a2=64'hc02df8ec2f740000;
      b2=64'h40106a83eaf86800;
      c2=64'h3fe83b0e0bff9769;
    end
  13: begin 
      a2=64'hc02e212377400000;
      b2=64'h40104c8afa269800;
      c2=64'h3fe85bc51ae958c7;
    end
  14: begin 
      a2=64'hc02e491067b00000;
      b2=64'h40102e69d206ce00;
      c2=64'h3fe87c400fba2eba;
    end
  15: begin 
      a2=64'hc02e70b29e480000;
      b2=64'h40101020bcf06e00;
      c2=64'h3fe89c7e9a4dd4a5;
    end
  16: begin 
      a2=64'hc02e9809b9380000;
      b2=64'h400fe3600b3ac400;
      c2=64'h3fe8bc806b15173b;
    end
  17: begin 
      a2=64'hc02ebf1557700000;
      b2=64'h400fa62fee52b000;
      c2=64'h3fe8dc45331698c7;
    end
  18: begin 
      a2=64'hc02ee5d5189c0000;
      b2=64'h400f68b1ba223400;
      c2=64'h3fe8fbcca3ef9407;
    end
  19: begin 
      a2=64'hc02f0c489d180000;
      b2=64'h400f2ae606637000;
      c2=64'h3fe91b166fd49d9d;
    end
  20: begin 
      a2=64'hc02f326f860c0000;
      b2=64'h400eeccd6b8fec00;
      c2=64'h3fe93a22499263f6;
    end
  21: begin 
      a2=64'hc02f584975500000;
      b2=64'h400eae6882debc00;
      c2=64'h3fe958efe48e6dd2;
    end
  22: begin 
      a2=64'hc02f7dd60d840000;
      b2=64'h400e6fb7e6436400;
      c2=64'h3fe9777ef4c7d73d;
    end
  23: begin 
      a2=64'hc02fa314f2040000;
      b2=64'h400e30bc306c2000;
      c2=64'h3fe995cf2ed80d1d;
    end
  24: begin 
      a2=64'hc02fc805c6dc0000;
      b2=64'h400df175fcc07400;
      c2=64'h3fe9b3e047f3873b;
    end
  25: begin 
      a2=64'hc02feca830f40000;
      b2=64'h400db1e5e75fb400;
      c2=64'h3fe9d1b1f5ea80d0;
    end
  26: begin 
      a2=64'hc030087deaf20000;
      b2=64'h400d720c8d1f8400;
      c2=64'h3fe9ef43ef29af8f;
    end
  27: begin 
      a2=64'hc0301a802e020000;
      b2=64'h400d31ea8b8a5000;
      c2=64'h3fea0c95eabaf932;
    end
  28: begin 
      a2=64'hc0302c5ab5420000;
      b2=64'h400cf18080ddc800;
      c2=64'h3fea29a7a046277d;
    end
  29: begin 
      a2=64'hc0303e0d549c0000;
      b2=64'h400cb0cf0c095400;
      c2=64'h3fea4678c8119ac3;
    end
  30: begin 
      a2=64'hc0304f97e06a0000;
      b2=64'h400c6fd6ccac8c00;
      c2=64'h3fea63091b02fadd;
    end
  31: begin 
      a2=64'hc03060fa2d660000;
      b2=64'h400c2e986315d400;
      c2=64'h3fea7f58529fe697;
    end
  32: begin 
      a2=64'hc030723410a60000;
      b2=64'h400bed1470407c00;
      c2=64'h3fea9b66290ea19e;
    end
  33: begin 
      a2=64'hc03083455faa0000;
      b2=64'h400bab4b95d39400;
      c2=64'h3feab7325916c0cf;
    end
  34: begin 
      a2=64'hc030942df0580000;
      b2=64'h400b693e76201400;
      c2=64'h3fead2bc9e21d50c;
    end
  35: begin 
      a2=64'hc030a4ed98f80000;
      b2=64'h400b26edb41f7c00;
      c2=64'h3feaee04b43c146f;
    end
  36: begin 
      a2=64'hc030b58430340000;
      b2=64'h400ae459f3721c00;
      c2=64'h3feb090a581501fb;
    end
  37: begin 
      a2=64'hc030c5f18d200000;
      b2=64'h400aa183d85da000;
      c2=64'h3feb23cd470013af;
    end
  38: begin 
      a2=64'hc030d63587360000;
      b2=64'h400a5e6c07cb5c00;
      c2=64'h3feb3e4d3ef5570d;
    end
  39: begin 
      a2=64'hc030e64ff64e0000;
      b2=64'h400a1b132746d400;
      c2=64'h3feb5889fe921400;
    end
  40: begin 
      a2=64'hc030f640b2ae0000;
      b2=64'h4009d779dcfc0800;
      c2=64'h3feb728345196e38;
    end
  41: begin 
      a2=64'hc031060795040000;
      b2=64'h400993a0cfb5f000;
      c2=64'h3feb8c38d27504e4;
    end
  42: begin 
      a2=64'hc03115a4765e0000;
      b2=64'h40094f88a6dcd400;
      c2=64'h3feba5aa673590cd;
    end
  43: begin 
      a2=64'hc0312517303c0000;
      b2=64'h40090b320a74b400;
      c2=64'h3febbed7c49380e5;
    end
  44: begin 
      a2=64'hc031345f9c7c0000;
      b2=64'h4008c69da31bac00;
      c2=64'h3febd7c0ac6f9524;
    end
  45: begin 
      a2=64'hc031437d95680000;
      b2=64'h400881cc1a083c00;
      c2=64'h3febf064e15377d8;
    end
  46: begin 
      a2=64'hc0315270f5b60000;
      b2=64'h40083cbe1907d000;
      c2=64'h3fec08c426725545;
    end
  47: begin 
      a2=64'hc031613998800000;
      b2=64'h4007f7744a7d0400;
      c2=64'h3fec20de3fa971ab;
    end
  48: begin 
      a2=64'hc0316fd759500000;
      b2=64'h4007b1ef595df400;
      c2=64'h3fec38b2f180bdac;
    end
  49: begin 
      a2=64'hc0317e4a14120000;
      b2=64'h40076c2ff132b400;
      c2=64'h3fec5042012b6902;
    end
  50: begin 
      a2=64'hc0318c91a51e0000;
      b2=64'h40072636be139400;
      c2=64'h3fec678b34887397;
    end
  51: begin 
      a2=64'hc0319aade93c0000;
      b2=64'h4006e0046ca77c00;
      c2=64'h3fec7e8e52233cef;
    end
  52: begin 
      a2=64'hc031a89ebd9c0000;
      b2=64'h40069999aa224400;
      c2=64'h3fec954b213411f0;
    end
  53: begin 
      a2=64'hc031b663ffd60000;
      b2=64'h400652f724430800;
      c2=64'h3fecabc169a0b8fc;
    end
  54: begin 
      a2=64'hc031c3fd8dee0000;
      b2=64'h40060c1d89527400;
      c2=64'h3fecc1f0f3fcfc58;
    end
  55: begin 
      a2=64'hc031d16b46580000;
      b2=64'h4005c50d88213000;
      c2=64'h3fecd7d9898b32f1;
    end
  56: begin 
      a2=64'hc031dead07f00000;
      b2=64'h40057dc7d0060000;
      c2=64'h3feced7af43cc76e;
    end
  57: begin 
      a2=64'hc031ebc2b2040000;
      b2=64'h4005364d10dc5000;
      c2=64'h3fed02d4feb2bd8e;
    end
  58: begin 
      a2=64'hc031f8ac24480000;
      b2=64'h4004ee9dfb025000;
      c2=64'h3fed17e7743e35d7;
    end
  59: begin 
      a2=64'hc03205693ede0000;
      b2=64'h4004a6bb3f575800;
      c2=64'h3fed2cb220e0ef9a;
    end
  60: begin 
      a2=64'hc03211f9e25e0000;
      b2=64'h40045ea58f3a3400;
      c2=64'h3fed4134d14dc935;
    end
  61: begin 
      a2=64'hc0321e5defc00000;
      b2=64'h4004165d9c875800;
      c2=64'h3fed556f52e93ead;
    end
  62: begin 
      a2=64'hc0322a9548780000;
      b2=64'h4003cde419976000;
      c2=64'h3fed696173c9e687;
    end
  63: begin 
      a2=64'hc032369fce5e0000;
      b2=64'h40038539b93d0c00;
      c2=64'h3fed7d0b02b8ecf5;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a3=64'hc032427d63be0000;
      b3=64'h40033c5f2ec3bc00;
      c3=64'h3fed906bcf328d42;
    end
  1: begin 
      a3=64'hc0324e2deb4c0000;
      b3=64'h4002f3552dedac00;
      c3=64'h3feda383a9668984;
    end
  2: begin 
      a3=64'hc03259b148380000;
      b3=64'h4002aa1c6af23800;
      c3=64'h3fedb6526238a097;
    end
  3: begin 
      a3=64'hc03265075e160000;
      b3=64'h400260b59a7c0800;
      c3=64'h3fedc8d7cb41025c;
    end
  4: begin 
      a3=64'hc032703010ee0000;
      b3=64'h4002172171a77800;
      c3=64'h3feddb13b6ccc238;
    end
  5: begin 
      a3=64'hc0327b2b45340000;
      b3=64'h4001cd60a600b800;
      c3=64'h3feded05f7de47d6;
    end
  6: begin 
      a3=64'hc03285f8dfd20000;
      b3=64'h40018373ed822800;
      c3=64'h3fedfeae622dbe27;
    end
  7: begin 
      a3=64'hc0329098c6240000;
      b3=64'h4001395bfe928000;
      c3=64'h3fee100cca2980a8;
    end
  8: begin 
      a3=64'hc0329b0addea0000;
      b3=64'h4000ef1990031400;
      c3=64'h3fee212104f686e1;
    end
  9: begin 
      a3=64'hc032a54f0d660000;
      b3=64'h4000a4ad590e2400;
      c3=64'h3fee31eae870ce21;
    end
  10: begin 
      a3=64'hc032af653b440000;
      b3=64'h40005a1811550400;
      c3=64'h3fee426a4b2bc17a;
    end
  11: begin 
      a3=64'hc032b94d4e980000;
      b3=64'h40000f5a70de4800;
      c3=64'h3fee529f04729ff8;
    end
  12: begin 
      a3=64'hc032c3072ef80000;
      b3=64'h3fff88ea60284800;
      c3=64'h3fee6288ec48e10f;
    end
  13: begin 
      a3=64'hc032cc92c4620000;
      b3=64'h3ffef2d20f851800;
      c3=64'h3fee7227db6a9741;
    end
  14: begin 
      a3=64'hc032d5eff74a0000;
      b3=64'h3ffe5c6d622af000;
      c3=64'h3fee817bab4cd109;
    end
  15: begin 
      a3=64'hc032df1eb0940000;
      b3=64'h3ffdc5bdcb2e2000;
      c3=64'h3fee9084361df7ef;
    end
  16: begin 
      a3=64'hc032e81ed9980000;
      b3=64'h3ffd2ec4be5bc000;
      c3=64'h3fee9f4156c62dd7;
    end
  17: begin 
      a3=64'hc032f0f05c200000;
      b3=64'h3ffc9783b0365000;
      c3=64'h3feeadb2e8e7a88a;
    end
  18: begin 
      a3=64'hc032f993226a0000;
      b3=64'h3ffbfffc15f1c800;
      c3=64'h3feebbd8c8df0b71;
    end
  19: begin 
      a3=64'hc0330207172c0000;
      b3=64'h3ffb682f65706800;
      c3=64'h3feec9b2d3c3bf81;
    end
  20: begin 
      a3=64'hc0330a4c25840000;
      b3=64'h3ffad01f153ec000;
      c3=64'h3feed740e7684960;
    end
  21: begin 
      a3=64'hc0331262390a0000;
      b3=64'h3ffa37cc9c903000;
      c3=64'h3feee482e25a9db9;
    end
  22: begin 
      a3=64'hc0331a493dd20000;
      b3=64'h3ff99f39733ba000;
      c3=64'h3feef178a3e473bf;
    end
  23: begin 
      a3=64'hc033220120560000;
      b3=64'h3ff9066711b72800;
      c3=64'h3feefe220c0b95e9;
    end
  24: begin 
      a3=64'hc0332989cd8a0000;
      b3=64'h3ff86d56f1153000;
      c3=64'h3fef0a7efb9230d4;
    end
  25: begin 
      a3=64'hc03330e332da0000;
      b3=64'h3ff7d40a8b005800;
      c3=64'h3fef168f53f7205a;
    end
  26: begin 
      a3=64'hc033380d3e260000;
      b3=64'h3ff73a8359b81800;
      c3=64'h3fef2252f7763ad7;
    end
  27: begin 
      a3=64'hc0333f07ddba0000;
      b3=64'h3ff6a0c2d80cb800;
      c3=64'h3fef2dc9c9089a9a;
    end
  28: begin 
      a3=64'hc03345d300640000;
      b3=64'h3ff606ca815c4000;
      c3=64'h3fef38f3ac64e586;
    end
  29: begin 
      a3=64'hc0334c6e95600000;
      b3=64'h3ff56c9bd18e2000;
      c3=64'h3fef43d085ff92da;
    end
  30: begin 
      a3=64'hc03352da8c5c0000;
      b3=64'h3ff4d23845102000;
      c3=64'h3fef4e603b0b2f2a;
    end
  31: begin 
      a3=64'hc0335916d5840000;
      b3=64'h3ff437a158d26000;
      c3=64'h3fef58a2b1789e82;
    end
  32: begin 
      a3=64'hc0335f2361740000;
      b3=64'h3ff39cd88a43e800;
      c3=64'h3fef6297cff75cae;
    end
  33: begin 
      a3=64'hc033650021400000;
      b3=64'h3ff301df574e8000;
      c3=64'h3fef6c3f7df5bbb5;
    end
  34: begin 
      a3=64'hc0336aad06700000;
      b3=64'h3ff266b73e53a800;
      c3=64'h3fef7599a3a12075;
    end
  35: begin 
      a3=64'hc033702a03000000;
      b3=64'h3ff1cb61be287800;
      c3=64'h3fef7ea629e63d6c;
    end
  36: begin 
      a3=64'hc0337577096a0000;
      b3=64'h3ff12fe056121000;
      c3=64'h3fef8764fa714ba7;
    end
  37: begin 
      a3=64'hc0337a940c9c0000;
      b3=64'h3ff0943485c1e800;
      c3=64'h3fef8fd5ffae41d9;
    end
  38: begin 
      a3=64'hc0337f80fff00000;
      b3=64'h3feff0bf9aa43000;
      c3=64'h3fef97f924c90998;
    end
  39: begin 
      a3=64'hc033843dd7420000;
      b3=64'h3feeb8c75a836000;
      c3=64'h3fef9fce55adb2c6;
    end
  40: begin 
      a3=64'hc03388ca86e60000;
      b3=64'h3fed80834ce1c000;
      c3=64'h3fefa7557f08a515;
    end
  41: begin 
      a3=64'hc0338d27039e0000;
      b3=64'h3fec47f6743b0000;
      c3=64'h3fefae8e8e46cfb9;
    end
  42: begin 
      a3=64'hc033915342a60000;
      b3=64'h3feb0f23d3be5000;
      c3=64'h3fefb5797195d73f;
    end
  43: begin 
      a3=64'hc033954f39b60000;
      b3=64'h3fe9d60e6f46e000;
      c3=64'h3fefbc1617e44184;
    end
  44: begin 
      a3=64'hc033991adef60000;
      b3=64'h3fe89cb94b54e000;
      c3=64'h3fefc26470e19fd2;
    end
  45: begin 
      a3=64'hc0339cb6290e0000;
      b3=64'h3fe763276d05d000;
      c3=64'h3fefc8646cfeb720;
    end
  46: begin 
      a3=64'hc033a0210f100000;
      b3=64'h3fe6295bda0ca000;
      c3=64'h3fefce15fd6da679;
    end
  47: begin 
      a3=64'hc033a35b88920000;
      b3=64'h3fe4ef5998ab2000;
      c3=64'h3fefd37914220b83;
    end
  48: begin 
      a3=64'hc033a6658d9e0000;
      b3=64'h3fe3b523afa9b000;
      c3=64'h3fefd88da3d12524;
    end
  49: begin 
      a3=64'hc033a93f16b00000;
      b3=64'h3fe27abd26504000;
      c3=64'h3fefdd539ff1f455;
    end
  50: begin 
      a3=64'hc033abe81cc20000;
      b3=64'h3fe14029045ef000;
      c3=64'h3fefe1cafcbd5b08;
    end
  51: begin 
      a3=64'hc033ae6099460000;
      b3=64'h3fe0056a52062000;
      c3=64'h3fefe5f3af2e393f;
    end
  52: begin 
      a3=64'hc033b0a886200000;
      b3=64'h3fdd95082fbe4000;
      c3=64'h3fefe9cdad018839;
    end
  53: begin 
      a3=64'hc033b2bfddb00000;
      b3=64'h3fdb1ef2bdca6000;
      c3=64'h3fefed58ecb673c3;
    end
  54: begin 
      a3=64'hc033b4a69ad00000;
      b3=64'h3fd8a89a60da8000;
      c3=64'h3feff095658e71ac;
    end
  55: begin 
      a3=64'hc033b65cb8cc0000;
      b3=64'h3fd632052c3de000;
      c3=64'h3feff3830f8d575b;
    end
  56: begin 
      a3=64'hc033b7e2336a0000;
      b3=64'h3fd3bb3933d9a000;
      c3=64'h3feff621e3796d7d;
    end
  57: begin 
      a3=64'hc033b93706ec0000;
      b3=64'h3fd1443c8c1ac000;
      c3=64'h3feff871dadb81df;
    end
  58: begin 
      a3=64'hc033ba5b30080000;
      b3=64'h3fcd9a2a93cac000;
      c3=64'h3feffa72effef75c;
    end
  59: begin 
      a3=64'hc033bb4eabec0000;
      b3=64'h3fc8ab93050ec000;
      c3=64'h3feffc251df1d3f8;
    end
  60: begin 
      a3=64'hc033bc1178420000;
      b3=64'h3fc3bcbe97518000;
      c3=64'h3feffd886084cd0c;
    end
  61: begin 
      a3=64'hc033bca393240000;
      b3=64'h3fbd9b72ecf00000;
      c3=64'h3feffe9cb44b51a1;
    end
  62: begin 
      a3=64'hc033bd04fb320000;
      b3=64'h3fb3bd1f9dc38000;
      c3=64'h3fefff62169b92db;
    end
  63: begin 
      a3=64'hc033bd35af720000;
      b3=64'h3fa3bd3735140000;
      c3=64'h3fefffd8858e8a92;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a4=64'hc033bd35af720000;
      b4=64'hbe685a2000000000;
      c4=64'h3ff0000000000000;
    end
  1: begin 
      a4=64'hc033bd04fb300000;
      b4=64'hbfa3bd3a40560000;
      c4=64'h3fefffd8858e8a92;
    end
  2: begin 
      a4=64'hc033bca393260000;
      b4=64'hbfb3bd21235e0000;
      c4=64'h3fefff62169b92dc;
    end
  3: begin 
      a4=64'hc033bc1178420000;
      b4=64'hbfbd9b7472820000;
      c4=64'h3feffe9cb44b51a1;
    end
  4: begin 
      a4=64'hc033bb4eabec0000;
      b4=64'hbfc3bcbf5a13c000;
      c4=64'h3feffd886084cd0d;
    end
  5: begin 
      a4=64'hc033ba5b30080000;
      b4=64'hbfc8ab93c7c8c000;
      c4=64'h3feffc251df1d3f9;
    end
  6: begin 
      a4=64'hc033b93706ee0000;
      b4=64'hbfcd9a2b567a4000;
      c4=64'h3feffa72effef75d;
    end
  7: begin 
      a4=64'hc033b7e2336a0000;
      b4=64'hbfd1443ced6c6000;
      c4=64'h3feff871dadb81e0;
    end
  8: begin 
      a4=64'hc033b65cb8ca0000;
      b4=64'hbfd3bb3995246000;
      c4=64'h3feff621e3796d7f;
    end
  9: begin 
      a4=64'hc033b4a69ace0000;
      b4=64'hbfd632058d80a000;
      c4=64'h3feff3830f8d575d;
    end
  10: begin 
      a4=64'hc033b2bfddb00000;
      b4=64'hbfd8a89ac2142000;
      c4=64'h3feff095658e71ae;
    end
  11: begin 
      a4=64'hc033b0a886200000;
      b4=64'hbfdb1ef31efa6000;
      c4=64'h3fefed58ecb673c5;
    end
  12: begin 
      a4=64'hc033ae6099460000;
      b4=64'hbfdd950890e36000;
      c4=64'h3fefe9cdad01883b;
    end
  13: begin 
      a4=64'hc033abe81cc20000;
      b4=64'hbfe0056a8292d000;
      c4=64'h3fefe5f3af2e3942;
    end
  14: begin 
      a4=64'hc033a93f16b20000;
      b4=64'hbfe1402934e55000;
      c4=64'h3fefe1cafcbd5b0a;
    end
  15: begin 
      a4=64'hc033a6658d9c0000;
      b4=64'hbfe27abd56cfe000;
      c4=64'h3fefdd539ff1f457;
    end
  16: begin 
      a4=64'hc033a35b88940000;
      b4=64'hbfe3b523e021e000;
      c4=64'h3fefd88da3d12527;
    end
  17: begin 
      a4=64'hc033a0210f0e0000;
      b4=64'hbfe4ef59c91ba000;
      c4=64'h3fefd37914220b86;
    end
  18: begin 
      a4=64'hc0339cb6290c0000;
      b4=64'hbfe6295c0a751000;
      c4=64'h3fefce15fd6da67d;
    end
  19: begin 
      a4=64'hc033991adef80000;
      b4=64'hbfe763279d657000;
      c4=64'h3fefc8646cfeb723;
    end
  20: begin 
      a4=64'hc033954f39b80000;
      b4=64'hbfe89cb97bab8000;
      c4=64'h3fefc26470e19fd5;
    end
  21: begin 
      a4=64'hc033915342a60000;
      b4=64'hbfe9d60e9f93e000;
      c4=64'h3fefbc1617e44188;
    end
  22: begin 
      a4=64'hc0338d27039e0000;
      b4=64'hbfeb0f2404012000;
      c4=64'h3fefb5797195d743;
    end
  23: begin 
      a4=64'hc03388ca86e60000;
      b4=64'hbfec47f6a4736000;
      c4=64'h3fefae8e8e46cfbd;
    end
  24: begin 
      a4=64'hc033843dd7420000;
      b4=64'hbfed80837d0f3000;
      c4=64'h3fefa7557f08a519;
    end
  25: begin 
      a4=64'hc0337f80ffee0000;
      b4=64'hbfeeb8c78aa54000;
      c4=64'h3fef9fce55adb2cb;
    end
  26: begin 
      a4=64'hc0337a940c9a0000;
      b4=64'hbfeff0bfcaba3000;
      c4=64'h3fef97f924c9099d;
    end
  27: begin 
      a4=64'hc0337577096c0000;
      b4=64'hbff094349dc6b800;
      c4=64'h3fef8fd5ffae41dd;
    end
  28: begin 
      a4=64'hc033702a03020000;
      b4=64'hbff12fe06e107000;
      c4=64'h3fef8764fa714bac;
    end
  29: begin 
      a4=64'hc0336aad066e0000;
      b4=64'hbff1cb61d6203800;
      c4=64'h3fef7ea629e63d71;
    end
  30: begin 
      a4=64'hc033650021400000;
      b4=64'hbff266b756448000;
      c4=64'h3fef7599a3a1207a;
    end
  31: begin 
      a4=64'hc0335f2361760000;
      b4=64'hbff301df6f384000;
      c4=64'h3fef6c3f7df5bbba;
    end
  32: begin 
      a4=64'hc0335916d5840000;
      b4=64'hbff39cd8a2264000;
      c4=64'h3fef6297cff75cb3;
    end
  33: begin 
      a4=64'hc03352da8c5c0000;
      b4=64'hbff437a170ad4000;
      c4=64'h3fef58a2b1789e88;
    end
  34: begin 
      a4=64'hc0334c6e95600000;
      b4=64'hbff4d2385ce32000;
      c4=64'h3fef4e603b0b2f30;
    end
  35: begin 
      a4=64'hc03345d300660000;
      b4=64'hbff56c9be9591000;
      c4=64'h3fef43d085ff92e0;
    end
  36: begin 
      a4=64'hc0333f07ddba0000;
      b4=64'hbff606ca991ef000;
      c4=64'h3fef38f3ac64e58d;
    end
  37: begin 
      a4=64'hc033380d3e240000;
      b4=64'hbff6a0c2efc6f800;
      c4=64'h3fef2dc9c9089aa1;
    end
  38: begin 
      a4=64'hc03330e332da0000;
      b4=64'hbff73a8371699000;
      c4=64'h3fef2252f7763add;
    end
  39: begin 
      a4=64'hc0332989cd8a0000;
      b4=64'hbff7d40aa2a8e800;
      c4=64'h3fef168f53f72061;
    end
  40: begin 
      a4=64'hc033220120540000;
      b4=64'hbff86d5708b48000;
      c4=64'h3fef0a7efb9230db;
    end
  41: begin 
      a4=64'hc0331a493dd00000;
      b4=64'hbff90667294d1800;
      c4=64'h3feefe220c0b95f1;
    end
  42: begin 
      a4=64'hc0331262390a0000;
      b4=64'hbff99f398ac7e000;
      c4=64'h3feef178a3e473c7;
    end
  43: begin 
      a4=64'hc0330a4c25820000;
      b4=64'hbffa37ccb412a800;
      c4=64'h3feee482e25a9dc0;
    end
  44: begin 
      a4=64'hc0330207172c0000;
      b4=64'hbffad01f2cb71000;
      c4=64'h3feed740e7684968;
    end
  45: begin 
      a4=64'hc032f993226a0000;
      b4=64'hbffb682f7cde7800;
      c4=64'h3feec9b2d3c3bf89;
    end
  46: begin 
      a4=64'hc032f0f05c200000;
      b4=64'hbffbfffc2d555000;
      c4=64'h3feebbd8c8df0b79;
    end
  47: begin 
      a4=64'hc032e81ed9980000;
      b4=64'hbffc9783c78f0800;
      c4=64'h3feeadb2e8e7a893;
    end
  48: begin 
      a4=64'hc032df1eb0920000;
      b4=64'hbffd2ec4d5a98000;
      c4=64'h3fee9f4156c62ddf;
    end
  49: begin 
      a4=64'hc032d5eff74a0000;
      b4=64'hbffdc5bde270a000;
      c4=64'h3fee9084361df7f8;
    end
  50: begin 
      a4=64'hc032cc92c4620000;
      b4=64'hbffe5c6d79620800;
      c4=64'h3fee817bab4cd112;
    end
  51: begin 
      a4=64'hc032c3072ef80000;
      b4=64'hbffef2d226b08800;
      c4=64'h3fee7227db6a974a;
    end
  52: begin 
      a4=64'hc032b94d4e980000;
      b4=64'hbfff88ea7747c800;
      c4=64'h3fee6288ec48e118;
    end
  53: begin 
      a4=64'hc032af653b420000;
      b4=64'hc0000f5a7c67fc00;
      c4=64'h3fee529f0472a002;
    end
  54: begin 
      a4=64'hc032a54f0d680000;
      b4=64'hc0005a181cd88c00;
      c4=64'h3fee426a4b2bc184;
    end
  55: begin 
      a4=64'hc0329b0addec0000;
      b4=64'hc000a4ad648b6c00;
      c4=64'h3fee31eae870ce2a;
    end
  56: begin 
      a4=64'hc0329098c6220000;
      b4=64'hc000ef199b79f400;
      c4=64'h3fee212104f686eb;
    end
  57: begin 
      a4=64'hc03285f8dfd20000;
      b4=64'hc001395c0a02dc00;
      c4=64'h3fee100cca2980b2;
    end
  58: begin 
      a4=64'hc0327b2b45340000;
      b4=64'hc0018373f8ebec00;
      c4=64'h3fedfeae622dbe31;
    end
  59: begin 
      a4=64'hc032703010ec0000;
      b4=64'hc001cd60b163c400;
      c4=64'h3feded05f7de47e0;
    end
  60: begin 
      a4=64'hc03265075e160000;
      b4=64'hc00217217d03b000;
      c4=64'h3feddb13b6ccc243;
    end
  61: begin 
      a4=64'hc03259b1483a0000;
      b4=64'hc00260b5a5d15400;
      c4=64'h3fedc8d7cb410267;
    end
  62: begin 
      a4=64'hc0324e2deb4e0000;
      b4=64'hc002aa1c76407c00;
      c4=64'h3fedb6526238a0a2;
    end
  63: begin 
      a4=64'hc032427d63be0000;
      b4=64'hc002f3553934c400;
      c4=64'h3feda383a966898f;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a5=64'hc032369fce5e0000;
      b5=64'hc0033c5f3a039000;
      c5=64'h3fed906bcf328d4d;
    end
  1: begin 
      a5=64'hc0322a9548780000;
      b5=64'hc0038539c4758000;
      c5=64'h3fed7d0b02b8ed01;
    end
  2: begin 
      a5=64'hc0321e5defc20000;
      b5=64'hc003cde424c85800;
      c5=64'h3fed696173c9e692;
    end
  3: begin 
      a5=64'hc03211f9e25e0000;
      b5=64'hc004165da7b0bc00;
      c5=64'h3fed556f52e93eb8;
    end
  4: begin 
      a5=64'hc03205693ede0000;
      b5=64'hc0045ea59a5bdc00;
      c5=64'h3fed4134d14dc941;
    end
  5: begin 
      a5=64'hc031f8ac24480000;
      b5=64'hc004a6bb4a713400;
      c5=64'h3fed2cb220e0efa6;
    end
  6: begin 
      a5=64'hc031ebc2b2020000;
      b5=64'hc004ee9e06144400;
      c5=64'h3fed17e7743e35e3;
    end
  7: begin 
      a5=64'hc031dead07ee0000;
      b5=64'hc005364d1be64400;
      c5=64'h3fed02d4feb2bd9b;
    end
  8: begin 
      a5=64'hc031d16b46560000;
      b5=64'hc0057dc7db07d000;
      c5=64'h3feced7af43cc77b;
    end
  9: begin 
      a5=64'hc031c3fd8dea0000;
      b5=64'hc005c50d931ac400;
      c5=64'h3fecd7d9898b32ff;
    end
  10: begin 
      a5=64'hc031b663ffd40000;
      b5=64'hc0060c1d9443b400;
      c5=64'h3fecc1f0f3fcfc64;
    end
  11: begin 
      a5=64'hc031a89ebd9a0000;
      b5=64'hc00652f72f2bd800;
      c5=64'h3fecabc169a0b90a;
    end
  12: begin 
      a5=64'hc0319aade9400000;
      b5=64'hc0069999b5028400;
      c5=64'h3fec954b213411fd;
    end
  13: begin 
      a5=64'hc0318c91a51e0000;
      b5=64'hc006e004777f1800;
      c5=64'h3fec7e8e52233cfb;
    end
  14: begin 
      a5=64'hc0317e4a14120000;
      b5=64'hc0072636c8e27000;
      c5=64'h3fec678b348873a4;
    end
  15: begin 
      a5=64'hc0316fd759520000;
      b5=64'hc0076c2ffbf8b400;
      c5=64'h3fec5042012b690f;
    end
  16: begin 
      a5=64'hc031613998840000;
      b5=64'hc007b1ef641afc00;
      c5=64'h3fec38b2f180bdba;
    end
  17: begin 
      a5=64'hc0315270f5b60000;
      b5=64'hc007f7745530f800;
      c5=64'h3fec20de3fa971b8;
    end
  18: begin 
      a5=64'hc031437d956a0000;
      b5=64'hc0083cbe23b29c00;
      c5=64'h3fec08c426725553;
    end
  19: begin 
      a5=64'hc031345f9c7a0000;
      b5=64'hc00881cc24a9bc00;
      c5=64'h3febf064e15377e6;
    end
  20: begin 
      a5=64'hc031251730380000;
      b5=64'hc008c69dadb3d000;
      c5=64'h3febd7c0ac6f9534;
    end
  21: begin 
      a5=64'hc03115a4765e0000;
      b5=64'hc0090b3215035800;
      c5=64'h3febbed7c49380f3;
    end
  22: begin 
      a5=64'hc031060794fe0000;
      b5=64'hc0094f88b161ec00;
      c5=64'h3feba5aa673590dd;
    end
  23: begin 
      a5=64'hc030f640b2ae0000;
      b5=64'hc00993a0da315000;
      c5=64'h3feb8c38d27504f2;
    end
  24: begin 
      a5=64'hc030e64ff64a0000;
      b5=64'hc009d779e76da400;
      c5=64'h3feb728345196e48;
    end
  25: begin 
      a5=64'hc030d63587340000;
      b5=64'hc00a1b1331ae8800;
      c5=64'h3feb5889fe92140f;
    end
  26: begin 
      a5=64'hc030c5f18d1e0000;
      b5=64'hc00a5e6c12292400;
      c5=64'h3feb3e4d3ef5571d;
    end
  27: begin 
      a5=64'hc030b58430380000;
      b5=64'hc00aa183e2b14400;
      c5=64'h3feb23cd470013bf;
    end
  28: begin 
      a5=64'hc030a4ed98f80000;
      b5=64'hc00ae459fdbb9c00;
      c5=64'h3feb090a58150209;
    end
  29: begin 
      a5=64'hc030942df05a0000;
      b5=64'hc00b26edbe5eb000;
      c5=64'h3feaee04b43c147f;
    end
  30: begin 
      a5=64'hc03083455fa80000;
      b5=64'hc00b693e8054e800;
      c5=64'h3fead2bc9e21d51b;
    end
  31: begin 
      a5=64'hc030723410a80000;
      b5=64'hc00bab4b9ffde400;
      c5=64'h3feab7325916c0e0;
    end
  32: begin 
      a5=64'hc03060fa2d660000;
      b5=64'hc00bed147a603c00;
      c5=64'h3fea9b66290ea1ad;
    end
  33: begin 
      a5=64'hc0304f97e06e0000;
      b5=64'hc00c2e986d2ae000;
      c5=64'h3fea7f58529fe6a8;
    end
  34: begin 
      a5=64'hc0303e0d549e0000;
      b5=64'hc00c6fd6d6b6e000;
      c5=64'h3fea63091b02faed;
    end
  35: begin 
      a5=64'hc0302c5ab5400000;
      b5=64'hc00cb0cf1608c800;
      c5=64'h3fea4678c8119ad4;
    end
  36: begin 
      a5=64'hc0301a802e040000;
      b5=64'hc00cf1808ad24400;
      c5=64'h3fea29a7a046278d;
    end
  37: begin 
      a5=64'hc030087deaee0000;
      b5=64'hc00d31ea9573c400;
      c5=64'h3fea0c95eabaf943;
    end
  38: begin 
      a5=64'hc02feca830f40000;
      b5=64'hc00d720c96fdc800;
      c5=64'h3fe9ef43ef29afa0;
    end
  39: begin 
      a5=64'hc02fc805c6d80000;
      b5=64'hc00db1e5f132bc00;
      c5=64'h3fe9d1b1f5ea80e2;
    end
  40: begin 
      a5=64'hc02fa314f2040000;
      b5=64'hc00df17606881c00;
      c5=64'h3fe9b3e047f3874d;
    end
  41: begin 
      a5=64'hc02f7dd60d800000;
      b5=64'hc00e30bc3a286400;
      c5=64'h3fe995cf2ed80d30;
    end
  42: begin 
      a5=64'hc02f584975580000;
      b5=64'hc00e6fb7eff41000;
      c5=64'h3fe9777ef4c7d74e;
    end
  43: begin 
      a5=64'hc02f326f860c0000;
      b5=64'hc00eae688c83d000;
      c5=64'h3fe958efe48e6de2;
    end
  44: begin 
      a5=64'hc02f0c489d200000;
      b5=64'hc00eeccd75293c00;
      c5=64'h3fe93a2249926408;
    end
  45: begin 
      a5=64'hc02ee5d5189c0000;
      b5=64'hc00f2ae60ff0f400;
      c5=64'h3fe91b166fd49dae;
    end
  46: begin 
      a5=64'hc02ebf1557780000;
      b5=64'hc00f68b1c3a3cc00;
      c5=64'h3fe8fbcca3ef941a;
    end
  47: begin 
      a5=64'hc02e9809b9380000;
      b5=64'hc00fa62ff7c85000;
      c5=64'h3fe8dc45331698d8;
    end
  48: begin 
      a5=64'hc02e70b29e4c0000;
      b5=64'hc00fe36014a44c00;
      c5=64'h3fe8bc806b15174f;
    end
  49: begin 
      a5=64'hc02e491067b00000;
      b5=64'hc0101020c19f1c00;
      c5=64'h3fe89c7e9a4dd4b7;
    end
  50: begin 
      a5=64'hc02e212377340000;
      b5=64'hc0102e69d6af5e00;
      c5=64'h3fe87c400fba2ecd;
    end
  51: begin 
      a5=64'hc02df8ec2f700000;
      b5=64'hc0104c8afec8f600;
      c5=64'h3fe85bc51ae958da;
    end
  52: begin 
      a5=64'hc02dd06af3840000;
      b5=64'hc0106a83ef949000;
      c5=64'h3fe83b0e0bff977d;
    end
  53: begin 
      a5=64'hc02da7a027740000;
      b5=64'hc01088545f1df400;
      c5=64'h3fe81a1b33b57ad9;
    end
  54: begin 
      a5=64'hc02d7e8c2fcc0000;
      b5=64'hc010a5fc03d4fa00;
      c5=64'h3fe7f8ece3571780;
    end
  55: begin 
      a5=64'hc02d552f72080000;
      b5=64'hc010c37a948dfc00;
      c5=64'h3fe7d7836cc33dc0;
    end
  56: begin 
      a5=64'hc02d2b8a541c0000;
      b5=64'hc010e0cfc882d800;
      c5=64'h3fe7b5df226aafbf;
    end
  57: begin 
      a5=64'hc02d019d3ce40000;
      b5=64'hc010fdfb57535000;
      c5=64'h3fe79400574f55f3;
    end
  58: begin 
      a5=64'hc02cd76893b00000;
      b5=64'hc0111afcf9061000;
      c5=64'h3fe771e75f03726f;
    end
  59: begin 
      a5=64'hc02cacecc0c80000;
      b5=64'hc01137d466091800;
      c5=64'h3fe74f948da8d29c;
    end
  60: begin 
      a5=64'hc02c822a2cdc0000;
      b5=64'hc01154815732a000;
      c5=64'h3fe72d0837efffa4;
    end
  61: begin 
      a5=64'hc02c5721418c0000;
      b5=64'hc011710385c1a000;
      c5=64'h3fe70a42b3176d89;
    end
  62: begin 
      a5=64'hc02c2bd268ec0000;
      b5=64'hc0118d5aab5ea600;
      c5=64'h3fe6e74454eaa8bd;
    end
  63: begin 
      a5=64'hc02c003e0df00000;
      b5=64'hc011a986821c5e00;
      c5=64'h3fe6c40d73c18285;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a6=64'hc02bd4649c0c0000;
      b6=64'hc011c586c4785600;
      c6=64'h3fe6a09e667f3bdb;
    end
  1: begin 
      a6=64'hc02ba8467f7c0000;
      b6=64'hc011e15b2d5bac00;
      c6=64'h3fe67cf78491af20;
    end
  2: begin 
      a6=64'hc02b7be4251c0000;
      b6=64'hc011fd03781b9a00;
      c6=64'h3fe6591925f0784d;
    end
  3: begin 
      a6=64'hc02b4f3dfa680000;
      b6=64'hc012187f607a5400;
      c6=64'h3fe63503a31c1bfa;
    end
  4: begin 
      a6=64'hc02b22546d980000;
      b6=64'hc01233cea2a76800;
      c6=64'h3fe610b7551d2cee;
    end
  5: begin 
      a6=64'hc02af527ed680000;
      b6=64'hc0124ef0fb40c000;
      c6=64'h3fe5ec3495837086;
    end
  6: begin 
      a6=64'hc02ac7b8e9680000;
      b6=64'hc01269e62752ea00;
      c6=64'h3fe5c77bbe65019c;
    end
  7: begin 
      a6=64'hc02a9a07d1980000;
      b6=64'hc01284ade45a0e00;
      c6=64'h3fe5a28d2a5d7262;
    end
  8: begin 
      a6=64'hc02a6c1516d00000;
      b6=64'hc0129f47f0424c00;
      c6=64'h3fe57d69348cecb0;
    end
  9: begin 
      a6=64'hc02a3de12a540000;
      b6=64'hc012b9b40968a600;
      c6=64'h3fe5581038975147;
    end
  10: begin 
      a6=64'hc02a0f6c7e3c0000;
      b6=64'hc012d3f1ee9b6000;
      c6=64'h3fe5328292a355a7;
    end
  11: begin 
      a6=64'hc029e0b785100000;
      b6=64'hc012ee015f1ad000;
      c6=64'h3fe50cc09f59a0ab;
    end
  12: begin 
      a6=64'hc029b1c2b2280000;
      b6=64'hc01307e21a99de00;
      c6=64'h3fe4e6cabbe3e5fb;
    end
  13: begin 
      a6=64'hc029828e79480000;
      b6=64'hc0132193e13ec000;
      c6=64'h3fe4c0a145ec0014;
    end
  14: begin 
      a6=64'hc029531b4f000000;
      b6=64'hc0133b1673a37800;
      c6=64'h3fe49a449b9b094b;
    end
  15: begin 
      a6=64'hc0292369a8500000;
      b6=64'hc013546992d69000;
      c6=64'h3fe473b51b987358;
    end
  16: begin 
      a6=64'hc028f379fae80000;
      b6=64'hc0136d8d005ba000;
      c6=64'h3fe44cf325091de9;
    end
  17: begin 
      a6=64'hc028c34cbd240000;
      b6=64'hc01386807e2bdc00;
      c6=64'h3fe425ff178e6bc3;
    end
  18: begin 
      a6=64'hc02892e265cc0000;
      b6=64'hc0139f43ceb6e200;
      c6=64'h3fe3fed9534556e7;
    end
  19: begin 
      a6=64'hc028623b6c640000;
      b6=64'hc013b7d6b4e31200;
      c6=64'h3fe3d78238c58355;
    end
  20: begin 
      a6=64'hc028315848e80000;
      b6=64'hc013d038f40e5a00;
      c6=64'h3fe3affa292050cd;
    end
  21: begin 
      a6=64'hc028003974080000;
      b6=64'hc013e86a500e9200;
      c6=64'h3fe3884185dfeb34;
    end
  22: begin 
      a6=64'hc027cedf66ec0000;
      b6=64'hc014006a8d325800;
      c6=64'h3fe36058b1065a07;
    end
  23: begin 
      a6=64'hc0279d4a9b6c0000;
      b6=64'hc014183970415a00;
      c6=64'h3fe338400d0c8e69;
    end
  24: begin 
      a6=64'hc0276b7b8bbc0000;
      b6=64'hc0142fd6be7d3000;
      c6=64'h3fe30ff7fce17046;
    end
  25: begin 
      a6=64'hc0273972b2e40000;
      b6=64'hc01447423da1a400;
      c6=64'h3fe2e780e3e8ea2a;
    end
  26: begin 
      a6=64'hc02707308c3c0000;
      b6=64'hc0145e7bb3e58200;
      c6=64'h3fe2bedb25faf3fc;
    end
  27: begin 
      a6=64'hc026d4b593e00000;
      b6=64'hc0147582e7faf600;
      c6=64'h3fe2960727629cbc;
    end
  28: begin 
      a6=64'hc026a20246440000;
      b6=64'hc0148c57a1103e00;
      c6=64'h3fe26d054cdd12f1;
    end
  29: begin 
      a6=64'hc0266f17209c0000;
      b6=64'hc014a2f9a6d01600;
      c6=64'h3fe243d5fb98ac33;
    end
  30: begin 
      a6=64'hc0263bf4a0740000;
      b6=64'hc014b968c1626400;
      c6=64'h3fe21a799933eb6b;
    end
  31: begin 
      a6=64'hc026089b43fc0000;
      b6=64'hc014cfa4b96cac00;
      c6=64'h3fe1f0f08bbc862f;
    end
  32: begin 
      a6=64'hc025d50b89fc0000;
      b6=64'hc014e5ad58128800;
      c6=64'h3fe1c73b39ae68db;
    end
  33: begin 
      a6=64'hc025a145f18c0000;
      b6=64'hc014fb8266f67400;
      c6=64'h3fe19d5a09f2b9cd;
    end
  34: begin 
      a6=64'hc0256d4afa8c0000;
      b6=64'hc0151123b039e800;
      c6=64'h3fe1734d63dedb5c;
    end
  35: begin 
      a6=64'hc025391b25180000;
      b6=64'hc0152690fe7e5a00;
      c6=64'h3fe14915af336d01;
    end
  36: begin 
      a6=64'hc02504b6f21c0000;
      b6=64'hc0153bca1ce54400;
      c6=64'h3fe11eb3541b4b37;
    end
  37: begin 
      a6=64'hc024d01ee2b80000;
      b6=64'hc01550ced7111c00;
      c6=64'h3fe0f426bb2a8e93;
    end
  38: begin 
      a6=64'hc0249b5378d80000;
      b6=64'hc015659ef9256c00;
      c6=64'h3fe0c9704d5d89a3;
    end
  39: begin 
      a6=64'hc024665536940000;
      b6=64'hc0157a3a4fc7ae00;
      c6=64'h3fe09e907417c5f3;
    end
  40: begin 
      a6=64'hc02431249ed40000;
      b6=64'hc0158ea0a81f8200;
      c6=64'h3fe0738799230003;
    end
  41: begin 
      a6=64'hc023fbc234b40000;
      b6=64'hc015a2d1cfd75800;
      c6=64'h3fe0485626ae222e;
    end
  42: begin 
      a6=64'hc023c62e7c0c0000;
      b6=64'hc015b6cd951cd200;
      c6=64'h3fe01cfc874c3ecc;
    end
  43: begin 
      a6=64'hc0239069f8f20000;
      b6=64'hc015ca93c6a15c00;
      c6=64'h3fdfe2f64be71238;
    end
  44: begin 
      a6=64'hc0235a75302c0000;
      b6=64'hc015de24339a7f00;
      c6=64'h3fdf8ba4dbf89ae6;
    end
  45: begin 
      a6=64'hc0232450a6be0000;
      b6=64'hc015f17eabc28400;
      c6=64'h3fdf3405963fd090;
    end
  46: begin 
      a6=64'hc022edfce2500000;
      b6=64'hc01604a2ff58ca00;
      c6=64'h3fdedc1952ef7902;
    end
  47: begin 
      a6=64'hc022b77a68fa0000;
      b6=64'hc0161790ff223700;
      c6=64'h3fde83e0eaf8513e;
    end
  48: begin 
      a6=64'hc02280c9c1200000;
      b6=64'hc0162a487c69ea00;
      c6=64'h3fde2b5d3806f669;
    end
  49: begin 
      a6=64'hc02249eb71d00000;
      b6=64'hc0163cc949014a00;
      c6=64'h3fddd28f1481cc83;
    end
  50: begin 
      a6=64'hc02212e0024e0000;
      b6=64'hc0164f133740e600;
      c6=64'h3fdd79775b86e3b8;
    end
  51: begin 
      a6=64'hc021dba7fa880000;
      b6=64'hc01661261a087a00;
      c6=64'h3fdd2016e8e9db86;
    end
  52: begin 
      a6=64'hc021a443e2a20000;
      b6=64'hc0167301c4bfc500;
      c6=64'h3fdcc66e9931c48e;
    end
  53: begin 
      a6=64'hc0216cb443680000;
      b6=64'hc01684a60b569500;
      c6=64'h3fdc6c7f49970037;
    end
  54: begin 
      a6=64'hc02134f9a5ca0000;
      b6=64'hc0169612c2459300;
      c6=64'h3fdc1249d8011f10;
    end
  55: begin 
      a6=64'hc020fd14936c0000;
      b6=64'hc016a747be8e5b00;
      c6=64'h3fdbb7cf2304bd2f;
    end
  56: begin 
      a6=64'hc020c505961a0000;
      b6=64'hc016b844d5bc1f00;
      c6=64'h3fdb5d1009e15ceb;
    end
  57: begin 
      a6=64'hc0208ccd38460000;
      b6=64'hc016c909dde3ee00;
      c6=64'h3fdb020d6c7f4038;
    end
  58: begin 
      a6=64'hc020546c04880000;
      b6=64'hc016d996ada53500;
      c6=64'h3fdaa6c82b6d3ff5;
    end
  59: begin 
      a6=64'hc0201be286180000;
      b6=64'hc016e9eb1c2a0b00;
      c6=64'h3fda4b4127dea214;
    end
  60: begin 
      a6=64'hc01fc66290bc0000;
      b6=64'hc016fa070127b300;
      c6=64'h3fd9ef7943a8edb6;
    end
  61: begin 
      a6=64'hc01f54b1ae800000;
      b6=64'hc01709ea34deea00;
      c6=64'h3fd993716141be2f;
    end
  62: begin 
      a6=64'hc01ee2b37e3c0000;
      b6=64'hc0171994901c3a00;
      c6=64'h3fd9372a63bc9404;
    end
  63: begin 
      a6=64'hc01e706918dc0000;
      b6=64'hc0172905ec389d00;
      c6=64'h3fd8daa52ec8a4e1;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a7=64'hc01dfdd398ac0000;
      b7=64'hc017383e23197b00;
      c7=64'h3fd87de2a6aea991;
    end
  1: begin 
      a7=64'hc01d8af4182c0000;
      b7=64'hc017473d0f316d00;
      c7=64'h3fd820e3b04eaaf6;
    end
  2: begin 
      a7=64'hc01d17cbb2fc0000;
      b7=64'hc01756028b803b00;
      c7=64'h3fd7c3a9311dcd16;
    end
  3: begin 
      a7=64'hc01ca45b85100000;
      b7=64'hc017648e73939400;
      c7=64'h3fd766340f24192a;
    end
  4: begin 
      a7=64'hc01c30a4ab7c0000;
      b7=64'hc01772e0a3870400;
      c7=64'h3fd7088530fa45cf;
    end
  5: begin 
      a7=64'hc01bbca843700000;
      b7=64'hc01780f8f804b700;
      c7=64'h3fd6aa9d7dc77e43;
    end
  6: begin 
      a7=64'hc01b48676b680000;
      b7=64'hc0178ed74e457300;
      c7=64'h3fd64c7ddd3f27f7;
    end
  7: begin 
      a7=64'hc01ad3e341f80000;
      b7=64'hc0179c7b84112f00;
      c7=64'h3fd5ee27379ea6c1;
    end
  8: begin 
      a7=64'hc01a5f1ce6e00000;
      b7=64'hc017a9e577bf3800;
      c7=64'h3fd58f9a75ab200f;
    end
  9: begin 
      a7=64'hc019ea157a000000;
      b7=64'hc017b7150836ad00;
      c7=64'h3fd530d880af3c52;
    end
  10: begin 
      a7=64'hc01974ce1c600000;
      b7=64'hc017c40a14eeaf00;
      c7=64'h3fd4d1e24278e79d;
    end
  11: begin 
      a7=64'hc018ff47ef180000;
      b7=64'hc017d0c47deecd00;
      c7=64'h3fd472b8a5571083;
    end
  12: begin 
      a7=64'hc018898414480000;
      b7=64'hc017dd4423cf4200;
      c7=64'h3fd4135c94176635;
    end
  13: begin 
      a7=64'hc0181383ae980000;
      b7=64'hc017e988e7b93300;
      c7=64'h3fd3b3cefa0414e8;
    end
  14: begin 
      a7=64'hc0179d47e0fc0000;
      b7=64'hc017f592ab673400;
      c7=64'h3fd35410c2e18186;
    end
  15: begin 
      a7=64'hc01726d1cf680000;
      b7=64'hc018016151254500;
      c7=64'h3fd2f422daec03b8;
    end
  16: begin 
      a7=64'hc016b0229de80000;
      b7=64'hc0180cf4bbd16b00;
      c7=64'h3fd294062ed59f3b;
    end
  17: begin 
      a7=64'hc016393b71980000;
      b7=64'hc018184ccedba600;
      c7=64'h3fd233bbabc3bba4;
    end
  18: begin 
      a7=64'hc015c21d6f940000;
      b7=64'hc01823696e468e00;
      c7=64'h3fd1d3443f4cdb74;
    end
  19: begin 
      a7=64'hc0154ac9be180000;
      b7=64'hc0182e4a7ea73b00;
      c7=64'h3fd172a0d77651aa;
    end
  20: begin 
      a7=64'hc014d34183280000;
      b7=64'hc01838efe525ee00;
      c7=64'h3fd111d262b1f6a7;
    end
  21: begin 
      a7=64'hc0145b85e60c0000;
      b7=64'hc0184359877df600;
      c7=64'h3fd0b0d9cfdbdbc4;
    end
  22: begin 
      a7=64'hc013e3980df00000;
      b7=64'hc0184d874bfe2f00;
      c7=64'h3fd04fb80e37fddf;
    end
  23: begin 
      a7=64'hc0136b7923000000;
      b7=64'hc018577919891d00;
      c7=64'h3fcfdcdc1adfee63;
    end
  24: begin 
      a7=64'hc012f32a4d5a0000;
      b7=64'hc018612ed7954880;
      c7=64'h3fcf19f97b215f7e;
    end
  25: begin 
      a7=64'hc0127aacb6180000;
      b7=64'hc0186aa86e2d5c00;
      c7=64'h3fce56ca1e101a87;
    end
  26: begin 
      a7=64'hc012020186440000;
      b7=64'hc01873e5c5f07f00;
      c7=64'h3fcd934fe5454376;
    end
  27: begin 
      a7=64'hc0118929e7c00000;
      b7=64'hc0187ce6c8127580;
      c7=64'h3fcccf8cb312b2f4;
    end
  28: begin 
      a7=64'hc011102704d40000;
      b7=64'hc01885ab5e5bd200;
      c7=64'h3fcc0b826a7e4fca;
    end
  29: begin 
      a7=64'hc01096fa07d20000;
      b7=64'hc0188e33732a6680;
      c7=64'h3fcb4732ef3d6792;
    end
  30: begin 
      a7=64'hc0101da41bfe0000;
      b7=64'hc018967ef1711d00;
      c7=64'h3fca82a025b004b9;
    end
  31: begin 
      a7=64'hc00f484cd8e80000;
      b7=64'hc0189e8dc4b88f00;
      c7=64'h3fc9bdcbf2dc43d7;
    end
  32: begin 
      a7=64'hc00e55044a700000;
      b7=64'hc018a65fd91ed980;
      c7=64'h3fc8f8b83c69a675;
    end
  33: begin 
      a7=64'hc00d6170e4600000;
      b7=64'hc018adf51b582780;
      c7=64'h3fc83366e89c6539;
    end
  34: begin 
      a7=64'hc00c6d9500540000;
      b7=64'hc018b54d78ae8680;
      c7=64'h3fc76dd9de50bf9d;
    end
  35: begin 
      a7=64'hc00b7972f7400000;
      b7=64'hc018bc68df027400;
      c7=64'h3fc6a81304f64b17;
    end
  36: begin 
      a7=64'hc00a850d24280000;
      b7=64'hc018c3473ccab680;
      c7=64'h3fc5e214448b4034;
    end
  37: begin 
      a7=64'hc0099065e18c0000;
      b7=64'hc018c9e88114c080;
      c7=64'h3fc51bdf8597c658;
    end
  38: begin 
      a7=64'hc0089b7f8b940000;
      b7=64'hc018d04c9b84b780;
      c7=64'h3fc45576b1293ec9;
    end
  39: begin 
      a7=64'hc007a65c7e000000;
      b7=64'hc018d6737c55ba00;
      c7=64'h3fc38edbb0cd8d7c;
    end
  40: begin 
      a7=64'hc006b0ff16340000;
      b7=64'hc018dc5d1459e780;
      c7=64'h3fc2c8106e8e61ab;
    end
  41: begin 
      a7=64'hc005bb69b1140000;
      b7=64'hc018e20954faa780;
      c7=64'h3fc20116d4ec7c39;
    end
  42: begin 
      a7=64'hc004c59eacd00000;
      b7=64'hc018e7783038b200;
      c7=64'h3fc139f0cedaf5e9;
    end
  43: begin 
      a7=64'hc003cfa068240000;
      b7=64'hc018eca998ac2d80;
      c7=64'h3fc072a047ba8389;
    end
  44: begin 
      a7=64'hc002d97141840000;
      b7=64'hc018f19d81850480;
      c7=64'h3fbf564e56a973f7;
    end
  45: begin 
      a7=64'hc001e31398e40000;
      b7=64'hc018f653de8ab1c0;
      c7=64'h3fbdc70ecbaea0a4;
    end
  46: begin 
      a7=64'hc000ec89cda20000;
      b7=64'hc018facca41cb9c0;
      c7=64'h3fbc3785c79ec3c1;
    end
  47: begin 
      a7=64'hbfffebac81140000;
      b7=64'hc018ff07c7326b40;
      c7=64'h3fbaa7b724495ce1;
    end
  48: begin 
      a7=64'hbffdfdf6a3ac0000;
      b7=64'hc01903053d5b56c0;
      c7=64'h3fb917a6bc29b51b;
    end
  49: begin 
      a7=64'hbffc0ff6c6700000;
      b7=64'hc01906c4fcbf0a80;
      c7=64'h3fb787586a5d5c02;
    end
  50: begin 
      a7=64'hbffa21b1aacc0000;
      b7=64'hc0190a46fc1d8a80;
      c7=64'h3fb5f6d00a9aa4ec;
    end
  51: begin 
      a7=64'hbff8332c158c0000;
      b7=64'hc0190d8b32cf1200;
      c7=64'h3fb466117927217a;
    end
  52: begin 
      a7=64'hbff6446ac9e00000;
      b7=64'hc019109198c46540;
      c7=64'h3fb2d52092ce1acc;
    end
  53: begin 
      a7=64'hbff455728d880000;
      b7=64'hc019135a2686bc80;
      c7=64'h3fb1440134d70a9a;
    end
  54: begin 
      a7=64'hbff2664824d00000;
      b7=64'hc01915e4d537f9e0;
      c7=64'h3faf656e79f82292;
    end
  55: begin 
      a7=64'hbff076f056780000;
      b7=64'hc01918319e9297e0;
      c7=64'h3fac428d12c0d9b8;
    end
  56: begin 
      a7=64'hbfed0edfcf680000;
      b7=64'hc0191a407ce9da40;
      c7=64'h3fa91f65f10dd9cd;
    end
  57: begin 
      a7=64'hbfe92f973f440000;
      b7=64'hc0191c116b29c260;
      c7=64'h3fa5fc00d290cf1f;
    end
  58: begin 
      a7=64'hbfe550108b600000;
      b7=64'hc0191da464d71660;
      c7=64'h3fa2d8657594578c;
    end
  59: begin 
      a7=64'hbfe17055403a0000;
      b7=64'hc0191ef9660fa120;
      c7=64'h3f9f693731d1d2c5;
    end
  60: begin 
      a7=64'hbfdb20dddda00000;
      b7=64'hc01920106b89e660;
      c7=64'h3f992155f7a36a09;
    end
  61: begin 
      a7=64'hbfd360ce49160000;
      b7=64'hc01920e972958978;
      c7=64'h3f92d936bbe312ce;
    end
  62: begin 
      a7=64'hbfc7411dcc900000;
      b7=64'hc0192184791af460;
      c7=64'h3f8921d1fcdeceb3;
    end
  63: begin 
      a7=64'hbfaf019689240000;
      b7=64'hc01921e17d9bbcc4;
      c7=64'h3f7921f0fe670fe6;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a8=64'h3faf019689240000;
      b8=64'hc01922007f3245ec;
      c8=64'h3ced1a62633145c0;
    end
  1: begin 
      a8=64'h3fc7411dcc900000;
      b8=64'hc01921e17d9226a0;
      c8=64'hbf7921f0fe66f2cc;
    end
  2: begin 
      a8=64'h3fd360ce49160000;
      b8=64'hc01921847907d230;
      c8=64'hbf8921d1fcdec026;
    end
  3: begin 
      a8=64'h3fdb20dddda00000;
      b8=64'hc01920e97278d370;
      c8=64'hbf92d936bbe30b88;
    end
  4: begin 
      a8=64'h3fe1705540380000;
      b8=64'hc01920106b63a4c0;
      c8=64'hbf992155f7a362c3;
    end
  5: begin 
      a8=64'h3fe550108b600000;
      b8=64'hc0191ef965dfcc60;
      c8=64'hbf9f693731d1cb80;
    end
  6: begin 
      a8=64'h3fe92f973f400000;
      b8=64'hc0191da4649db6a0;
      c8=64'hbfa2d865759453ea;
    end
  7: begin 
      a8=64'h3fed0edfcf680000;
      b8=64'hc0191c116ae6d0a0;
      c8=64'hbfa5fc00d290cb7d;
    end
  8: begin 
      a8=64'h3ff076f056760000;
      b8=64'hc0191a407c9d66c0;
      c8=64'hbfa91f65f10dd62b;
    end
  9: begin 
      a8=64'h3ff2664824ce0000;
      b8=64'hc01918319e3c93c0;
      c8=64'hbfac428d12c0d617;
    end
  10: begin 
      a8=64'h3ff455728d880000;
      b8=64'hc01915e4d4d86d80;
      c8=64'hbfaf656e79f81ef1;
    end
  11: begin 
      a8=64'h3ff6446ac9e40000;
      b8=64'hc019135a261da140;
      c8=64'hbfb1440134d708ca;
    end
  12: begin 
      a8=64'h3ff8332c15900000;
      b8=64'hc01910919851c400;
      c8=64'hbfb2d52092ce18fb;
    end
  13: begin 
      a8=64'h3ffa21b1aacc0000;
      b8=64'hc0190d8b3252e400;
      c8=64'hbfb4661179271faa;
    end
  14: begin 
      a8=64'h3ffc0ff6c66c0000;
      b8=64'hc0190a46fb97d840;
      c8=64'hbfb5f6d00a9aa31c;
    end
  15: begin 
      a8=64'h3ffdfdf6a3a40000;
      b8=64'hc01906c4fc2fcc00;
      c8=64'hbfb787586a5d5a33;
    end
  16: begin 
      a8=64'h3fffebac81140000;
      b8=64'hc01903053cc28d80;
      c8=64'hbfb917a6bc29b34c;
    end
  17: begin 
      a8=64'h4000ec89cda20000;
      b8=64'hc018ff07c6902240;
      c8=64'hbfbaa7b724495b12;
    end
  18: begin 
      a8=64'h4001e31398e40000;
      b8=64'hc018facca370eac0;
      c8=64'hbfbc3785c79ec1f2;
    end
  19: begin 
      a8=64'h4002d97141860000;
      b8=64'hc018f653ddd56600;
      c8=64'hbfbdc70ecbae9ed5;
    end
  20: begin 
      a8=64'h4003cfa068240000;
      b8=64'hc018f19d80c63600;
      c8=64'hbfbf564e56a97229;
    end
  21: begin 
      a8=64'h4004c59eacd00000;
      b8=64'hc018eca997e3e600;
      c8=64'hbfc072a047ba82a2;
    end
  22: begin 
      a8=64'h4005bb69b1140000;
      b8=64'hc018e7782f66ec80;
      c8=64'hbfc139f0cedaf503;
    end
  23: begin 
      a8=64'h4006b0ff16300000;
      b8=64'hc018e209541f7480;
      c8=64'hbfc20116d4ec7b52;
    end
  24: begin 
      a8=64'h4007a65c7e000000;
      b8=64'hc018dc5d13753a00;
      c8=64'hbfc2c8106e8e60c5;
    end
  25: begin 
      a8=64'h40089b7f8b940000;
      b8=64'hc018d6737b679c00;
      c8=64'hbfc38edbb0cd8c96;
    end
  26: begin 
      a8=64'h40099065e18c0000;
      b8=64'hc018d04c9a8d2380;
      c8=64'hbfc45576b1293de3;
    end
  27: begin 
      a8=64'h400a850d242c0000;
      b8=64'hc018c9e88013c080;
      c8=64'hbfc51bdf8597c573;
    end
  28: begin 
      a8=64'h400b7972f7440000;
      b8=64'hc018c3473bc04580;
      c8=64'hbfc5e214448b3f4e;
    end
  29: begin 
      a8=64'h400c6d9500540000;
      b8=64'hc018bc68ddee9b00;
      c8=64'hbfc6a81304f64a32;
    end
  30: begin 
      a8=64'h400d6170e4600000;
      b8=64'hc018b54d77913f80;
      c8=64'hbfc76dd9de50beb8;
    end
  31: begin 
      a8=64'h400e55044a700000;
      b8=64'hc018adf51a317580;
      c8=64'hbfc83366e89c6454;
    end
  32: begin 
      a8=64'h400f484cd8e40000;
      b8=64'hc018a65fd7eec900;
      c8=64'hbfc8f8b83c69a590;
    end
  33: begin 
      a8=64'h40101da41bfe0000;
      b8=64'hc0189e8dc37f1c00;
      c8=64'hbfc9bdcbf2dc42f3;
    end
  34: begin 
      a8=64'h401096fa07d40000;
      b8=64'hc018967ef02e5000;
      c8=64'hbfca82a025b003d5;
    end
  35: begin 
      a8=64'h4011102704d40000;
      b8=64'hc0188e3371de3c00;
      c8=64'hbfcb4732ef3d66ae;
    end
  36: begin 
      a8=64'h40118929e7c00000;
      b8=64'hc01885ab5d065600;
      c8=64'hbfcc0b826a7e4ee6;
    end
  37: begin 
      a8=64'h4012020186460000;
      b8=64'hc0187ce6c6b3a180;
      c8=64'hbfcccf8cb312b211;
    end
  38: begin 
      a8=64'h40127aacb6160000;
      b8=64'hc01873e5c4886780;
      c8=64'hbfcd934fe5454294;
    end
  39: begin 
      a8=64'h4012f32a4d5a0000;
      b8=64'hc0186aa86cbbf500;
      c8=64'hbfce56ca1e1019a5;
    end
  40: begin 
      a8=64'h40136b7923000000;
      b8=64'hc018612ed61a9c80;
      c8=64'hbfcf19f97b215e9c;
    end
  41: begin 
      a8=64'h4013e3980df40000;
      b8=64'hc018577918052800;
      c8=64'hbfcfdcdc1adfed81;
    end
  42: begin 
      a8=64'h40145b85e60c0000;
      b8=64'hc0184d874a70fc00;
      c8=64'hbfd04fb80e37fd6e;
    end
  43: begin 
      a8=64'h4014d34183240000;
      b8=64'hc018435985e78200;
      c8=64'hbfd0b0d9cfdbdb54;
    end
  44: begin 
      a8=64'h40154ac9be140000;
      b8=64'hc01838efe3864500;
      c8=64'hbfd111d262b1f637;
    end
  45: begin 
      a8=64'h4015c21d6f900000;
      b8=64'hc0182e4a7cfe5700;
      c8=64'hbfd172a0d776513a;
    end
  46: begin 
      a8=64'h4016393b71980000;
      b8=64'hc01823696c947100;
      c8=64'hbfd1d3443f4cdb05;
    end
  47: begin 
      a8=64'h4016b0229dec0000;
      b8=64'hc018184ccd206100;
      c8=64'hbfd233bbabc3bb34;
    end
  48: begin 
      a8=64'h401726d1cf6c0000;
      b8=64'hc0180cf4ba0cfa00;
      c8=64'hbfd294062ed59ecc;
    end
  49: begin 
      a8=64'h40179d47e0fc0000;
      b8=64'hc01801614f57b200;
      c8=64'hbfd2f422daec0349;
    end
  50: begin 
      a8=64'h40181383ae980000;
      b8=64'hc017f592a9907f00;
      c8=64'hbfd35410c2e18117;
    end
  51: begin 
      a8=64'h4018898414440000;
      b8=64'hc017e988e5d96500;
      c8=64'hbfd3b3cefa041479;
    end
  52: begin 
      a8=64'h4018ff47ef180000;
      b8=64'hc017dd4421e65a00;
      c8=64'hbfd4135c941765c6;
    end
  53: begin 
      a8=64'h401974ce1c600000;
      b8=64'hc017d0c47bfcde00;
      c8=64'hbfd472b8a5571015;
    end
  54: begin 
      a8=64'h4019ea157a000000;
      b8=64'hc017c40a12f3ae00;
      c8=64'hbfd4d1e24278e72f;
    end
  55: begin 
      a8=64'h401a5f1ce6e40000;
      b8=64'hc017b7150632a800;
      c8=64'hbfd530d880af3be4;
    end
  56: begin 
      a8=64'h401ad3e341f80000;
      b8=64'hc017a9e575b22a00;
      c8=64'hbfd58f9a75ab1fa1;
    end
  57: begin 
      a8=64'h401b48676b640000;
      b8=64'hc0179c7b81fb2600;
      c8=64'hbfd5ee27379ea654;
    end
  58: begin 
      a8=64'h401bbca843700000;
      b8=64'hc0178ed74c266e00;
      c8=64'hbfd64c7ddd3f278a;
    end
  59: begin 
      a8=64'h401c30a4ab7c0000;
      b8=64'hc01780f8f5dcc100;
      c8=64'hbfd6aa9d7dc77dd7;
    end
  60: begin 
      a8=64'h401ca45b850c0000;
      b8=64'hc01772e0a1561a00;
      c8=64'hbfd7088530fa4562;
    end
  61: begin 
      a8=64'h401d17cbb2fc0000;
      b8=64'hc017648e7159bb00;
      c8=64'hbfd766340f2418bd;
    end
  62: begin 
      a8=64'h401d8af4182c0000;
      b8=64'hc0175602893d8300;
      c8=64'hbfd7c3a9311dccaa;
    end
  63: begin 
      a8=64'h401dfdd398b00000;
      b8=64'hc017473d0ce5d300;
      c8=64'hbfd820e3b04eaa8a;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a9=64'h401e706918dc0000;
      b9=64'hc017383e20c50b00;
      c9=64'hbfd87de2a6aea925;
    end
  1: begin 
      a9=64'h401ee2b37e340000;
      b9=64'hc0172905e9db5700;
      c9=64'hbfd8daa52ec8a476;
    end
  2: begin 
      a9=64'h401f54b1ae880000;
      b9=64'hc01719948db62c00;
      c9=64'hbfd9372a63bc9399;
    end
  3: begin 
      a9=64'h401fc66290b80000;
      b9=64'hc01709ea32701000;
      c9=64'hbfd993716141bdc4;
    end
  4: begin 
      a9=64'h40201be286180000;
      b9=64'hc016fa06feb02300;
      c9=64'hbfd9ef7943a8ed4c;
    end
  5: begin 
      a9=64'h4020546c04880000;
      b9=64'hc016e9eb19a9bb00;
      c9=64'hbfda4b4127dea1aa;
    end
  6: begin 
      a9=64'h40208ccd38480000;
      b9=64'hc016d996ab1c3400;
      c9=64'hbfdaa6c82b6d3f8b;
    end
  7: begin 
      a9=64'h4020c505961c0000;
      b9=64'hc016c909db523c00;
      c9=64'hbfdb020d6c7f3fce;
    end
  8: begin 
      a9=64'h4020fd14936c0000;
      b9=64'hc016b844d321c800;
      c9=64'hbfdb5d1009e15c81;
    end
  9: begin 
      a9=64'h402134f9a5cc0000;
      b9=64'hc016a747bbeb5e00;
      c9=64'hbfdbb7cf2304bcc6;
    end
  10: begin 
      a9=64'h40216cb4436a0000;
      b9=64'hc0169612bf99ff00;
      c9=64'hbfdc1249d8011ea7;
    end
  11: begin 
      a9=64'h4021a443e2a20000;
      b9=64'hc01684a608a26700;
      c9=64'hbfdc6c7f4996ffcf;
    end
  12: begin 
      a9=64'h4021dba7fa8a0000;
      b9=64'hc0167301c2030300;
      c9=64'hbfdcc66e9931c426;
    end
  13: begin 
      a9=64'h402212e0024e0000;
      b9=64'hc016612617433400;
      c9=64'hbfdd2016e8e9db1f;
    end
  14: begin 
      a9=64'h402249eb71d00000;
      b9=64'hc0164f1334731a00;
      c9=64'hbfdd79775b86e351;
    end
  15: begin 
      a9=64'h402280c9c1200000;
      b9=64'hc0163cc9462b0900;
      c9=64'hbfddd28f1481cc1c;
    end
  16: begin 
      a9=64'h4022b77a68fc0000;
      b9=64'hc0162a48798b3200;
      c9=64'hbfde2b5d3806f602;
    end
  17: begin 
      a9=64'h4022edfce2500000;
      b9=64'hc0161790fc3b1a00;
      c9=64'hbfde83e0eaf850d7;
    end
  18: begin 
      a9=64'h40232450a6c00000;
      b9=64'hc01604a2fc694300;
      c9=64'hbfdedc1952ef789c;
    end
  19: begin 
      a9=64'h40235a75302c0000;
      b9=64'hc015f17ea8caab00;
      c9=64'hbfdf3405963fd02a;
    end
  20: begin 
      a9=64'h40239069f8f20000;
      b9=64'hc015de24309a4e00;
      c9=64'hbfdf8ba4dbf89a80;
    end
  21: begin 
      a9=64'h4023c62e7c0c0000;
      b9=64'hc015ca93c398df00;
      c9=64'hbfdfe2f64be711d3;
    end
  22: begin 
      a9=64'h4023fbc234b40000;
      b9=64'hc015b6cd920c0c00;
      c9=64'hbfe01cfc874c3e9a;
    end
  23: begin 
      a9=64'h402431249ed40000;
      b9=64'hc015a2d1ccbe5400;
      c9=64'hbfe0485626ae21fc;
    end
  24: begin 
      a9=64'h4024665536900000;
      b9=64'hc0158ea0a4fe4000;
      c9=64'hbfe073879922ffd1;
    end
  25: begin 
      a9=64'h40249b5378d40000;
      b9=64'hc0157a3a4c9e4200;
      c9=64'hbfe09e907417c5c2;
    end
  26: begin 
      a9=64'h4024d01ee2b80000;
      b9=64'hc015659ef5f3d400;
      c9=64'hbfe0c9704d5d8972;
    end
  27: begin 
      a9=64'h402504b6f2180000;
      b9=64'hc01550ced3d75e00;
      c9=64'hbfe0f426bb2a8e62;
    end
  28: begin 
      a9=64'h4025391b251c0000;
      b9=64'hc0153bca19a37200;
      c9=64'hbfe11eb3541b4b05;
    end
  29: begin 
      a9=64'h40256d4afa880000;
      b9=64'hc0152690fb347200;
      c9=64'hbfe14915af336cd0;
    end
  30: begin 
      a9=64'h4025a145f18c0000;
      b9=64'hc0151123ace80000;
      c9=64'hbfe1734d63dedb2b;
    end
  31: begin 
      a9=64'h4025d50b89f80000;
      b9=64'hc014fb82639c8400;
      c9=64'hbfe19d5a09f2b99c;
    end
  32: begin 
      a9=64'h4026089b43fc0000;
      b9=64'hc014e5ad54b0a800;
      c9=64'hbfe1c73b39ae68ab;
    end
  33: begin 
      a9=64'h40263bf4a0740000;
      b9=64'hc014cfa4b602d800;
      c9=64'hbfe1f0f08bbc85ff;
    end
  34: begin 
      a9=64'h40266f1720a00000;
      b9=64'hc014b968bdf0b400;
      c9=64'hbfe21a799933eb3b;
    end
  35: begin 
      a9=64'h4026a20246440000;
      b9=64'hc014a2f9a3568200;
      c9=64'hbfe243d5fb98ac03;
    end
  36: begin 
      a9=64'h4026d4b593e40000;
      b9=64'hc0148c579d8ed600;
      c9=64'hbfe26d054cdd12c1;
    end
  37: begin 
      a9=64'h402707308c3c0000;
      b9=64'hc0147582e471be00;
      c9=64'hbfe2960727629c8c;
    end
  38: begin 
      a9=64'h40273972b2e40000;
      b9=64'hc0145e7bb0548a00;
      c9=64'hbfe2bedb25faf3cc;
    end
  39: begin 
      a9=64'h40276b7b8bbc0000;
      b9=64'hc01447423a08ec00;
      c9=64'hbfe2e780e3e8e9fb;
    end
  40: begin 
      a9=64'h40279d4a9b6c0000;
      b9=64'hc0142fd6badcc800;
      c9=64'hbfe30ff7fce17017;
    end
  41: begin 
      a9=64'h4027cedf66ec0000;
      b9=64'hc01418396c994600;
      c9=64'hbfe338400d0c8e3b;
    end
  42: begin 
      a9=64'h40280039740c0000;
      b9=64'hc014006a89829c00;
      c9=64'hbfe36058b10659d8;
    end
  43: begin 
      a9=64'h4028315848e80000;
      b9=64'hc013e86a4c574000;
      c9=64'hbfe3884185dfeb06;
    end
  44: begin 
      a9=64'h4028623b6c600000;
      b9=64'hc013d038f04f7600;
      c9=64'hbfe3affa2920509f;
    end
  45: begin 
      a9=64'h402892e265c80000;
      b9=64'hc013b7d6b11cae00;
      c9=64'hbfe3d78238c58328;
    end
  46: begin 
      a9=64'h4028c34cbd240000;
      b9=64'hc0139f43cae90000;
      c9=64'hbfe3fed9534556ba;
    end
  47: begin 
      a9=64'h4028f379faec0000;
      b9=64'hc01386807a568800;
      c9=64'hbfe425ff178e6b95;
    end
  48: begin 
      a9=64'h40292369a84c0000;
      b9=64'hc0136d8cfc7ede00;
      c9=64'hbfe44cf325091dbc;
    end
  49: begin 
      a9=64'h4029531b4f040000;
      b9=64'hc01354698ef27a00;
      c9=64'hbfe473b51b98732b;
    end
  50: begin 
      a9=64'h4029828e79480000;
      b9=64'hc0133b166fb80a00;
      c9=64'hbfe49a449b9b091e;
    end
  51: begin 
      a9=64'h4029b1c2b22c0000;
      b9=64'hc0132193dd4c0800;
      c9=64'hbfe4c0a145ebffe8;
    end
  52: begin 
      a9=64'h4029e0b785140000;
      b9=64'hc01307e2169fe200;
      c9=64'hbfe4e6cabbe3e5ce;
    end
  53: begin 
      a9=64'h402a0f6c7e3c0000;
      b9=64'hc012ee015b199c00;
      c9=64'hbfe50cc09f59a07f;
    end
  54: begin 
      a9=64'h402a3de12a540000;
      b9=64'hc012d3f1ea92fa00;
      c9=64'hbfe5328292a3557b;
    end
  55: begin 
      a9=64'h402a6c1516d40000;
      b9=64'hc012b9b405592000;
      c9=64'hbfe558103897511b;
    end
  56: begin 
      a9=64'h402a9a07d1980000;
      b9=64'hc0129f47ec2ba400;
      c9=64'hbfe57d69348cec85;
    end
  57: begin 
      a9=64'h402ac7b8e9680000;
      b9=64'hc01284ade03c5000;
      c9=64'hbfe5a28d2a5d7237;
    end
  58: begin 
      a9=64'h402af527ed6c0000;
      b9=64'hc01269e6232e2800;
      c9=64'hbfe5c77bbe650172;
    end
  59: begin 
      a9=64'h402b22546d980000;
      b9=64'hc0124ef0f7150200;
      c9=64'hbfe5ec349583705b;
    end
  60: begin 
      a9=64'h402b4f3dfa680000;
      b9=64'hc01233ce9e74ba00;
      c9=64'hbfe610b7551d2cc4;
    end
  61: begin 
      a9=64'h402b7be4251c0000;
      b9=64'hc012187f5c40b800;
      c9=64'hbfe63503a31c1bd0;
    end
  62: begin 
      a9=64'h402ba8467f780000;
      b9=64'hc011fd0373db2600;
      c9=64'hbfe6591925f07823;
    end
  63: begin 
      a9=64'h402bd4649c100000;
      b9=64'hc011e15b29146400;
      c9=64'hbfe67cf78491aef7;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a10=64'h402c003e0df00000;
      b10=64'hc011c586c02a4c00;
      c10=64'hbfe6a09e667f3bb2;
    end
  1: begin 
      a10=64'h402c2bd268ec0000;
      b10=64'hc011a9867dc79200;
      c10=64'hbfe6c40d73c1825c;
    end
  2: begin 
      a10=64'h402c5721418c0000;
      b10=64'hc0118d5aa7032c00;
      c10=64'hbfe6e74454eaa894;
    end
  3: begin 
      a10=64'h402c822a2cdc0000;
      b10=64'hc0117103815f7a00;
      c10=64'hbfe70a42b3176d61;
    end
  4: begin 
      a10=64'h402cacecc0c40000;
      b10=64'hc011548152c9de00;
      c10=64'hbfe72d0837efff7c;
    end
  5: begin 
      a10=64'h402cd76893b00000;
      b10=64'hc01137d46199c200;
      c10=64'hbfe74f948da8d274;
    end
  6: begin 
      a10=64'h402d019d3ce40000;
      b10=64'hc0111afcf4903600;
      c10=64'hbfe771e75f037247;
    end
  7: begin 
      a10=64'h402d2b8a541c0000;
      b10=64'hc010fdfb52d6f400;
      c10=64'hbfe79400574f55cc;
    end
  8: begin 
      a10=64'h402d552f720c0000;
      b10=64'hc010e0cfc4000800;
      c10=64'hbfe7b5df226aaf97;
    end
  9: begin 
      a10=64'h402d7e8c2fd00000;
      b10=64'hc010c37a9004c800;
      c10=64'hbfe7d7836cc33d99;
    end
  10: begin 
      a10=64'h402da7a027700000;
      b10=64'hc010a5fbff456400;
      c10=64'hbfe7f8ece3571759;
    end
  11: begin 
      a10=64'h402dd06af3840000;
      b10=64'hc01088545a881400;
      c10=64'hbfe81a1b33b57ab3;
    end
  12: begin 
      a10=64'h402df8ec2f640000;
      b10=64'hc0106a83eaf86200;
      c10=64'hbfe83b0e0bff9757;
    end
  13: begin 
      a10=64'h402e212377480000;
      b10=64'hc0104c8afa269c00;
      c10=64'hbfe85bc51ae958b4;
    end
  14: begin 
      a10=64'h402e491067b00000;
      b10=64'hc0102e69d206d000;
      c10=64'hbfe87c400fba2ea5;
    end
  15: begin 
      a10=64'h402e70b29e3c0000;
      b10=64'hc0101020bcf06a00;
      c10=64'hbfe89c7e9a4dd495;
    end
  16: begin 
      a10=64'h402e9809b9400000;
      b10=64'hc00fe3600b3ac800;
      c10=64'hbfe8bc806b15172a;
    end
  17: begin 
      a10=64'h402ebf1557780000;
      b10=64'hc00fa62fee52b800;
      c10=64'hbfe8dc45331698b4;
    end
  18: begin 
      a10=64'h402ee5d518980000;
      b10=64'hc00f68b1ba223400;
      c10=64'hbfe8fbcca3ef93f3;
    end
  19: begin 
      a10=64'h402f0c489d100000;
      b10=64'hc00f2ae606636800;
      c10=64'hbfe91b166fd49d8c;
    end
  20: begin 
      a10=64'h402f326f86140000;
      b10=64'hc00eeccd6b8ff000;
      c10=64'hbfe93a22499263e4;
    end
  21: begin 
      a10=64'h402f5849755c0000;
      b10=64'hc00eae6882dec800;
      c10=64'hbfe958efe48e6dbf;
    end
  22: begin 
      a10=64'h402f7dd60d840000;
      b10=64'hc00e6fb7e6436800;
      c10=64'hbfe9777ef4c7d729;
    end
  23: begin 
      a10=64'h402fa314f1f40000;
      b10=64'hc00e30bc306c1400;
      c10=64'hbfe995cf2ed80d0d;
    end
  24: begin 
      a10=64'h402fc805c6e80000;
      b10=64'hc00df175fcc07800;
      c10=64'hbfe9b3e047f3872a;
    end
  25: begin 
      a10=64'h402feca830f40000;
      b10=64'hc00db1e5e75fb800;
      c10=64'hbfe9d1b1f5ea80be;
    end
  26: begin 
      a10=64'h4030087deaee0000;
      b10=64'hc00d720c8d1f7c00;
      c10=64'hbfe9ef43ef29af80;
    end
  27: begin 
      a10=64'h40301a802e000000;
      b10=64'hc00d31ea8b8a4800;
      c10=64'hbfea0c95eabaf921;
    end
  28: begin 
      a10=64'h40302c5ab5460000;
      b10=64'hc00cf18080ddd000;
      c10=64'hbfea29a7a046276c;
    end
  29: begin 
      a10=64'h40303e0d549c0000;
      b10=64'hc00cb0cf0c095800;
      c10=64'hbfea4678c8119ab1;
    end
  30: begin 
      a10=64'h40304f97e0660000;
      b10=64'hc00c6fd6ccac8800;
      c10=64'hbfea63091b02face;
    end
  31: begin 
      a10=64'h403060fa2d6a0000;
      b10=64'hc00c2e986315d800;
      c10=64'hbfea7f58529fe688;
    end
  32: begin 
      a10=64'h4030723410aa0000;
      b10=64'hc00bed1470408400;
      c10=64'hbfea9b66290ea18d;
    end
  33: begin 
      a10=64'h403083455fac0000;
      b10=64'hc00bab4b95d39800;
      c10=64'hbfeab7325916c0bd;
    end
  34: begin 
      a10=64'h4030942df0560000;
      b10=64'hc00b693e76200c00;
      c10=64'hbfead2bc9e21d4fd;
    end
  35: begin 
      a10=64'h4030a4ed98fe0000;
      b10=64'hc00b26edb41f8400;
      c10=64'hbfeaee04b43c145f;
    end
  36: begin 
      a10=64'h4030b584303a0000;
      b10=64'hc00ae459f3722400;
      c10=64'hbfeb090a581501ea;
    end
  37: begin 
      a10=64'h4030c5f18d220000;
      b10=64'hc00aa183d85da400;
      c10=64'hbfeb23cd4700139e;
    end
  38: begin 
      a10=64'h4030d635872e0000;
      b10=64'hc00a5e6c07cb5400;
      c10=64'hbfeb3e4d3ef556fe;
    end
  39: begin 
      a10=64'h4030e64ff6500000;
      b10=64'hc00a1b132746d800;
      c10=64'hbfeb5889fe9213f1;
    end
  40: begin 
      a10=64'h4030f640b2ac0000;
      b10=64'hc009d779dcfc0400;
      c10=64'hbfeb728345196e29;
    end
  41: begin 
      a10=64'h4031060794fc0000;
      b10=64'hc00993a0cfb5e400;
      c10=64'hbfeb8c38d27504d7;
    end
  42: begin 
      a10=64'h403115a4765a0000;
      b10=64'hc0094f88a6dcc800;
      c10=64'hbfeba5aa673590c0;
    end
  43: begin 
      a10=64'h40312517303e0000;
      b10=64'hc0090b320a74c000;
      c10=64'hbfebbed7c49380d6;
    end
  44: begin 
      a10=64'h4031345f9c7a0000;
      b10=64'hc008c69da31ba800;
      c10=64'hbfebd7c0ac6f9515;
    end
  45: begin 
      a10=64'h4031437d95620000;
      b10=64'hc00881cc1a083000;
      c10=64'hbfebf064e15377cc;
    end
  46: begin 
      a10=64'h40315270f5ba0000;
      b10=64'hc0083cbe1907dc00;
      c10=64'hbfec08c426725537;
    end
  47: begin 
      a10=64'h4031613998860000;
      b10=64'hc007f7744a7d0c00;
      c10=64'hbfec20de3fa9719c;
    end
  48: begin 
      a10=64'h40316fd759500000;
      b10=64'hc007b1ef595df800;
      c10=64'hbfec38b2f180bd9d;
    end
  49: begin 
      a10=64'h40317e4a140e0000;
      b10=64'hc0076c2ff132b400;
      c10=64'hbfec5042012b68f6;
    end
  50: begin 
      a10=64'h40318c91a5240000;
      b10=64'hc0072636be139c00;
      c10=64'hbfec678b34887389;
    end
  51: begin 
      a10=64'h40319aade9420000;
      b10=64'hc006e0046ca78800;
      c10=64'hbfec7e8e52233ce0;
    end
  52: begin 
      a10=64'h4031a89ebd9c0000;
      b10=64'hc0069999aa224400;
      c10=64'hbfec954b213411e2;
    end
  53: begin 
      a10=64'h4031b663ffd00000;
      b10=64'hc00652f72442fc00;
      c10=64'hbfecabc169a0b8f0;
    end
  54: begin 
      a10=64'h4031c3fd8df00000;
      b10=64'hc0060c1d89527c00;
      c10=64'hbfecc1f0f3fcfc4b;
    end
  55: begin 
      a10=64'h4031d16b46560000;
      b10=64'hc005c50d88212c00;
      c10=64'hbfecd7d9898b32e4;
    end
  56: begin 
      a10=64'h4031dead07ec0000;
      b10=64'hc0057dc7d005f400;
      c10=64'hbfeced7af43cc764;
    end
  57: begin 
      a10=64'h4031ebc2b2000000;
      b10=64'hc005364d10dc4400;
      c10=64'hbfed02d4feb2bd82;
    end
  58: begin 
      a10=64'h4031f8ac244a0000;
      b10=64'hc004ee9dfb025800;
      c10=64'hbfed17e7743e35cb;
    end
  59: begin 
      a10=64'h403205693ede0000;
      b10=64'hc004a6bb3f575800;
      c10=64'hbfed2cb220e0ef8d;
    end
  60: begin 
      a10=64'h403211f9e25a0000;
      b10=64'hc0045ea58f3a2c00;
      c10=64'hbfed4134d14dc92b;
    end
  61: begin 
      a10=64'h40321e5defc40000;
      b10=64'hc004165d9c876000;
      c10=64'hbfed556f52e93ea1;
    end
  62: begin 
      a10=64'h40322a95487c0000;
      b10=64'hc003cde419976800;
      c10=64'hbfed696173c9e67b;
    end
  63: begin 
      a10=64'h4032369fce600000;
      b10=64'hc0038539b93d0c00;
      c10=64'hbfed7d0b02b8ece9;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a11=64'h4032427d63bc0000;
      b11=64'hc0033c5f2ec3b800;
      c11=64'hbfed906bcf328d38;
    end
  1: begin 
      a11=64'h40324e2deb520000;
      b11=64'hc002f3552dedb400;
      c11=64'hbfeda383a9668979;
    end
  2: begin 
      a11=64'h403259b1483c0000;
      b11=64'hc002aa1c6af24000;
      c11=64'hbfedb6526238a08b;
    end
  3: begin 
      a11=64'h403265075e160000;
      b11=64'hc00260b59a7c0c00;
      c11=64'hbfedc8d7cb410250;
    end
  4: begin 
      a11=64'h4032703010ea0000;
      b11=64'hc002172171a77000;
      c11=64'hbfeddb13b6ccc22f;
    end
  5: begin 
      a11=64'h40327b2b45360000;
      b11=64'hc001cd60a600c000;
      c11=64'hbfeded05f7de47cb;
    end
  6: begin 
      a11=64'h403285f8dfd20000;
      b11=64'hc0018373ed822800;
      c11=64'hbfedfeae622dbe1c;
    end
  7: begin 
      a11=64'h40329098c61e0000;
      b11=64'hc001395bfe927800;
      c11=64'hbfee100cca29809f;
    end
  8: begin 
      a11=64'h40329b0adde60000;
      b11=64'hc000ef1990030c00;
      c11=64'hbfee212104f686d8;
    end
  9: begin 
      a11=64'h4032a54f0d6a0000;
      b11=64'hc000a4ad590e3000;
      c11=64'hbfee31eae870ce17;
    end
  10: begin 
      a11=64'h4032af653b420000;
      b11=64'hc0005a1811550400;
      c11=64'hbfee426a4b2bc170;
    end
  11: begin 
      a11=64'h4032b94d4e980000;
      b11=64'hc0000f5a70de4400;
      c11=64'hbfee529f04729ff0;
    end
  12: begin 
      a11=64'h4032c3072efc0000;
      b11=64'hbfff88ea60285000;
      c11=64'hbfee6288ec48e105;
    end
  13: begin 
      a11=64'h4032cc92c4660000;
      b11=64'hbffef2d20f852800;
      c11=64'hbfee7227db6a9737;
    end
  14: begin 
      a11=64'h4032d5eff74a0000;
      b11=64'hbffe5c6d622af800;
      c11=64'hbfee817bab4cd0ff;
    end
  15: begin 
      a11=64'h4032df1eb0920000;
      b11=64'hbffdc5bdcb2e1800;
      c11=64'hbfee9084361df7e7;
    end
  16: begin 
      a11=64'h4032e81ed99a0000;
      b11=64'hbffd2ec4be5bd000;
      c11=64'hbfee9f4156c62dcf;
    end
  17: begin 
      a11=64'h4032f0f05c240000;
      b11=64'hbffc9783b0365800;
      c11=64'hbfeeadb2e8e7a881;
    end
  18: begin 
      a11=64'h4032f993226c0000;
      b11=64'hbffbfffc15f1d000;
      c11=64'hbfeebbd8c8df0b68;
    end
  19: begin 
      a11=64'h40330207172a0000;
      b11=64'hbffb682f65706000;
      c11=64'hbfeec9b2d3c3bf79;
    end
  20: begin 
      a11=64'h40330a4c25860000;
      b11=64'hbffad01f153ec800;
      c11=64'hbfeed740e7684958;
    end
  21: begin 
      a11=64'h40331262390c0000;
      b11=64'hbffa37cc9c904000;
      c11=64'hbfeee482e25a9db0;
    end
  22: begin 
      a11=64'h40331a493dce0000;
      b11=64'hbff99f39733b8800;
      c11=64'hbfeef178a3e473b9;
    end
  23: begin 
      a11=64'h4033220120520000;
      b11=64'hbff9066711b72000;
      c11=64'hbfeefe220c0b95e3;
    end
  24: begin 
      a11=64'h40332989cd8a0000;
      b11=64'hbff86d56f1153800;
      c11=64'hbfef0a7efb9230cd;
    end
  25: begin 
      a11=64'h403330e332da0000;
      b11=64'hbff7d40a8b006800;
      c11=64'hbfef168f53f72052;
    end
  26: begin 
      a11=64'h4033380d3e240000;
      b11=64'hbff73a8359b81000;
      c11=64'hbfef2252f7763ad1;
    end
  27: begin 
      a11=64'h40333f07ddbc0000;
      b11=64'hbff6a0c2d80cc800;
      c11=64'hbfef2dc9c9089a94;
    end
  28: begin 
      a11=64'h403345d300660000;
      b11=64'hbff606ca815c4000;
      c11=64'hbfef38f3ac64e57f;
    end
  29: begin 
      a11=64'h40334c6e95600000;
      b11=64'hbff56c9bd18e2800;
      c11=64'hbfef43d085ff92d3;
    end
  30: begin 
      a11=64'h403352da8c5c0000;
      b11=64'hbff4d23845101800;
      c11=64'hbfef4e603b0b2f25;
    end
  31: begin 
      a11=64'h40335916d5860000;
      b11=64'hbff437a158d27000;
      c11=64'hbfef58a2b1789e7c;
    end
  32: begin 
      a11=64'h40335f2361740000;
      b11=64'hbff39cd88a43e000;
      c11=64'hbfef6297cff75ca8;
    end
  33: begin 
      a11=64'h40336500213e0000;
      b11=64'hbff301df574e8000;
      c11=64'hbfef6c3f7df5bbaf;
    end
  34: begin 
      a11=64'h40336aad066c0000;
      b11=64'hbff266b73e53a000;
      c11=64'hbfef7599a3a12070;
    end
  35: begin 
      a11=64'h4033702a03020000;
      b11=64'hbff1cb61be287800;
      c11=64'hbfef7ea629e63d67;
    end
  36: begin 
      a11=64'h40337577096c0000;
      b11=64'hbff12fe056121000;
      c11=64'hbfef8764fa714ba2;
    end
  37: begin 
      a11=64'h40337a940c980000;
      b11=64'hbff0943485c1e000;
      c11=64'hbfef8fd5ffae41d4;
    end
  38: begin 
      a11=64'h40337f80ffee0000;
      b11=64'hbfeff0bf9aa42000;
      c11=64'hbfef97f924c90994;
    end
  39: begin 
      a11=64'h4033843dd7440000;
      b11=64'hbfeeb8c75a835000;
      c11=64'hbfef9fce55adb2c2;
    end
  40: begin 
      a11=64'h403388ca86e60000;
      b11=64'hbfed80834ce1c000;
      c11=64'hbfefa7557f08a510;
    end
  41: begin 
      a11=64'h40338d27039c0000;
      b11=64'hbfec47f6743af000;
      c11=64'hbfefae8e8e46cfb5;
    end
  42: begin 
      a11=64'h4033915342a80000;
      b11=64'hbfeb0f23d3be5000;
      c11=64'hbfefb5797195d73c;
    end
  43: begin 
      a11=64'h4033954f39b80000;
      b11=64'hbfe9d60e6f46f000;
      c11=64'hbfefbc1617e44180;
    end
  44: begin 
      a11=64'h4033991adef60000;
      b11=64'hbfe89cb94b550000;
      c11=64'hbfefc26470e19fce;
    end
  45: begin 
      a11=64'h40339cb6290a0000;
      b11=64'hbfe763276d05b000;
      c11=64'hbfefc8646cfeb71d;
    end
  46: begin 
      a11=64'h4033a0210f100000;
      b11=64'hbfe6295bda0cb000;
      c11=64'hbfefce15fd6da676;
    end
  47: begin 
      a11=64'h4033a35b88940000;
      b11=64'hbfe4ef5998ab2000;
      c11=64'hbfefd37914220b80;
    end
  48: begin 
      a11=64'h4033a6658d9c0000;
      b11=64'hbfe3b523afa9a000;
      c11=64'hbfefd88da3d12521;
    end
  49: begin 
      a11=64'h4033a93f16ae0000;
      b11=64'hbfe27abd26504000;
      c11=64'hbfefdd539ff1f452;
    end
  50: begin 
      a11=64'h4033abe81cc40000;
      b11=64'hbfe14029045f0000;
      c11=64'hbfefe1cafcbd5b05;
    end
  51: begin 
      a11=64'h4033ae6099460000;
      b11=64'hbfe0056a52061000;
      c11=64'hbfefe5f3af2e393d;
    end
  52: begin 
      a11=64'h4033b0a886200000;
      b11=64'hbfdd95082fbe6000;
      c11=64'hbfefe9cdad018837;
    end
  53: begin 
      a11=64'h4033b2bfddb00000;
      b11=64'hbfdb1ef2bdca4000;
      c11=64'hbfefed58ecb673c1;
    end
  54: begin 
      a11=64'h4033b4a69ad00000;
      b11=64'hbfd8a89a60da8000;
      c11=64'hbfeff095658e71ab;
    end
  55: begin 
      a11=64'h4033b65cb8cc0000;
      b11=64'hbfd632052c3dc000;
      c11=64'hbfeff3830f8d5759;
    end
  56: begin 
      a11=64'h4033b7e2336c0000;
      b11=64'hbfd3bb3933d9c000;
      c11=64'hbfeff621e3796d7c;
    end
  57: begin 
      a11=64'h4033b93706ee0000;
      b11=64'hbfd1443c8c1ac000;
      c11=64'hbfeff871dadb81dd;
    end
  58: begin 
      a11=64'h4033ba5b30080000;
      b11=64'hbfcd9a2a93cac000;
      c11=64'hbfeffa72effef75b;
    end
  59: begin 
      a11=64'h4033bb4eabea0000;
      b11=64'hbfc8ab93050ec000;
      c11=64'hbfeffc251df1d3f7;
    end
  60: begin 
      a11=64'h4033bc1178400000;
      b11=64'hbfc3bcbe97514000;
      c11=64'hbfeffd886084cd0c;
    end
  61: begin 
      a11=64'h4033bca393240000;
      b11=64'hbfbd9b72ecf08000;
      c11=64'hbfeffe9cb44b51a0;
    end
  62: begin 
      a11=64'h4033bd04fb300000;
      b11=64'hbfb3bd1f9dc30000;
      c11=64'hbfefff62169b92db;
    end
  63: begin 
      a11=64'h4033bd35af720000;
      b11=64'hbfa3bd3735140000;
      c11=64'hbfefffd8858e8a92;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a12=64'h4033bd35af700000;
      b12=64'h3e685a3000000000;
      c12=64'hbff0000000000000;
    end
  1: begin 
      a12=64'h4033bd04fb2e0000;
      b12=64'h3fa3bd3a40560000;
      c12=64'hbfefffd8858e8a93;
    end
  2: begin 
      a12=64'h4033bca393240000;
      b12=64'h3fb3bd21235e8000;
      c12=64'hbfefff62169b92dc;
    end
  3: begin 
      a12=64'h4033bc1178400000;
      b12=64'h3fbd9b7472830000;
      c12=64'hbfeffe9cb44b51a2;
    end
  4: begin 
      a12=64'h4033bb4eabec0000;
      b12=64'h3fc3bcbf5a138000;
      c12=64'hbfeffd886084cd0e;
    end
  5: begin 
      a12=64'h4033ba5b30080000;
      b12=64'h3fc8ab93c7c90000;
      c12=64'hbfeffc251df1d3fa;
    end
  6: begin 
      a12=64'h4033b93706ec0000;
      b12=64'h3fcd9a2b567a0000;
      c12=64'hbfeffa72effef75e;
    end
  7: begin 
      a12=64'h4033b7e2336c0000;
      b12=64'h3fd1443ced6c6000;
      c12=64'hbfeff871dadb81e1;
    end
  8: begin 
      a12=64'h4033b65cb8cc0000;
      b12=64'h3fd3bb3995246000;
      c12=64'hbfeff621e3796d80;
    end
  9: begin 
      a12=64'h4033b4a69ad00000;
      b12=64'h3fd632058d806000;
      c12=64'hbfeff3830f8d575e;
    end
  10: begin 
      a12=64'h4033b2bfddb00000;
      b12=64'h3fd8a89ac2144000;
      c12=64'hbfeff095658e71b0;
    end
  11: begin 
      a12=64'h4033b0a886200000;
      b12=64'h3fdb1ef31efa4000;
      c12=64'hbfefed58ecb673c7;
    end
  12: begin 
      a12=64'h4033ae6099460000;
      b12=64'h3fdd950890e38000;
      c12=64'hbfefe9cdad01883d;
    end
  13: begin 
      a12=64'h4033abe81cc40000;
      b12=64'h3fe0056a8292c000;
      c12=64'hbfefe5f3af2e3944;
    end
  14: begin 
      a12=64'h4033a93f16ae0000;
      b12=64'h3fe1402934e55000;
      c12=64'hbfefe1cafcbd5b0d;
    end
  15: begin 
      a12=64'h4033a6658d9e0000;
      b12=64'h3fe27abd56cfd000;
      c12=64'hbfefdd539ff1f45a;
    end
  16: begin 
      a12=64'h4033a35b88900000;
      b12=64'h3fe3b523e0220000;
      c12=64'hbfefd88da3d1252a;
    end
  17: begin 
      a12=64'h4033a0210f100000;
      b12=64'h3fe4ef59c91bb000;
      c12=64'hbfefd37914220b89;
    end
  18: begin 
      a12=64'h40339cb6290e0000;
      b12=64'h3fe6295c0a74f000;
      c12=64'hbfefce15fd6da67f;
    end
  19: begin 
      a12=64'h4033991adef80000;
      b12=64'h3fe763279d656000;
      c12=64'hbfefc8646cfeb726;
    end
  20: begin 
      a12=64'h4033954f39b60000;
      b12=64'h3fe89cb97bab9000;
      c12=64'hbfefc26470e19fd9;
    end
  21: begin 
      a12=64'h4033915342a60000;
      b12=64'h3fe9d60e9f93e000;
      c12=64'hbfefbc1617e4418c;
    end
  22: begin 
      a12=64'h40338d27039e0000;
      b12=64'h3feb0f2404012000;
      c12=64'hbfefb5797195d747;
    end
  23: begin 
      a12=64'h403388ca86e40000;
      b12=64'h3fec47f6a4737000;
      c12=64'hbfefae8e8e46cfc1;
    end
  24: begin 
      a12=64'h4033843dd7420000;
      b12=64'h3fed80837d0f3000;
      c12=64'hbfefa7557f08a51d;
    end
  25: begin 
      a12=64'h40337f80fff00000;
      b12=64'h3feeb8c78aa54000;
      c12=64'hbfef9fce55adb2d0;
    end
  26: begin 
      a12=64'h40337a940c9a0000;
      b12=64'h3feff0bfcaba3000;
      c12=64'hbfef97f924c909a1;
    end
  27: begin 
      a12=64'h40337577096a0000;
      b12=64'h3ff094349dc6b800;
      c12=64'hbfef8fd5ffae41e2;
    end
  28: begin 
      a12=64'h4033702a03000000;
      b12=64'h3ff12fe06e107800;
      c12=64'hbfef8764fa714bb1;
    end
  29: begin 
      a12=64'h40336aad06700000;
      b12=64'h3ff1cb61d6203000;
      c12=64'hbfef7ea629e63d77;
    end
  30: begin 
      a12=64'h4033650021400000;
      b12=64'h3ff266b756447800;
      c12=64'hbfef7599a3a1207f;
    end
  31: begin 
      a12=64'h40335f2361740000;
      b12=64'h3ff301df6f384000;
      c12=64'hbfef6c3f7df5bbc0;
    end
  32: begin 
      a12=64'h40335916d5860000;
      b12=64'h3ff39cd8a2264000;
      c12=64'hbfef6297cff75cb9;
    end
  33: begin 
      a12=64'h403352da8c5e0000;
      b12=64'h3ff437a170ad3800;
      c12=64'hbfef58a2b1789e8d;
    end
  34: begin 
      a12=64'h40334c6e95620000;
      b12=64'h3ff4d2385ce31800;
      c12=64'hbfef4e603b0b2f36;
    end
  35: begin 
      a12=64'h403345d300640000;
      b12=64'h3ff56c9be9591800;
      c12=64'hbfef43d085ff92e6;
    end
  36: begin 
      a12=64'h40333f07ddba0000;
      b12=64'h3ff606ca991ef000;
      c12=64'hbfef38f3ac64e593;
    end
  37: begin 
      a12=64'h4033380d3e240000;
      b12=64'h3ff6a0c2efc6f000;
      c12=64'hbfef2dc9c9089aa7;
    end
  38: begin 
      a12=64'h403330e332d80000;
      b12=64'h3ff73a8371699800;
      c12=64'hbfef2252f7763ae4;
    end
  39: begin 
      a12=64'h40332989cd860000;
      b12=64'h3ff7d40aa2a8f000;
      c12=64'hbfef168f53f72068;
    end
  40: begin 
      a12=64'h4033220120540000;
      b12=64'h3ff86d5708b48800;
      c12=64'hbfef0a7efb9230e3;
    end
  41: begin 
      a12=64'h40331a493dd40000;
      b12=64'h3ff90667294d0000;
      c12=64'hbfeefe220c0b95f7;
    end
  42: begin 
      a12=64'h4033126239080000;
      b12=64'h3ff99f398ac7e800;
      c12=64'hbfeef178a3e473ce;
    end
  43: begin 
      a12=64'h40330a4c25820000;
      b12=64'h3ffa37ccb412a800;
      c12=64'hbfeee482e25a9dc8;
    end
  44: begin 
      a12=64'h40330207172c0000;
      b12=64'h3ffad01f2cb71800;
      c12=64'hbfeed740e7684971;
    end
  45: begin 
      a12=64'h4032f99322700000;
      b12=64'h3ffb682f7cde6000;
      c12=64'hbfeec9b2d3c3bf90;
    end
  46: begin 
      a12=64'h4032f0f05c1e0000;
      b12=64'h3ffbfffc2d555800;
      c12=64'hbfeebbd8c8df0b81;
    end
  47: begin 
      a12=64'h4032e81ed9980000;
      b12=64'h3ffc9783c78f0800;
      c12=64'hbfeeadb2e8e7a89b;
    end
  48: begin 
      a12=64'h4032df1eb0940000;
      b12=64'h3ffd2ec4d5a97800;
      c12=64'hbfee9f4156c62de7;
    end
  49: begin 
      a12=64'h4032d5eff74c0000;
      b12=64'h3ffdc5bde2709800;
      c12=64'hbfee9084361df800;
    end
  50: begin 
      a12=64'h4032cc92c4600000;
      b12=64'h3ffe5c6d79621000;
      c12=64'hbfee817bab4cd11b;
    end
  51: begin 
      a12=64'h4032c3072ef80000;
      b12=64'h3ffef2d226b08000;
      c12=64'hbfee7227db6a9753;
    end
  52: begin 
      a12=64'h4032b94d4e9a0000;
      b12=64'h3fff88ea7747c000;
      c12=64'hbfee6288ec48e120;
    end
  53: begin 
      a12=64'h4032af653b400000;
      b12=64'h40000f5a7c680000;
      c12=64'hbfee529f0472a00b;
    end
  54: begin 
      a12=64'h4032a54f0d640000;
      b12=64'h40005a181cd88c00;
      c12=64'hbfee426a4b2bc18e;
    end
  55: begin 
      a12=64'h40329b0addec0000;
      b12=64'h4000a4ad648b6c00;
      c12=64'hbfee31eae870ce35;
    end
  56: begin 
      a12=64'h40329098c6240000;
      b12=64'h4000ef199b79f000;
      c12=64'hbfee212104f686f4;
    end
  57: begin 
      a12=64'h403285f8dfd00000;
      b12=64'h4001395c0a02e000;
      c12=64'hbfee100cca2980bc;
    end
  58: begin 
      a12=64'h40327b2b45300000;
      b12=64'h40018373f8ebf000;
      c12=64'hbfedfeae622dbe3c;
    end
  59: begin 
      a12=64'h4032703010ee0000;
      b12=64'h4001cd60b163c400;
      c12=64'hbfeded05f7de47ec;
    end
  60: begin 
      a12=64'h403265075e1a0000;
      b12=64'h400217217d03a800;
      c12=64'hbfeddb13b6ccc24d;
    end
  61: begin 
      a12=64'h403259b148380000;
      b12=64'h400260b5a5d15400;
      c12=64'hbfedc8d7cb410271;
    end
  62: begin 
      a12=64'h40324e2deb500000;
      b12=64'h4002aa1c76407800;
      c12=64'hbfedb6526238a0ad;
    end
  63: begin 
      a12=64'h4032427d63c20000;
      b12=64'h4002f3553934bc00;
      c12=64'hbfeda383a9668998;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a13=64'h4032369fce620000;
      b13=64'h40033c5f3a038800;
      c13=64'hbfed906bcf328d58;
    end
  1: begin 
      a13=64'h40322a9548740000;
      b13=64'h40038539c4758400;
      c13=64'hbfed7d0b02b8ed0c;
    end
  2: begin 
      a13=64'h40321e5defc20000;
      b13=64'h4003cde424c85c00;
      c13=64'hbfed696173c9e69f;
    end
  3: begin 
      a13=64'h403211f9e2600000;
      b13=64'h4004165da7b0b400;
      c13=64'hbfed556f52e93ec2;
    end
  4: begin 
      a13=64'h403205693eda0000;
      b13=64'h40045ea59a5be800;
      c13=64'hbfed4134d14dc94d;
    end
  5: begin 
      a13=64'h4031f8ac24440000;
      b13=64'h4004a6bb4a713800;
      c13=64'hbfed2cb220e0efb3;
    end
  6: begin 
      a13=64'h4031ebc2b2040000;
      b13=64'h4004ee9e06144400;
      c13=64'hbfed17e7743e35f1;
    end
  7: begin 
      a13=64'h4031dead07f40000;
      b13=64'h4005364d1be63800;
      c13=64'hbfed02d4feb2bda5;
    end
  8: begin 
      a13=64'h4031d16b46540000;
      b13=64'h40057dc7db07d400;
      c13=64'hbfeced7af43cc787;
    end
  9: begin 
      a13=64'h4031c3fd8dea0000;
      b13=64'h4005c50d931ac400;
      c13=64'hbfecd7d9898b330b;
    end
  10: begin 
      a13=64'h4031b663ffd40000;
      b13=64'h40060c1d9443b400;
      c13=64'hbfecc1f0f3fcfc73;
    end
  11: begin 
      a13=64'h4031a89ebda00000;
      b13=64'h400652f72f2bcc00;
      c13=64'hbfecabc169a0b915;
    end
  12: begin 
      a13=64'h40319aade93a0000;
      b13=64'h40069999b5028c00;
      c13=64'hbfec954b2134120b;
    end
  13: begin 
      a13=64'h40318c91a5200000;
      b13=64'h4006e004777f1c00;
      c13=64'hbfec7e8e52233d0a;
    end
  14: begin 
      a13=64'h40317e4a14160000;
      b13=64'h40072636c8e26800;
      c13=64'hbfec678b348873b0;
    end
  15: begin 
      a13=64'h40316fd759540000;
      b13=64'h40076c2ffbf8b000;
      c13=64'hbfec5042012b691d;
    end
  16: begin 
      a13=64'h40316139987e0000;
      b13=64'h4007b1ef641b0400;
      c13=64'hbfec38b2f180bdc8;
    end
  17: begin 
      a13=64'h40315270f5b60000;
      b13=64'h4007f7745530fc00;
      c13=64'hbfec20de3fa971c8;
    end
  18: begin 
      a13=64'h4031437d956a0000;
      b13=64'h40083cbe23b29400;
      c13=64'hbfec08c42672555f;
    end
  19: begin 
      a13=64'h4031345f9c760000;
      b13=64'h400881cc24a9c800;
      c13=64'hbfebf064e15377f4;
    end
  20: begin 
      a13=64'h4031251730360000;
      b13=64'h4008c69dadb3d400;
      c13=64'hbfebd7c0ac6f9542;
    end
  21: begin 
      a13=64'h403115a4765c0000;
      b13=64'h40090b3215036400;
      c13=64'hbfebbed7c4938104;
    end
  22: begin 
      a13=64'h4031060795040000;
      b13=64'h40094f88b161e000;
      c13=64'hbfeba5aa673590ea;
    end
  23: begin 
      a13=64'h4030f640b2aa0000;
      b13=64'h400993a0da315800;
      c13=64'hbfeb8c38d2750501;
    end
  24: begin 
      a13=64'h4030e64ff6480000;
      b13=64'h4009d779e76da400;
      c13=64'hbfeb728345196e57;
    end
  25: begin 
      a13=64'h4030d63587340000;
      b13=64'h400a1b1331ae8c00;
      c13=64'hbfeb5889fe921420;
    end
  26: begin 
      a13=64'h4030c5f18d260000;
      b13=64'h400a5e6c12291400;
      c13=64'hbfeb3e4d3ef5572a;
    end
  27: begin 
      a13=64'h4030b58430320000;
      b13=64'h400aa183e2b15000;
      c13=64'hbfeb23cd470013ce;
    end
  28: begin 
      a13=64'h4030a4ed98f80000;
      b13=64'h400ae459fdbb9c00;
      c13=64'hbfeb090a5815021b;
    end
  29: begin 
      a13=64'h4030942df05c0000;
      b13=64'h400b26edbe5ea800;
      c13=64'hbfeaee04b43c148c;
    end
  30: begin 
      a13=64'h403083455fae0000;
      b13=64'h400b693e8054dc00;
      c13=64'hbfead2bc9e21d52b;
    end
  31: begin 
      a13=64'h4030723410a00000;
      b13=64'h400bab4b9ffdf000;
      c13=64'hbfeab7325916c0f0;
    end
  32: begin 
      a13=64'h403060fa2d640000;
      b13=64'h400bed147a604400;
      c13=64'hbfea9b66290ea1c0;
    end
  33: begin 
      a13=64'h40304f97e06e0000;
      b13=64'h400c2e986d2ad800;
      c13=64'hbfea7f58529fe6b6;
    end
  34: begin 
      a13=64'h40303e0d54980000;
      b13=64'h400c6fd6d6b6e800;
      c13=64'hbfea63091b02fafd;
    end
  35: begin 
      a13=64'h40302c5ab53e0000;
      b13=64'h400cb0cf1608cc00;
      c13=64'hbfea4678c8119ae5;
    end
  36: begin 
      a13=64'h40301a802e040000;
      b13=64'h400cf1808ad24400;
      c13=64'hbfea29a7a04627a0;
    end
  37: begin 
      a13=64'h4030087deaf60000;
      b13=64'h400d31ea9573b400;
      c13=64'hbfea0c95eabaf952;
    end
  38: begin 
      a13=64'h402feca830ec0000;
      b13=64'h400d720c96fdd400;
      c13=64'hbfe9ef43ef29afb1;
    end
  39: begin 
      a13=64'h402fc805c6d40000;
      b13=64'h400db1e5f132c000;
      c13=64'hbfe9d1b1f5ea80f4;
    end
  40: begin 
      a13=64'h402fa314f2000000;
      b13=64'h400df17606882000;
      c13=64'hbfe9b3e047f38760;
    end
  41: begin 
      a13=64'h402f7dd60d8c0000;
      b13=64'h400e30bc3a285000;
      c13=64'hbfe995cf2ed80d3f;
    end
  42: begin 
      a13=64'h402f584975480000;
      b13=64'h400e6fb7eff42400;
      c13=64'hbfe9777ef4c7d760;
    end
  43: begin 
      a13=64'h402f326f860c0000;
      b13=64'h400eae688c83d000;
      c13=64'hbfe958efe48e6df6;
    end
  44: begin 
      a13=64'h402f0c489d240000;
      b13=64'h400eeccd75293400;
      c13=64'hbfe93a2249926418;
    end
  45: begin 
      a13=64'h402ee5d518a40000;
      b13=64'h400f2ae60ff0f000;
      c13=64'hbfe91b166fd49dc0;
    end
  46: begin 
      a13=64'h402ebf15576c0000;
      b13=64'h400f68b1c3a3d400;
      c13=64'hbfe8fbcca3ef942c;
    end
  47: begin 
      a13=64'h402e9809b9380000;
      b13=64'h400fa62ff7c85800;
      c13=64'hbfe8dc45331698ed;
    end
  48: begin 
      a13=64'h402e70b29e540000;
      b13=64'h400fe36014a43c00;
      c13=64'hbfe8bc806b15175e;
    end
  49: begin 
      a13=64'h402e491067a40000;
      b13=64'h40101020c19f2400;
      c13=64'hbfe89c7e9a4dd4ca;
    end
  50: begin 
      a13=64'h402e212377300000;
      b13=64'h40102e69d6af6000;
      c13=64'hbfe87c400fba2ee0;
    end
  51: begin 
      a13=64'h402df8ec2f740000;
      b13=64'h40104c8afec8f600;
      c13=64'hbfe85bc51ae958ef;
    end
  52: begin 
      a13=64'h402dd06af3940000;
      b13=64'h40106a83ef948800;
      c13=64'hbfe83b0e0bff978d;
    end
  53: begin 
      a13=64'h402da7a027640000;
      b13=64'h401088545f1dfa00;
      c13=64'hbfe81a1b33b57aec;
    end
  54: begin 
      a13=64'h402d7e8c2fcc0000;
      b13=64'h4010a5fc03d4fa00;
      c13=64'hbfe7f8ece3571793;
    end
  55: begin 
      a13=64'h402d552f720c0000;
      b13=64'h4010c37a948dfe00;
      c13=64'hbfe7d7836cc33dd6;
    end
  56: begin 
      a13=64'h402d2b8a542c0000;
      b13=64'h4010e0cfc882ce00;
      c13=64'hbfe7b5df226aafcf;
    end
  57: begin 
      a13=64'h402d019d3cd40000;
      b13=64'h4010fdfb57535600;
      c13=64'hbfe79400574f5607;
    end
  58: begin 
      a13=64'h402cd76893b40000;
      b13=64'h40111afcf9061200;
      c13=64'hbfe771e75f037285;
    end
  59: begin 
      a13=64'h402cacecc0d00000;
      b13=64'h401137d466091400;
      c13=64'hbfe74f948da8d2ad;
    end
  60: begin 
      a13=64'h402c822a2ce80000;
      b13=64'h4011548157329a00;
      c13=64'hbfe72d0837efffb8;
    end
  61: begin 
      a13=64'h402c5721417c0000;
      b13=64'h4011710385c1a800;
      c13=64'hbfe70a42b3176d9d;
    end
  62: begin 
      a13=64'h402c2bd268e80000;
      b13=64'h40118d5aab5eaa00;
      c13=64'hbfe6e74454eaa8d4;
    end
  63: begin 
      a13=64'h402c003e0df40000;
      b13=64'h4011a986821c5800;
      c13=64'hbfe6c40d73c18297;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a14=64'h402bd4649c040000;
      b14=64'h4011c586c4785c00;
      c14=64'hbfe6a09e667f3bf0;
    end
  1: begin 
      a14=64'h402ba8467f740000;
      b14=64'h4011e15b2d5bb000;
      c14=64'hbfe67cf78491af35;
    end
  2: begin 
      a14=64'h402b7be425200000;
      b14=64'h4011fd03781b9c00;
      c14=64'hbfe6591925f07864;
    end
  3: begin 
      a14=64'h402b4f3dfa780000;
      b14=64'h4012187f607a4800;
      c14=64'hbfe63503a31c1c0c;
    end
  4: begin 
      a14=64'h402b22546d880000;
      b14=64'h401233cea2a77000;
      c14=64'hbfe610b7551d2d04;
    end
  5: begin 
      a14=64'h402af527ed600000;
      b14=64'h40124ef0fb40c200;
      c14=64'hbfe5ec349583709b;
    end
  6: begin 
      a14=64'h402ac7b8e9640000;
      b14=64'h401269e62752ee00;
      c14=64'hbfe5c77bbe6501b5;
    end
  7: begin 
      a14=64'h402a9a07d1a40000;
      b14=64'h401284ade45a0600;
      c14=64'hbfe5a28d2a5d7275;
    end
  8: begin 
      a14=64'h402a6c1516c40000;
      b14=64'h40129f47f0425200;
      c14=64'hbfe57d69348cecc6;
    end
  9: begin 
      a14=64'h402a3de12a580000;
      b14=64'h4012b9b40968a800;
      c14=64'hbfe558103897515f;
    end
  10: begin 
      a14=64'h402a0f6c7e400000;
      b14=64'h4012d3f1ee9b5c00;
      c14=64'hbfe5328292a355ba;
    end
  11: begin 
      a14=64'h4029e0b7851c0000;
      b14=64'h4012ee015f1aca00;
      c14=64'hbfe50cc09f59a0c1;
    end
  12: begin 
      a14=64'h4029b1c2b2180000;
      b14=64'h401307e21a99e600;
      c14=64'hbfe4e6cabbe3e611;
    end
  13: begin 
      a14=64'h4029828e79480000;
      b14=64'h40132193e13ec400;
      c14=64'hbfe4c0a145ec002d;
    end
  14: begin 
      a14=64'h4029531b4f080000;
      b14=64'h40133b1673a37400;
      c14=64'hbfe49a449b9b095e;
    end
  15: begin 
      a14=64'h40292369a8440000;
      b14=64'h4013546992d69600;
      c14=64'hbfe473b51b98736e;
    end
  16: begin 
      a14=64'h4028f379fae00000;
      b14=64'h40136d8d005ba000;
      c14=64'hbfe44cf325091dff;
    end
  17: begin 
      a14=64'h4028c34cbd240000;
      b14=64'h401386807e2bde00;
      c14=64'hbfe425ff178e6bdc;
    end
  18: begin 
      a14=64'h402892e265dc0000;
      b14=64'h40139f43ceb6d800;
      c14=64'hbfe3fed9534556fb;
    end
  19: begin 
      a14=64'h4028623b6c580000;
      b14=64'h4013b7d6b4e31800;
      c14=64'hbfe3d78238c5836c;
    end
  20: begin 
      a14=64'h4028315848e00000;
      b14=64'h4013d038f40e5a00;
      c14=64'hbfe3affa292050e4;
    end
  21: begin 
      a14=64'h40280039740c0000;
      b14=64'h4013e86a500e9400;
      c14=64'hbfe3884185dfeb4e;
    end
  22: begin 
      a14=64'h4027cedf66fc0000;
      b14=64'h4014006a8d324e00;
      c14=64'hbfe36058b1065a1b;
    end
  23: begin 
      a14=64'h40279d4a9b5c0000;
      b14=64'h4014183970416200;
      c14=64'hbfe338400d0c8e80;
    end
  24: begin 
      a14=64'h40276b7b8bbc0000;
      b14=64'h40142fd6be7d3200;
      c14=64'hbfe30ff7fce17061;
    end
  25: begin 
      a14=64'h40273972b2ec0000;
      b14=64'h401447423da1a000;
      c14=64'hbfe2e780e3e8ea3e;
    end
  26: begin 
      a14=64'h402707308c480000;
      b14=64'h40145e7bb3e57c00;
      c14=64'hbfe2bedb25faf413;
    end
  27: begin 
      a14=64'h4026d4b593cc0000;
      b14=64'h40147582e7fafc00;
      c14=64'hbfe2960727629cd3;
    end
  28: begin 
      a14=64'h4026a20246440000;
      b14=64'h40148c57a1104000;
      c14=64'hbfe26d054cdd130c;
    end
  29: begin 
      a14=64'h40266f1720a00000;
      b14=64'h4014a2f9a6d01200;
      c14=64'hbfe243d5fb98ac48;
    end
  30: begin 
      a14=64'h40263bf4a0640000;
      b14=64'h4014b968c1626c00;
      c14=64'hbfe21a799933eb83;
    end
  31: begin 
      a14=64'h4026089b43f40000;
      b14=64'h4014cfa4b96cae00;
      c14=64'hbfe1f0f08bbc8647;
    end
  32: begin 
      a14=64'h4025d50b89fc0000;
      b14=64'h4014e5ad58128e00;
      c14=64'hbfe1c73b39ae68f7;
    end
  33: begin 
      a14=64'h4025a145f19c0000;
      b14=64'h4014fb8266f66800;
      c14=64'hbfe19d5a09f2b9e2;
    end
  34: begin 
      a14=64'h40256d4afa7c0000;
      b14=64'h40151123b039f000;
      c14=64'hbfe1734d63dedb75;
    end
  35: begin 
      a14=64'h4025391b25100000;
      b14=64'h40152690fe7e5c00;
      c14=64'hbfe14915af336d19;
    end
  36: begin 
      a14=64'h402504b6f2180000;
      b14=64'h40153bca1ce54800;
      c14=64'hbfe11eb3541b4b52;
    end
  37: begin 
      a14=64'h4024d01ee2cc0000;
      b14=64'h401550ced7111200;
      c14=64'hbfe0f426bb2a8ea9;
    end
  38: begin 
      a14=64'h40249b5378c00000;
      b14=64'h4015659ef9257600;
      c14=64'hbfe0c9704d5d89bc;
    end
  39: begin 
      a14=64'h4024665536940000;
      b14=64'h40157a3a4fc7b200;
      c14=64'hbfe09e907417c610;
    end
  40: begin 
      a14=64'h402431249ed80000;
      b14=64'h40158ea0a81f7c00;
      c14=64'hbfe0738799230018;
    end
  41: begin 
      a14=64'h4023fbc234c40000;
      b14=64'h4015a2d1cfd74e00;
      c14=64'hbfe0485626ae2247;
    end
  42: begin 
      a14=64'h4023c62e7bf80000;
      b14=64'h4015b6cd951cda00;
      c14=64'hbfe01cfc874c3ee5;
    end
  43: begin 
      a14=64'h40239069f8f20000;
      b14=64'h4015ca93c6a15f00;
      c14=64'hbfdfe2f64be71271;
    end
  44: begin 
      a14=64'h40235a7530320000;
      b14=64'h4015de24339a7b00;
      c14=64'hbfdf8ba4dbf89b11;
    end
  45: begin 
      a14=64'h40232450a6b00000;
      b14=64'h4015f17eabc28b00;
      c14=64'hbfdf3405963fd0c3;
    end
  46: begin 
      a14=64'h4022edfce24a0000;
      b14=64'h401604a2ff58cb00;
      c14=64'hbfdedc1952ef7935;
    end
  47: begin 
      a14=64'h4022b77a68fc0000;
      b14=64'h40161790ff223b00;
      c14=64'hbfde83e0eaf85178;
    end
  48: begin 
      a14=64'h402280c9c1360000;
      b14=64'h40162a487c69dd00;
      c14=64'hbfde2b5d3806f695;
    end
  49: begin 
      a14=64'h402249eb71c20000;
      b14=64'h40163cc949015100;
      c14=64'hbfddd28f1481ccb6;
    end
  50: begin 
      a14=64'h402212e002480000;
      b14=64'h40164f133740e700;
      c14=64'hbfdd79775b86e3ec;
    end
  51: begin 
      a14=64'h4021dba7fa880000;
      b14=64'h401661261a087e00;
      c14=64'hbfdd2016e8e9dbc1;
    end
  52: begin 
      a14=64'h4021a443e2b60000;
      b14=64'h40167301c4bfb900;
      c14=64'hbfdcc66e9931c4bb;
    end
  53: begin 
      a14=64'h40216cb443520000;
      b14=64'h401684a60b569e00;
      c14=64'hbfdc6c7f4997006b;
    end
  54: begin 
      a14=64'h402134f9a5ca0000;
      b14=64'h40169612c2459700;
      c14=64'hbfdc1249d8011f4c;
    end
  55: begin 
      a14=64'h4020fd1493740000;
      b14=64'h4016a747be8e5500;
      c14=64'hbfdbb7cf2304bd5c;
    end
  56: begin 
      a14=64'h4020c505962a0000;
      b14=64'h4016b844d5bc1700;
      c14=64'hbfdb5d1009e15d1f;
    end
  57: begin 
      a14=64'h40208ccd38320000;
      b14=64'h4016c909dde3f600;
      c14=64'hbfdb020d6c7f406c;
    end
  58: begin 
      a14=64'h4020546c04860000;
      b14=64'h4016d996ada53900;
      c14=64'hbfdaa6c82b6d4031;
    end
  59: begin 
      a14=64'h40201be286200000;
      b14=64'h4016e9eb1c2a0600;
      c14=64'hbfda4b4127dea242;
    end
  60: begin 
      a14=64'h401fc66290980000;
      b14=64'h4016fa070127bc00;
      c14=64'hbfd9ef7943a8edec;
    end
  61: begin 
      a14=64'h401f54b1ae780000;
      b14=64'h401709ea34deeb00;
      c14=64'hbfd993716141be64;
    end
  62: begin 
      a14=64'h401ee2b37e380000;
      b14=64'h40171994901c3f00;
      c14=64'hbfd9372a63bc9441;
    end
  63: begin 
      a14=64'h401e706919080000;
      b14=64'h40172905ec389000;
      c14=64'hbfd8daa52ec8a50f;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a15=64'h401dfdd398900000;
      b15=64'h4017383e23198200;
      c15=64'hbfd87de2a6aea9c7;
    end
  1: begin 
      a15=64'h401d8af4181c0000;
      b15=64'h4017473d0f316f00;
      c15=64'hbfd820e3b04eab2c;
    end
  2: begin 
      a15=64'h401d17cbb2fc0000;
      b15=64'h401756028b804000;
      c15=64'hbfd7c3a9311dcd54;
    end
  3: begin 
      a15=64'h401ca45b853c0000;
      b15=64'h4017648e73938600;
      c15=64'hbfd766340f241958;
    end
  4: begin 
      a15=64'h401c30a4ab500000;
      b15=64'h401772e0a3870d00;
      c15=64'hbfd7088530fa4605;
    end
  5: begin 
      a15=64'h401bbca843700000;
      b15=64'h401780f8f804ba00;
      c15=64'hbfd6aa9d7dc77e81;
    end
  6: begin 
      a15=64'h401b48676b740000;
      b15=64'h40178ed74e456e00;
      c15=64'hbfd64c7ddd3f2826;
    end
  7: begin 
      a15=64'h401ad3e342140000;
      b15=64'h40179c7b84112800;
      c15=64'hbfd5ee27379ea6f8;
    end
  8: begin 
      a15=64'h401a5f1ce6b00000;
      b15=64'h4017a9e577bf4000;
      c15=64'hbfd58f9a75ab2046;
    end
  9: begin 
      a15=64'h4019ea157a040000;
      b15=64'h4017b7150836b100;
      c15=64'hbfd530d880af3c91;
    end
  10: begin 
      a15=64'h401974ce1c700000;
      b15=64'h4017c40a14eea900;
      c15=64'hbfd4d1e24278e7cc;
    end
  11: begin 
      a15=64'h4018ff47eefc0000;
      b15=64'h4017d0c47deed400;
      c15=64'hbfd472b8a55710ba;
    end
  12: begin 
      a15=64'h4018898414340000;
      b15=64'h4017dd4423cf4400;
      c15=64'hbfd4135c9417666c;
    end
  13: begin 
      a15=64'h40181383ae9c0000;
      b15=64'h4017e988e7b93500;
      c15=64'hbfd3b3cefa041527;
    end
  14: begin 
      a15=64'h40179d47e1280000;
      b15=64'h4017f592ab672700;
      c15=64'hbfd35410c2e181b6;
    end
  15: begin 
      a15=64'h401726d1cf480000;
      b15=64'h4018016151254d00;
      c15=64'hbfd2f422daec03f0;
    end
  16: begin 
      a15=64'h4016b0229ddc0000;
      b15=64'h40180cf4bbd16d00;
      c15=64'hbfd294062ed59f73;
    end
  17: begin 
      a15=64'h4016393b71980000;
      b15=64'h4018184ccedba900;
      c15=64'hbfd233bbabc3bbe3;
    end
  18: begin 
      a15=64'h4015c21d6fc00000;
      b15=64'h401823696e468000;
      c15=64'hbfd1d3443f4cdba5;
    end
  19: begin 
      a15=64'h40154ac9bde80000;
      b15=64'h40182e4a7ea74500;
      c15=64'hbfd172a0d77651e2;
    end
  20: begin 
      a15=64'h4014d34183280000;
      b15=64'h401838efe525f200;
      c15=64'hbfd111d262b1f6e7;
    end
  21: begin 
      a15=64'h40145b85e61c0000;
      b15=64'h40184359877df100;
      c15=64'hbfd0b0d9cfdbdbf5;
    end
  22: begin 
      a15=64'h4013e3980e140000;
      b15=64'h40184d874bfe2600;
      c15=64'hbfd04fb80e37fe17;
    end
  23: begin 
      a15=64'h40136b7922d20000;
      b15=64'h4018577919892680;
      c15=64'hbfcfdcdc1adfeed3;
    end
  24: begin 
      a15=64'h4012f32a4d580000;
      b15=64'h4018612ed7954c00;
      c15=64'hbfcf19f97b215ffe;
    end
  25: begin 
      a15=64'h40127aacb6260000;
      b15=64'h40186aa86e2d5700;
      c15=64'hbfce56ca1e101ae9;
    end
  26: begin 
      a15=64'h4012020186260000;
      b15=64'h401873e5c5f08680;
      c15=64'hbfcd934fe54543e7;
    end
  27: begin 
      a15=64'h40118929e7b20000;
      b15=64'h40187ce6c8127700;
      c15=64'hbfcccf8cb312b365;
    end
  28: begin 
      a15=64'h4011102704d20000;
      b15=64'h401885ab5e5bd600;
      c15=64'hbfcc0b826a7e504b;
    end
  29: begin 
      a15=64'h401096fa08020000;
      b15=64'h40188e33732a5880;
      c15=64'hbfcb4732ef3d67f4;
    end
  30: begin 
      a15=64'h40101da41bde0000;
      b15=64'h4018967ef1712480;
      c15=64'hbfca82a025b0052b;
    end
  31: begin 
      a15=64'h400f484cd8c80000;
      b15=64'h40189e8dc4b89180;
      c15=64'hbfc9bdcbf2dc4449;
    end
  32: begin 
      a15=64'h400e55044a700000;
      b15=64'h4018a65fd91edd80;
      c15=64'hbfc8f8b83c69a6f7;
    end
  33: begin 
      a15=64'h400d6170e4bc0000;
      b15=64'h4018adf51b581980;
      c15=64'hbfc83366e89c659b;
    end
  34: begin 
      a15=64'h400c6d94fff80000;
      b15=64'h4018b54d78ae9000;
      c15=64'hbfc76dd9de50c010;
    end
  35: begin 
      a15=64'h400b7972f7440000;
      b15=64'h4018bc68df027800;
      c15=64'hbfc6a81304f64b99;
    end
  36: begin 
      a15=64'h400a850d24480000;
      b15=64'h4018c3473ccab080;
      c15=64'hbfc5e214448b4097;
    end
  37: begin 
      a15=64'h40099065e1c80000;
      b15=64'h4018c9e88114b880;
      c15=64'hbfc51bdf8597c6cb;
    end
  38: begin 
      a15=64'h40089b7f8b300000;
      b15=64'h4018d04c9b84c180;
      c15=64'hbfc45576b1293f3c;
    end
  39: begin 
      a15=64'h4007a65c7e040000;
      b15=64'h4018d6737c55bd80;
      c15=64'hbfc38edbb0cd8dff;
    end
  40: begin 
      a15=64'h4006b0ff16540000;
      b15=64'h4018dc5d1459e200;
      c15=64'hbfc2c8106e8e620e;
    end
  41: begin 
      a15=64'h4005bb69b0d40000;
      b15=64'h4018e20954faaf80;
      c15=64'hbfc20116d4ec7cac;
    end
  42: begin 
      a15=64'h4004c59eacb00000;
      b15=64'h4018e7783038b480;
      c15=64'hbfc139f0cedaf65d;
    end
  43: begin 
      a15=64'h4003cfa068240000;
      b15=64'h4018eca998ac3100;
      c15=64'hbfc072a047ba840c;
    end
  44: begin 
      a15=64'h4002d97141e60000;
      b15=64'h4018f19d8184f680;
      c15=64'hbfbf564e56a974be;
    end
  45: begin 
      a15=64'h4001e31398a40000;
      b15=64'h4018f653de8ab980;
      c15=64'hbfbdc70ecbaea18b;
    end
  46: begin 
      a15=64'h4000ec89cd820000;
      b15=64'h4018facca41cbbc0;
      c15=64'hbfbc3785c79ec4a8;
    end
  47: begin 
      a15=64'h3fffebac81100000;
      b15=64'h4018ff07c7326f80;
      c15=64'hbfbaa7b724495de9;
    end
  48: begin 
      a15=64'h3ffdfdf6a4680000;
      b15=64'h401903053d5b4900;
      c15=64'hbfb917a6bc29b5e3;
    end
  49: begin 
      a15=64'h3ffc0ff6c5b40000;
      b15=64'h401906c4fcbf1480;
      c15=64'hbfb787586a5d5cea;
    end
  50: begin 
      a15=64'h3ffa21b1aad00000;
      b15=64'h40190a46fc1d8e00;
      c15=64'hbfb5f6d00a9aa5f3;
    end
  51: begin 
      a15=64'h3ff8332c15cc0000;
      b15=64'h40190d8b32cf0c00;
      c15=64'hbfb4661179272242;
    end
  52: begin 
      a15=64'h3ff6446aca600000;
      b15=64'h4019109198c45d40;
      c15=64'hbfb2d52092ce1bb4;
    end
  53: begin 
      a15=64'h3ff455728cc80000;
      b15=64'h4019135a2686c680;
      c15=64'hbfb1440134d70b82;
    end
  54: begin 
      a15=64'h3ff2664824d00000;
      b15=64'h401915e4d537fdc0;
      c15=64'hbfaf656e79f824a3;
    end
  55: begin 
      a15=64'h3ff076f056b60000;
      b15=64'h401918319e9291e0;
      c15=64'hbfac428d12c0db49;
    end
  56: begin 
      a15=64'h3fed0edfce640000;
      b15=64'h40191a407ce9e220;
      c15=64'hbfa91f65f10ddb9e;
    end
  57: begin 
      a15=64'h3fe92f973ec00000;
      b15=64'h40191c116b29c480;
      c15=64'hbfa5fc00d290d0f1;
    end
  58: begin 
      a15=64'h3fe550108b600000;
      b15=64'h40191da464d71a60;
      c15=64'hbfa2d8657594599e;
    end
  59: begin 
      a15=64'h3fe1705541ba0000;
      b15=64'h40191ef9660f9320;
      c15=64'hbf9f693731d1d5e8;
    end
  60: begin 
      a15=64'h3fdb20dddba40000;
      b15=64'h401920106b89ee60;
      c15=64'hbf992155f7a36dac;
    end
  61: begin 
      a15=64'h3fd360ce48160000;
      b15=64'h401920e972958b78;
      c15=64'hbf92d936bbe31671;
    end
  62: begin 
      a15=64'h3fc7411dcc940000;
      b15=64'h40192184791af858;
      c15=64'hbf8921d1fcded6f9;
    end
  63: begin 
      a15=64'h3faf0196a1280000;
      b15=64'h401921e17d9baec6;
      c15=64'hbf7921f0fe671c73;
    end
  endcase
  case(vin[9:6])
    0: begin
        a=a0; b=b0; c=c0;
      end
    1: begin
        a=a1; b=b1; c=c1;
      end
    2: begin
        a=a2; b=b2; c=c2;
      end
    3: begin
        a=a3; b=b3; c=c3;
      end
    4: begin
        a=a4; b=b4; c=c4;
      end
    5: begin
        a=a5; b=b5; c=c5;
      end
    6: begin
        a=a6; b=b6; c=c6;
      end
    7: begin
        a=a7; b=b7; c=c7;
      end
    8: begin
        a=a8; b=b8; c=c8;
      end
    9: begin
        a=a9; b=b9; c=c9;
      end
    10: begin
        a=a10; b=b10; c=c10;
      end
    11: begin
        a=a11; b=b11; c=c11;
      end
    12: begin
        a=a12; b=b12; c=c12;
      end
    13: begin
        a=a13; b=b13; c=c13;
      end
    14: begin
        a=a14; b=b14; c=c14;
      end
    15: begin
        a=a15; b=b15; c=c15;
      end
  endcase

end
endmodule
