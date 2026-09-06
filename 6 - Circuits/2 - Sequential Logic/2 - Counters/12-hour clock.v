module top_module (
    input clk,
    input reset,
    input ena,
    output reg pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss
); 
    reg [7:0] hhd, mmd, ssd;

    function [7:0] bcd ([7:0] in);
        bcd[3:0] = in % 10;
        bcd[7:4] = in / 10;
    endfunction

    assign ss = bcd(ssd);
    assign mm = bcd(mmd);
    assign hh = bcd(hhd);

    always@(posedge clk) begin
        if (reset) begin
            pm <= 0;
        end else if (ena && hhd==11 && mmd==59 && ssd==59) begin
            pm <= ~pm;
        end
    end

    always@(posedge clk) begin
        if (reset) begin
            ssd <= 0;
        end else if (ena) begin
            if (ssd==59) begin
                ssd <= 0;
            end else begin
                ssd <= ssd + 1;
            end
        end
    end

    always@(posedge clk) begin
        if (reset) begin
            mmd <= 0;
        end else if (ena && ssd==59) begin
            if (mmd==59) begin
                mmd <= 0;
            end else begin
                mmd <= mmd + 1;
            end
        end
    end

    always@(posedge clk) begin
        if (reset) begin
            hhd <= 12;
        end else if (ena && mmd==59 && ssd==59) begin
            if (hhd==12) begin
                hhd <= 1;
            end else begin
                hhd <= hhd + 1;
            end
        end
    end
endmodule
