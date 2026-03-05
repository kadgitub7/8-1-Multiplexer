`timescale 1ns / 1ps

module eightOneMultiplexer_tb();

    reg I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2,E;
    wire Y;
    
    eightOneMultiplexer uut(I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2,E,Y);
    
    initial begin
        I0 = 0;
        I1 = 1;
        I2 = 0;
        I3 = 1;
        I4 = 0;
        I5 = 1;
        I6 = 0;
        I7 = 1;

        E = 1;

        S2=0; S1=0; S0=0; #10;
        $display("S=%b%b%b Y=%b (Expected I0=%b)",S2,S1,S0,Y,I0);

        S2=0; S1=0; S0=1; #10;
        $display("S=%b%b%b Y=%b (Expected I1=%b)",S2,S1,S0,Y,I1);

        S2=0; S1=1; S0=0; #10;
        $display("S=%b%b%b Y=%b (Expected I2=%b)",S2,S1,S0,Y,I2);

        S2=0; S1=1; S0=1; #10;
        $display("S=%b%b%b Y=%b (Expected I3=%b)",S2,S1,S0,Y,I3);

        S2=1; S1=0; S0=0; #10;
        $display("S=%b%b%b Y=%b (Expected I4=%b)",S2,S1,S0,Y,I4);

        S2=1; S1=0; S0=1; #10;
        $display("S=%b%b%b Y=%b (Expected I5=%b)",S2,S1,S0,Y,I5);

        S2=1; S1=1; S0=0; #10;
        $display("S=%b%b%b Y=%b (Expected I6=%b)",S2,S1,S0,Y,I6);

        S2=1; S1=1; S0=1; #10;
        $display("S=%b%b%b Y=%b (Expected I7=%b)",S2,S1,S0,Y,I7);

        E = 0;

        S2=0; S1=0; S0=0; #10;
        $display("E=%b S=%b%b%b Y=%b",E,S2,S1,S0,Y);

        S2=0; S1=1; S0=1; #10;
        $display("E=%b S=%b%b%b Y=%b",E,S2,S1,S0,Y);

        S2=1; S1=0; S0=1; #10;
        $display("E=%b S=%b%b%b Y=%b",E,S2,S1,S0,Y);

        S2=1; S1=1; S0=1; #10;
        $display("E=%b S=%b%b%b Y=%b",E,S2,S1,S0,Y);
    end
endmodule
