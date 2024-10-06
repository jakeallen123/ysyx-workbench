module counter (
    input  wire clk,   // 时钟信号
    input  wire rstn,  // 复位信号（低电平有效）
    output reg  [5:0] cnt  // 6位计数器
);

// 计数逻辑
always @(posedge clk or negedge rstn) begin
    if (!rstn)
        cnt <= 6'h0;  // 如果复位信号为低，则计数器清零
    else
        cnt <= cnt + 6'h1;  // 否则计数器在每个时钟上升沿加1
end

endmodule