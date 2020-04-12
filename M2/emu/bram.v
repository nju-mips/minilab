import "DPI-C" function void device_io
(
  input  bit  in_req_valid,
  input  int  in_req_bits_addr,
  input  int  in_req_bits_len,
  input  int  in_req_bits_data,
  input  byte in_req_bits_func,
  input  byte in_req_bits_strb,
  output int  in_resp_bits_data
);

module Device(
  input         clock,
  input         reset,
  input         in_req_valid,
  input  [31:0] in_req_bits_addr,
  input  [1:0]  in_req_bits_len,
  input  [31:0] in_req_bits_data,
  input  [0:0]  in_req_bits_func,
  input  [3:0]  in_req_bits_strb,
  output        in_resp_valid,
  output [31:0] in_resp_bits_data
);

int __in_resp_bits_data;

always @(posedge clock)
begin
  if (!reset) begin
    device_io(
      in_req_valid,
      in_req_bits_addr,
      {30'b0, in_req_bits_len},
      in_req_bits_data,
      {7'b0, in_req_bits_func},
      {4'b0, in_req_bits_strb},
      __in_resp_bits_data
    );
    if (in_req_valid) begin
      in_resp_valid <= 1'b1;
      in_resp_data <= __in_resp_bits_data;
    else
      in_resp_valid <= 1'b0;
      in_resp_data <= 32'd0;
    end
  end
end

endmodule

