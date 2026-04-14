module modulo(
    input clk,
    input reset,
    output [2:0] count,
    output reg Q
    );

    assign notQ = ~Q;
    initial begin 
        Q <= 0;
    end

    wire [2:0] current;
    wire [2:0] next;
    wire c1, c2;
   
    fadd a1(
    .A(current[0]),
    .B(1'b1),
    .Cin(1'b0),
    .Y(next[0]),
    .Cout(c1)
    );
    
    fadd a2(
    .A(current[1]),
    .B(1'b0),
    .Cin(c1),
    .Y(next[1]),
    .Cout(c2)
    );
    
    
    fadd a3(
    .A(current[2]),
    .B(1'b0),
    .Cin(c2),
    .Y(next[2])
    );
    
    wire count_reset = count[2] & count[1] & ~count[0];
    wire full_reset = count_reset | reset;
    
    dff d1(
        .Default(1'b0),
        .clk(clk),
        .reset(full_reset),
        .D(next[0]),
        .Q(current[0])
        );
        
    dff d2(
        .Default(1'b0),
        .clk(clk),
        .reset(full_reset),
        .D(next[1]),
        .Q(current[1])
        );
        
    dff d3(
        .Default(1'b0),
        .clk(clk),
        .reset(full_reset),
        .D(next[2]),
        .Q(current[2])
        );
        
    assign count = current;
    always @(posedge full_reset) begin
   
        if (reset)
            Q <= 0;
        else
            Q = ~Q;
   end
    
        
    
endmodule
