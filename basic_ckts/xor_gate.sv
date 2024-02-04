module xor_gate(
  input A,
  input B,
  output C,
  output D
);
  wire x;
  wire z;
  
  assign x = ~(A&B);
  assign z = A|B;
  assign C = x&z;
  
  xor xn1(D, A, B);
  
endmodule 
  
