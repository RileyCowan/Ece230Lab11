module tff(
    input T,
    input Clock,
    input reset,
    output reg Q,
    output notQ
    );
   
   initial begin
        Q <= 0;
   end
    
   always @(posedge Clock, posedge reset) begin
   
        if (reset)
            Q <= 0;
        else
            if (T)
                Q <= ~Q;
   end
   
   assign notQ = ~Q;
   
endmodule