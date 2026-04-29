module fivebitsum (Ain, Bin, Cinfive, Sout, Coutfive); 
input Ain, Bin, Cinfive; 
output Sout, Coutfive; 

wire [4:0] Ain, Bin, Sout, C; 
wire Cinfive, Coutfive; 

bitsum sum1(Ain[0], Bin[0], Sout[0], Cinfive, C[0]); 
bitsum sum2(Ain[1], Bin[1], Sout[1], C[0], C[1]); 
bitsum sum3(Ain[2], Bin[2], Sout[2], C[1], C[2]); 
bitsum sum4(Ain[3], Bin[3], Sout[3], C[2], C[3]); 
bitsum sum5(Ain[4], Bin[4], Sout[4], C[3], C[4]); 

assign Coutfive = C[4]; 

endmodule 

module onebitsum (A, B, S, Cin, Cout); 
input A, B, Cin; 
output S, Cout;
 
wire A, B, S, Res; 
wire c1, c2, Cin, Cout; 

xor(Res, A, B); 
and(c1, A, B); 
xor(S, Cin, Res); 
and(c2, Cin, Res); 
or(Cout, c1, c2); 

endmodule
