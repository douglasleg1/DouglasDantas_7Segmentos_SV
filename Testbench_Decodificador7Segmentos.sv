`timescale 1ns / 1ns

module tb_decodificador;
    logic [3:0] data;
    logic [6:0] saida;

    decodificador d(data, saida);

    initial begin
        data = 0;

        forever #10 data += 1;
    end

    initial $monitor($stime,  data, saida);
endmodule