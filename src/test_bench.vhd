-----------------------------------------------------------------------------------
--!     @file    test_bench.vhd
--!     @brief   TEST BENCH for AXI4
--!     @version 1.5.9
--!     @date    2017/10/29
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2017 Ichiro Kawazome
--      All rights reserved.
--
--      Redistribution and use in source and binary forms, with or without
--      modification, are permitted provided that the following conditions
--      are met:
--
--        1. Redistributions of source code must retain the above copyright
--           notice, this list of conditions and the following disclaimer.
--
--        2. Redistributions in binary form must reproduce the above copyright
--           notice, this list of conditions and the following disclaimer in
--           the documentation and/or other materials provided with the
--           distribution.
--
--      THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--      "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--      LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
--      A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT
--      OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
--      SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
--      LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
--      DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
--      THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
--      (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
--      OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
entity  TEST_BENCH is
    generic (
        NAME            : STRING;
        SCENARIO_FILE   : STRING
    );
end     TEST_BENCH;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.AXI4_MODELS.AXI4_MASTER_PLAYER;
use     DUMMY_PLUG.AXI4_MODELS.AXI4_SLAVE_PLAYER;
use     DUMMY_PLUG.AXI4_MODELS.AXI4_SIGNAL_PRINTER;
use     DUMMY_PLUG.SYNC.all;
use     DUMMY_PLUG.CORE.MARCHAL;
use     DUMMY_PLUG.CORE.REPORT_STATUS_TYPE;
use     DUMMY_PLUG.CORE.REPORT_STATUS_VECTOR;
use     DUMMY_PLUG.CORE.MARGE_REPORT_STATUS;
architecture MODEL of TEST_BENCH is
    -------------------------------------------------------------------------------
    -- 各種定数
    -------------------------------------------------------------------------------
    constant CLK_RATE        : integer := 1;
    constant CLK_PERIOD      : time    := 10 ns;
    constant DELAY           : time    := CLK_PERIOD*0.1;
    constant AXI4_ADDR_WIDTH : integer := 32;
    constant AXI4_ID_WIDTH   : integer :=  4;
    constant AXI4_AUSER_WIDTH: integer :=  4;
    constant AXI4_DATA_WIDTH : integer := 32;
    constant A_WIDTH         : AXI4_SIGNAL_WIDTH_TYPE := (
                                 ID          => AXI4_ID_WIDTH,
                                 AWADDR      => AXI4_ADDR_WIDTH,
                                 ARADDR      => AXI4_ADDR_WIDTH,
                                 AWUSER      => AXI4_AUSER_WIDTH,
                                 ARUSER      => AXI4_AUSER_WIDTH,
                                 ALEN        => AXI4_ALEN_WIDTH,
                                 ALOCK       => AXI4_ALOCK_WIDTH,
                                 WDATA       => AXI4_DATA_WIDTH,
                                 RDATA       => AXI4_DATA_WIDTH,
                                 WUSER       => 1,
                                 RUSER       => 1,
                                 BUSER       => 1);
    constant B_WIDTH         : AXI4_SIGNAL_WIDTH_TYPE := (
                                 ID          => AXI4_ID_WIDTH,
                                 AWADDR      => AXI4_ADDR_WIDTH,
                                 ARADDR      => AXI4_ADDR_WIDTH,
                                 AWUSER      => AXI4_AUSER_WIDTH,
                                 ARUSER      => AXI4_AUSER_WIDTH,
                                 ALEN        => AXI4_ALEN_WIDTH,
                                 ALOCK       => AXI4_ALOCK_WIDTH,
                                 WDATA       => AXI4_DATA_WIDTH,
                                 RDATA       => AXI4_DATA_WIDTH,
                                 WUSER       => 1,
                                 RUSER       => 1,
                                 BUSER       => 1);
    constant SYNC_WIDTH      : integer :=  2;
    constant GPO_WIDTH       : integer :=  8;
    constant GPI_WIDTH       : integer :=  GPO_WIDTH;
    -------------------------------------------------------------------------------
    -- グローバルシグナル.
    -------------------------------------------------------------------------------
    signal   ARESETn         : std_logic;
    signal   RESET           : std_logic;
    signal   CLK             : std_logic;
    constant CLR             : std_logic := '0';
    signal   CKE             : std_logic := '1';
    ------------------------------------------------------------------------------
    -- リードアドレスチャネルシグナル.
    ------------------------------------------------------------------------------
    signal   A_ARADDR        : std_logic_vector(A_WIDTH.ARADDR -1 downto 0);
    signal   A_ARLEN         : std_logic_vector(A_WIDTH.ALEN   -1 downto 0);
    signal   A_ARSIZE        : AXI4_ASIZE_TYPE;
    constant A_ARBURST       : AXI4_ABURST_TYPE                             := AXI4_ABURST_INCR;
    constant A_ARLOCK        : std_logic_vector(A_WIDTH.ALOCK  -1 downto 0) := (others => '0');
    constant A_ARCACHE       : AXI4_ACACHE_TYPE                             := (others => '0');
    constant A_ARPROT        : AXI4_APROT_TYPE                              := (others => '0');
    constant A_ARQOS         : AXI4_AQOS_TYPE                               := (others => '0');
    constant A_ARREGION      : AXI4_AREGION_TYPE                            := (others => '0');
    constant A_ARUSER        : std_logic_vector(A_WIDTH.ARUSER -1 downto 0) := (others => '0');
    constant A_ARID          : std_logic_vector(A_WIDTH.ID     -1 downto 0) := (others => '0');
    signal   A_ARVALID       : std_logic;
    signal   A_ARREADY       : std_logic;
    -------------------------------------------------------------------------------
    -- リードデータチャネルシグナル.
    -------------------------------------------------------------------------------
    signal   A_RVALID        : std_logic;
    signal   A_RLAST         : std_logic;
    signal   A_RDATA         : std_logic_vector(A_WIDTH.RDATA  -1 downto 0);
    signal   A_RRESP         : AXI4_RESP_TYPE;
    signal   A_RUSER         : std_logic_vector(A_WIDTH.RUSER  -1 downto 0);
    signal   A_RID           : std_logic_vector(A_WIDTH.ID     -1 downto 0);
    signal   A_RREADY        : std_logic;
    -------------------------------------------------------------------------------
    -- ライトアドレスチャネルシグナル.
    -------------------------------------------------------------------------------
    signal   A_AWADDR        : std_logic_vector(A_WIDTH.AWADDR -1 downto 0);
    signal   A_AWLEN         : std_logic_vector(A_WIDTH.ALEN   -1 downto 0);
    signal   A_AWSIZE        : AXI4_ASIZE_TYPE;
    constant A_AWBURST       : AXI4_ABURST_TYPE                             := AXI4_ABURST_INCR;
    constant A_AWLOCK        : std_logic_vector(A_WIDTH.ALOCK  -1 downto 0) := (others => '0');
    constant A_AWCACHE       : AXI4_ACACHE_TYPE                             := (others => '0');
    constant A_AWPROT        : AXI4_APROT_TYPE                              := (others => '0');
    constant A_AWQOS         : AXI4_AQOS_TYPE                               := (others => '0');
    constant A_AWREGION      : AXI4_AREGION_TYPE                            := (others => '0');
    constant A_AWUSER        : std_logic_vector(A_WIDTH.AWUSER -1 downto 0) := (others => '0');
    constant A_AWID          : std_logic_vector(A_WIDTH.ID     -1 downto 0) := (others => '0');
    signal   A_AWVALID       : std_logic;
    signal   A_AWREADY       : std_logic;
    -------------------------------------------------------------------------------
    -- ライトデータチャネルシグナル.
    -------------------------------------------------------------------------------
    signal   A_WLAST         : std_logic;
    signal   A_WDATA         : std_logic_vector(A_WIDTH.WDATA  -1 downto 0);
    constant A_WSTRB         : std_logic_vector(A_WIDTH.WDATA/8-1 downto 0) := (others => '1');
    constant A_WUSER         : std_logic_vector(A_WIDTH.WUSER  -1 downto 0) := (others => '0');
    constant A_WID           : std_logic_vector(A_WIDTH.ID     -1 downto 0) := (others => '0');
    signal   A_WVALID        : std_logic;
    signal   A_WREADY        : std_logic;
    -------------------------------------------------------------------------------
    -- ライト応答チャネルシグナル.
    -------------------------------------------------------------------------------
    signal   A_BRESP         : AXI4_RESP_TYPE;
    signal   A_BUSER         : std_logic_vector(A_WIDTH.BUSER  -1 downto 0);
    signal   A_BID           : std_logic_vector(A_WIDTH.ID     -1 downto 0);
    signal   A_BVALID        : std_logic;
    signal   A_BREADY        : std_logic;
    ------------------------------------------------------------------------------
    -- リードアドレスチャネルシグナル.
    ------------------------------------------------------------------------------
    signal   B_ARADDR        : std_logic_vector(B_WIDTH.ARADDR -1 downto 0);
    signal   B_ARLEN         : std_logic_vector(B_WIDTH.ALEN   -1 downto 0);
    signal   B_ARSIZE        : AXI4_ASIZE_TYPE;
    signal   B_ARBURST       : AXI4_ABURST_TYPE;
    signal   B_ARLOCK        : std_logic_vector(B_WIDTH.ALOCK  -1 downto 0);
    signal   B_ARCACHE       : AXI4_ACACHE_TYPE;
    signal   B_ARPROT        : AXI4_APROT_TYPE;
    signal   B_ARQOS         : AXI4_AQOS_TYPE;
    signal   B_ARREGION      : AXI4_AREGION_TYPE;
    signal   B_ARUSER        : std_logic_vector(B_WIDTH.ARUSER -1 downto 0);
    signal   B_ARID          : std_logic_vector(B_WIDTH.ID     -1 downto 0);
    signal   B_ARVALID       : std_logic;
    signal   B_ARREADY       : std_logic;
    -------------------------------------------------------------------------------
    -- リードデータチャネルシグナル.
    -------------------------------------------------------------------------------
    signal   B_RVALID        : std_logic;
    signal   B_RLAST         : std_logic;
    signal   B_RDATA         : std_logic_vector(B_WIDTH.RDATA  -1 downto 0);
    signal   B_RRESP         : AXI4_RESP_TYPE;
    signal   B_RUSER         : std_logic_vector(B_WIDTH.RUSER  -1 downto 0);
    signal   B_RID           : std_logic_vector(B_WIDTH.ID     -1 downto 0);
    signal   B_RREADY        : std_logic;
    -------------------------------------------------------------------------------
    -- ライトアドレスチャネルシグナル.
    -------------------------------------------------------------------------------
    signal   B_AWADDR        : std_logic_vector(B_WIDTH.AWADDR -1 downto 0);
    signal   B_AWLEN         : std_logic_vector(B_WIDTH.ALEN   -1 downto 0);
    signal   B_AWSIZE        : AXI4_ASIZE_TYPE;
    signal   B_AWBURST       : AXI4_ABURST_TYPE;
    signal   B_AWLOCK        : std_logic_vector(B_WIDTH.ALOCK  -1 downto 0);
    signal   B_AWCACHE       : AXI4_ACACHE_TYPE;
    signal   B_AWPROT        : AXI4_APROT_TYPE;
    signal   B_AWQOS         : AXI4_AQOS_TYPE;
    signal   B_AWREGION      : AXI4_AREGION_TYPE;
    signal   B_AWUSER        : std_logic_vector(B_WIDTH.AWUSER -1 downto 0);
    signal   B_AWID          : std_logic_vector(B_WIDTH.ID     -1 downto 0);
    signal   B_AWVALID       : std_logic;
    signal   B_AWREADY       : std_logic;
    -------------------------------------------------------------------------------
    -- ライトデータチャネルシグナル.
    -------------------------------------------------------------------------------
    signal   B_WLAST         : std_logic;
    signal   B_WDATA         : std_logic_vector(B_WIDTH.WDATA  -1 downto 0);
    signal   B_WSTRB         : std_logic_vector(B_WIDTH.WDATA/8-1 downto 0);
    signal   B_WUSER         : std_logic_vector(B_WIDTH.WUSER  -1 downto 0);
    signal   B_WID           : std_logic_vector(B_WIDTH.ID     -1 downto 0);
    signal   B_WVALID        : std_logic;
    signal   B_WREADY        : std_logic;
    -------------------------------------------------------------------------------
    -- ライト応答チャネルシグナル.
    -------------------------------------------------------------------------------
    signal   B_BRESP         : AXI4_RESP_TYPE;
    signal   B_BUSER         : std_logic_vector(B_WIDTH.BUSER  -1 downto 0);
    signal   B_BID           : std_logic_vector(B_WIDTH.ID     -1 downto 0);
    signal   B_BVALID        : std_logic;
    signal   B_BREADY        : std_logic;
    -------------------------------------------------------------------------------
    -- シンクロ用信号
    -------------------------------------------------------------------------------
    signal   SYNC            : SYNC_SIG_VECTOR (SYNC_WIDTH   -1 downto 0);
    -------------------------------------------------------------------------------
    -- GPIO(General Purpose Input/Output)
    -------------------------------------------------------------------------------
    signal   A_GPI           : std_logic_vector(GPI_WIDTH    -1 downto 0);
    signal   A_GPO           : std_logic_vector(GPO_WIDTH    -1 downto 0);
    signal   B_GPI           : std_logic_vector(GPI_WIDTH    -1 downto 0);
    signal   B_GPO           : std_logic_vector(GPO_WIDTH    -1 downto 0);
    -------------------------------------------------------------------------------
    -- 各種状態出力.
    -------------------------------------------------------------------------------
    signal   N_REPORT        : REPORT_STATUS_TYPE;
    signal   A_REPORT        : REPORT_STATUS_TYPE;
    signal   B_REPORT        : REPORT_STATUS_TYPE;
    signal   N_FINISH        : std_logic;
    signal   A_FINISH        : std_logic;
    signal   B_FINISH        : std_logic;
    -------------------------------------------------------------------------------
    -- 
    -------------------------------------------------------------------------------
    component axi is
        port(
            clk              : in  std_logic;
            rst              : in  std_logic;
            a_ARADDR         : out std_logic_vector(31 downto 0);
            a_ARLEN          : out std_logic_vector( 7 downto 0);
            a_ARSIZE         : out std_logic_vector( 2 downto 0);
            a_ARVALID        : out std_logic;
            a_ARREADY        : in  std_logic;
            a_RDATA          : in  std_logic_vector(31 downto 0);
            a_RLAST          : in  std_logic;
            a_RVALID         : in  std_logic;
            a_RREADY         : out std_logic;
            a_AWADDR         : out std_logic_vector(31 downto 0);
            a_AWVALID        : out std_logic;
            a_AWREADY        : in  std_logic;
            a_AWLEN          : out std_logic_vector( 7 downto 0);
            a_AWSIZE         : out std_logic_vector( 2 downto 0);
            a_WDATA          : out std_logic_vector(31 downto 0);
            a_WLAST          : out std_logic;
            a_WVALID         : out std_logic;
            a_WREADY         : in  std_logic;
            a_BVALID         : in  std_logic;
            a_BREADY         : out std_logic;
            a_BRESP          : in  std_logic_vector( 1 downto 0);
            b_AWADDR         : in  std_logic_vector(31 downto 0);
            b_AWLEN          : in  std_logic_vector( 7 downto 0);
            b_AWSIZE         : in  std_logic_vector( 2 downto 0);
            b_AWVALID        : in  std_logic;
            b_AWREADY        : out std_logic;
            b_WDATA          : in  std_logic_vector(31 downto 0);
            b_WLAST          : in  std_logic;
            b_WVALID         : in  std_logic;
            b_WREADY         : out std_logic;
            b_BVALID         : out std_logic;
            b_BREADY         : in  std_logic;
            b_BRESP          : out std_logic_vector( 1 downto 0);
            b_ARADDR         : in  std_logic_vector(31 downto 0);
            b_ARLEN          : in  std_logic_vector( 7 downto 0);
            b_ARSIZE         : in  std_logic_vector( 2 downto 0);
            b_ARVALID        : in  std_logic;
            b_ARREADY        : out std_logic;
            b_RVALID         : out std_logic;
            b_RDATA          : out std_logic_vector(31 downto 0);
            b_RREADY         : in  std_logic;
            b_RLAST          : out std_logic
        );
    end component;
begin
    -------------------------------------------------------------------------------
    -- 
    -------------------------------------------------------------------------------
    N: MARCHAL
        generic map(
            SCENARIO_FILE   => SCENARIO_FILE,
            NAME            => "N",
            SYNC_PLUG_NUM   => 1,
            SYNC_WIDTH      => SYNC_WIDTH,
            FINISH_ABORT    => FALSE
        )
        port map(
            CLK             => CLK             , -- In  :
            RESET           => RESET           , -- In  :
            SYNC(0)         => SYNC(0)         , -- I/O :
            SYNC(1)         => SYNC(1)         , -- I/O :
            REPORT_STATUS   => N_REPORT        , -- Out :
            FINISH          => N_FINISH          -- Out :
        );
    ------------------------------------------------------------------------------
    -- AXI4_MASTER_PLAYER
    ------------------------------------------------------------------------------
    B: AXI4_MASTER_PLAYER
        generic map (
            SCENARIO_FILE   => SCENARIO_FILE   ,
            NAME            => "B"             ,
            READ_ENABLE     => TRUE            ,
            WRITE_ENABLE    => TRUE            ,
            OUTPUT_DELAY    => DELAY           ,
            WIDTH           => B_WIDTH         ,
            SYNC_PLUG_NUM   => 2               ,
            SYNC_WIDTH      => SYNC_WIDTH      ,
            GPI_WIDTH       => GPI_WIDTH       ,
            GPO_WIDTH       => GPO_WIDTH       ,
            FINISH_ABORT    => FALSE
        )
        port map(
        ---------------------------------------------------------------------------
        -- グローバルシグナル.
        ---------------------------------------------------------------------------
            ACLK            => CLK             , -- In  :
            ARESETn         => ARESETn         , -- In  :
        ---------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        ---------------------------------------------------------------------------
            ARADDR          => B_ARADDR        , -- I/O : 
            ARLEN           => B_ARLEN         , -- I/O : 
            ARSIZE          => B_ARSIZE        , -- I/O : 
            ARBURST         => B_ARBURST       , -- I/O : 
            ARLOCK          => B_ARLOCK        , -- I/O : 
            ARCACHE         => B_ARCACHE       , -- I/O : 
            ARPROT          => B_ARPROT        , -- I/O : 
            ARQOS           => B_ARQOS         , -- I/O : 
            ARREGION        => B_ARREGION      , -- I/O : 
            ARUSER          => B_ARUSER        , -- I/O : 
            ARID            => B_ARID          , -- I/O : 
            ARVALID         => B_ARVALID       , -- I/O : 
            ARREADY         => B_ARREADY       , -- In  :    
        ---------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        ---------------------------------------------------------------------------
            RLAST           => B_RLAST         , -- In  :    
            RDATA           => B_RDATA         , -- In  :    
            RRESP           => B_RRESP         , -- In  :    
            RUSER           => B_RUSER         , -- In  :    
            RID             => B_RID           , -- In  :    
            RVALID          => B_RVALID        , -- In  :    
            RREADY          => B_RREADY        , -- I/O : 
        --------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        --------------------------------------------------------------------------
            AWADDR          => B_AWADDR        , -- I/O : 
            AWLEN           => B_AWLEN         , -- I/O : 
            AWSIZE          => B_AWSIZE        , -- I/O : 
            AWBURST         => B_AWBURST       , -- I/O : 
            AWLOCK          => B_AWLOCK        , -- I/O : 
            AWCACHE         => B_AWCACHE       , -- I/O : 
            AWPROT          => B_AWPROT        , -- I/O : 
            AWQOS           => B_AWQOS         , -- I/O : 
            AWREGION        => B_AWREGION      , -- I/O : 
            AWUSER          => B_AWUSER        , -- I/O : 
            AWID            => B_AWID          , -- I/O : 
            AWVALID         => B_AWVALID       , -- I/O : 
            AWREADY         => B_AWREADY       , -- In  :    
        --------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        --------------------------------------------------------------------------
            WLAST           => B_WLAST         , -- I/O : 
            WDATA           => B_WDATA         , -- I/O : 
            WSTRB           => B_WSTRB         , -- I/O : 
            WUSER           => B_WUSER         , -- I/O : 
            WID             => B_WID           , -- I/O : 
            WVALID          => B_WVALID        , -- I/O : 
            WREADY          => B_WREADY        , -- In  :    
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
            BRESP           => B_BRESP         , -- In  :    
            BUSER           => B_BUSER         , -- In  :    
            BID             => B_BID           , -- In  :    
            BVALID          => B_BVALID        , -- In  :    
            BREADY          => B_BREADY        , -- I/O : 
        --------------------------------------------------------------------------
        -- シンクロ用信号
        --------------------------------------------------------------------------
            SYNC(0)         => SYNC(0)         , -- I/O :
            SYNC(1)         => SYNC(1)         , -- I/O :
        --------------------------------------------------------------------------
        -- GPIO
        --------------------------------------------------------------------------
            GPI             => B_GPI           , -- In  :
            GPO             => B_GPO           , -- Out :
        --------------------------------------------------------------------------
        -- 各種状態出力.
        --------------------------------------------------------------------------
            REPORT_STATUS   => B_REPORT        , -- Out :
            FINISH          => B_FINISH          -- Out :
        );
    ------------------------------------------------------------------------------
    -- AXI4_SLAVE_PLAYER
    ------------------------------------------------------------------------------
    A: AXI4_SLAVE_PLAYER
        generic map (
            SCENARIO_FILE   => SCENARIO_FILE   ,
            NAME            => "A"             ,
            READ_ENABLE     => TRUE            ,
            WRITE_ENABLE    => TRUE            ,
            OUTPUT_DELAY    => DELAY           ,
            WIDTH           => A_WIDTH         ,
            SYNC_PLUG_NUM   => 3               ,
            SYNC_WIDTH      => SYNC_WIDTH      ,
            GPI_WIDTH       => GPI_WIDTH       ,
            GPO_WIDTH       => GPO_WIDTH       ,
            FINISH_ABORT    => FALSE
        )
        port map(
        ---------------------------------------------------------------------------
        -- グローバルシグナル.
        ---------------------------------------------------------------------------
            ACLK            => CLK             , -- In  :
            ARESETn         => ARESETn         , -- In  :
        ---------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        ---------------------------------------------------------------------------
            ARADDR          => A_ARADDR        , -- In  : 
            ARLEN           => A_ARLEN         , -- In  : 
            ARSIZE          => A_ARSIZE        , -- In  : 
            ARBURST         => A_ARBURST       , -- In  : 
            ARLOCK          => A_ARLOCK        , -- In  : 
            ARCACHE         => A_ARCACHE       , -- In  : 
            ARPROT          => A_ARPROT        , -- In  : 
            ARQOS           => A_ARQOS         , -- In  : 
            ARREGION        => A_ARREGION      , -- In  : 
            ARUSER          => A_ARUSER        , -- In  : 
            ARID            => A_ARID          , -- In  : 
            ARVALID         => A_ARVALID       , -- In  : 
            ARREADY         => A_ARREADY       , -- I/O :    
        ---------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        ---------------------------------------------------------------------------
            RLAST           => A_RLAST         , -- I/O :    
            RDATA           => A_RDATA         , -- I/O :    
            RRESP           => A_RRESP         , -- I/O :    
            RUSER           => A_RUSER         , -- I/O :    
            RID             => A_RID           , -- I/O :    
            RVALID          => A_RVALID        , -- I/O :    
            RREADY          => A_RREADY        , -- In  : 
        --------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        --------------------------------------------------------------------------
            AWADDR          => A_AWADDR        , -- In  : 
            AWLEN           => A_AWLEN         , -- In  : 
            AWSIZE          => A_AWSIZE        , -- In  : 
            AWBURST         => A_AWBURST       , -- In  : 
            AWLOCK          => A_AWLOCK        , -- In  : 
            AWCACHE         => A_AWCACHE       , -- In  : 
            AWPROT          => A_AWPROT        , -- In  : 
            AWQOS           => A_AWQOS         , -- In  : 
            AWREGION        => A_AWREGION      , -- In  : 
            AWUSER          => A_AWUSER        , -- In  : 
            AWID            => A_AWID          , -- In  : 
            AWVALID         => A_AWVALID       , -- In  : 
            AWREADY         => A_AWREADY       , -- I/O :    
        --------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        --------------------------------------------------------------------------
            WLAST           => A_WLAST         , -- In  : 
            WDATA           => A_WDATA         , -- In  : 
            WSTRB           => A_WSTRB         , -- In  : 
            WUSER           => A_WUSER         , -- In  : 
            WID             => A_WID           , -- In  : 
            WVALID          => A_WVALID        , -- In  : 
            WREADY          => A_WREADY        , -- I/O :    
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
            BRESP           => A_BRESP         , -- I/O :    
            BUSER           => A_BUSER         , -- I/O :    
            BID             => A_BID           , -- I/O :    
            BVALID          => A_BVALID        , -- I/O :    
            BREADY          => A_BREADY        , -- In  : 
        --------------------------------------------------------------------------
        -- シンクロ用信号
        --------------------------------------------------------------------------
            SYNC(0)         => SYNC(0)         , -- I/O :
            SYNC(1)         => SYNC(1)         , -- I/O :
        --------------------------------------------------------------------------
        -- GPIO
        --------------------------------------------------------------------------
            GPI             => A_GPI           , -- In  :
            GPO             => A_GPO           , -- Out :
        --------------------------------------------------------------------------
        -- 各種状態出力.
        --------------------------------------------------------------------------
            REPORT_STATUS   => A_REPORT        , -- Out :
            FINISH          => A_FINISH          -- Out :
        );
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
    DUT: AXI
        port map(
            clk              => CLK              , -- In  :
            rst              => RESET            , -- In  :
            a_ARADDR         => A_ARADDR         , -- Out :
            a_ARLEN          => A_ARLEN          , -- Out :
            a_ARSIZE         => A_ARSIZE         , -- Out :
            a_ARVALID        => A_ARVALID        , -- Out :
            a_ARREADY        => A_ARREADY        , -- In  :
            a_RDATA          => A_RDATA          , -- In  :
            a_RLAST          => A_RLAST          , -- In  :
            a_RVALID         => A_RVALID         , -- In  :
            a_RREADY         => A_RREADY         , -- Out :
            a_AWADDR         => A_AWADDR         , -- Out :
            a_AWVALID        => A_AWVALID        , -- Out :
            a_AWREADY        => A_AWREADY        , -- In  :
            a_AWLEN          => A_AWLEN          , -- Out :
            a_AWSIZE         => A_AWSIZE         , -- Out :
            a_WDATA          => A_WDATA          , -- Out :
            a_WLAST          => A_WLAST          , -- Out :
            a_WVALID         => A_WVALID         , -- Out :
            a_WREADY         => A_WREADY         , -- In  :
            a_BVALID         => A_BVALID         , -- In  :
            a_BREADY         => A_BREADY         , -- Out :
            a_BRESP          => A_BRESP          , -- In  :
            b_AWADDR         => B_AWADDR         , -- In  :
            b_AWLEN          => B_AWLEN          , -- In  :
            b_AWSIZE         => B_AWSIZE         , -- In  :
            b_AWVALID        => B_AWVALID        , -- In  :
            b_AWREADY        => B_AWREADY        , -- Out :
            b_WDATA          => B_WDATA          , -- In  :
            b_WLAST          => B_WLAST          , -- In  :
            b_WVALID         => B_WVALID         , -- In  :
            b_WREADY         => B_WREADY         , -- Out :
            b_BVALID         => B_BVALID         , -- Out :
            b_BREADY         => B_BREADY         , -- In  :
            b_BRESP          => B_BRESP          , -- Out :
            b_ARADDR         => B_ARADDR         , -- In  :
            b_ARLEN          => B_ARLEN          , -- In  :
            b_ARSIZE         => B_ARSIZE         , -- In  :
            b_ARVALID        => B_ARVALID        , -- In  :
            b_ARREADY        => B_ARREADY        , -- Out :
            b_RVALID         => B_RVALID         , -- Out :
            b_RDATA          => B_RDATA          , -- Out :
            b_RREADY         => B_RREADY         , -- In  :
            b_RLAST          => B_RLAST            -- Out :
        );
    -------------------------------------------------------------------------------
    -- 
    -------------------------------------------------------------------------------
    process begin
        CLK <= '0';
        wait for CLK_PERIOD/2;
        CLK <= '1';
        wait for CLK_PERIOD/2;
    end process;
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
    ARESETn <= '1' when (RESET = '0') else '0';
    B_GPI   <= B_GPO;
    A_GPI   <= B_GPO;
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
    process
        variable L   : LINE;
        constant T   : STRING(1 to 7) := "  ***  ";
    begin
        wait until (B_FINISH'event and B_FINISH = '1');
        wait for DELAY;
        WRITE(L,T);                                                   WRITELINE(OUTPUT,L);
        WRITE(L,T & "ERROR REPORT " & NAME);                          WRITELINE(OUTPUT,L);
        WRITE(L,T & "[ A SIDE ]");                                    WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Error    : ");WRITE(L,A_REPORT.error_count   );WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Mismatch : ");WRITE(L,A_REPORT.mismatch_count);WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Warning  : ");WRITE(L,A_REPORT.warning_count );WRITELINE(OUTPUT,L);
        WRITE(L,T & "[ B SIDE ]");                                    WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Error    : ");WRITE(L,B_REPORT.error_count   );WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Mismatch : ");WRITE(L,B_REPORT.mismatch_count);WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Warning  : ");WRITE(L,B_REPORT.warning_count );WRITELINE(OUTPUT,L);
        WRITE(L,T);                                                   WRITELINE(OUTPUT,L);
        WRITE(L,T);                                                   WRITELINE(OUTPUT,L);
        assert FALSE report "Simulation complete." severity FAILURE;
        wait;
    end process;
    
 -- SYNC_PRINT_0: SYNC_PRINT generic map(string'("AXI4_TEST_1:SYNC(0)")) port map (SYNC(0));
 -- SYNC_PRINT_1: SYNC_PRINT generic map(string'("AXI4_TEST_1:SYNC(1)")) port map (SYNC(1));
end MODEL;
