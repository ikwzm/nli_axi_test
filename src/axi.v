// Generated from iroha-0.0.1.

// SRAM(2 port(s))
module SRAM_4_32_2(clk, rst, addr_0_i, rdata_0_o, wdata_0_i, write_en_0_i, addr_1_i, rdata_1_o, wdata_1_i, write_en_1_i);
  input clk;
  input rst;
  input [3:0] addr_0_i;
  output [31:0] rdata_0_o;
  input [31:0] wdata_0_i;
  input write_en_0_i;

  reg [31:0] rdata_0_o;

  input [3:0] addr_1_i;
  output [31:0] rdata_1_o;
  input [31:0] wdata_1_i;
  input write_en_1_i;

  reg [31:0] rdata_1_o;

  reg [31:0] data [0:15];

  always @(posedge clk) begin
    if (rst) begin
    end else begin
      if (write_en_0_i) begin
        data[addr_0_i] <= wdata_0_i;
      end
      if (write_en_1_i) begin
        data[addr_1_i] <= wdata_1_i;
      end
    end
  end
  // Read
  always @(addr_0_i or clk) begin
    rdata_0_o = data[addr_0_i];
  end
  always @(addr_1_i or clk) begin
    rdata_1_o = data[addr_1_i];
  end
endmodule

module axi_master_controller_a4rwd32(clk, rst, sram_addr, sram_wdata, sram_wen, sram_rdata, sram_EXCLUSIVE, sram_req, sram_ack, addr, len, start, wen, req, ack, ARADDR, ARVALID, ARREADY, ARLEN, ARSIZE, RVALID, RDATA, RREADY, RLAST, AWADDR, AWVALID, AWREADY, AWLEN, AWSIZE, WVALID, WREADY, WDATA, WLAST, BVALID, BREADY, BRESP);
  input clk;
  input rst;
  output [3:0] sram_addr;
  output [31:0] sram_wdata;
  output sram_wen;
  input [31:0] sram_rdata;
  input sram_EXCLUSIVE;
  output sram_req;
  input sram_ack;
  input [31:0] addr;
  input [3:0] len;
  input [3:0] start;
  input wen;
  input req;
  output ack;
  output [31:0] ARADDR;
  output ARVALID;
  input ARREADY;
  output [7:0] ARLEN;
  output [2:0] ARSIZE;
  input RVALID;
  input [31:0] RDATA;
  output RREADY;
  input RLAST;
  output [31:0] AWADDR;
  output AWVALID;
  input AWREADY;
  output [7:0] AWLEN;
  output [2:0] AWSIZE;
  output WVALID;
  input WREADY;
  output [31:0] WDATA;
  output WLAST;
  input BVALID;
  output BREADY;
  input [1:0] BRESP;
  reg [3:0] sram_addr;
  reg [31:0] sram_wdata;
  reg sram_wen;
  reg sram_req;
  reg ack;
  reg [31:0] ARADDR;
  reg ARVALID;
  reg [7:0] ARLEN;
  reg [2:0] ARSIZE;
  reg RREADY;
  reg [31:0] AWADDR;
  reg AWVALID;
  reg [7:0] AWLEN;
  reg [2:0] AWSIZE;
  reg WVALID;
  reg [31:0] WDATA;
  reg WLAST;
  reg BREADY;

  `define S_IDLE 0
  `define S_ADDR_WAIT 1
  `define S_READ_DATA 2
  `define S_READ_DATA_WAIT 3
  `define S_WRITE_WAIT 4
  reg [2:0] st;

  `define WS_IDLE 0
  `define WS_WRITE 1
  `define WS_WAIT 2
  `define WS_SRAM 4
  `define WS_AXI 5
  reg [2:0] wst;
  reg [4:0] wmax;

  reg [4:0] ridx;
  reg read_last;

  reg [4:0] widx;

  always @(posedge clk) begin
    if (rst) begin
      ack <= 0;
      sram_req <= 0;
      sram_wen <= 0;
      st <= `S_IDLE;
      wst <= `WS_IDLE;
      wmax <= 0;
      ARADDR <= 0;
      ARVALID <= 0;
      ARLEN <= 0;
      ARSIZE <= 0;
      RREADY <= 0;
      AWADDR <= 0;
      AWVALID <= 0;
      AWLEN <= 0;
      AWSIZE <= 0;
      WVALID <= 0;
      WDATA <= 0;
      WLAST <= 0;
      BREADY <= 0;
    end else begin
      if (sram_EXCLUSIVE) begin
        sram_wen <= (st == `S_READ_DATA && RVALID);
      end
      case (st)
        `S_IDLE: begin
          if (req) begin
            ack <= 1;
            ridx <= 0;
            st <= `S_ADDR_WAIT;
            if (wen) begin
              ARVALID <= 1;
              ARADDR <= addr;
              ARLEN <= len;
            end else begin
              AWVALID <= 1;
              AWADDR <= addr;
              AWLEN <= len;
              wmax <= len;
            end
          end
        end
        `S_ADDR_WAIT: begin
          ack <= 0;
          if (AWVALID) begin
            if (AWREADY) begin
              st <= `S_WRITE_WAIT;
              AWVALID <= 0;
              sram_addr <= start;
              if (!sram_EXCLUSIVE) begin
                sram_req <= 1;
              end
            end
          end else begin
            if (ARREADY) begin
              st <= `S_READ_DATA;
              ARVALID <= 0;
              RREADY <= 1;
            end
          end
        end
        `S_READ_DATA: begin
          if (RVALID) begin
            sram_addr <= start + ridx;
            sram_wdata <= RDATA;
            ridx <= ridx + 1;
            if (sram_EXCLUSIVE) begin
              if (RLAST) begin
                RREADY <= 0;
                st <= `S_IDLE;
              end
            end else begin
              st <= `S_READ_DATA_WAIT;
              sram_req <= 1;
              sram_wen <= 1;
              RREADY <= 0;
              read_last <= RLAST;
            end
          end
        end
        `S_READ_DATA_WAIT: begin
          if (sram_ack) begin
            sram_req <= 0;
            sram_wen <= 0;
            if (read_last) begin
              st <= `S_IDLE;
            end else begin
              st <= `S_READ_DATA;
              RREADY <= 1;
            end
          end
        end
        `S_WRITE_WAIT: begin
          if (BVALID) begin
            st <= `S_IDLE;
          end
          if (wst == `WS_WRITE) begin
            if (widx == 0 || (WREADY && WVALID)) begin
              sram_addr <= sram_addr + 1;
            end
          end
          if (wst == `WS_SRAM) begin
          if (sram_ack) begin
              sram_req <= 0;
            end
          end
          if (wst == `WS_AXI) begin
            if (WREADY && WVALID) begin
              if (widx <= wmax) begin
                sram_req <= 1;
                sram_addr <= sram_addr + 1;
              end
            end
          end
        end
      endcase
      case (wst)
        `WS_IDLE: begin
          if (AWVALID && AWREADY) begin
            if (sram_EXCLUSIVE) begin
              wst <= `WS_WRITE;
            end else begin
              wst <= `WS_SRAM;
            end
            widx <= 0;
          end
        end
        `WS_WRITE: begin
          if (widx <= wmax) begin
            WVALID <= 1;
            WDATA <= sram_rdata;
            if (widx == wmax) begin
              WLAST <= 1;
            end
            if (widx == 0 || (WREADY && WVALID)) begin
              widx <= widx + 1;
            end
          end else begin
            WVALID <= 0;
            WLAST <= 0;
            wst <= `WS_WAIT;
            BREADY <= 1;
          end
        end
        `WS_SRAM: begin
          if (sram_ack) begin
            wst <= `WS_AXI;
            WDATA <= sram_rdata;
            widx <= widx + 1;
            WVALID <= 1;
            if (widx == wmax) begin
              WLAST <= 1;
            end
          end
        end
        `WS_AXI: begin
          if (WREADY && WVALID) begin
            WVALID <= 0;
            if (widx <= wmax) begin
              wst <= `WS_SRAM;
            end else begin
              WLAST <= 0;
              wst <= `WS_WAIT;
            end
          end
        end
        `WS_WAIT: begin
          if (BVALID) begin
            BREADY <= 0;
            wst <= `WS_IDLE;
          end
        end
      endcase
    end
  end
endmodule
// slave controller: axi_slave_controller_a4d32
module axi_slave_controller_a4d32(clk, rst, sram_addr, sram_wdata, sram_wen, sram_rdata, sram_EXCLUSIVE, sram_req, sram_ack, access_notify, access_ack, ARADDR, ARVALID, ARREADY, ARLEN, ARSIZE, RVALID, RDATA, RREADY, RLAST, AWADDR, AWVALID, AWREADY, AWLEN, AWSIZE, WVALID, WREADY, WDATA, WLAST, BVALID, BREADY, BRESP);
  input clk;
  input rst;
  output [3:0] sram_addr;
  output [31:0] sram_wdata;
  output sram_wen;
  input [31:0] sram_rdata;
  input sram_EXCLUSIVE;
  output sram_req;
  input sram_ack;
  output access_notify;
  input access_ack;
  input [31:0] ARADDR;
  input ARVALID;
  output ARREADY;
  input [7:0] ARLEN;
  input [2:0] ARSIZE;
  output RVALID;
  output [31:0] RDATA;
  input RREADY;
  output RLAST;
  input [31:0] AWADDR;
  input AWVALID;
  output AWREADY;
  input [7:0] AWLEN;
  input [2:0] AWSIZE;
  input WVALID;
  output WREADY;
  input [31:0] WDATA;
  input WLAST;
  output BVALID;
  input BREADY;
  output [1:0] BRESP;
  reg [3:0] sram_addr;
  reg [31:0] sram_wdata;
  reg sram_wen;
  reg sram_req;
  reg access_notify;
  reg ARREADY;
  reg RVALID;
  reg [31:0] RDATA;
  reg RLAST;
  reg AWREADY;
  reg WREADY;
  reg BVALID;
  reg [1:0] BRESP;
  `define S_IDLE 0
  `define S_WRITE_DONE 7
  // single cycle mode (sram_EXCLUSIVE)
  `define S_READ 1
  `define S_WRITE 2
  // multi cycle mode (!sram_EXCLUSIVE)
  `define S_READ_AXI 3
  `define S_READ_SRAM 4
  `define S_WRITE_AXI 5
  `define S_WRITE_SRAM 6
  reg [3:0] st;

  reg [4:0] idx;

  reg first_addr;
  reg last_write;
  reg [7:0] rlen;

  always @(posedge clk) begin
    if (rst) begin
      st <= `S_IDLE;
      first_addr <= 0;
      last_write <= 0;
      rlen <= 0;
      sram_req <= 0;
      access_notify <= 0;
      ARREADY <= 0;
      RVALID <= 0;
      RDATA <= 0;
      RLAST <= 0;
      AWREADY <= 0;
      WREADY <= 0;
      BVALID <= 0;
      BRESP <= 0;
    end else begin
      sram_wen <= (st == `S_WRITE && WVALID);
      case (st)
        `S_IDLE: begin
          if (access_ack) begin
            access_notify <= 0;
          end
          if (ARVALID) begin
            if (ARREADY) begin
              ARREADY <= 0;
              sram_addr <= ARADDR[3:0];
              rlen <= ARLEN;
              if (sram_EXCLUSIVE) begin
                st <= `S_READ;
              end else begin
                st <= `S_READ_SRAM;
                sram_req <= 1;
              end
            end else begin
              ARREADY <= 1;
            end
          end else if (AWVALID) begin
            if (AWREADY) begin
              AWREADY <= 0;
              first_addr <= 1;
              sram_addr <= AWADDR[3:0];
              if (sram_EXCLUSIVE) begin
                st <= `S_WRITE;
              end else begin
                st <= `S_WRITE_AXI;
              end
              WREADY <= 1;
            end else begin
              AWREADY <= 1;
            end
          end
        end
        `S_READ: begin
          if (RREADY && RVALID) begin
            rlen <= rlen - 1;
            if (rlen == 0) begin
              st <= `S_IDLE;
              access_notify <= 1;
              RLAST <= 0;
              RVALID <= 0;
            end else if (rlen == 1) begin
              RLAST <= 1;
            end
          end else begin
            RVALID <= 1;
          end
          if (RREADY) begin
            sram_addr <= sram_addr + 1;
          end
          RDATA <= sram_rdata;
        end
        `S_WRITE: begin
          if (WVALID) begin
            sram_wdata <= WDATA;
            if (first_addr) begin
              first_addr <= 0;
            end else begin
              sram_addr <= sram_addr + 1;
            end
          end
          if (WLAST && WVALID) begin
            st <= `S_WRITE_DONE;
            BVALID <= 1;
            WREADY <= 0;
          end
        end
        `S_READ_AXI: begin
          if (RREADY) begin
            RVALID <= 0;
            RLAST <= 0;
            rlen <= rlen - 1;
            if (rlen == 0) begin
              access_notify <= 1;
              st <= `S_IDLE;
            end else begin
              st <= `S_READ_SRAM;
              sram_addr <= sram_addr + 1;
              sram_req <= 1;
            end
          end
        end
        `S_READ_SRAM: begin
          if (sram_ack) begin
            sram_req <= 0;
            st <= `S_READ_AXI;
            RDATA <= sram_rdata;
            RVALID <= 1;
            if (rlen == 0) begin
              RLAST <= 1;
            end
          end
        end
        `S_WRITE_AXI: begin
          if (WVALID) begin
            WREADY <= 0;
            sram_req <= 1;
            sram_wdata <= WDATA;
            last_write <= WLAST;
            st <= `S_WRITE_SRAM;
          end
        end
        `S_WRITE_SRAM: begin
          if (sram_ack) begin
            sram_req <= 0;
            if (last_write) begin
              st <= `S_IDLE;
            end else begin
              sram_addr <= sram_addr + 1;
              WREADY <= 1;
              st <= `S_WRITE_AXI;
            end
          end
        end
        `S_WRITE_DONE: begin
          st <= `S_IDLE;
          if (BREADY) begin
            BVALID <= 0;
            access_notify <= 1;
          end
        end
      endcase
    end
  end
endmodule

// Module 1;
module main(clk, rst, a_ARADDR, a_ARVALID, a_ARREADY, a_ARLEN, a_ARSIZE, a_RVALID, a_RDATA, a_RREADY, a_RLAST, a_AWADDR, a_AWVALID, a_AWREADY, a_AWLEN, a_AWSIZE, a_WVALID, a_WREADY, a_WDATA, a_WLAST, a_BVALID, a_BREADY, a_BRESP, b_AWADDR, b_AWVALID, b_AWREADY, b_AWLEN, b_AWSIZE, b_WVALID, b_WREADY, b_WDATA, b_WLAST, b_BVALID, b_BREADY, b_BRESP, b_ARADDR, b_ARVALID, b_ARREADY, b_ARLEN, b_ARSIZE, b_RVALID, b_RDATA, b_RREADY, b_RLAST);
  input clk;
  input rst;
  output [31:0] a_ARADDR;
  output a_ARVALID;
  input a_ARREADY;
  output [7:0] a_ARLEN;
  output [2:0] a_ARSIZE;
  input a_RVALID;
  input [31:0] a_RDATA;
  output a_RREADY;
  input a_RLAST;
  output [31:0] a_AWADDR;
  output a_AWVALID;
  input a_AWREADY;
  output [7:0] a_AWLEN;
  output [2:0] a_AWSIZE;
  output a_WVALID;
  input a_WREADY;
  output [31:0] a_WDATA;
  output a_WLAST;
  input a_BVALID;
  output a_BREADY;
  input [1:0] a_BRESP;
  input [31:0] b_AWADDR;
  input b_AWVALID;
  output b_AWREADY;
  input [7:0] b_AWLEN;
  input [2:0] b_AWSIZE;
  input b_WVALID;
  output b_WREADY;
  input [31:0] b_WDATA;
  input b_WLAST;
  output b_BVALID;
  input b_BREADY;
  output [1:0] b_BRESP;
  input [31:0] b_ARADDR;
  input b_ARVALID;
  output b_ARREADY;
  input [7:0] b_ARLEN;
  input [2:0] b_ARSIZE;
  output b_RVALID;
  output [31:0] b_RDATA;
  input b_RREADY;
  output b_RLAST;

  // State decls
  // state names
  `define S_1_1 1
  `define S_1_6 6
  `define S_1_12 12
  `define S_1_18 18
  `define S_1_24 24
  `define S_1_29 29
  `define S_1_30 30
  `define S_1_37 37
  `define S_1_43 43
  `define S_1_44 44
  `define S_1_48 48
  reg [6:0] st_1;

  // State vars
  // Registers
  reg  [31:0] r__0_5;
  reg  [31:0] r23_main_1_3;
  reg  [31:0] r35_main_2_4;
  // Resources
  wire [3:0]  mem_1_1_3_p0_addr;
  wire [31:0]  mem_1_1_3_p0_rdata;
  wire [31:0]  mem_1_1_3_p0_wdata;
  wire mem_1_1_3_p0_wen;
  wire [3:0]  mem_1_1_3_p1_addr;
  wire [31:0]  mem_1_1_3_p1_rdata;
  wire [31:0]  mem_1_1_3_p1_wdata;
  wire mem_1_1_3_p1_wen;
  reg mem_1_1_3_1_1_3_ack;
  assign mem_1_1_3_p0_addr = mem_1_1_3_1_1_3_p0_addr;
  assign mem_1_1_3_p0_wdata = mem_1_1_3_1_1_3_p0_wdata;
  assign mem_1_1_3_p0_wen = (mem_1_1_3_1_1_3_p0_wen & !mem_1_1_3_1_1_3_ack);
  reg [3:0] mem_1_1_3_1_1_3_p0_addr;
  reg mem_1_1_3_1_1_3_req;
  reg [31:0] mem_1_1_3_1_1_3_p0_wdata;
  reg mem_1_1_3_1_1_3_p0_wen;
  reg [31:0] mem_1_1_3_1_1_3_rbuf;
  reg [31:0] axi_addr1_4;
  reg axi_wen1_4;
  reg axi_req1_4;
  wire axi_ack1_4;
  reg [3:0] axi_len1_4;
  reg [3:0] axi_start1_4;
  wire [3:0]  mem_1_1_6_p0_addr;
  wire [31:0]  mem_1_1_6_p0_rdata;
  wire [31:0]  mem_1_1_6_p0_wdata;
  wire mem_1_1_6_p0_wen;
  wire [3:0]  mem_1_1_6_p1_addr;
  wire [31:0]  mem_1_1_6_p1_rdata;
  wire [31:0]  mem_1_1_6_p1_wdata;
  wire mem_1_1_6_p1_wen;
  reg mem_1_1_6_1_1_6_ack;
  assign mem_1_1_6_p0_addr = mem_1_1_6_1_1_6_p0_addr;
  assign mem_1_1_6_p0_wdata = mem_1_1_6_1_1_6_p0_wdata;
  assign mem_1_1_6_p0_wen = (mem_1_1_6_1_1_6_p0_wen & !mem_1_1_6_1_1_6_ack);
  reg [3:0] mem_1_1_6_1_1_6_p0_addr;
  reg mem_1_1_6_1_1_6_req;
  reg [31:0] mem_1_1_6_1_1_6_p0_wdata;
  reg mem_1_1_6_1_1_6_p0_wen;
  reg [31:0] mem_1_1_6_1_1_6_rbuf;
  wire access_notify1_7;
  reg access_ack1_7;
  // Insn wires
  wire  [31:0] insn_o_1_33_0;
  wire  [31:0] insn_o_1_50_0;
  reg [1:0] st_res_1_3;
  reg [1:0] st_res_1_4;
  // Insn assigns
  assign insn_o_1_33_0 = mem_1_1_3_1_1_3_rbuf;
  assign insn_o_1_50_0 = mem_1_1_3_1_1_3_rbuf;

  // Table 1
  always @(posedge clk) begin
    if (rst) begin
      st_1 <= `S_1_1;
      mem_1_1_3_1_1_3_ack <= 0;
      mem_1_1_3_1_1_3_req <= 0;
      mem_1_1_3_1_1_3_p0_wen <= 0;
      axi_addr1_4 <= 0;
      axi_wen1_4 <= 0;
      axi_req1_4 <= 0;
      mem_1_1_6_1_1_6_ack <= 0;
      mem_1_1_6_1_1_6_req <= 0;
      mem_1_1_6_1_1_6_p0_wen <= 0;
      access_ack1_7 <= 0;
      st_res_1_3 <= 0;
      st_res_1_4 <= 0;
    end else begin
      mem_1_1_3_1_1_3_ack <= !(0) && mem_1_1_3_1_1_3_req;
      mem_1_1_3_1_1_3_req <= ((st_1 == `S_1_43 && st_res_1_3 == 0) || (st_1 == `S_1_12 && st_res_1_3 == 0) || (st_1 == `S_1_29 && st_res_1_3 == 0) || (st_1 == `S_1_24 && st_res_1_3 == 0)) && !mem_1_1_3_1_1_3_ack;
      mem_1_1_3_1_1_3_p0_wen <= (st_1 == `S_1_12 && st_res_1_3 == 0) || (st_1 == `S_1_24 && st_res_1_3 == 0) && !mem_1_1_3_1_1_3_ack;
      axi_req1_4 <= (st_1 == `S_1_6 && st_res_1_4 == 0) || (st_1 == `S_1_18 && st_res_1_4 == 0) || (st_1 == `S_1_37 && st_res_1_4 == 0) && !axi_ack1_4;
      axi_wen1_4 <= (st_1 == `S_1_18 && st_res_1_4 == 0) && !axi_ack1_4;
      mem_1_1_6_1_1_6_ack <= !(0) && mem_1_1_6_1_1_6_req;
      mem_1_1_6_1_1_6_req <= (0);
      mem_1_1_6_1_1_6_p0_wen <= 0 && !mem_1_1_6_1_1_6_ack;
      case (st_1)
        `S_1_1: begin
          st_1 <= `S_1_6;
        end
        `S_1_6: begin
          // AXI access request
          if (st_res_1_4 == 0) begin
            axi_addr1_4 <= 32'd0;
            axi_len1_4 <= 32'd15;
            axi_start1_4 <= 32'd0;
            if (axi_ack1_4) begin
              st_res_1_4 <= 3;
            end
          end
          if ((st_res_1_4 == 3)) begin
            // 1 cycle insns
          end
          if ((st_res_1_4 == 3)) begin
            // clears sub states
            st_res_1_4 <= 0;
          end
          if ((st_res_1_4 == 3)) begin
          st_1 <= `S_1_12;
          end
        end
        `S_1_12: begin
          if (st_res_1_3 == 0) begin
            mem_1_1_3_1_1_3_p0_addr <= 32'd1;
            mem_1_1_3_1_1_3_p0_wdata <= 32'd10;
            if (mem_1_1_3_1_1_3_ack) begin
              st_res_1_3 <= 3;
            end
          end
          if ((st_res_1_3 == 3)) begin
            // 1 cycle insns
          end
          if ((st_res_1_3 == 3)) begin
            // clears sub states
            st_res_1_3 <= 0;
          end
          if ((st_res_1_3 == 3)) begin
          st_1 <= `S_1_18;
          end
        end
        `S_1_18: begin
          // AXI access request
          if (st_res_1_4 == 0) begin
            axi_addr1_4 <= 32'd0;
            axi_len1_4 <= 32'd15;
            axi_start1_4 <= 32'd0;
            if (axi_ack1_4) begin
              st_res_1_4 <= 3;
            end
          end
          if ((st_res_1_4 == 3)) begin
            // 1 cycle insns
          end
          if ((st_res_1_4 == 3)) begin
            // clears sub states
            st_res_1_4 <= 0;
          end
          if ((st_res_1_4 == 3)) begin
          st_1 <= `S_1_24;
          end
        end
        `S_1_24: begin
          if (st_res_1_3 == 0) begin
            mem_1_1_3_1_1_3_p0_addr <= 32'd1;
            mem_1_1_3_1_1_3_p0_wdata <= 32'd0;
            if (mem_1_1_3_1_1_3_ack) begin
              st_res_1_3 <= 3;
            end
          end
          if ((st_res_1_3 == 3)) begin
            // 1 cycle insns
          end
          if ((st_res_1_3 == 3)) begin
            // clears sub states
            st_res_1_3 <= 0;
          end
          if ((st_res_1_3 == 3)) begin
          st_1 <= `S_1_29;
          end
        end
        `S_1_29: begin
          if (st_res_1_3 == 0) begin
            mem_1_1_3_1_1_3_p0_addr <= 32'd1;
            if (mem_1_1_3_1_1_3_ack) begin
              st_res_1_3 <= 3;
              mem_1_1_3_1_1_3_rbuf <= mem_1_1_3_p0_rdata;
            end
          end
          if ((st_res_1_3 == 3)) begin
            // 1 cycle insns
          r23_main_1_3 <= insn_o_1_33_0;
          end
          if ((st_res_1_3 == 3)) begin
            // clears sub states
            st_res_1_3 <= 0;
          end
          if ((st_res_1_3 == 3)) begin
          st_1 <= `S_1_30;
          end
        end
        `S_1_30: begin
          $display("%d", r23_main_1_3);
          st_1 <= `S_1_37;
        end
        `S_1_37: begin
          // AXI access request
          if (st_res_1_4 == 0) begin
            axi_addr1_4 <= 32'd0;
            axi_len1_4 <= 32'd15;
            axi_start1_4 <= 32'd0;
            if (axi_ack1_4) begin
              st_res_1_4 <= 3;
            end
          end
          if ((st_res_1_4 == 3)) begin
            // 1 cycle insns
          end
          if ((st_res_1_4 == 3)) begin
            // clears sub states
            st_res_1_4 <= 0;
          end
          if ((st_res_1_4 == 3)) begin
          st_1 <= `S_1_43;
          end
        end
        `S_1_43: begin
          if (st_res_1_3 == 0) begin
            mem_1_1_3_1_1_3_p0_addr <= 32'd1;
            if (mem_1_1_3_1_1_3_ack) begin
              st_res_1_3 <= 3;
              mem_1_1_3_1_1_3_rbuf <= mem_1_1_3_p0_rdata;
            end
          end
          if ((st_res_1_3 == 3)) begin
            // 1 cycle insns
          r35_main_2_4 <= insn_o_1_50_0;
          end
          if ((st_res_1_3 == 3)) begin
            // clears sub states
            st_res_1_3 <= 0;
          end
          if ((st_res_1_3 == 3)) begin
          st_1 <= `S_1_44;
          end
        end
        `S_1_44: begin
          $display("%d", r35_main_2_4);
          st_1 <= `S_1_48;
        end
        `S_1_48: begin
        end
      endcase
    end
  end
  SRAM_4_32_2 SRAM_4_32_2_inst_1_3(.clk(clk), .rst(rst), .addr_0_i(mem_1_1_3_p0_addr), .rdata_0_o(mem_1_1_3_p0_rdata), .wdata_0_i(mem_1_1_3_p0_wdata), .write_en_0_i(mem_1_1_3_p0_wen), .addr_1_i(mem_1_1_3_p1_addr), .rdata_1_o(mem_1_1_3_p1_rdata), .wdata_1_i(mem_1_1_3_p1_wdata), .write_en_1_i(mem_1_1_3_p1_wen));
  axi_master_controller_a4rwd32 inst_1_4_axi_master_controller_a4rwd32(.clk(clk), .rst(rst), .sram_addr(mem_1_1_3_p1_addr), .sram_wdata(mem_1_1_3_p1_wdata), .sram_rdata(mem_1_1_3_p1_rdata), .sram_wen(mem_1_1_3_p1_wen), .sram_EXCLUSIVE(1), .sram_req(/*not connected*/), .sram_ack(1), .addr(axi_addr1_4), .wen(axi_wen1_4), .req(axi_req1_4), .len(axi_len1_4), .start(axi_start1_4), .ack(axi_ack1_4) , .ARADDR(a_ARADDR), .ARVALID(a_ARVALID), .ARREADY(a_ARREADY), .ARLEN(a_ARLEN), .ARSIZE(a_ARSIZE), .RVALID(a_RVALID), .RDATA(a_RDATA), .RREADY(a_RREADY), .RLAST(a_RLAST), .AWADDR(a_AWADDR), .AWVALID(a_AWVALID), .AWREADY(a_AWREADY), .AWLEN(a_AWLEN), .AWSIZE(a_AWSIZE), .WVALID(a_WVALID), .WREADY(a_WREADY), .WDATA(a_WDATA), .WLAST(a_WLAST), .BVALID(a_BVALID), .BREADY(a_BREADY), .BRESP(a_BRESP));
  SRAM_4_32_2 SRAM_4_32_2_inst_1_6(.clk(clk), .rst(rst), .addr_0_i(mem_1_1_6_p0_addr), .rdata_0_o(mem_1_1_6_p0_rdata), .wdata_0_i(mem_1_1_6_p0_wdata), .write_en_0_i(mem_1_1_6_p0_wen), .addr_1_i(mem_1_1_6_p1_addr), .rdata_1_o(mem_1_1_6_p1_rdata), .wdata_1_i(mem_1_1_6_p1_wdata), .write_en_1_i(mem_1_1_6_p1_wen));
  axi_slave_controller_a4d32 inst_1_7_axi_slave_controller_a4d32(.clk(clk), .rst(rst), .sram_addr(mem_1_1_6_p1_addr), .sram_wdata(mem_1_1_6_p1_wdata), .sram_rdata(mem_1_1_6_p1_rdata), .sram_wen(mem_1_1_6_p1_wen), .sram_EXCLUSIVE(1), .sram_req(/*not connected*/), .sram_ack(1), .access_notify(access_notify1_7), .access_ack(access_ack1_7), .AWADDR(b_AWADDR), .AWVALID(b_AWVALID), .AWREADY(b_AWREADY), .AWLEN(b_AWLEN), .AWSIZE(b_AWSIZE), .WVALID(b_WVALID), .WREADY(b_WREADY), .WDATA(b_WDATA), .WLAST(b_WLAST), .BVALID(b_BVALID), .BREADY(b_BREADY), .BRESP(b_BRESP), .ARADDR(b_ARADDR), .ARVALID(b_ARVALID), .ARREADY(b_ARREADY), .ARLEN(b_ARLEN), .ARSIZE(b_ARSIZE), .RVALID(b_RVALID), .RDATA(b_RDATA), .RREADY(b_RREADY), .RLAST(b_RLAST));

endmodule // main
module axi(clk, rst, a_ARADDR, a_ARVALID, a_ARREADY, a_ARLEN, a_ARSIZE, a_RVALID, a_RDATA, a_RREADY, a_RLAST, a_AWADDR, a_AWVALID, a_AWREADY, a_AWLEN, a_AWSIZE, a_WVALID, a_WREADY, a_WDATA, a_WLAST, a_BVALID, a_BREADY, a_BRESP, b_AWADDR, b_AWVALID, b_AWREADY, b_AWLEN, b_AWSIZE, b_WVALID, b_WREADY, b_WDATA, b_WLAST, b_BVALID, b_BREADY, b_BRESP, b_ARADDR, b_ARVALID, b_ARREADY, b_ARLEN, b_ARSIZE, b_RVALID, b_RDATA, b_RREADY, b_RLAST);
  input clk;
  input rst;
  output [31:0] a_ARADDR;
  output a_ARVALID;
  input a_ARREADY;
  output [7:0] a_ARLEN;
  output [2:0] a_ARSIZE;
  input a_RVALID;
  input [31:0] a_RDATA;
  output a_RREADY;
  input a_RLAST;
  output [31:0] a_AWADDR;
  output a_AWVALID;
  input a_AWREADY;
  output [7:0] a_AWLEN;
  output [2:0] a_AWSIZE;
  output a_WVALID;
  input a_WREADY;
  output [31:0] a_WDATA;
  output a_WLAST;
  input a_BVALID;
  output a_BREADY;
  input [1:0] a_BRESP;
  input [31:0] b_AWADDR;
  input b_AWVALID;
  output b_AWREADY;
  input [7:0] b_AWLEN;
  input [2:0] b_AWSIZE;
  input b_WVALID;
  output b_WREADY;
  input [31:0] b_WDATA;
  input b_WLAST;
  output b_BVALID;
  input b_BREADY;
  output [1:0] b_BRESP;
  input [31:0] b_ARADDR;
  input b_ARVALID;
  output b_ARREADY;
  input [7:0] b_ARLEN;
  input [2:0] b_ARSIZE;
  output b_RVALID;
  output [31:0] b_RDATA;
  input b_RREADY;
  output b_RLAST;
  main main_inst(.clk(clk), .rst(rst), .a_ARADDR(a_ARADDR), .a_ARVALID(a_ARVALID), .a_ARREADY(a_ARREADY), .a_ARLEN(a_ARLEN), .a_ARSIZE(a_ARSIZE), .a_RVALID(a_RVALID), .a_RDATA(a_RDATA), .a_RREADY(a_RREADY), .a_RLAST(a_RLAST), .a_AWADDR(a_AWADDR), .a_AWVALID(a_AWVALID), .a_AWREADY(a_AWREADY), .a_AWLEN(a_AWLEN), .a_AWSIZE(a_AWSIZE), .a_WVALID(a_WVALID), .a_WREADY(a_WREADY), .a_WDATA(a_WDATA), .a_WLAST(a_WLAST), .a_BVALID(a_BVALID), .a_BREADY(a_BREADY), .a_BRESP(a_BRESP), .b_AWADDR(b_AWADDR), .b_AWVALID(b_AWVALID), .b_AWREADY(b_AWREADY), .b_AWLEN(b_AWLEN), .b_AWSIZE(b_AWSIZE), .b_WVALID(b_WVALID), .b_WREADY(b_WREADY), .b_WDATA(b_WDATA), .b_WLAST(b_WLAST), .b_BVALID(b_BVALID), .b_BREADY(b_BREADY), .b_BRESP(b_BRESP), .b_ARADDR(b_ARADDR), .b_ARVALID(b_ARVALID), .b_ARREADY(b_ARREADY), .b_ARLEN(b_ARLEN), .b_ARSIZE(b_ARSIZE), .b_RVALID(b_RVALID), .b_RDATA(b_RDATA), .b_RREADY(b_RREADY), .b_RLAST(b_RLAST));
endmodule
