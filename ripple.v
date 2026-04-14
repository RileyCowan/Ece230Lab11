module ripple(
    input reset,
    input clk,
    output Q0, Q1, Q2
    );
    
    tff stage1(
    .Clock(clk),
    .reset(reset),
    .T(1'b1),
    .Q(Q0)
    );

    tff stage2(
    .Clock(clk),
    .reset(reset),
    .T(1'b1),
    .Q(Q1)
    );    

    tff stage3(
    .Clock(clk),
    .reset(reset),
    .T(1'b1),
    .Q(Q2)
    );
        
endmodule
