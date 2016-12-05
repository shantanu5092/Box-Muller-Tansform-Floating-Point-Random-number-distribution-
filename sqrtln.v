//A sqrt(-2*ln(x)) table for randist
// The input is a 9 bit integer representing
// <input>/512  You need to denormalize the FP
// Value to get a correct answer from the lookup
// Multiply the difference from the <input> by the slope
// To get an interpolated value.
// get the delta from the floating version of the lookup value
// sin = A*delta*delta*delta+B*delta*delta+C*delta+D
//
// Answer should be good to about 1e-9 (8-10 digits)
// for over 98% of the region 0-1

module sqrtln(vin,A,B,C,D);
input [8:0] vin;
output [63:0] A,B,C,D;
reg [63:0] a,b,c,d;
assign A=a;
assign B=b;
assign C=c;
assign D=d;
reg [63:0] a0,b0,c0,d0;
reg [63:0] a1,b1,c1,d1;
reg [63:0] a2,b2,c2,d2;
reg [63:0] a3,b3,c3,d3;
reg [63:0] a4,b4,c4,d4;
reg [63:0] a5,b5,c5,d5;
reg [63:0] a6,b6,c6,d6;
reg [63:0] a7,b7,c7,d7;

always @(*) begin

  case(vin[5:0])
  0: begin 
      a0=64'hc2146447fb5b3e34;
      b0=64'h41920f32a4c21d9b;
      c0=64'hc0f2c7156c8fcd85;
      d0=64'h4038d7dc48136dfb;
    end
  1: begin 
      a0=64'hc14c5d9d98acc31c;
      b0=64'h40daae7e9e29a9fc;
      c0=64'hc061d309266b8857;
      d0=64'h400c41b365eb22f2;
    end
  2: begin 
      a0=64'hc1280af27f1e7288;
      b0=64'h40c01797f27aec77;
      c0=64'hc05326d260076fa0;
      d0=64'h400aa4404738a907;
    end
  3: begin 
      a0=64'hc111b1a6e0723d50;
      b0=64'h40aeac2d833fb221;
      c0=64'hc04a95091fa49d6f;
      d0=64'h4009a631c9d630f2;
    end
  4: begin 
      a0=64'hc100dd1ddc546f42;
      b0=64'h40a1f10759ab543a;
      c0=64'hc0448866167c2955;
      d0=64'h4008ebca90384d57;
    end
  5: begin 
      a0=64'hc0f2b3b609222a42;
      b0=64'h409795ab44981628;
      c0=64'hc040d26e872f920b;
      d0=64'h4008575d2de9cecc;
    end
  6: begin 
      a0=64'hc0e6eb33857d5849;
      b0=64'h4090b62afc34557c;
      c0=64'hc03c9bfbf5efb163;
      d0=64'h4007db697ea83e15;
    end
  7: begin 
      a0=64'hc0de26108f5489d7;
      b0=64'h4088f56db29debfa;
      c0=64'hc038f5dd32e60d79;
      d0=64'h4007709d5e787c0c;
    end
  8: begin 
      a0=64'hc0d4e84ba53d5a0b;
      b0=64'h40835f70c16256a1;
      c0=64'hc0363067c0e3f014;
      d0=64'h4007128ab7039c30;
    end
  9: begin 
      a0=64'hc0ce366887c349a4;
      b0=64'h407efae6118719f7;
      c0=64'hc034026e0e2b649d;
      d0=64'h4006be4d58ad1566;
    end
  10: begin 
      a0=64'hc0c68e81376cee10;
      b0=64'h40795c0d6704497b;
      c0=64'hc0323f8fe74f8baf;
      d0=64'h400671e693c28a6e;
    end
  11: begin 
      a0=64'hc0c14c336314a520;
      b0=64'h4075286bd21cf1c2;
      c0=64'hc030cb4c153cc01b;
      d0=64'h40062be6bae8fd53;
    end
  12: begin 
      a0=64'hc0bb2091b90cf2c5;
      b0=64'h4071eebee244ad7b;
      c0=64'hc02f24f16c3554a6;
      d0=64'h4005eb3c0104f9a1;
    end
  13: begin 
      a0=64'hc0b5acf767108923;
      b0=64'h406ecd9927d1f567;
      c0=64'hc02d0f6e9e7a7450;
      d0=64'h4005af14d66274a8;
    end
  14: begin 
      a0=64'hc0b199eb84a6c4e9;
      b0=64'h406ac17a6b1d6617;
      c0=64'hc02b42d3f067cf9e;
      d0=64'h400576cd2663d4b3;
    end
  15: begin 
      a0=64'hc0acfccf383efcd0;
      b0=64'h406777afaf75f614;
      c0=64'hc029b0eee9357513;
      d0=64'h400541e1fcb25a68;
    end
  16: begin 
      a0=64'hc0a829c624026c32;
      b0=64'h4064c237b51d54f2;
      c0=64'hc0284f08fe2971c8;
      d0=64'h40050fe91bc7cace;
    end
  17: begin 
      a0=64'hc0a45c214354474a;
      b0=64'h40627ff50b149f06;
      c0=64'hc02714e4e3ffa5f7;
      d0=64'h4004e08b18a26505;
    end
  18: begin 
      a0=64'hc0a151f94391be97;
      b0=64'h40609891d61372b6;
      c0=64'hc025fc11254058c2;
      d0=64'h4004b37f2049c107;
    end
  19: begin 
      a0=64'hc09db8d7c70b8ddd;
      b0=64'h405df3af3ba25589;
      c0=64'hc024ff70dd4b9d40;
      d0=64'h40048887de443d31;
    end
  20: begin 
      a0=64'hc099b2fbad14aae7;
      b0=64'h405b2bd7e958790a;
      c0=64'hc0241ae7d2332e5a;
      d0=64'h40045f712be9b851;
    end
  21: begin 
      a0=64'hc0966046fdfe79db;
      b0=64'h4058c43bed34fae3;
      c0=64'hc0234b1e3fc1fc72;
      d0=64'h4004380e4e5bd5f5;
    end
  22: begin 
      a0=64'hc0939b3f3a6e1076;
      b0=64'h4056ac2397fa0cc3;
      c0=64'hc0228d54dc701c71;
      d0=64'h400412389bbb98e2;
    end
  23: begin 
      a0=64'hc091477714c726d1;
      b0=64'h4054d6552f79b919;
      c0=64'hc021df44345cf066;
      d0=64'h4003edce6c5dd0fa;
    end
  24: begin 
      a0=64'hc08e9e33b887e4bc;
      b0=64'h4053383d5fe75058;
      c0=64'hc0213f04143ee802;
      d0=64'h4003cab244cc488a;
    end
  25: begin 
      a0=64'hc08b42656eb9943e;
      b0=64'h4051c9520d61efec;
      c0=64'hc020aaf8c82a217e;
      d0=64'h4003a8ca2ad1b730;
    end
  26: begin 
      a0=64'hc08860e57fdfbfab;
      b0=64'h4050829e1c85d892;
      c0=64'hc02021c4a097a8af;
      d0=64'h400387ff1b8cdec7;
    end
  27: begin 
      a0=64'hc085e49cac52d438;
      b0=64'h404ebcd4d7c5a21d;
      c0=64'hc01f447949c5c570;
      d0=64'h4003683c9b26528d;
    end
  28: begin 
      a0=64'hc083bcae8416df2d;
      b0=64'h404caff7ca64bd23;
      c0=64'hc01e56bf53f3bca2;
      d0=64'h4003497058a1b7ab;
    end
  29: begin 
      a0=64'hc081db83e49ec8f0;
      b0=64'h404ad6c1ffe365aa;
      c0=64'hc01d789e760e7f30;
      d0=64'h40032b89e19ba424;
    end
  30: begin 
      a0=64'hc080361304972db2;
      b0=64'h40492a9566176aa3;
      c0=64'hc01ca893d0fe3ae8;
      d0=64'h40030e7a62c0edeb;
    end
  31: begin 
      a0=64'hc07d86a8fd155090;
      b0=64'h4047a5dbf1361d7e;
      c0=64'hc01be54d5b020150;
      d0=64'h4002f23472866ac1;
    end
  32: begin 
      a0=64'hc07af7b211ea9bc7;
      b0=64'h404643d797ef52c0;
      c0=64'hc01b2da25ea24efe;
      d0=64'h4002d6abe433686d;
    end
  33: begin 
      a0=64'hc078b2ef5b277643;
      b0=64'h4045007c3821ea5f;
      c0=64'hc01a808d5250c3e1;
      d0=64'h4002bbd5a1ba6b21;
    end
  34: begin 
      a0=64'hc076ae1c62221f9c;
      b0=64'h4043d8511cd45bb1;
      c0=64'hc019dd26c28261ec;
      d0=64'h4002a1a78b2c17ce;
    end
  35: begin 
      a0=64'hc074e09e9e1ae94f;
      b0=64'h4042c85873622f16;
      c0=64'hc01942a117fba52a;
      d0=64'h400288185ace0ed2;
    end
  36: begin 
      a0=64'hc0734336e14ef7c6;
      b0=64'h4041cdfb65b651ab;
      c0=64'hc018b0450ff55bdc;
      d0=64'h40026f1f8d0f8792;
    end
  37: begin 
      a0=64'hc071cfc2f2121584;
      b0=64'h4040e6f9df5d99e6;
      c0=64'hc018256ec4d62734;
      d0=64'h400256b54bbb1947;
    end
  38: begin 
      a0=64'hc070810bb0a2c5ac;
      b0=64'h4040115d3c7e968e;
      c0=64'hc017a18b2d2ae93c;
      d0=64'h40023ed25be2c4c4;
    end
  39: begin 
      a0=64'hc06ea539c15a0540;
      b0=64'h403e96da997abde2;
      c0=64'hc0172415fbe1a602;
      d0=64'h400227700e1adf52;
    end
  40: begin 
      a0=64'hc06c814986bf8200;
      b0=64'h403d274e6dc582a3;
      c0=64'hc016ac97d0f51c6d;
      d0=64'h4002108830ab517b;
    end
  41: begin 
      a0=64'hc06a8fb33a1069d8;
      b0=64'h403bd16bc059925e;
      c0=64'hc0163aa4acf31ff8;
      d0=64'h4001fa15036dbf57;
    end
  42: begin 
      a0=64'hc068cac830b3298d;
      b0=64'h403a92d72065ab86;
      c0=64'hc015cdda9c5c4111;
      d0=64'h4001e4112d1b6f23;
    end
  43: begin 
      a0=64'hc0672d9b01bebb60;
      b0=64'h403969792e90fddd;
      c0=64'hc01565e091defde5;
      d0=64'h4001ce77b1d7b9ae;
    end
  44: begin 
      a0=64'hc065b3e225d99ebd;
      b0=64'h403853759337df50;
      c0=64'hc015026568113309;
      d0=64'h4001b943eacbf568;
    end
  45: begin 
      a0=64'hc06459df9d5526e2;
      b0=64'h40374f235406c0bc;
      c0=64'hc014a31f0494cf6c;
      d0=64'h4001a4717eb07f7b;
    end
  46: begin 
      a0=64'hc0631c4ca4c4d3b8;
      b0=64'h40365b064d562f91;
      c0=64'hc01447c997a229bc;
      d0=64'h40018ffc5b240e1f;
    end
  47: begin 
      a0=64'hc061f848a1f64484;
      b0=64'h403575c99de3ed71;
      c0=64'hc013f026f3c8d3e8;
      d0=64'h40017be0aeb70dbf;
    end
  48: begin 
      a0=64'hc060eb4aff6e3dff;
      b0=64'h40349e3adf3959d1;
      c0=64'hc0139bfdfa6b65fe;
      d0=64'h4001681ae3949d49;
    end
  49: begin 
      a0=64'hc05fe62e0419b19b;
      b0=64'h4033d34607a21031;
      c0=64'hc0134b1a1a07905d;
      d0=64'h400154a79ab5f0a3;
    end
  50: begin 
      a0=64'hc05e1b634bac7360;
      b0=64'h403313f1dd0b8149;
      c0=64'hc012fd4adbd55210;
      d0=64'h40014183a78f903d;
    end
  51: begin 
      a0=64'hc05c72b215da0daf;
      b0=64'h40325f5ce2166ded;
      c0=64'hc012b2637ea8bfd0;
      d0=64'h40012eac0c2a305d;
    end
  52: begin 
      a0=64'hc05ae8f9d1ddfd76;
      b0=64'h4031b4baa98a0f31;
      c0=64'hc0126a3a9d51d25e;
      d0=64'h40011c1df59ac568;
    end
  53: begin 
      a0=64'hc0597b70eb1829d8;
      b0=64'h4031135183ef3aa0;
      c0=64'hc01224a9defc9442;
      d0=64'h400109d6b8cf1b6c;
    end
  54: begin 
      a0=64'hc0582799a2c91f1a;
      b0=64'h40307a7876da2d60;
      c0=64'hc011e18db0477bae;
      d0=64'h4000f7d3cfa599d3;
    end
  55: begin 
      a0=64'hc056eb38ff08816f;
      b0=64'h402fd32aec1c89a4;
      c0=64'hc011a0c503f8e9aa;
      d0=64'h4000e612d6480b94;
    end
  56: begin 
      a0=64'hc055c44eabb5da58;
      b0=64'h402ec037a7be4353;
      c0=64'hc01162311a630732;
      d0=64'h4000d49188c248a4;
    end
  57: begin 
      a0=64'hc054b10def3b93f6;
      b0=64'h402dbb15c28acb08;
      c0=64'hc01125b54ea5af1d;
      d0=64'h4000c34dc0ce7cb5;
    end
  58: begin 
      a0=64'hc053afd8111afda7;
      b0=64'h402cc2d971b33a37;
      c0=64'hc010eb36e91cbd86;
      d0=64'h4000b24573d18868;
    end
  59: begin 
      a0=64'hc052bf36a47feb15;
      b0=64'h402bd6aa574c6447;
      c0=64'hc010b29cf65d93bd;
      d0=64'h4000a176b102a096;
    end
  60: begin 
      a0=64'hc051ddd742b934e3;
      b0=64'h402af5c19e0529c1;
      c0=64'hc0107bd0223f81fa;
      d0=64'h400090df9fb9e06c;
    end
  61: begin 
      a0=64'hc0510a87737adee5;
      b0=64'h402a1f684989e4ab;
      c0=64'hc01046ba967833f6;
      d0=64'h4000807e7de20005;
    end
  62: begin 
      a0=64'hc05044315ae8a903;
      b0=64'h402952f5b853d4d0;
      c0=64'hc0101347dc677941;
      d0=64'h400070519e89cf5f;
    end
  63: begin 
      a0=64'hc04f13b10896ca6b;
      b0=64'h40288fce4cf3a198;
      c0=64'hc00fc2c9836e701f;
      d0=64'h4000605768927488;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a1=64'hc04db52e506791c2;
      b1=64'h4027d5623c92d53b;
      c1=64'hc00f61fe7f04d844;
      d1=64'h4000508e5577c001;
    end
  1: begin 
      a1=64'hc04c6b380ea6398d;
      b1=64'h4027232c7fcb2070;
      c1=64'hc00f040cc77e9ef0;
      d1=64'h400040f4f030339a;
    end
  2: begin 
      a1=64'hc04b345031452896;
      b1=64'h402678b1dc43f29a;
      c1=64'hc00ea8d4795a9874;
      d1=64'h40003189d4229874;
    end
  3: begin 
      a1=64'hc04a0f1985fd6747;
      b1=64'h4025d5800a128c8c;
      c1=64'hc00e50378c296e93;
      d1=64'h4000224bac2f3a11;
    end
  4: begin 
      a1=64'hc048fa54f30164a9;
      b1=64'h4025392cef3c634c;
      c1=64'hc00dfa19b04dd056;
      d1=64'h4000133931cb0e12;
    end
  5: begin 
      a1=64'hc047f4dda3ed94d9;
      b1=64'h4024a355eba7f523;
      c1=64'hc00da6602fa98d8f;
      d1=64'h400004512c2b3cfd;
    end
  6: begin 
      a1=64'hc046fda7144eee2b;
      b1=64'h4024139f3a70a2dd;
      c1=64'hc00d54f1d0f22f16;
      d1=64'h3fffeb24deff4fe2;
    end
  7: begin 
      a1=64'hc04613bab3a31a99;
      b1=64'h402389b360d2ad6c;
      c1=64'hc00d05b6bd66604c;
      d1=64'h3fffcdf7b87652e6;
    end
  8: begin 
      a1=64'hc0453635a8ffe2e8;
      b1=64'h40230542aaa60332;
      c1=64'hc00cb89868ab1561;
      d1=64'h3fffb118bcd0de20;
    end
  9: begin 
      a1=64'hc044644729d8c2b1;
      b1=64'h40228602b3dada4f;
      c1=64'hc00c6d817a9d4244;
      d1=64'h3fff9485da14caac;
    end
  10: begin 
      a1=64'hc0439d2eac232b43;
      b1=64'h40220badfcc1fb26;
      c1=64'hc00c245dbae8fd09;
      d1=64'h3fff783d130e8fd9;
    end
  11: begin 
      a1=64'hc042e03a94e71357;
      b1=64'h40219603880be535;
      c1=64'hc00bdd19fe3a9f27;
      d1=64'h3fff5c3c7e3afb8f;
    end
  12: begin 
      a1=64'hc0422cc68ba22933;
      b1=64'h402124c6812ccc01;
      c1=64'hc00b97a414e6f6df;
      d1=64'h3fff408244c2fb37;
    end
  13: begin 
      a1=64'hc041823b29da7ef9;
      b1=64'h4020b7bded53c23b;
      c1=64'hc00b53eabae8f2aa;
      d1=64'h3fff250ca1880f99;
    end
  14: begin 
      a1=64'hc040e00b9bef50e0;
      b1=64'h40204eb45dfbf692;
      c1=64'hc00b11dd8911d71d;
      d1=64'h3fff09d9e04026b4;
    end
  15: begin 
      a1=64'hc04045b5d1ac2888;
      b1=64'h401fd2ef615376f9;
      c1=64'hc00ad16ce759aff8;
      d1=64'h3ffeeee85c9fb35a;
    end
  16: begin 
      a1=64'hc03f65820a774e02;
      b1=64'h401f0fb19e5ba87e;
      c1=64'hc00a928a002e780c;
      d1=64'h3ffed4368190f39d;
    end
  17: begin 
      a1=64'hc03e4d79edbaa8c1;
      b1=64'h401e5356eefa650d;
      c1=64'hc00a5526b4b1aba6;
      d1=64'h3ffeb9c2c8776e62;
    end
  18: begin 
      a1=64'hc03d42832efc6907;
      b1=64'h401d9d8c11474598;
      c1=64'hc00a193591cec6f0;
      d1=64'h3ffe9f8bb87ec5ef;
    end
  19: begin 
      a1=64'hc03c43db99f8c2ac;
      b1=64'h401cee02a420b5e5;
      c1=64'hc009dea9c61756e1;
      d1=64'h3ffe858fe5f40f67;
    end
  20: begin 
      a1=64'hc03b50ceea46feba;
      b1=64'h401c4470d1eeb0a4;
      c1=64'hc009a577185688f5;
      d1=64'h3ffe6bcdf1a8f18a;
    end
  21: begin 
      a1=64'hc03a68b4d6deca02;
      b1=64'h401ba090ff1a302e;
      c1=64'hc0096d91decb91e5;
      d1=64'h3ffe5244885fdaf3;
    end
  22: begin 
      a1=64'hc0398af0c1aae177;
      b1=64'h401b0221812f73d9;
      c1=64'hc00936eef6fea594;
      d1=64'h3ffe38f26240affd;
    end
  23: begin 
      a1=64'hc038b6efde875da8;
      b1=64'h401a68e458f73c3c;
      c1=64'hc0090183be22f6e4;
      d1=64'h3ffe1fd642555b98;
    end
  24: begin 
      a1=64'hc037ec29dfa83ee7;
      b1=64'h4019d49ef72335ad;
      c1=64'hc008cd4609fd2f60;
      d1=64'h3ffe06eef60dbbd1;
    end
  25: begin 
      a1=64'hc0372a1ecf59d05b;
      b1=64'h40194519fee04478;
      c1=64'hc0089a2c22402392;
      d1=64'h3ffdee3b54ca6b6e;
    end
  26: begin 
      a1=64'hc03670571f87d2bd;
      b1=64'h4018ba211287df29;
      c1=64'hc008682cba5affad;
      d1=64'h3ffdd5ba3f6df576;
    end
  27: begin 
      a1=64'hc035be62d125005a;
      b1=64'h40183382a14723c5;
      c1=64'hc008373eebacc839;
      d1=64'h3ffdbd6a9ff40737;
    end
  28: begin 
      a1=64'hc03513d90778e1ad;
      b1=64'h4017b10fb9e9abf7;
      c1=64'hc008075a3018378e;
      d1=64'h3ffda54b690e3e18;
    end
  29: begin 
      a1=64'hc034705766794b25;
      b1=64'h4017329be003f74c;
      c1=64'hc007d8765ceee13f;
      d1=64'h3ffd8d5b95c63553;
    end
  30: begin 
      a1=64'hc033d381dd7018f4;
      b1=64'h4016b7fce5cb6155;
      c1=64'hc007aa8b9e2eacdb;
      d1=64'h3ffd759a29247ede;
    end
  31: begin 
      a1=64'hc0333d0182bc8036;
      b1=64'h4016410ac5462013;
      c1=64'hc0077d927209e330;
      d1=64'h3ffd5e062ddc391f;
    end
  32: begin 
      a1=64'hc032ac851ff97d4d;
      b1=64'h4015cd9f814e6d90;
      c1=64'hc0075183a4b70e5c;
      d1=64'h3ffd469eb5faf800;
    end
  33: begin 
      a1=64'hc03221c05767b4d6;
      b1=64'h40155d9704eda079;
      c1=64'hc00726584c8121a4;
      d1=64'h3ffd2f62da9cbe35;
    end
  34: begin 
      a1=64'hc0319c6ae00930ad;
      b1=64'h4014f0cf043f315a;
      c1=64'hc006fc09c6135a95;
      d1=64'h3ffd1851bba3c72f;
    end
  35: begin 
      a1=64'hc0311c4151e21c6a;
      b1=64'h40148726e57f0c93;
      c1=64'hc006d291b100c642;
      d1=64'h3ffd016a7f73e7ec;
    end
  36: begin 
      a1=64'hc030a103706699e1;
      b1=64'h4014207fa299be6b;
      c1=64'hc006a9e9ec7be884;
      d1=64'h3ffceaac52b14f50;
    end
  37: begin 
      a1=64'hc0302a75906b73c2;
      b1=64'h4013bcbbb70b917e;
      c1=64'hc006820c9443d2e6;
      d1=64'h3ffcd41668027435;
    end
  38: begin 
      a1=64'hc02f70bda948f9d9;
      b1=64'h40135bbf04faecd4;
      c1=64'hc0065af3fdbad0ee;
      d1=64'h3ffcbda7f7d50120;
    end
  39: begin 
      a1=64'hc02e95131e61891c;
      b1=64'h4012fd6ec2c8a59f;
      c1=64'hc006349ab52a8b73;
      d1=64'h3ffca7604025923d;
    end
  40: begin 
      a1=64'hc02dc186dd30c1a0;
      b1=64'h4012a1b168e5c8ca;
      c1=64'hc0060efb7b2f03b6;
      d1=64'h3ffc913e844a1bc4;
    end
  41: begin 
      a1=64'hc02cf5b941a57ecc;
      b1=64'h4012486e9dd9ed46;
      c1=64'hc005ea114245f263;
      d1=64'h3ffc7b420cbed2fc;
    end
  42: begin 
      a1=64'hc02c315045d03cda;
      b1=64'h4011f18f26ad749f;
      c1=64'hc005c5d72c820246;
      d1=64'h3ffc656a26f57598;
    end
  43: begin 
      a1=64'hc02b73f68a3c474b;
      b1=64'h40119cfcd6ffcfc2;
      c1=64'hc005a248895dfdb7;
      d1=64'h3ffc4fb62526cdcf;
    end
  44: begin 
      a1=64'hc02abd5b5de644fd;
      b1=64'h40114aa282070d8b;
      c1=64'hc0057f60d3ae1fc4;
      d1=64'h3ffc3a255e2653eb;
    end
  45: begin 
      a1=64'hc02a0d325058448b;
      b1=64'h4010fa6bed164c83;
      c1=64'hc0055d1bafae94a9;
      d1=64'h3ffc24b72d37cfec;
    end
  46: begin 
      a1=64'hc0296333011698f4;
      b1=64'h4010ac45c2b12f1b;
      c1=64'hc0053b74e92c3852;
      d1=64'h3ffc0f6af1e6df75;
    end
  47: begin 
      a1=64'hc028bf190953eaf8;
      b1=64'h4010601d86857d6f;
      c1=64'hc0051a6871c6406a;
      d1=64'h3ffbfa400fe0461c;
    end
  48: begin 
      a1=64'hc02820a31b6230fc;
      b1=64'h401015e1893d60ac;
      c1=64'hc004f9f25f47b021;
      d1=64'h3ffbe535eeccf063;
    end
  49: begin 
      a1=64'hc0278793e1aa0184;
      b1=64'h400f9b01bebcb6d2;
      c1=64'hc004da0eea16f279;
      d1=64'h3ffbd04bfa2e91bf;
    end
  50: begin 
      a1=64'hc026f3b0e729914e;
      b1=64'h400f0dd6abb072a7;
      c1=64'hc004baba6bb99b81;
      d1=64'h3ffbbb81a13dc910;
    end
  51: begin 
      a1=64'hc02664c237e6223b;
      b1=64'h400e8422d136e6df;
      c1=64'hc0049bf15d6c38d1;
      d1=64'h3ffba6d656c9b712;
    end
  52: begin 
      a1=64'hc025da93509c48cc;
      b1=64'h400dfdc875fc0455;
      c1=64'hc0047db056cc7519;
      d1=64'h3ffb92499118f3ca;
    end
  53: begin 
      a1=64'hc02554f24ee9d702;
      b1=64'h400d7aab1ce7f197;
      c1=64'hc0045ff40c93f4b4;
      d1=64'h3ffb7ddac9cbd175;
    end
  54: begin 
      a1=64'hc024d3af24a7327d;
      b1=64'h400cfaaf73ff4c00;
      c1=64'hc00442b94f63b453;
      d1=64'h3ffb69897dbfdbf7;
    end
  55: begin 
      a1=64'hc024569cd66d380b;
      b1=64'h400c7dbb494c4bdd;
      c1=64'hc00425fd0a9f4083;
      d1=64'h3ffb55552cf48562;
    end
  56: begin 
      a1=64'hc023dd9002edf30a;
      b1=64'h400c03b578fa05d1;
      c1=64'hc00409bc43554124;
      d1=64'h3ffb413d5a70f01b;
    end
  57: begin 
      a1=64'hc023685f9a1b3376;
      b1=64'h400b8c85e2670829;
      c1=64'hc003edf417366b16;
      d1=64'h3ffb2d418c2ac966;
    end
  58: begin 
      a1=64'hc022f6e4cad5e550;
      b1=64'h400b18155c20060a;
      c1=64'hc003d2a1bb994d81;
      d1=64'h3ffb19614aee2694;
    end
  59: begin 
      a1=64'hc02288fa3976d1f3;
      b1=64'h400aa64da60a01e7;
      c1=64'hc003b7c27c896ec2;
      d1=64'h3ffb059c22465875;
    end
  60: begin 
      a1=64'hc0221e7c17b2445f;
      b1=64'h400a37195e9a3e4f;
      c1=64'hc0039d53bbe28f5a;
      d1=64'h3ffaf1f1a067a9a9;
    end
  61: begin 
      a1=64'hc021b749328ac967;
      b1=64'h4009ca63fc14cc5c;
      c1=64'hc0038352f0773729;
      d1=64'h3ffade615619fc0c;
    end
  62: begin 
      a1=64'hc0215340d80364ec;
      b1=64'h40096019bcd178d8;
      c1=64'hc00369bda53fa2bb;
      d1=64'h3ffacaead6a43b62;
    end
  63: begin 
      a1=64'hc020f2442b25893b;
      b1=64'h4008f827a17331e1;
      c1=64'hc003509178944c5a;
      d1=64'h3ffab78db7b89af5;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a2=64'hc0209435d9f299d4;
      b2=64'h4008927b639327c8;
      c2=64'hc00337cc1b7081a8;
      d2=64'h3ffaa449916194c0;
    end
  1: begin 
      a2=64'hc02038fa52be2f9f;
      b2=64'h40082f036e7eca1e;
      c2=64'hc0031f6b50be6ab2;
      d2=64'h3ffa911dfdefa1ab;
    end
  2: begin 
      a2=64'hc01fc0ec5429d4b0;
      b2=64'h4007cdaed2865580;
      c2=64'hc003076ceca99d30;
      d2=64'h3ffa7e0a99e7a1a2;
    end
  3: begin 
      a2=64'hc01f15204573257f;
      b2=64'h40076e6d43e2ce8f;
      c2=64'hc002efced3fbfcf2;
      d2=64'h3ffa6b0f03f1ec8a;
    end
  4: begin 
      a2=64'hc01e6e5ec2c2262a;
      b2=64'h4007112f0dd0b833;
      c2=64'hc002d88efb7f507b;
      d2=64'h3ffa582adcca03b3;
    end
  5: begin 
      a2=64'hc01dcc7a3bc6de3a;
      b2=64'h4006b5e5112954c4;
      c2=64'hc002c1ab67681d4e;
      d2=64'h3ffa455dc72edd30;
    end
  6: begin 
      a2=64'hc01d2f44dbb5d3a9;
      b2=64'h40065c80b8489499;
      c2=64'hc002ab222ac51127;
      d2=64'h3ffa32a767d3c1cb;
    end
  7: begin 
      a2=64'hc01c96945cbd59cd;
      b2=64'h400604f3f605bac6;
      c2=64'hc00294f166f69362;
      d2=64'h3ffa20076551b7a5;
    end
  8: begin 
      a2=64'hc01c023f0d28be6d;
      b2=64'h4005af313b86d476;
      c2=64'hc0027f174b2a8c06;
      d2=64'h3ffa0d7d6819730f;
    end
  9: begin 
      a2=64'hc01b721ee6e7e1cf;
      b2=64'h40055b2b77fa37a8;
      c2=64'hc002699213dfb707;
      d2=64'h3ff9fb091a65c7da;
    end
  10: begin 
      a2=64'hc01ae60cabc3971e;
      b2=64'h400508d60c16d598;
      c2=64'hc00254600a6bf61c;
      d2=64'h3ff9e8aa282e95c4;
    end
  11: begin 
      a2=64'hc01a5de60946dd30;
      b2=64'h4004b824cdcdd31b;
      c2=64'hc0023f7f848a9e79;
      d2=64'h3ff9d6603f1c2a81;
    end
  12: begin 
      a2=64'hc019d987d793a210;
      b2=64'h4004690bfc328a09;
      c2=64'hc0022aeee3ece90b;
      d2=64'h3ff9c42b0e7b14c2;
    end
  13: begin 
      a2=64'hc01958d08ce04869;
      b2=64'h40041b803ddde00a;
      c2=64'hc00216ac95d090f6;
      d2=64'h3ff9b20a473062fa;
    end
  14: begin 
      a2=64'hc018dba13919bf1f;
      b2=64'h4003cf769e73bb49;
      c2=64'hc00202b7129ace2a;
      d2=64'h3ff99ffd9bae4a00;
    end
  15: begin 
      a2=64'hc01861da35065f0a;
      b2=64'h400384e485d912f2;
      c2=64'hc001ef0cdd766b0d;
      d2=64'h3ff98e04bfe92eb7;
    end
  16: begin 
      a2=64'hc017eb5fab4a1a50;
      b2=64'h40033bbfba91726e;
      c2=64'hc001dbac83f784de;
      d2=64'h3ff97c1f694d0efa;
    end
  17: begin 
      a2=64'hc01778152a755c8e;
      b2=64'h4002f3fe58c76aea;
      c2=64'hc001c8949dc17743;
      d2=64'h3ff96a4d4eb345c5;
    end
  18: begin 
      a2=64'hc01707df81362a8a;
      b2=64'h4002ad96d00c182e;
      c2=64'hc001b5c3cc30f4c0;
      d2=64'h3ff9588e2858a6ea;
    end
  19: begin 
      a2=64'hc0169aa5474f2558;
      b2=64'h4002687fe2b5617a;
      c2=64'hc001a338ba0aa4a0;
      d2=64'h3ff946e1afd3ef0c;
    end
  20: begin 
      a2=64'hc016304d2acedcb1;
      b2=64'h400224b09e08bb8b;
      c2=64'hc00190f21b2aa9c7;
      d2=64'h3ff93547a00c83e6;
    end
  21: begin 
      a2=64'hc015c8c027085ee2;
      b2=64'h4001e2205c269e82;
      c2=64'hc0017eeeac3a1605;
      d2=64'h3ff923bfb5318265;
    end
  22: begin 
      a2=64'hc01563e64ec92602;
      b2=64'h4001a0c6bc375ac2;
      c2=64'hc0016d2d3264f6e4;
      d2=64'h3ff91249acb11702;
    end
  23: begin 
      a2=64'hc01501aa86530d07;
      b2=64'h4001609ba477bc9c;
      c2=64'hc0015bac7b150330;
      d2=64'h3ff900e545301dae;
    end
  24: begin 
      a2=64'hc014a1f701202f4c;
      b2=64'h400121973b22957c;
      c2=64'hc0014a6b5bad77c4;
      d2=64'h3ff8ef923e82064b;
    end
  25: begin 
      a2=64'hc01444b7a70b0b7b;
      b2=64'h4000e3b1e7422cc9;
      c2=64'hc0013968b14b2911;
      d2=64'h3ff8de5059a0fb84;
    end
  26: begin 
      a2=64'hc013e9d98cef35f6;
      b2=64'h4000a6e44d4f871f;
      c2=64'hc00128a36085adfd;
      d2=64'h3ff8cd1f58a648c7;
    end
  27: begin 
      a2=64'hc01391488aba1534;
      b2=64'h40006b2749d5a0be;
      c2=64'hc001181a55335377;
      d2=64'h3ff8bbfefec2fd95;
    end
  28: begin 
      a2=64'hc0133af2e248535d;
      b2=64'h40003073f4981637;
      c2=64'hc00107cc823034b0;
      d2=64'h3ff8aaef1038cb79;
    end
  29: begin 
      a2=64'hc012e6c818c39eff;
      b2=64'h3fffed87381c10a8;
      c2=64'hc000f7b8e1266a80;
      d2=64'h3ff899ef52531cab;
    end
  30: begin 
      a2=64'hc01294b631ebf72b;
      b2=64'h3fff7c1f80a8466c;
      c2=64'hc000e7de7257fdba;
      d2=64'h3ff888ff8b6060c4;
    end
  31: begin 
      a2=64'hc01244adce675264;
      b2=64'h3fff0ca42d271f63;
      c2=64'hc000d83c3c6c9f01;
      d2=64'h3ff8781f82ab8e5e;
    end
  32: begin 
      a2=64'hc011f69eee00ffcc;
      b2=64'h3ffe9f09066a668d;
      c2=64'hc000c8d14c3f7ccc;
      d2=64'h3ff8674f0075d6a7;
    end
  33: begin 
      a2=64'hc011aa7a65ed5f4b;
      b2=64'h3ffe3342325eb43e;
      c2=64'hc000b99cb4af734f;
      d2=64'h3ff8568dcdf089cd;
    end
  34: begin 
      a2=64'hc0116031b4320443;
      b2=64'h3ffdc944329e76b5;
      c2=64'hc000aa9d8e71bfab;
      d2=64'h3ff845dbb5372a3d;
    end
  35: begin 
      a2=64'hc01117b7329c6957;
      b2=64'h3ffd6103e005b852;
      c2=64'hc0009bd2f7e5239b;
      d2=64'h3ff835388149acc6;
    end
  36: begin 
      a2=64'hc010d0fd01a47eef;
      b2=64'h3ffcfa7664f1d0b9;
      c2=64'hc0008d3c14e76308;
      d2=64'h3ff824a3fe06e47f;
    end
  37: begin 
      a2=64'hc0108bf71c5b9f88;
      b2=64'h3ffc9591414e3b01;
      c2=64'hc0007ed80eac82aa;
      d2=64'h3ff8141df8271848;
    end
  38: begin 
      a2=64'hc01048975ebe39f8;
      b2=64'h3ffc324a3abc7acb;
      c2=64'hc00070a613961690;
      d2=64'h3ff803a63d36c0f6;
    end
  39: begin 
      a2=64'hc01006d333c28a6f;
      b2=64'h3ffbd0976b6f3a31;
      c2=64'hc00062a5570e6727;
      d2=64'h3ff7f33c9b916e41;
    end
  40: begin 
      a2=64'hc00f8d3cf6cdb7d8;
      b2=64'h3ffb706f3019ff20;
      c2=64'hc00054d511624a0a;
      d2=64'h3ff7e2e0e25cd181;
    end
  41: begin 
      a2=64'hc00f0fdb209633fa;
      b2=64'h3ffb11c82c593f62;
      c2=64'hc00047347f9e1b1e;
      d2=64'h3ff7d292e183ec5f;
    end
  42: begin 
      a2=64'hc00e956d32a66f70;
      b2=64'h3ffab49949ad1836;
      c2=64'hc00039c2e36b47d8;
      d2=64'h3ff7c25269b262ef;
    end
  43: begin 
      a2=64'hc00e1ddaf9b8ad27;
      b2=64'h3ffa58d9adff1ba8;
      c2=64'hc0002c7f82eeffab;
      d2=64'h3ff7b21f4c4fef27;
    end
  44: begin 
      a2=64'hc00da9120ed863cb;
      b2=64'h3ff9fe80c2fd35ce;
      c2=64'hc0001f69a8aa4722;
      d2=64'h3ff7a1f95b7bf545;
    end
  45: begin 
      a2=64'hc00d36ff8ba8489c;
      b2=64'h3ff9a5862e7c6bff;
      c2=64'hc0001280a35b3188;
      d2=64'h3ff791e06a093794;
    end
  46: begin 
      a2=64'hc00cc78ea273f9d2;
      b2=64'h3ff94de1cd6ae3f9;
      c2=64'hc00005c3c5de5233;
      d2=64'h3ff781d44b79a878;
    end
  47: begin 
      a2=64'hc00c5aadcb3e4093;
      b2=64'h3ff8f78bb983c18d;
      c2=64'hbffff264ce25c142;
      d2=64'h3ff771d4d3fa5a2e;
    end
  48: begin 
      a2=64'hc00bf04cb630f31e;
      b2=64'h3ff8a27c42bb5409;
      c2=64'hbfffd997c37bb4ed;
      d2=64'h3ff761e1d85f8a88;
    end
  49: begin 
      a2=64'hc00b8858e2dc2e3c;
      b2=64'h3ff84eabebd3ff14;
      c2=64'hbfffc11f28df5ca8;
      d2=64'h3ff751fb2e20ca78;
    end
  50: begin 
      a2=64'hc00b22c24aac6a92;
      b2=64'h3ff7fc136cb7983e;
      c2=64'hbfffa8f9c2d3c07f;
      d2=64'h3ff74220ab553fd0;
    end
  51: begin 
      a2=64'hc00abf795ce8a084;
      b2=64'h3ff7aaabae8fe442;
      c2=64'hbfff91265d0c0784;
      d2=64'h3ff7325226b000d4;
    end
  52: begin 
      a2=64'hc00a5e6cf4519582;
      b2=64'h3ff75a6dc810d8fb;
      c2=64'hbfff79a3ca3a2a53;
      d2=64'h3ff7228f777c8863;
    end
  53: begin 
      a2=64'hc009ff90731488bf;
      b2=64'h3ff70b53034da8df;
      c2=64'hbfff6270e3e105b9;
      d2=64'h3ff712d8759b4259;
    end
  54: begin 
      a2=64'hc009a2d31d0f1275;
      b2=64'h3ff6bd54d13b2843;
      c2=64'hbfff4b8c8a253ada;
      d2=64'h3ff7032cf97e2ed1;
    end
  55: begin 
      a2=64'hc0094828ad9e2c6a;
      b2=64'h3ff6706cd30cf7fb;
      c2=64'hbfff34f5a3a278a6;
      d2=64'h3ff6f38cdc259bfc;
    end
  56: begin 
      a2=64'hc008ef82d755d368;
      b2=64'h3ff62494d116908d;
      c2=64'hbfff1eab1d3fe6bc;
      d2=64'h3ff6e3f7f71cf599;
    end
  57: begin 
      a2=64'hc00898d48688c6e4;
      b2=64'h3ff5d9c6bd4e18e7;
      c2=64'hbfff08abea077889;
      d2=64'h3ff6d46e2477a970;
    end
  58: begin 
      a2=64'hc008441250c4324a;
      b2=64'h3ff58ffcb208e828;
      c2=64'hbffef2f702fddf9f;
      d2=64'h3ff6c4ef3ece201a;
    end
  59: begin 
      a2=64'hc007f12d82aeaad6;
      b2=64'h3ff54730eb912c32;
      c2=64'hbffedd8b66fb1c16;
      d2=64'h3ff6b57b213ac952;
    end
  60: begin 
      a2=64'hc007a01bed2bd444;
      b2=64'h3ff4ff5dcf891a57;
      c2=64'hbffec8681a8651ca;
      d2=64'h3ff6a611a7573b7c;
    end
  61: begin 
      a2=64'hc00750d22431245e;
      b2=64'h3ff4b87de635eef3;
      c2=64'hbffeb38c27b0edc9;
      d2=64'h3ff696b2ad396575;
    end
  62: begin 
      a2=64'hc0070343a1cf7e9a;
      b2=64'h3ff4728bd7b6956f;
      c2=64'hbffe9ef69df3096e;
      d2=64'h3ff6875e0f70d23a;
    end
  63: begin 
      a2=64'hc006b766e1536fca;
      b2=64'h3ff42d82712a837a;
      c2=64'hbffe8aa6920a78e7;
      d2=64'h3ff67813ab03fdf1;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a3=64'hc0066d31eb5e7049;
      b3=64'h3ff3e95c9f1f0915;
      c3=64'hbffe769b1dd91390;
      d3=64'h3ff668d35d6dbb7d;
    end
  1: begin 
      a3=64'hc0062498bfc8fb6f;
      b3=64'h3ff3a6156ad68f7a;
      c3=64'hbffe62d36044e540;
      d3=64'h3ff6599d049aaa78;
    end
  2: begin 
      a3=64'hc005dd92646e56d0;
      b3=64'h3ff363a7ff28f313;
      c3=64'hbffe4f4e7d19ba4a;
      d3=64'h3ff64a707ee6bcbd;
    end
  3: begin 
      a3=64'hc0059815a76bf360;
      b3=64'h3ff3220fa379b04d;
      c3=64'hbffe3c0b9ceab277;
      d3=64'h3ff63b4dab1acb41;
    end
  4: begin 
      a3=64'hc005541910cc0ae4;
      b3=64'h3ff2e147bb43c36e;
      c3=64'hbffe2909ecf55af3;
      d3=64'h3ff62c34686a3985;
    end
  5: begin 
      a3=64'hc005119438ef27c4;
      b3=64'h3ff2a14bc70e5a18;
      c3=64'hbffe16489f05f3bd;
      d3=64'h3ff61d249670a78f;
    end
  6: begin 
      a3=64'hc004d07dbe2b726d;
      b3=64'h3ff2621760471ac4;
      c3=64'hbffe03c6e95b4b2a;
      d3=64'h3ff60e1e152fb17b;
    end
  7: begin 
      a3=64'hc00490cce478db89;
      b3=64'h3ff223a63ad89568;
      c3=64'hbffdf184068d0a75;
      d3=64'h3ff5ff20c50cbca2;
    end
  8: begin 
      a3=64'hc004527a3caa99e0;
      b3=64'h3ff1e5f4254b7138;
      c3=64'hbffddf7f357211a7;
      d3=64'h3ff5f02c86ced1c2;
    end
  9: begin 
      a3=64'hc004157d90803600;
      b3=64'h3ff1a8fd05360212;
      c3=64'hbffdcdb7b906d163;
      d3=64'h3ff5e1413b9c83a7;
    end
  10: begin 
      a3=64'hc003d9d0133f43b4;
      b3=64'h3ff16cbcda2af3fc;
      c3=64'hbffdbc2cd856d268;
      d3=64'h3ff5d25ec4f9e24c;
    end
  11: begin 
      a3=64'hc0039f68a621b75b;
      b3=64'h3ff1312fb620300e;
      c3=64'hbffdaaddde62d365;
      d3=64'h3ff5c38504c67990;
    end
  12: begin 
      a3=64'hc0036641a7d684e1;
      b3=64'h3ff0f651c6d45288;
      c3=64'hbffd99ca1a0cc406;
      d3=64'h3ff5b4b3dd3b5bab;
    end
  13: begin 
      a3=64'hc0032e52b71d0d28;
      b3=64'h3ff0bc1f4b10f9ea;
      c3=64'hbffd88f0ddffd825;
      d3=64'h3ff5a5eb30e936b3;
    end
  14: begin 
      a3=64'hc002f795e6323677;
      b3=64'h3ff082949a1a68d2;
      c3=64'hbffd7851809c4a26;
      d3=64'h3ff5972ae2b67502;
    end
  15: begin 
      a3=64'hc002c2049e81b398;
      b3=64'h3ff049ae1dda7a7a;
      c3=64'hbffd67eb5be2280c;
      d3=64'h3ff58872d5dd680e;
    end
  16: begin 
      a3=64'hc0028d9819afeecf;
      b3=64'h3ff0116854a08c96;
      c3=64'hbffd57bdcd5d572f;
      d3=64'h3ff579c2edea7d70;
    end
  17: begin 
      a3=64'hc0025a49c4580623;
      b3=64'h3fefb37f9c6df320;
      c3=64'hbffd47c83611dd0e;
      d3=64'h3ff56b1b0eba7dff;
    end
  18: begin 
      a3=64'hc00228159346d60a;
      b3=64'h3fef456263baef0e;
      c3=64'hbffd3809fa69f2de;
      d3=64'h3ff55c7b1c78d64a;
    end
  19: begin 
      a3=64'hc001f6f37674ede6;
      b3=64'h3feed872643cdff6;
      c3=64'hbffd28828221cc78;
      d3=64'h3ff54de2fb9de886;
    end
  20: begin 
      a3=64'hc001c6ddb315e7c2;
      b3=64'h3fee6ca92dd5e328;
      c3=64'hbffd19313837b1d6;
      d3=64'h3ff53f5290ed676a;
    end
  21: begin 
      a3=64'hc00197d00171aa9a;
      b3=64'h3fee020073e2c677;
      c3=64'hbffd0a158ad9a502;
      d3=64'h3ff530c9c174b9f8;
    end
  22: begin 
      a3=64'hc00169c5163779b8;
      b3=64'h3fed987208db3f9f;
      c3=64'hbffcfb2eeb5512eb;
      d3=64'h3ff52248728967b9;
    end
  23: begin 
      a3=64'hc0013cb79af0a112;
      b3=64'h3fed2ff7df31e12c;
      c3=64'hbffcec7cce062232;
      d3=64'h3ff513ce89c78d20;
    end
  24: begin 
      a3=64'hc00110a0b95472bd;
      b3=64'h3fecc88c02a76589;
      c3=64'hbffcddfeaa47b6b6;
      d3=64'h3ff5055bed10581f;
    end
  25: begin 
      a3=64'hc000e57f643c0953;
      b3=64'h3fec6228ad9c978d;
      c3=64'hbffccfb3fa65c08c;
      d3=64'h3ff4f6f082888c84;
    end
  26: begin 
      a3=64'hc000bb4a6365ff51;
      b3=64'h3febfcc821274272;
      c3=64'hbffcc19c3b8b2b98;
      d3=64'h3ff4e88c30970f99;
    end
  27: begin 
      a3=64'hc0009200125f099d;
      b3=64'h3feb9864ce5156f9;
      c3=64'hbffcb3b6edb6f323;
      d3=64'h3ff4da2edde37ba9;
    end
  28: begin 
      a3=64'hc000699b70b0c38c;
      b3=64'h3feb34f939089452;
      c3=64'hbffca60393abb689;
      d3=64'h3ff4cbd87154ba0f;
    end
  29: begin 
      a3=64'hc00042172fdb052b;
      b3=64'h3fead27ffe809618;
      c3=64'hbffc9881b2e2b3e4;
      d3=64'h3ff4bd88d20fa496;
    end
  30: begin 
      a3=64'hc0001b6ff70a201e;
      b3=64'h3fea70f3dad61b27;
      c3=64'hbffc8b30d37f061d;
      d3=64'h3ff4af3fe775ad5a;
    end
  31: begin 
      a3=64'hbfffeb4182011dbf;
      b3=64'h3fea104f9fa1441e;
      c3=64'hbffc7e10804060af;
      d3=64'h3ff4a0fd99238d4c;
    end
  32: begin 
      a3=64'hbfffa14e216514a7;
      b3=64'h3fe9b08e3bd52faa;
      c3=64'hbffc71204676bd04;
      d3=64'h3ff492c1ceeff8f6;
    end
  33: begin 
      a3=64'hbfff58fbcb535b99;
      b3=64'h3fe951aab0608a8a;
      c3=64'hbffc645fb5f60e01;
      d3=64'h3ff4848c70ea5b60;
    end
  34: begin 
      a3=64'hbfff12455f7b5d8d;
      b3=64'h3fe8f3a01b5b3ae6;
      c3=64'hbffc57ce610afd91;
      d3=64'h3ff4765d67599701;
    end
  35: begin 
      a3=64'hbffecd1fb7e5c77e;
      b3=64'h3fe89669a89a1a1f;
      c3=64'hbffc4b6bdc6e8344;
      d3=64'h3ff468349abacc56;
    end
  36: begin 
      a3=64'hbffe89887a906de8;
      b3=64'h3fe83a02a5622149;
      c3=64'hbffc3f37bf3c6c97;
      d3=64'h3ff45a11f3c02645;
    end
  37: begin 
      a3=64'hbffe477454ec2079;
      b3=64'h3fe7de66683c91c0;
      c3=64'hbffc3331a2e6fd13;
      d3=64'h3ff44bf55b4fabbd;
    end
  38: begin 
      a3=64'hbffe06df2bd8a379;
      b3=64'h3fe78390644ee3c9;
      c3=64'hbffc2759232d9cae;
      d3=64'h3ff43ddeba8216ca;
    end
  39: begin 
      a3=64'hbffdc7c2a3aee98e;
      b3=64'h3fe7297c1f813052;
      c3=64'hbffc1badde12a022;
      d3=64'h3ff42fcdfaa1b0b6;
    end
  40: begin 
      a3=64'hbffd8a16ec1be2d2;
      b3=64'h3fe6d0252ecc989f;
      c3=64'hbffc102f73d0a9e6;
      d3=64'h3ff421c305293315;
    end
  41: begin 
      a3=64'hbffd4dd6eb2dd0b3;
      b3=64'h3fe677873df1695d;
      c3=64'hbffc04dd86d22f9f;
      d3=64'h3ff413bdc3c2adcd;
    end
  42: begin 
      a3=64'hbffd12fddcf343ff;
      b3=64'h3fe61f9e0bcdcdc1;
      c3=64'hbffbf9b7bba7e29d;
      d3=64'h3ff405be204671aa;
    end
  43: begin 
      a3=64'hbffcd9845a35ff93;
      b3=64'h3fe5c865641cef4d;
      c3=64'hbffbeebdb8ff6392;
      d3=64'h3ff3f7c404b9ff88;
    end
  44: begin 
      a3=64'hbffca16588b8a596;
      b3=64'h3fe571d926a861d7;
      c3=64'hbffbe3ef279ad61d;
      d3=64'h3ff3e9cf5b4efbe0;
    end
  45: begin 
      a3=64'hbffc6a9c0ed516c0;
      b3=64'h3fe51bf544c12719;
      c3=64'hbffbd94bb2491755;
      d3=64'h3ff3dbe00e6226ab;
    end
  46: begin 
      a3=64'hbffc35232bc94f1d;
      b3=64'h3fe4c6b5bd436f5e;
      c3=64'hbffbced305dc5da5;
      d3=64'h3ff3cdf6087a5745;
    end
  47: begin 
      a3=64'hbffc00f5430b6372;
      b3=64'h3fe47216a02f4f8a;
      c3=64'hbffbc484d1234de3;
      d3=64'h3ff3c01134477c6c;
    end
  48: begin 
      a3=64'hbffbce0d2abc7d04;
      b3=64'h3fe41e140b5ab20b;
      c3=64'hbffbba60c4e11b17;
      d3=64'h3ff3b2317ca1a02d;
    end
  49: begin 
      a3=64'hbffb9c678d3858b4;
      b3=64'h3fe3caaa2d42fa49;
      c3=64'hbffbb06693c5e027;
      d3=64'h3ff3a456cc87ef75;
    end
  50: begin 
      a3=64'hbffb6bfeea9fd067;
      b3=64'h3fe377d540e74c1a;
      c3=64'hbffba695f267d0a6;
      d3=64'h3ff396810f1fc54b;
    end
  51: begin 
      a3=64'hbffb3ccd967be0bb;
      b3=64'h3fe325918c321b27;
      c3=64'hbffb9cee973b8be3;
      d3=64'h3ff388b02fb3b9af;
    end
  52: begin 
      a3=64'hbffb0ed23f2a22b5;
      b3=64'h3fe2d3db6a46e150;
      c3=64'hbffb93703a8efc55;
      d3=64'h3ff37ae419b2b3c5;
    end
  53: begin 
      a3=64'hbffae2071529f75d;
      b3=64'h3fe282af3aca0ed6;
      c3=64'hbffb8a1a9680bd3b;
      d3=64'h3ff36d1cb8aeff56;
    end
  54: begin 
      a3=64'hbffab66803b9f970;
      b3=64'h3fe232096e078cf1;
      c3=64'hbffb80ed66fb93ec;
      d3=64'h3ff35f59f85d657f;
    end
  55: begin 
      a3=64'hbffa8bf0902b5c27;
      b3=64'h3fe1e1e67d028aa2;
      c3=64'hbffb77e869af1e52;
      d3=64'h3ff3519bc4944884;
    end
  56: begin 
      a3=64'hbffa629d1b9739f7;
      b3=64'h3fe19242eef795c3;
      c3=64'hbffb6f0b5e0afc64;
      d3=64'h3ff343e2094ac291;
    end
  57: begin 
      a3=64'hbffa3a6d532caec1;
      b3=64'h3fe1431b5b14396b;
      c3=64'hbffb66560539139f;
      d3=64'h3ff3362cb297c75b;
    end
  58: begin 
      a3=64'hbffa1359f91def73;
      b3=64'h3fe0f46c577c9294;
      c3=64'hbffb5dc822169535;
      d3=64'h3ff3287bacb14898;
    end
  59: begin 
      a3=64'hbff9ed6043ed274c;
      b3=64'h3fe0a6328c692e9a;
      c3=64'hbffb55617930945e;
      d3=64'h3ff31acee3eb5d0f;
    end
  60: begin 
      a3=64'hbff9c87e12edb506;
      b3=64'h3fe0586aab6fc577;
      c3=64'hbffb4d21d0be2856;
      d3=64'h3ff30d2644b76a50;
    end
  61: begin 
      a3=64'hbff9a4b1b1bf355c;
      b3=64'h3fe00b1171091383;
      c3=64'hbffb4508f09badcc;
      d3=64'h3ff2ff81bba350f2;
    end
  62: begin 
      a3=64'hbff981f494f3526e;
      b3=64'h3fdf7c473951e367;
      c3=64'hbffb3d16a245a371;
      d3=64'h3ff2f1e135589b15;
    end
  63: begin 
      a3=64'hbff960458462ff25;
      b3=64'h3fdee33bf9559040;
      c3=64'hbffb354ab0d4dcfb;
      d3=64'h3ff2e4449e9bad51;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a4=64'hbff93fa40d632709;
      b4=64'h3fde4afad2130a05;
      c4=64'hbffb2da4e8f9c0ed;
      d4=64'h3ff2d6abe44af9d0;
    end
  1: begin 
      a4=64'hbff92009cabe7b0a;
      b4=64'h3fddb37d7436a8e4;
      c4=64'hbffb262518f7d47c;
      d4=64'h3ff2c916f35e359a;
    end
  2: begin 
      a4=64'hbff901785a896fc7;
      b4=64'h3fdd1cbdb509c603;
      c4=64'hbffb1ecb10a28606;
      d4=64'h3ff2bb85b8e58fc9;
    end
  3: begin 
      a4=64'hbff8e3e917da557a;
      b4=64'h3fdc86b56105926b;
      c4=64'hbffb1796a158212d;
      d4=64'h3ff2adf82208ead9;
    end
  4: begin 
      a4=64'hbff8c75bacb0dccb;
      b4=64'h3fdbf15e671cccf9;
      c4=64'hbffb10879dffcb68;
      d4=64'h3ff2a06e1c0717c7;
    end
  5: begin 
      a4=64'hbff8abce3b443061;
      b4=64'h3fdb5cb2ba46bf4e;
      c4=64'hbffb099ddb045846;
      d4=64'h3ff292e7943512ea;
    end
  6: begin 
      a4=64'hbff8913e59a50c91;
      b4=64'h3fdac8ac5e4359c1;
      c4=64'hbffb02d92e523506;
      d4=64'h3ff2856477fd42a7;
    end
  7: begin 
      a4=64'hbff877a96aed79e1;
      b4=64'h3fda35455dd2340f;
      c4=64'hbffafc396f536575;
      d4=64'h3ff277e4b4deb7ad;
    end
  8: begin 
      a4=64'hbff85f0f4f4347f8;
      b4=64'h3fd9a277d9aab352;
      c4=64'hbffaf5be76ed38ee;
      d4=64'h3ff26a68386c6eb9;
    end
  9: begin 
      a4=64'hbff8476d69c07f61;
      b4=64'h3fd9103df4faa238;
      c4=64'hbffaef681f7cb1ee;
      d4=64'h3ff25ceef04c93db;
    end
  10: begin 
      a4=64'hbff830c0849b0d58;
      b4=64'h3fd87e91d98be97f;
      c4=64'hbffae93644d3ded8;
      d4=64'h3ff24f78ca37c731;
    end
  11: begin 
      a4=64'hbff81b0883282cbe;
      b4=64'h3fd7ed6dc70fa866;
      c4=64'hbffae328c4384cd3;
      d4=64'h3ff24205b3f862d6;
    end
  12: begin 
      a4=64'hbff80645a1ecd30d;
      b4=64'h3fd75ccc0404e0e9;
      c4=64'hbffadd3f7c5f95d7;
      d4=64'h3ff234959b69c21a;
    end
  13: begin 
      a4=64'hbff7f272fd1d60b7;
      b4=64'h3fd6cca6d35a2a6e;
      c4=64'hbffad77a4d6d1051;
      d4=64'h3ff227286e7789e9;
    end
  14: begin 
      a4=64'hbff7df90b4940615;
      b4=64'h3fd63cf88d2ed725;
      c4=64'hbffad1d918f09099;
      d4=64'h3ff219be1b1cf242;
    end
  15: begin 
      a4=64'hbff7cda11f238370;
      b4=64'h3fd5adbb959f42a1;
      c4=64'hbffacc5bc1e428b5;
      d4=64'h3ff20c568f6410bd;
    end
  16: begin 
      a4=64'hbff7bc9d8e53e74e;
      b4=64'h3fd51eea4129bd9b;
      c4=64'hbffac7022ca94f0b;
      d4=64'h3ff1fef1b96523e8;
    end
  17: begin 
      a4=64'hbff7ac8687ecc992;
      b4=64'h3fd4907efc04500b;
      c4=64'hbffac1cc3f08b14c;
      d4=64'h3ff1f18f8745dfad;
    end
  18: begin 
      a4=64'hbff79d5f5b3396e4;
      b4=64'h3fd402743f8ca72c;
      c4=64'hbffabcb9e0303e3f;
      d4=64'h3ff1e42fe738ba4a;
    end
  19: begin 
      a4=64'hbff78f222f196e92;
      b4=64'h3fd374c4734e5b5e;
      c4=64'hbffab7caf8b0ef0b;
      d4=64'h3ff1d6d2c77c3a44;
    end
  20: begin 
      a4=64'hbff781cfef53500a;
      b4=64'h3fd2e76a12037a68;
      c4=64'hbffab2ff727e6eac;
      d4=64'h3ff1c978165a44c2;
    end
  21: begin 
      a4=64'hbff775692b3714e3;
      b4=64'h3fd25a5f9dc0f74f;
      c4=64'hbffaae5738ee483b;
      d4=64'h3ff1bc1fc2276cb6;
    end
  22: begin 
      a4=64'hbff769eb78d5796f;
      b4=64'h3fd1cd9f8fbb061a;
      c4=64'hbffaa9d238b5bc30;
      d4=64'h3ff1aec9b942424f;
    end
  23: begin 
      a4=64'hbff75f5981d22213;
      b4=64'h3fd1412472efa43a;
      c4=64'hbffaa5705fea526a;
      d4=64'h3ff1a175ea12a302;
    end
  24: begin 
      a4=64'hbff755af0803377f;
      b4=64'h3fd0b4e8c3c8326f;
      c4=64'hbffaa1319dffed1a;
      d4=64'h3ff19424430909e3;
    end
  25: begin 
      a4=64'hbff74cef7db7c1f3;
      b4=64'h3fd028e7105ef88e;
      c4=64'hbffa9d15e3c96f07;
      d4=64'h3ff186d4b29de050;
    end
  26: begin 
      a4=64'hbff7451859264d5e;
      b4=64'h3fcf3a33b932d4aa;
      c4=64'hbffa991d23778767;
      d4=64'h3ff179872750ceb9;
    end
  27: begin 
      a4=64'hbff73e2b023d2f62;
      b4=64'h3fce22f768bb8b2a;
      c4=64'hbffa95475098fd8b;
      d4=64'h3ff16c3b8fa80db9;
    end
  28: begin 
      a4=64'hbff738263da5efab;
      b4=64'h3fcd0c0e3775ee80;
      c4=64'hbffa9194601a0c42;
      d4=64'h3ff15ef1da2fb726;
    end
  29: begin 
      a4=64'hbff7330b669136e8;
      b4=64'h3fcbf56d3fd6a482;
      c4=64'hbffa8e044845603d;
      d4=64'h3ff151a9f579171a;
    end
  30: begin 
      a4=64'hbff72edb888e34de;
      b4=64'h3fcadf0991e36ed6;
      c4=64'hbffa8a9700c34655;
      d4=64'h3ff14463d019fd0a;
    end
  31: begin 
      a4=64'hbff72b94f26bf187;
      b4=64'h3fc9c8d82e99523c;
      c4=64'hbffa874c829a7aca;
      d4=64'h3ff1371f58ac0c92;
    end
  32: begin 
      a4=64'hbff72936c203af2a;
      b4=64'h3fc8b2ce1333243f;
      c4=64'hbffa8424c8308584;
      d4=64'h3ff129dc7dcc0e33;
    end
  33: begin 
      a4=64'hbff727c5db210d55;
      b4=64'h3fc79ce058b89345;
      c4=64'hbffa811fcd4b765a;
      d4=64'h3ff11c9b2e193fb6;
    end
  34: begin 
      a4=64'hbff727409950c0f4;
      b4=64'h3fc68703ec5249d4;
      c4=64'hbffa7e3d8f10abed;
      d4=64'h3ff10f5b5834a410;
    end
  35: begin 
      a4=64'hbff727a82e5b00a1;
      b4=64'h3fc5712dc0265471;
      c4=64'hbffa7b7e0c074cfb;
      d4=64'h3ff1021ceac05317;
    end
  36: begin 
      a4=64'hbff728fd72d84860;
      b4=64'h3fc45b52bae26d50;
      c4=64'hbffa78e14418e09a;
      d4=64'h3ff0f4dfd45ec87a;
    end
  37: begin 
      a4=64'hbff72b40bcc8e78e;
      b4=64'h3fc34567bae8dd9d;
      c4=64'hbffa76673892b477;
      d4=64'h3ff0e7a403b23244;
    end
  38: begin 
      a4=64'hbff72e74662f09ac;
      b4=64'h3fc22f61924bf2b7;
      c4=64'hbffa740fec2716cf;
      d4=64'h3ff0da69675bbeb1;
    end
  39: begin 
      a4=64'hbff73298b84d5127;
      b4=64'h3fc1193503c24aaf;
      c4=64'hbffa71db62ef24e8;
      d4=64'h3ff0cd2fedfae939;
    end
  40: begin 
      a4=64'hbff737ae822df84c;
      b4=64'h3fc002d6c0c5bcad;
      c4=64'hbffa6fc9a26c0228;
      d4=64'h3ff0bff7862cc6bb;
    end
  41: begin 
      a4=64'hbff73db896dd1592;
      b4=64'h3fbdd876ecd01799;
      c4=64'hbffa6ddab189acd8;
      d4=64'h3ff0b2c01e8b50fa;
    end
  42: begin 
      a4=64'hbff744b83e6ece3e;
      b4=64'h3fbbaaaf77865b89;
      c4=64'hbffa6c0e98a02fcf;
      d4=64'h3ff0a589a5acb0d2;
    end
  43: begin 
      a4=64'hbff74cacf64af5a4;
      b4=64'h3fb97c4005e11c14;
      c4=64'hbffa6a656175acf3;
      d4=64'h3ff098540a22879e;
    end
  44: begin 
      a4=64'hbff7559b42ae9a43;
      b4=64'h3fb74d119c58b3ef;
      c4=64'hbffa68df174216b6;
      d4=64'h3ff08b1f3a79374c;
    end
  45: begin 
      a4=64'hbff75f83f5d361a8;
      b4=64'h3fb51d0cdc3fba9d;
      c4=64'hbffa677bc6b01d1d;
      d4=64'h3ff07deb25372957;
    end
  46: begin 
      a4=64'hbff76a692078d4eb;
      b4=64'h3fb2ec1a4f9499b4;
      c4=64'hbffa663b7de0d299;
      d4=64'h3ff070b7b8dc1445;
    end
  47: begin 
      a4=64'hbff7764c60b368a8;
      b4=64'h3fb0ba224b95f7ed;
      c4=64'hbffa651e4c6e90e6;
      d4=64'h3ff06384e3e04001;
    end
  48: begin 
      a4=64'hbff783308cbe9e93;
      b4=64'h3fad0e19e77bab81;
      c4=64'hbffa6424436f6fe1;
      d4=64'h3ff0565294b3c864;
    end
  49: begin 
      a4=64'hbff7911801cc0d6d;
      b4=64'h3fa8a58476e1c0be;
      c4=64'hbffa634d757969cb;
      d4=64'h3ff04920b9bdde73;
    end
  50: begin 
      a4=64'hbff7a005b920d27d;
      b4=64'h3fa43a53be824bae;
      c4=64'hbffa6299f6a522c7;
      d4=64'h3ff03bef415c07b6;
    end
  51: begin 
      a4=64'hbff7affa61ecf7b8;
      b4=64'h3f9f98ad0314d138;
      c4=64'hbffa6209dc915cdf;
      d4=64'h3ff02ebe19e15bf9;
    end
  52: begin 
      a4=64'hbff7c0fad66ddafa;
      b4=64'h3f96b6b6e2891023;
      c4=64'hbffa619d3e67df19;
      d4=64'h3ff0218d3195c10d;
    end
  53: begin 
      a4=64'hbff7d3090129fe85;
      b4=64'h3f8b9cc1633666dd;
      c4=64'hbffa615434e015a9;
      d4=64'h3ff0145c76b524af;
    end
  54: begin 
      a4=64'hbff7e626accdb446;
      b4=64'h3f737d14a6b1e2d3;
      c4=64'hbffa612eda445191;
      d4=64'h3ff0072bd76eb442;
    end
  55: begin 
      a4=64'hbff7fa5ac7854e6a;
      b4=64'hbf705c0583e55082;
      c4=64'hbffa612d4a764ac0;
      d4=64'h3feff3f683c824f9;
    end
  56: begin 
      a4=64'hbff80fa3d31688ad;
      b4=64'hbf8a29b68fd4f46e;
      c4=64'hbffa614fa2f23ee1;
      d4=64'h3fefd99548511557;
    end
  57: begin 
      a4=64'hbff8260a1c0dc927;
      b4=64'hbf961ab06e8835e0;
      c4=64'hbffa619602d64272;
      d4=64'h3fefbf33d88083a9;
    end
  58: begin 
      a4=64'hbff83d8ccd01ff12;
      b4=64'hbf9f28eba7e8a7c1;
      c4=64'hbffa62008ae4b58c;
      d4=64'h3fefa4d2103eca1b;
    end
  59: begin 
      a4=64'hbff8563287ad6ef4;
      b4=64'hbfa41ffbedef458c;
      c4=64'hbffa628f5d8bb8fa;
      d4=64'h3fef8a6fcb52ab01;
    end
  60: begin 
      a4=64'hbff86ffcd3d89ec5;
      b4=64'hbfa8b02123357bfb;
      c4=64'hbffa63429ee92f4d;
      d4=64'h3fef700ce55fa306;
    end
  61: begin 
      a4=64'hbff88af3059d483d;
      b4=64'hbfad451c451a4ea6;
      c4=64'hbffa641a74d20828;
      d4=64'h3fef55a939e43633;
    end
  62: begin 
      a4=64'hbff8a716b4b10982;
      b4=64'hbfb0ef92bf7e3478;
      c4=64'hbffa651706d66691;
      d4=64'h3fef3b44a4383671;
    end
  63: begin 
      a4=64'hbff8c46e62f3f6c0;
      b4=64'hbfb33f3aaa918cf4;
      c4=64'hbffa66387e4998bb;
      d4=64'h3fef20deff8b047c;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a5=64'hbff8e2fd4c8ef935;
      b5=64'hbfb591a2bc6366ee;
      c5=64'hbffa677f0647587b;
      d5=64'h3fef067826e1ca15;
    end
  1: begin 
      a5=64'hbff902c7ec30dda7;
      b5=64'hbfb7e6e82486edb8;
      c5=64'hbffa68eacbbb9949;
      d5=64'h3feeec0ff515adab;
    end
  2: begin 
      a5=64'hbff923d3e4c265c9;
      b5=64'hbfba3f2883f6ba1f;
      c5=64'hbffa6a7bfd68ed25;
      d5=64'h3feed1a644d1ff15;
    end
  3: begin 
      a5=64'hbff946267ffc98b2;
      b5=64'hbfbc9a8200c7fee5;
      c5=64'hbffa6c32cbeff9b0;
      d5=64'h3feeb73af0925d27;
    end
  4: begin 
      a5=64'hbff969c4ee1d239a;
      b5=64'hbfbef9132cc37e8c;
      c5=64'hbffa6e0f69d78b46;
      d5=64'h3fee9ccdd2a0d3a5;
    end
  5: begin 
      a5=64'hbff98eb492586778;
      b5=64'hbfc0ad7d9665f228;
      c5=64'hbffa70120b93b687;
      d5=64'h3fee825ec513f197;
    end
  6: begin 
      a5=64'hbff9b4fc3b008622;
      b5=64'hbfc1e02ccace91d9;
      c5=64'hbffa723ae78ed7a5;
      d5=64'h3fee67eda1ccd778;
    end
  7: begin 
      a5=64'hbff9dca0099491c8;
      b5=64'hbfc314a754cf5f81;
      c5=64'hbffa748a36319069;
      d5=64'h3fee4d7a42753d07;
    end
  8: begin 
      a5=64'hbffa05a8b6ed2e83;
      b5=64'hbfc44afd84763cc7;
      c5=64'hbffa770031ec2c08;
      d5=64'h3fee3304807d6e56;
    end
  9: begin 
      a5=64'hbffa301a0b59b3ed;
      b5=64'hbfc5834014acf19d;
      c5=64'hbffa799d173ee8dc;
      d5=64'h3fee188c351a3fe3;
    end
  10: begin 
      a5=64'hbffa5bfcafc5adf1;
      b5=64'hbfc6bd7ff0e6b96a;
      c5=64'hbffa7c6124c4dbb2;
      d5=64'h3fedfe113942f956;
    end
  11: begin 
      a5=64'hbffa8957859fc1cc;
      b5=64'hbfc7f9ce63c89ee9;
      c5=64'hbffa7f4c9b3ca577;
      d5=64'h3fede39365af366e;
    end
  12: begin 
      a5=64'hbffab8302ca145f2;
      b5=64'hbfc9383d0eac4675;
      c5=64'hbffa825fbd9344bf;
      d5=64'h3fedc91292d4bdda;
    end
  13: begin 
      a5=64'hbffae88f4a865b13;
      b5=64'hbfca78dde122b85a;
      c5=64'hbffa859ad0eea803;
      d5=64'h3fedae8e98e54dc5;
    end
  14: begin 
      a5=64'hbffb1a7d94f83a0a;
      b5=64'hbfcbbbc3228b9b89;
      c5=64'hbffa88fe1cb8d8e4;
      d5=64'h3fed94074fcc5d64;
    end
  15: begin 
      a5=64'hbffb4e0124ba2440;
      b5=64'hbfcd00ff85014f77;
      c5=64'hbffa8c89eaaafdb4;
      d5=64'h3fed797c8f2cd330;
    end
  16: begin 
      a5=64'hbffb83240dd56678;
      b5=64'hbfce48a609ef9c8e;
      c5=64'hbffa903e86d9dce5;
      d5=64'h3fed5eee2e5eafca;
    end
  17: begin 
      a5=64'hbffbb9ee0d808d31;
      b5=64'hbfcf92ca26c14c04;
      c5=64'hbffa941c3fc15cbe;
      d5=64'h3fed445c046cac7c;
    end
  18: begin 
      a5=64'hbffbf2678cf2c3a1;
      b5=64'hbfd06fbfd95d904d;
      c5=64'hbffa9823665207af;
      d5=64'h3fed29c5e811cd61;
    end
  19: begin 
      a5=64'hbffc2c9b1c6eacba;
      b5=64'hbfd1176d74eae2b9;
      c5=64'hbffa9c544dfdd336;
      d5=64'h3fed0f2bafb6e683;
    end
  20: begin 
      a5=64'hbffc6891e7780112;
      b5=64'hbfd1c0783ffe6d2d;
      c5=64'hbffaa0af4cc5ea8d;
      d5=64'h3fecf48d31701385;
    end
  21: begin 
      a5=64'hbffca65585deb73c;
      b5=64'hbfd26aeacd41b64e;
      c5=64'hbffaa534bb48c5e0;
      d5=64'h3fecd9ea42fa215f;
    end
  22: begin 
      a5=64'hbffce5ef85e48418;
      b5=64'hbfd316cfecfec69e;
      c5=64'hbffaa9e4f4d0f990;
      d5=64'h3fecbf42b9b7e9c4;
    end
  23: begin 
      a5=64'hbffd276cf4d7d1b8;
      b5=64'hbfd3c432a5cd8ead;
      c5=64'hbffaaec05764ae4a;
      d5=64'h3feca4966aaf9f82;
    end
  24: begin 
      a5=64'hbffd6ad78403f091;
      b5=64'hbfd4731e47ba1115;
      c5=64'hbffab3c743d4b563;
      d5=64'h3fec89e52a880b1f;
    end
  25: begin 
      a5=64'hbffdb039cd39c54c;
      b5=64'hbfd5239e634275b4;
      c5=64'hbffab8fa1dcd85c2;
      d5=64'h3fec6f2ecd85b7d4;
    end
  26: begin 
      a5=64'hbffdf7a1ccac24a2;
      b5=64'hbfd5d5bec8b124dd;
      c5=64'hbffabe594be81a97;
      d5=64'h3fec547327880fa8;
    end
  27: begin 
      a5=64'hbffe4119d2e950d1;
      b5=64'hbfd6898b98586b89;
      c5=64'hbffac3e537bb33b5;
      d5=64'h3fec39b20c06663d;
    end
  28: begin 
      a5=64'hbffe8cb1078d7eb5;
      b5=64'hbfd73f1132676e09;
      c5=64'hbffac99e4dee1560;
      d5=64'h3fec1eeb4e0cf1c7;
    end
  29: begin 
      a5=64'hbffeda7161f735f6;
      b5=64'hbfd7f65c50d5e93f;
      c5=64'hbffacf84fe4aa095;
      d5=64'h3fec041ec039b16a;
    end
  30: begin 
      a5=64'hbfff2a6cad07795a;
      b5=64'hbfd8af79eb762c02;
      c5=64'hbffad599bbd21649;
      d5=64'h3febe94c34b94096;
    end
  31: begin 
      a5=64'hbfff7caec773e793;
      b5=64'hbfd96a775f428dba;
      c5=64'hbffadbdcfccfc012;
      d5=64'h3febce737d439630;
    end
  32: begin 
      a5=64'hbfffd146135cbce0;
      b5=64'hbfda276257647e4f;
      c5=64'hbffae24f3aef5a28;
      d5=64'h3febb3946b18af23;
    end
  33: begin 
      a5=64'hc0001420ea84799f;
      b5=64'hbfdae648d6fd8581;
      c5=64'hbffae8f0f3526279;
      d5=64'h3feb98aecefd23a5;
    end
  34: begin 
      a5=64'hc00040da250250f9;
      b5=64'hbfdba7393756c232;
      c5=64'hbffaefc2a6a703bb;
      d5=64'h3feb7dc27936a63b;
    end
  35: begin 
      a5=64'hc0006ed61208bf0f;
      b5=64'hbfdc6a423d4369d2;
      c5=64'hbffaf6c4d93eb6e6;
      d5=64'h3feb62cf39886b87;
    end
  36: begin 
      a5=64'hc0009e1dc9fef90c;
      b5=64'hbfdd2f7308c3f661;
      c5=64'hbffafdf81327765d;
      d5=64'h3feb47d4df2f7a71;
    end
  37: begin 
      a5=64'hc000ceb8ebd910af;
      b5=64'hbfddf6db27970275;
      c5=64'hbffb055ce04495b4;
      d5=64'h3feb2cd338dee35a;
    end
  38: begin 
      a5=64'hc00100b25aaa8d0f;
      b5=64'hbfdec08a8638d7c8;
      c5=64'hbffb0cf3d0694743;
      d5=64'h3feb11ca14bbddb8;
    end
  39: begin 
      a5=64'hc0013412c28e6551;
      b5=64'hbfdf8c918bd175d9;
      c5=64'hbffb14bd7773316e;
      d5=64'h3feaf6b94059cad5;
    end
  40: begin 
      a5=64'hc00168e43abd5177;
      b5=64'hbfe02d808675df6f;
      c5=64'hbffb1cba6d67396c;
      d5=64'h3feadba088b61d2b;
    end
  41: begin 
      a5=64'hc0019f31b3088585;
      b5=64'hbfe095f529324425;
      c5=64'hbffb24eb4e8ea629;
      d5=64'h3feac07fba34229a;
    end
  42: begin 
      a5=64'hc001d7042a5bdcc4;
      b5=64'hbfe0ffaf9749850e;
      c5=64'hbffb2d50bb94e552;
      d5=64'h3feaa556a098b13b;
    end
  43: begin 
      a5=64'hc00210687647eca2;
      b5=64'hbfe16ab8f0efc7ab;
      c5=64'hbffb35eb59a85bbe;
      d5=64'h3fea8a250705b4d4;
    end
  44: begin 
      a5=64'hc0024b69803f12ab;
      b5=64'hbfe1d71a9efde57b;
      c5=64'hbffb3ebbd29a1bb0;
      d5=64'h3fea6eeab7f59c69;
    end
  45: begin 
      a5=64'hc0028813fac848b8;
      b5=64'hbfe244de4cb4b178;
      c5=64'hbffb47c2d5005fbf;
      d5=64'h3fea53a77d36a63b;
    end
  46: begin 
      a5=64'hc002c672b2ab2737;
      b5=64'hbfe2b40df324b38a;
      c5=64'hbffb5101145989b1;
      d5=64'h3fea385b1fe60923;
    end
  47: begin 
      a5=64'hc00306945679f80f;
      b5=64'hbfe324b3ce0cee55;
      c5=64'hbffb5a774931b520;
      d5=64'h3fea1d05686af9eb;
    end
  48: begin 
      a5=64'hc00348860b66c996;
      b5=64'hbfe396da6bc7b6c4;
      c5=64'hbffb642631481de5;
      d5=64'h3fea01a61e718b00;
    end
  49: begin 
      a5=64'hc0038c556ae67434;
      b5=64'hbfe40a8cabe6080b;
      c5=64'hbffb6e0e8fb7228c;
      d5=64'h3fe9e63d08e5656a;
    end
  50: begin 
      a5=64'hc003d2114e8b6981;
      b5=64'hbfe47fd5c0ce3fbb;
      c5=64'hbffb78312d1d8fad;
      d5=64'h3fe9cac9edec591c;
    end
  51: begin 
      a5=64'hc00419c8e450b4d3;
      b5=64'hbfe4f6c1355b3edd;
      c5=64'hbffb828ed7c97726;
      d5=64'h3fe9af4c92e0c335;
    end
  52: begin 
      a5=64'hc004638becb6a652;
      b5=64'hbfe56f5aee5e1dfe;
      c5=64'hbffb8d2863e53cd0;
      d5=64'h3fe993c4bc4bc882;
    end
  53: begin 
      a5=64'hc004af6a632ace04;
      b5=64'hbfe5e9af3226b156;
      c5=64'hbffb97feaba54a55;
      d5=64'h3fe978322ddf624c;
    end
  54: begin 
      a5=64'hc004fd765d6886bb;
      b5=64'hbfe665caa497e05a;
      c5=64'hbffba3128f79838e;
      d5=64'h3fe95c94aa703bdc;
    end
  55: begin 
      a5=64'hc0054dc0ba9bd3d5;
      b5=64'hbfe6e3ba56451f3d;
      c5=64'hbffbae64f63e7b30;
      d5=64'h3fe940ebf3ef5e9f;
    end
  56: begin 
      a5=64'hc005a05c9418b3d6;
      b5=64'hbfe7638bbe677911;
      c5=64'hbffbb9f6cd72bbfb;
      d5=64'h3fe92537cb63aad8;
    end
  57: begin 
      a5=64'hc005f55d4616f133;
      b5=64'hbfe7e54cc558e523;
      c5=64'hbffbc5c9096ce0c3;
      d5=64'h3fe90977f0e31add;
    end
  58: begin 
      a5=64'hc0064cd6bc242ffe;
      b5=64'hbfe8690bc727b495;
      c5=64'hbffbd1dca594ed27;
      d5=64'h3fe8edac238bceab;
    end
  59: begin 
      a5=64'hc006a6def0f5e7bf;
      b5=64'hbfe8eed79775c9a4;
      c5=64'hbffbde32a49f16e9;
      d5=64'h3fe8d1d4217cdd41;
    end
  60: begin 
      a5=64'hc007038a1af41491;
      b5=64'hbfe976bf8d1e88e1;
      c5=64'hbffbeacc10c99a99;
      d5=64'h3fe8b5efa7cee98c;
    end
  61: begin 
      a5=64'hc00762f0d1ba2572;
      b5=64'hbfea00d37b269af4;
      c5=64'hbffbf7a9fc1da1cd;
      d5=64'h3fe899fe728c7859;
    end
  62: begin 
      a5=64'hc007c529b0d83952;
      b5=64'hbfea8d23c3ea6202;
      c5=64'hbffc04cd80b1e6ea;
      d5=64'h3fe87e003caa044d;
    end
  63: begin 
      a5=64'hc0082a4de26f0405;
      b5=64'hbfeb1bc156c8c1e0;
      c5=64'hbffc1237c0f0c929;
      d5=64'h3fe861f4bffdcd5d;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a6=64'hc0089277c8c64675;
      b6=64'hbfebacbdb6749730;
      c6=64'hbffc1fe9e7e20301;
      d6=64'h3fe845dbb53760c5;
    end
  1: begin 
      a6=64'hc008fdc1f4555478;
      b6=64'hbfec402b04bbd666;
      c6=64'hbffc2de529764af0;
      d6=64'h3fe829b4d3d6d618;
    end
  2: begin 
      a6=64'hc0096c497436fe97;
      b6=64'hbfecd61c03a190c5;
      c6=64'hbffc3c2ac2d76509;
      d6=64'h3fe80d7fd223be83;
    end
  3: begin 
      a6=64'hc009de2b8c147ec3;
      b6=64'hbfed6ea42093eb2c;
      c6=64'hbffc4abbfabb35c3;
      d6=64'h3fe7f13c6523c266;
    end
  4: begin 
      a6=64'hc00a538793860340;
      b6=64'hbfee09d779d12f1b;
      c6=64'hbffc599a21bafa9e;
      d6=64'h3fe7d4ea4090ea38;
    end
  5: begin 
      a6=64'hc00acc7ce223ba52;
      b6=64'hbfeea7caeafa2204;
      c6=64'hbffc68c692ad7c66;
      d6=64'h3fe7b88916cf8dff;
    end
  6: begin 
      a6=64'hc00b492e74cb8e3f;
      b6=64'hbfef48940bdaf83f;
      c6=64'hbffc7842b3073c37;
      d6=64'h3fe79c1898e3e85f;
    end
  7: begin 
      a6=64'hc00bc9bea121eb6e;
      b6=64'hbfefec4945fb7365;
      c6=64'hbffc880ff33c7a62;
      d6=64'h3fe77f9876674801;
    end
  8: begin 
      a6=64'hc00c4e540483574e;
      b6=64'hbff04980e7e1570a;
      c6=64'hbffc982fcf2aa064;
      d6=64'h3fe763085d7cdbd6;
    end
  9: begin 
      a6=64'hc00cd71440aa3fb0;
      b6=64'hbff09e6ae320d7b7;
      c6=64'hbffca8a3ce837259;
      d6=64'h3fe74667fac6146c;
    end
  10: begin 
      a6=64'hc00d6428cdf5cc8d;
      b6=64'hbff0f4ef14d18041;
      c6=64'hbffcb96d85406dfc;
      d6=64'h3fe729b6f956967e;
    end
  11: begin 
      a6=64'hc00df5bb1ffe0506;
      b6=64'hbff14d1a79c93a13;
      c6=64'hbffcca8e94190962;
      d6=64'h3fe70cf502a7b881;
    end
  12: begin 
      a6=64'hc00e8bf91d1330ec;
      b6=64'hbff1a6fa8bb988ab;
      c6=64'hbffcdc08a9006a50;
      d6=64'h3fe6f021be8b8651;
    end
  13: begin 
      a6=64'hc00f27116aa2ba33;
      b6=64'hbff2029d4c107b1d;
      c6=64'hbffceddd7fa80c15;
      d6=64'h3fe6d33cd31f44d1;
    end
  14: begin 
      a6=64'hc00fc734d6bd382c;
      b6=64'hbff2601149514beb;
      c6=64'hbffd000ee208f15d;
      d6=64'h3fe6b645e4bd6f6d;
    end
  15: begin 
      a6=64'hc010364ba778b321;
      b6=64'hbff2bf65a471269d;
      c6=64'hbffd129ea8f42191;
      d6=64'h3fe6993c95ef28df;
    end
  16: begin 
      a6=64'hc0108bb77caf22b8;
      b6=64'hbff320aa19b5d3df;
      c6=64'hbffd258ebca97a81;
      d6=64'h3fe67c20875d1863;
    end
  17: begin 
      a6=64'hc010e3fa3fc6ba1f;
      b6=64'hbff383ef0823487f;
      c6=64'hbffd38e11576c430;
      d6=64'h3fe65ef157bfac25;
    end
  18: begin 
      a6=64'hc0113f31eb8f4951;
      b6=64'hbff3e9457950e368;
      c6=64'hbffd4c97bc5dd764;
      d6=64'h3fe641aea3ceb8b3;
    end
  19: begin 
      a6=64'hc0119d7e3ec02e52;
      b6=64'hbff450bf296a37b7;
      c6=64'hbffd60b4cbc47081;
      d6=64'h3fe6245806306df8;
    end
  20: begin 
      a6=64'hc011feffff3ec37b;
      b6=64'hbff4ba6e92e16f22;
      c6=64'hbffd753a702b8267;
      d6=64'h3fe606ed17679860;
    end
  21: begin 
      a6=64'hc01263d9fa21aa8a;
      b6=64'hbff52666f5b99852;
      c6=64'hbffd8a2ae8f14b88;
      d6=64'h3fe5e96d6dc12555;
    end
  22: begin 
      a6=64'hc012cc30ec99032a;
      b6=64'hbff594bc62cf4766;
      c6=64'hbffd9f88891cc451;
      d6=64'h3fe5cbd89d40e128;
    end
  23: begin 
      a6=64'hc013382b6677cb09;
      b6=64'hbff60583c6dedaf7;
      c6=64'hbffdb555b8340b18;
      d6=64'h3fe5ae2e378d641e;
    end
  24: begin 
      a6=64'hc013a7f20ab41959;
      b6=64'hbff678d2f65a1f1e;
      c6=64'hbffdcb94f31e0834;
      d6=64'h3fe5906dcbdb2362;
    end
  25: begin 
      a6=64'hc0141bb01e570b03;
      b6=64'hbff6eec0b88dad58;
      c6=64'hbffde248cd106fde;
      d6=64'h3fe57296e6d69a5c;
    end
  26: begin 
      a6=64'hc01493920fd57a0e;
      b6=64'hbff76764d90d653b;
      c6=64'hbffdf973f089b799;
      d6=64'h3fe554a9128d7fdf;
    end
  27: begin 
      a6=64'hc0150fc8745060f7;
      b6=64'hbff7e2d82e71b850;
      c6=64'hbffe1119205aa3e9;
      d6=64'h3fe536a3d656f9fe;
    end
  28: begin 
      a6=64'hc01590855594bcc3;
      b6=64'hbff86134b16b8f52;
      c6=64'hbffe293b38bbb726;
      d6=64'h3fe51886b6bac239;
    end
  29: begin 
      a6=64'hc01615fdb4b704c3;
      b6=64'hbff8e29587c87c51;
      c6=64'hbffe41dd3074c3c1;
      d6=64'h3fe4fa5135572b29;
    end
  30: begin 
      a6=64'hc016a06a914126db;
      b6=64'hbff9671715227f1b;
      c6=64'hbffe5b021a1386b4;
      d6=64'h3fe4dc02d0c5f797;
    end
  31: begin 
      a6=64'hc0173006bbc83955;
      b6=64'hbff9eed7123e9174;
      c6=64'hbffe74ad2533bcd3;
      d6=64'h3fe4bd9b047ff1e2;
    end
  32: begin 
      a6=64'hc017c5118e4b6f3a;
      b6=64'hbffa79f49a1b6a0e;
      c6=64'hbffe8ee19fdb9457;
      d6=64'h3fe49f1948bf3163;
    end
  33: begin 
      a6=64'hc0185fcddd757d4e;
      b6=64'hbffb089042a630b4;
      c6=64'hbffea9a2f7ea9ba6;
      d6=64'h3fe4807d125ffa69;
    end
  34: begin 
      a6=64'hc01900822df6de45;
      b6=64'hbffb9acc3288d27e;
      c6=64'hbffec4f4bc9f0f90;
      d6=64'h3fe461c5d2c023ff;
    end
  35: begin 
      a6=64'hc019a7798b869922;
      b6=64'hbffc30cc37f552ef;
      c6=64'hbffee0daa0322a5a;
      d6=64'h3fe442f2f79ced0a;
    end
  36: begin 
      a6=64'hc01a55036bd18eb6;
      b6=64'hbffccab5e2cb9d52;
      c6=64'hbffefd58798cef89;
      d6=64'h3fe42403eaef2917;
    end
  37: begin 
      a6=64'hc01b09742ab3cfcf;
      b6=64'hbffd68b0a004e721;
      c6=64'hbfff1a724617678a;
      d6=64'h3fe404f812c5ab40;
    end
  38: begin 
      a6=64'hc01bc52599288967;
      b6=64'hbffe0ae5d617e9b7;
      c6=64'hbfff382c2ba471cb;
      d6=64'h3fe3e5ced11dd3cb;
    end
  39: begin 
      a6=64'hc01c8876ea936ea5;
      b6=64'hbffeb18106373d59;
      c6=64'hbfff568a7a7b4b1b;
      d6=64'h3fe3c68783ba230a;
    end
  40: begin 
      a6=64'hc01d53cd7377ed93;
      b6=64'hbfff5cafec398c4b;
      c6=64'hbfff7591af82e5fa;
      d6=64'h3fe3a72183f6b24e;
    end
  41: begin 
      a6=64'hc01e2794d47956d4;
      b6=64'hc0000651527e5b1b;
      c6=64'hbfff9546768eda3f;
      d6=64'h3fe3879c269b70a6;
    end
  42: begin 
      a6=64'hc01f04406446d63a;
      b6=64'hc00060c5e9116e19;
      c6=64'hbfffb5adacd3c048;
      d6=64'h3fe367f6bbabff8b;
    end
  43: begin 
      a6=64'hc01fea4a2c68bc88;
      b6=64'hc000bdd064561c4f;
      c6=64'hbfffd6cc63823b29;
      d6=64'h3fe348308e3507b0;
    end
  44: begin 
      a6=64'hc0206d1a7f6394ae;
      b6=64'hc0011d8cdd2476fd;
      c6=64'hbffff8a7e28fae09;
      d6=64'h3fe32848e416dc92;
    end
  45: begin 
      a6=64'hc020ea462521fb11;
      b6=64'hc0018018f45b1852;
      c6=64'hc0000da2d5d640c6;
      d6=64'h3fe3083efdcd40b4;
    end
  46: begin 
      a6=64'hc0216cf265c13acf;
      b6=64'hc001e593ed283566;
      c6=64'hc0001f55beb72367;
      d6=64'h3fe2e812163419d6;
    end
  47: begin 
      a6=64'hc021f56eff3205a0;
      b6=64'hc0024e1ec88ff5d3;
      c6=64'hc000316fab586455;
      d6=64'h3fe2c7c16248e044;
    end
  48: begin 
      a6=64'hc02284111167a602;
      b6=64'hc002b9dc65fda7ed;
      c6=64'hc00043f3bd18ce22;
      d6=64'h3fe2a74c10e88ff4;
    end
  49: begin 
      a6=64'hc0231933e49fd29e;
      b6=64'hc00328f1a3194a17;
      c6=64'hc00056e53936bdb0;
      d6=64'h3fe286b14a89ddaa;
    end
  50: begin 
      a6=64'hc023b5392d454bc1;
      b6=64'hc0039b8581405aed;
      c6=64'hc0006a478ae0ee16;
      d6=64'h3fe265f030f36d2f;
    end
  51: begin 
      a6=64'hc0245889e7b7c29a;
      b6=64'hc00411c14bd54981;
      c6=64'hc0007e1e456d8943;
      d6=64'h3fe24507deedc018;
    end
  52: begin 
      a6=64'hc02503969c616d61;
      b6=64'hc0048bd0c3a42073;
      c6=64'hc000926d26ba07ca;
      d6=64'h3fe223f767f08e3f;
    end
  53: begin 
      a6=64'hc025b6d87b334f52;
      b6=64'hc00509e24c9e7bbd;
      c6=64'hc000a73819b7883f;
      d6=64'h3fe202bdd7cb32b8;
    end
  54: begin 
      a6=64'hc02672d1bf94fd2b;
      b6=64'hc0058c2720f9732c;
      c6=64'hc000bc833927b540;
      d6=64'h3fe1e15a3247d011;
    end
  55: begin 
      a6=64'hc027380e9620b38d;
      b6=64'hc00612d387e11ea0;
      c6=64'hc000d252d28e643c;
      d6=64'h3fe1bfcb72c8c6d7;
    end
  56: begin 
      a6=64'hc02807261ca6a207;
      b6=64'hc0069e1f11a6f14f;
      c6=64'hc000e8ab695ca46a;
      d6=64'h3fe19e108be01058;
    end
  57: begin 
      a6=64'hc028e0bb89cdfbe4;
      b6=64'hc0072e44d87c7328;
      c6=64'hc000ff91ba5ad6a1;
      d6=64'h3fe17c2866e00544;
    end
  58: begin 
      a6=64'hc029c57ef68c36cf;
      b6=64'hc007c383c95c6338;
      c6=64'hc001170abf56bd7f;
      d6=64'h3fe15a11e3650ce7;
    end
  59: begin 
      a6=64'hc02ab62ef5a7b247;
      b6=64'hc0085e1ef13a3b9e;
      c6=64'hc0012f1bb31d59c6;
      d6=64'h3fe137cbd6d7a5dd;
    end
  60: begin 
      a6=64'hc02bb399b8295d29;
      b6=64'hc008fe5dd398b9b0;
      c6=64'hc00147ca15c654ff;
      d6=64'h3fe115550be62ab1;
    end
  61: begin 
      a6=64'hc02cbe9eddcefa00;
      b6=64'hc009a48cc880ff3f;
      c6=64'hc001611bb159d5e1;
      d6=64'h3fe0f2ac41f5a6ad;
    end
  62: begin 
      a6=64'hc02dd830d49cfb1a;
      b6=64'hc00a50fd64a9dd81;
      c6=64'hc0017b169ed9327a;
      d6=64'h3fe0cfd02c88fd92;
    end
  63: begin 
      a6=64'hc02f01573214d346;
      b6=64'hc00b0406eab860e6;
      c6=64'hc00195c14bb4aa15;
      d6=64'h3fe0acbf729d96d7;
    end
  endcase

  case(vin[5:0])
  0: begin 
      a7=64'hc0301d983c739813;
      b7=64'hc00bbe06c9b9a291;
      c7=64'hc001b1227fb8ca9f;
      d7=64'h3fe08978adfca7b6;
    end
  1: begin 
      a7=64'hc030c37a89ceeb36;
      b7=64'hc00c7f6126b691e6;
      c7=64'hc001cd4163804688;
      d7=64'h3fe065fa6a80202b;
    end
  2: begin 
      a7=64'hc03172fcbf51c70e;
      b7=64'hc00d48817743b7b7;
      c7=64'hc001ea2587779d53;
      d7=64'h3fe04243254a2501;
    end
  3: begin 
      a7=64'hc0322cd8d3885cfb;
      b7=64'hc00e19db2a9cc5ea;
      c7=64'hc00207d6eb827dd5;
      d7=64'h3fe01e514bede37b;
    end
  4: begin 
      a7=64'hc032f1da3956b524;
      b7=64'hc00ef3ea65a0d94d;
      c7=64'hc002265e07543754;
      d7=64'h3fdff4467710d4ca;
    end
  5: begin 
      a7=64'hc033c2dfaa8b8501;
      b7=64'hc00fd734d4e17dfb;
      c7=64'hc00245c3d38e9e04;
      d7=64'h3fdfab6e7f901e9b;
    end
  6: begin 
      a7=64'hc034a0dda69d276d;
      b7=64'hc010622549c67243;
      c7=64'hc0026611d3be45f7;
      d7=64'h3fdf621723c17946;
    end
  7: begin 
      a7=64'hc0358ce0ce437dd1;
      b7=64'hc010dde397ff2074;
      c7=64'hc0028752214c3c66;
      d7=64'h3fdf183caed6acf2;
    end
  8: begin 
      a7=64'hc0368810b61e1928;
      b7=64'hc0115f2966731d4d;
      c7=64'hc002a98f7782a2ca;
      d7=64'h3fdecddb425c5c14;
    end
  9: begin 
      a7=64'hc03793b33df032bd;
      b7=64'hc011e651b2a55ffe;
      c7=64'hc002ccd540c3bd98;
      d7=64'h3fde82eed3987e88;
    end
  10: begin 
      a7=64'hc038b1306f08fbc0;
      b7=64'hc01273bf1b3d8602;
      c7=64'hc002f12fa5192845;
      d7=64'h3fde377328b15e2d;
    end
  11: begin 
      a7=64'hc039e21670128541;
      b7=64'hc01307dcacf4a6c0;
      c7=64'hc00316ab9a43d3f6;
      d7=64'h3fddeb63d5976383;
    end
  12: begin 
      a7=64'hc03b281ed5c281e4;
      b7=64'hc013a31ec6fc6fa5;
      c7=64'hc0033d56f57ea083;
      d7=64'h3fdd9ebc38ab4f63;
    end
  13: begin 
      a7=64'hc03c8533cc532f34;
      b7=64'hc01446041f22e73f;
      c7=64'hc00365407f28b35f;
      d7=64'h3fdd51777719add3;
    end
  14: begin 
      a7=64'hc03dfb773b6fd96d;
      b7=64'hc014f116e50f0565;
      c7=64'hc0038e780898d957;
      d7=64'h3fdd039078e365b2;
    end
  15: begin 
      a7=64'hc03f8d49b54683d2;
      b7=64'hc015a4ee0fae4817;
      c7=64'hc003b90e8460bae0;
      d7=64'h3fdcb501e48a3509;
    end
  16: begin 
      a7=64'hc0409ea9cbe5800c;
      b7=64'hc016622ed52fceb4;
      c7=64'hc003e51621563142;
      d7=64'h3fdc65c61a56b31e;
    end
  17: begin 
      a7=64'hc04187479086569a;
      b7=64'hc017298e58c8a62e;
      c7=64'hc00412a268c3178b;
      d7=64'h3fdc15d72f2c0455;
    end
  18: begin 
      a7=64'hc042822a339a3ca0;
      b7=64'hc017fbd394e080a5;
      c7=64'hc00441c8602dcc82;
      d7=64'h3fdbc52ee6dbc712;
    end
  19: begin 
      a7=64'hc0439133926b7925;
      b7=64'hc018d9d98d517402;
      c7=64'hc004729eaf3e1e8d;
      d7=64'h3fdb73c6adead645;
    end
  20: begin 
      a7=64'hc044b683a1dbd7fa;
      b7=64'hc019c491d3e6c39a;
      c7=64'hc004a53dca5a7eed;
      d7=64'h3fdb219792b540b0;
    end
  21: begin 
      a7=64'hc045f4820f437947;
      b7=64'hc01abd076ffd4743;
      c7=64'hc004d9c022b2104f;
      d7=64'h3fdace9a3ddd352b;
    end
  22: begin 
      a7=64'hc0474de9b1c1e553;
      b7=64'hc01bc4623951e708;
      c7=64'hc00510425c8a4f99;
      d7=64'h3fda7ac6e9ed8e36;
    end
  23: begin 
      a7=64'hc048c5d62d8d98b9;
      b7=64'hc01cdbeabbc32acd;
      c7=64'hc00548e38ccd1d5a;
      d7=64'h3fda26155a15046c;
    end
  24: begin 
      a7=64'hc04a5fd42b9a17d7;
      b7=64'hc01e050ebe299c58;
      c7=64'hc00583c57f02f79d;
      d7=64'h3fd9d07ccfdabfd5;
    end
  25: begin 
      a7=64'hc04c1ff4d7b44a50;
      b7=64'hc01f41668b11041a;
      c7=64'hc005c10d051f6fb8;
      d7=64'h3fd979f3ffa7e140;
    end
  26: begin 
      a7=64'hc04e0ae54d40b059;
      b7=64'hc020495d915e1c2b;
      c7=64'hc00600e252cb0577;
      d7=64'h3fd9227103fb7f3a;
    end
  27: begin 
      a7=64'hc05013057830b2ba;
      b7=64'hc020fd86c29e2094;
      c7=64'hc0064371662c8eda;
      d7=64'h3fd8c9e94f173caf;
    end
  28: begin 
      a7=64'hc0513bd2fca0a187;
      b7=64'hc021be4fa7b74e59;
      c7=64'hc00688ea809e89ae;
      d7=64'h3fd870519ae9cbe8;
    end
  29: begin 
      a7=64'hc052837dbcdf40b7;
      b7=64'hc0228cfe7a64a3b9;
      c7=64'hc006d182b2406bc6;
      d7=64'h3fd8159dd6f1fffe;
    end
  30: begin 
      a7=64'hc053ee44abf50b5d;
      b7=64'hc0236b04f7c7e271;
      c7=64'hc0071d747bf9ac9c;
      d7=64'h3fd7b9c113c8111a;
    end
  31: begin 
      a7=64'hc05581231450b9d4;
      b7=64'hc0245a07aeabfef0;
      c7=64'hc0076d008c5276a3;
      d7=64'h3fd75cad6bead4af;
    end
  32: begin 
      a7=64'hc05741f87b33ea95;
      b7=64'hc0255be6cb7603d6;
      c7=64'hc007c06e9c8c9a93;
      d7=64'h3fd6fe53e95b22f0;
    end
  33: begin 
      a7=64'hc05937ba707b64f1;
      b7=64'hc02672c8c00c493b;
      c7=64'hc008180e74b3a3f7;
      d7=64'h3fd69ea467777ce7;
    end
  34: begin 
      a7=64'hc05b6ab3754a6675;
      b7=64'hc027a1273e770850;
      c7=64'hc00874391f05f7fe;
      d7=64'h3fd63d8d706bf923;
    end
  35: begin 
      a7=64'hc05de4d2cae40ee2;
      b7=64'hc028e9df21c0f3f5;
      c7=64'hc008d552553fba18;
      d7=64'h3fd5dafc1564da95;
    end
  36: begin 
      a7=64'hc06059095839bfc7;
      b7=64'hc02a50440ef29ca8;
      c7=64'hc0093bca351c4b29;
      d7=64'h3fd576dbc082bb19;
    end
  37: begin 
      a7=64'hc061f07e306cca3f;
      b7=64'hc02bd838d860ced7;
      c7=64'hc009a81f4d10c27f;
      d7=64'h3fd51115ff52e169;
    end
  38: begin 
      a7=64'hc063c1a9fc144fcc;
      b7=64'hc02d864e05ecbfda;
      c7=64'hc00a1ae1171d3ac8;
      d7=64'h3fd4a99244411383;
    end
  39: begin 
      a7=64'hc065d77d59478420;
      b7=64'hc02f5fe85be7ddd9;
      c7=64'hc00a94b2fe16074b;
      d7=64'h3fd440359d146699;
    end
  40: begin 
      a7=64'hc0683f8dcd95bf5c;
      b7=64'hc030b5b8f31da98b;
      c7=64'hc00b1650128cb1bd;
      d7=64'h3fd3d4e25c066c9b;
    end
  41: begin 
      a7=64'hc06b0adfe950e839;
      b7=64'hc031d84c7d7d86d0;
      c7=64'hc00ba08fa082d361;
      d7=64'h3fd36777b058d164;
    end
  42: begin 
      a7=64'hc06e4efa688f4bb5;
      b7=64'hc0331c51001780fb;
      c7=64'hc00c346ae7a7ebd4;
      d7=64'h3fd2f7d12a699285;
    end
  43: begin 
      a7=64'hc07113b0d559040c;
      b7=64'hc03487695a651592;
      c7=64'hc00cd3044f206ce2;
      d7=64'h3fd285c626134e63;
    end
  44: begin 
      a7=64'hc0735bd5589c047b;
      b7=64'hc03620804ff551de;
      c7=64'hc00d7db08ed684af;
      d7=64'h3fd21129148559db;
    end
  45: begin 
      a7=64'hc07617371290c1ad;
      b7=64'hc037f0284fabb14d;
      c7=64'hc00e360277f0ec83;
      d7=64'h3fd199c69c7e653a;
    end
  46: begin 
      a7=64'hc07964c65a68467e;
      b7=64'hc03a011e19d62f15;
      c7=64'hc00efdda4bdd1105;
      d7=64'h3fd11f6484ac24b9;
    end
  47: begin 
      a7=64'hc07d6e3d39f3cfe0;
      b7=64'hc03c60fdc30144df;
      c7=64'hc00fd779f9a54b1b;
      d7=64'h3fd0a1c05773773c;
    end
  48: begin 
      a7=64'hc081366edce7d292;
      b7=64'hc03f2141d8bfbd2f;
      c7=64'hc01062d01c21058f;
      d7=64'h3fd0208da8e06414;
    end
  49: begin 
      a7=64'hc08458623dcd3be2;
      b7=64'hc0412c58fc2e8674;
      c7=64'hc010e5d6b62e8a93;
      d7=64'h3fcf36e7bbb77901;
    end
  50: begin 
      a7=64'hc088564314d7fe58;
      b7=64'hc04312be74341752;
      c7=64'hc01176eb69ff8593;
      d7=64'h3fce24168a6f30c1;
    end
  51: begin 
      a7=64'hc08d84177771e672;
      b7=64'hc0455830d8901217;
      c7=64'hc01218b77ebe4fd0;
      d7=64'h3fcd07b2793be629;
    end
  52: begin 
      a7=64'hc092305c983bf663;
      b7=64'hc04818c8e6771eda;
      c7=64'hc012cea76f9a2658;
      d7=64'h3fcbe095ef290a11;
    end
  53: begin 
      a7=64'hc096d91e1a86976e;
      b7=64'hc04b7c3cfe2c2270;
      c7=64'hc0139d393e0746b7;
      d7=64'h3fcaad5c87d63027;
    end
  54: begin 
      a7=64'hc09d5d4018968e9d;
      b7=64'hc04fbc4f6591a80b;
      c7=64'hc0148a74f57b5711;
      d7=64'h3fc96c4e855b2e12;
    end
  55: begin 
      a7=64'hc0a3678b6ae526fb;
      b7=64'hc05297f0efe62eda;
      c7=64'hc0159ead314c93e8;
      d7=64'h3fc81b42b567bcdf;
    end
  56: begin 
      a7=64'hc0aa8f35c810d4e6;
      b7=64'hc0562f7f29283a62;
      c7=64'hc016e5c0c948f848;
      d7=64'h3fc6b770bb8f6f7d;
    end
  57: begin 
      a7=64'hc0b303db1b22d80d;
      b7=64'hc05b149d14084c20;
      c7=64'hc01871528f9f418f;
      d7=64'h3fc53d288f845720;
    end
  58: begin 
      a7=64'hc0bcebea4b8c8a5d;
      b7=64'hc061051e64e42540;
      c7=64'hc01a5cfa96e8a139;
      d7=64'h3fc3a7590e6725bc;
    end
  59: begin 
      a7=64'hc0c7f20cf4557a07;
      b7=64'hc0663ef5513355f3;
      c7=64'hc01cd6f0592c35ce;
      d7=64'h3fc1eeb60010ab4d;
    end
  60: begin 
      a7=64'hc0d68cecf1f07355;
      b7=64'hc06eacf7d71a2444;
      c7=64'hc0201a23302a687b;
      d7=64'h3fc0080b14bb6457;
    end
  61: begin 
      a7=64'hc0ea715deba21cde;
      b7=64'hc076bd18fc3b8626;
      c7=64'hc02294da05ed266c;
      d7=64'h3fbbc0f7305521cb;
    end
  62: begin 
      a7=64'hc108b11af741dbc8;
      b7=64'hc08175c5f82fadde;
      c7=64'hc026d7069c5030c1;
      d7=64'h3fb6a6a76ef201dc;
    end
  63: begin 
      a7=64'hc16602fdb6541196;
      b7=64'h40d567d40f02d1a6;
      c7=64'hc03d7f04f2c90e55;
      d7=64'h3fb05449680a4a54;
    end
  endcase
  case(vin[8:6])
    0: begin
        a=a0; b=b0; c=c0; d=d0;
      end
    1: begin
        a=a1; b=b1; c=c1; d=d1;
      end
    2: begin
        a=a2; b=b2; c=c2; d=d2;
      end
    3: begin
        a=a3; b=b3; c=c3; d=d3;
      end
    4: begin
        a=a4; b=b4; c=c4; d=d4;
      end
    5: begin
        a=a5; b=b5; c=c5; d=d5;
      end
    6: begin
        a=a6; b=b6; c=c6; d=d6;
      end
    7: begin
        a=a7; b=b7; c=c7; d=d7;
      end
  endcase

end
endmodule
