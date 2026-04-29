module testsummator; 

wire [4:0] Ain, Bin; 
reg [4:0] Ain_r, Bin_r; 
wire [4:0] res_my, res_ref; 
wire Ci; reg Ci_r; 
wire cm, cr; 
fivebitsum my_block (Ain, Bin, Ci, res_my, cm); 
standart_sum ref_block (Ain, Bin, Ci, res_ref, cr); 

initial begin $display("Time\tAin\tBin\tCi\tres_my\tcm\tCi_r\tres_ref\tcr"); 
$monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", 
$time, Ain, Bin, Ci, res_my, cm, Ci_r, res_ref, cr); 
#400 $finish; 
end 

initial begin Ain_r = 5'b01001; 

Bin_r = 5'b00110; 
Ci_r = 0; 
#50 Ain_r = 5'b10101; 
#50 Bin_r = 5’b01010;
#50 Ain_r = 5'b01011; 
#50 Ci_r = 1; 
#50 Ain_r = 5'b11111; 
#50 Bin_r = 5'b11110; 
end 

assign Ain = Ain_r; 
assign Bin = Bin_r; 
assign Ci = Ci_r; 

endmodule
