module xor_gate_tb;
  //input
  reg A;
  reg B;
  
  wire C;
  wire D;
  
  xor_gate uut(.A(A),
               .B(B),
               .C(C),
               .D(D)
              );
  initial begin
      $dumpfile("dump.vcd"); $dumpvars(0, uut);
      A = 0;
      B = 0;
      #10 //delay for 10s
      A = 1;
      B = 0;
      #10 
      A = 0;
      B = 1;
      #10 
      A = 1;
      B = 1;
	  #50
      $finish;
	end
endmodule
