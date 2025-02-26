/* Generated by Yosys 0.9+3891 (git sha1 2f64f961, clang 7.0.1-8+deb10u2 -fPIC -Os) */

module full_adder(i0, i1, ci, s, co);
  wire _0_;
  wire _1_;
  wire _2_;
  wire _3_;
  wire _4_;
  wire _5_;
  wire _6_;
  input ci;
  output co;
  input i0;
  input i1;
  output s;
  assign _0_ = i0 ^ i1;
  assign _1_ = _0_ ^ ci;
  assign _2_ = i0 & ci;
  assign _3_ = i1 & ci;
  assign _4_ = _2_ | _3_;
  assign _5_ = i0 & i1;
  assign _6_ = _4_ | _5_;
  assign s = _1_;
  assign co = _6_;
endmodule
