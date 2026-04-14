module top(
input btnU,
input btnC,
output [6:0] led
);

    ripple rip(
    .reset(btnU),
    .clk(btnC),
    .Q0(led[0]),
    .Q1(led[1]),
    .Q2(led[2])
    );
    
    modulo mod(
    .reset(btnU),
    .clk(btnC),
    .count(led[5:3]),
    .Q(led[6])
    );
    
    

endmodule
