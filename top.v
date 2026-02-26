module top(
    input [7:0] sw,
    output [5:0] led

);

    wire w1;
    
    light lightA(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    
    );
    
    adder adderA(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .C(led[2])
     );
     
     full_adder full_adderL(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(w1)
     );
     
     full_adder full_adderM(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(w1),
        .Y(led[4]),
        .Cout(led[5])
     );
     
     
 endmodule
// Implement top level module