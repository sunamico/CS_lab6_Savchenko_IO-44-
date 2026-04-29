module standart_sum (Ain, Bin, Ci, Sout, Co); 
input Ain, Bin, Ci; 
output Sout, Co; 

wire [4:0] Sout, Ain, Bin; 
reg [5:0] S; 

always @(Ain, Bin, Ci) 
S = Ain + Bin + Ci;
 
assign Sout = S[4:0]; 
assign Co = S[5];

endmodule
