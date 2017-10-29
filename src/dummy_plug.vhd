-----------------------------------------------------------------------------------
--!     @file    util.vhd
--!     @brief   Utility Package for Dummy Plug.
--!     @version 1.6.1
--!     @date    2016/3/12
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug の各種ユーティリティパッケージ.
-----------------------------------------------------------------------------------
package UTIL is
    -------------------------------------------------------------------------------
    --! @brief 文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_STD_LOGIC_VECTOR(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_STD_LOGIC_VECTOR(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 文字列をboolean型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された boolean 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_BOOLEAN(
                  STR       : in    string ;
                  VAL       : out   boolean;
                  STR_LEN   : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_INTEGER(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 16進数文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_HEX(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 10進数文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_DEC(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 8進数文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_OCT(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 2進数文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_BIN(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 16進数文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_HEX(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    );
    -------------------------------------------------------------------------------
    --! @brief 10進数文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_DEC(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    );
    -------------------------------------------------------------------------------
    --! @brief 8進数文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_OCT(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    );
    -------------------------------------------------------------------------------
    --! @brief 2進数文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_BIN(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    );
    -------------------------------------------------------------------------------
    --! @brief 整数を文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @param    STR     変換された文字列.
    --! @param    LEN     変換された文字列の文字数.
    -------------------------------------------------------------------------------
    procedure INTEGER_TO_STRING(
                  VAL       : in    integer;
                  STR       : out   STRING ;
                  LEN       : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 整数型の値を文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function  INTEGER_TO_STRING(VAL: integer) return STRING;
    -------------------------------------------------------------------------------
    --! @brief 整数型の値を16進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @param    LEN     整数値のビット数を指定する.文字列の文字数じゃないことに注意.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function  HEX_TO_STRING(VAL: integer; LEN: integer) return STRING;
    -------------------------------------------------------------------------------
    --! @brief std_logic_vector型の値をを16進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function  HEX_TO_STRING(VAL: std_logic_vector) return STRING;
    -------------------------------------------------------------------------------
    --! @brief 整数型の値を２進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @param    LEN     整数値のビット数を指定する.文字列の文字数じゃないことに注意.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function  BIN_TO_STRING(VAL: integer; LEN: integer) return STRING;
    -------------------------------------------------------------------------------
    --! @brief std_logic_vector型の値を２進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function  BIN_TO_STRING(VAL: std_logic_vector) return STRING;
    -------------------------------------------------------------------------------
    --! @brief std_logic型の値を２進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function  BIN_TO_STRING(VAL: std_logic       ) return STRING;
    -------------------------------------------------------------------------------
    --! @brief std_logic型の値を２進数文字に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字.
    -------------------------------------------------------------------------------
    function  BIN_TO_CHAR  (VAL: std_logic       ) return character;
    -------------------------------------------------------------------------------
    --! @brief boolean型の値を文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字.
    -------------------------------------------------------------------------------
    function  BOOLEAN_TO_STRING(VAL: boolean) return STRING;
    -------------------------------------------------------------------------------
    --! @brief std_logic型の値同士を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    A       比較する値.
    --! @param    B       比較する値.
    --! @return           比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    function  MATCH_STD_LOGIC(A,B:std_logic) return boolean;
    -------------------------------------------------------------------------------
    --! @brief std_logic_vector型の値同士を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    A       比較する値.
    --! @param    B       比較する値.
    --! @return           比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    function  MATCH_STD_LOGIC(A,B:std_logic_vector) return boolean;
end UTIL;
-----------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug の各種ユーティリティパッケージ本体.
-----------------------------------------------------------------------------------
package body UTIL is
    -------------------------------------------------------------------------------
    --! @brief 整数型の値をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NUM     入力値.
    --! @param    VAL     変換された std_logic_vector 型の値.
    -------------------------------------------------------------------------------
    procedure integer_to_std_logic_vector(
                  NUM       : in    integer;
                  VAL       : out   std_logic_vector
    ) is
        alias     result    :       std_logic_vector(VAL'length-1 downto 0) is VAL;
        variable  number    :       integer;
        variable  bin       :       std_logic;
    begin
        if (NUM < 0) then
            bin    := '1';
            number := -(NUM+1);
        else
            bin    := '0';
            number := NUM;
        end if;
        for i in 0 to result'left loop
            if ((number mod 2) = 0) then
                result(i) :=     bin;
            else
                result(i) := not bin;
            end if;
            number := number/2;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_STD_LOGIC_VECTOR(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    ) is
        variable  value     :       integer;
        variable  pos       :       integer;
        variable  len       :       integer;
        variable  quote     :       boolean;
    begin
        ---------------------------------------------------------------------------
        -- 最初の文字が'0'の場合...
        ---------------------------------------------------------------------------
        if (STR(STR'low) = '0' and STR'low < STR'high) then
            pos := STR'low;
            if ((STR(pos+1) = 'x' or STR(pos+1) = 'X') and pos+2 <= STR'high) then
                STRING_TO_HEX(STR(pos+2 to STR'high), VAL, len, VAL_LEN);
                pos := pos + 2 + len;
            else
                STRING_TO_OCT(STR(pos+1 to STR'high), VAL, len, VAL_LEN);
                pos := pos + 1 + len;
            end if;
            if (len > 0) then
                STR_LEN := pos - STR'low;
            else
                STR_LEN := 0;
            end if;
        ---------------------------------------------------------------------------
        -- 最初の文字が'0'ではなかった場合.
        ---------------------------------------------------------------------------
        else
            -----------------------------------------------------------------------
            -- 最初の定数(10進数)を読む.
            -----------------------------------------------------------------------
            STRING_TO_DEC(STR, value, len);
            if (len = 0) then
                value := 0;
            end if;
            pos := STR'low + len;
            -----------------------------------------------------------------------
            -- 次の字句が ' の場合は、最初に読んだ定数はベクタの大きさになる.
            -----------------------------------------------------------------------
            if (pos <= STR'high) then
                quote := (STR(pos) = ''');
            else
                quote := FALSE;
            end if;
            if (quote) then
                if (value < 0 or pos+1 > STR'high) then 
                    STR_LEN := 0;
                    VAL_LEN := 0;
                    return; 
                end if;
                case STR(pos+1) is
                    when 'X'|'x'=> STRING_TO_HEX(STR(pos+2 to STR'high), VAL, len, VAL_LEN);
                    when 'H'|'h'=> STRING_TO_HEX(STR(pos+2 to STR'high), VAL, len, VAL_LEN);
                    when 'O'|'o'=> STRING_TO_OCT(STR(pos+2 to STR'high), VAL, len, VAL_LEN);
                    when 'B'|'b'=> STRING_TO_BIN(STR(pos+2 to STR'high), VAL, len, VAL_LEN);
                    when 'D'|'d'=> STRING_TO_DEC(STR(pos+2 to STR'high), VAL, len, VAL_LEN);
                    when others => len := 0; VAL_LEN := 0;
                end case;
                if (len > 0) then
                    if (value > 0) then
                        VAL_LEN := value;
                    end if;
                    STR_LEN := pos + 2 + len - STR'low;
                else
                    STR_LEN := 0;
                    VAL_LEN := 0;
                end if;
            ---------------------------------------------------------------------------
            -- 次の字句が ' でない場合は、読んだ定数を返す.
            ---------------------------------------------------------------------------
            else
                STR_LEN := len;
                VAL_LEN := VAL'length;
                integer_to_std_logic_vector(value, VAL);
            end if;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_STD_LOGIC_VECTOR(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         
    ) is
        variable  val_len   :       integer;
    begin
        STRING_TO_STD_LOGIC_VECTOR(STR,VAL,STR_LEN,val_len);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 文字列をboolean型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された boolean 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_BOOLEAN(
                  STR       : in    string ;
                  VAL       : out   boolean;
                  STR_LEN   : out   integer
    ) is
    begin
        case STR'length is
            when 1 => if    STR = "y"     or
                            STR = "Y"     then VAL := TRUE ; STR_LEN := 1;
                      elsif STR = "n"     or
                            STR = "N"     then VAL := FALSE; STR_LEN := 1;
                      else                     VAL := FALSE; STR_LEN := 0;
                      end if;
            when 2 => if    STR = "on"    or
                            STR = "On"    or
                            STR = "ON"    then VAL := TRUE ; STR_LEN := 1;
                      elsif STR = "no"    or
                            STR = "No"    or
                            STR = "NO"    then VAL := FALSE; STR_LEN := 1;
                      else                     VAL := FALSE; STR_LEN := 0;
                      end if;
            when 3 => if    STR = "yes"   or
                            STR = "Yes"   or
                            STR = "YES"   then VAL := TRUE ; STR_LEN := 1;
                      elsif STR = "off"   or
                            STR = "Off"   or
                            STR = "OFF"   then VAL := FALSE; STR_LEN := 1;
                      else                     VAL := FALSE; STR_LEN := 0;
                      end if;
            when 4 => if    STR = "true"  or
                            STR = "True"  or
                            STR = "TRUE"  then VAL := TRUE ; STR_LEN := 1;
                      else                     VAL := FALSE; STR_LEN := 0;
                      end if;
            when 5 => if    STR = "false" or
                            STR = "False" or
                            STR = "FALSE" then VAL := FALSE; STR_LEN := 1;
                      else                     VAL := FALSE; STR_LEN := 0;
                      end if;
            when others =>                     VAL := FALSE; STR_LEN := 0;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_INTEGER(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    ) is
        variable  pos       :       integer;
        variable  value     :       integer;
        variable  k         :       integer;
        variable  len       :       integer;
    begin
        pos   := STR'low;
        value := 0;
        k     := 1;
        if (STR(pos) = '-') then
            pos := pos + 1;
            k   := -1;
        end if;
        if (pos <= STR'high) then
            if (STR(pos) = '0' and pos+1 <= STR'high) then
                if ((STR(pos+1) = 'x' or STR(pos+1) = 'X') and pos+2 <= STR'high) then
                    STRING_TO_HEX(STR(pos+2 to STR'high), value, len);
                    pos := pos + 2 + len;
                else
                    STRING_TO_OCT(STR(pos+1 to STR'high), value, len);
                    pos := pos + 1 + len;
                end if;
            else
                    STRING_TO_DEC(STR(pos+0 to STR'high), value, len);
                    pos := pos + 0 + len;
            end if;
        end if;
        VAL     := k * value;
        STR_LEN := pos - STR'low;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 16進数文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_HEX(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    ) is
        variable  pos       :       integer;
        variable  value     :       integer;
    begin
        pos   := STR'low;
        value := 0;
        MAIN_LOOP: loop
            exit MAIN_LOOP when (pos > STR'high);
            case STR(pos) is
                when '0'       => value := value*16+0;
                when '1'       => value := value*16+1;
                when '2'       => value := value*16+2;
                when '3'       => value := value*16+3;
                when '4'       => value := value*16+4;
                when '5'       => value := value*16+5;
                when '6'       => value := value*16+6;
                when '7'       => value := value*16+7;
                when '8'       => value := value*16+8;
                when '9'       => value := value*16+9;
                when 'a' | 'A' => value := value*16+10;
                when 'b' | 'B' => value := value*16+11;
                when 'c' | 'C' => value := value*16+12;
                when 'd' | 'D' => value := value*16+13;
                when 'e' | 'E' => value := value*16+14;
                when 'f' | 'F' => value := value*16+15;
                when '_'       =>
                when others    => exit MAIN_LOOP;
            end case;
            pos := pos + 1;
        end loop;
        VAL     := value;
        STR_LEN := pos - STR'low;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 10進数文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_DEC(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    ) is
        variable  pos       :       integer;
        variable  value     :       integer;
    begin
        pos   := STR'low;
        value := 0;
        MAIN_LOOP: loop
            exit MAIN_LOOP when (pos > STR'high);
            case STR(pos) is
                when '0'    => value := value*10+0;
                when '1'    => value := value*10+1;
                when '2'    => value := value*10+2;
                when '3'    => value := value*10+3;
                when '4'    => value := value*10+4;
                when '5'    => value := value*10+5;
                when '6'    => value := value*10+6;
                when '7'    => value := value*10+7;
                when '8'    => value := value*10+8;
                when '9'    => value := value*10+9;
                when '_'    =>
                when others => exit MAIN_LOOP;
            end case;
            pos := pos + 1;
        end loop;
        VAL     := value;
        STR_LEN := pos - STR'low;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 8進数文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_OCT(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    ) is
        variable  pos       :       integer;
        variable  value     :       integer;
    begin
        pos   := STR'low;
        value := 0;
        MAIN_LOOP: loop
            exit MAIN_LOOP when (pos > STR'high);
            case STR(pos) is
                when '0'       => value := value*8+0;
                when '1'       => value := value*8+1;
                when '2'       => value := value*8+2;
                when '3'       => value := value*8+3;
                when '4'       => value := value*8+4;
                when '5'       => value := value*8+5;
                when '6'       => value := value*8+6;
                when '7'       => value := value*8+7;
                when '_'       =>
                when others    => exit MAIN_LOOP;
            end case;
            pos := pos + 1;
        end loop;
        VAL     := value;
        STR_LEN := pos - STR'low;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 2進数文字列を整数型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された整数型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_BIN(
                  STR       : in    string ;
                  VAL       : out   integer;
                  STR_LEN   : out   integer
    ) is
        variable  pos       :       integer;
        variable  value     :       integer;
    begin
        pos   := STR'low;
        value := 0;
        MAIN_LOOP: loop
            exit MAIN_LOOP when (pos > STR'high);
            case STR(pos) is
                when '0'       => value := value*2+0;
                when '1'       => value := value*2+1;
                when '_'       =>
                when others    => exit MAIN_LOOP;
            end case;
            pos := pos + 1;
        end loop;
        VAL     := value;
        STR_LEN := pos - STR'low;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 10進数文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_DEC(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    ) is
        variable  value     :       integer;
        variable  length    :       integer;
    begin
        STRING_TO_DEC(STR, value, length);
        integer_to_std_logic_vector(value, VAL);
        STR_LEN := length;
        VAL_LEN := VAL'length;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 16進数文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_HEX(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    ) is
        variable  vec       :   std_logic_vector(VAL'length-1 downto 0) := (others => '0');
        variable  value     :   std_logic_vector(3 downto 0);
        variable  pos       :   integer;
        variable  len       :   integer;
        variable  spc       :   boolean;
    begin
        pos := STR'low;
        len := 0;
        MAIN_LOOP: loop
            spc := FALSE;
            exit MAIN_LOOP when (pos > STR'high);
            case STR(pos) is
                when '0'    => value := "0000";
                when '1'    => value := "0001";
                when '2'    => value := "0010";
                when '3'    => value := "0011";
                when '4'    => value := "0100";
                when '5'    => value := "0101";
                when '6'    => value := "0110";
                when '7'    => value := "0111";
                when '8'    => value := "1000";
                when '9'    => value := "1001";
                when 'A'|'a'=> value := "1010";
                when 'B'|'b'=> value := "1011";
                when 'C'|'c'=> value := "1100";
                when 'D'|'d'=> value := "1101";
                when 'E'|'e'=> value := "1110";
                when 'F'|'f'=> value := "1111";
                when 'U'|'u'=> value := "UUUU";
                when 'Z'|'z'=> value := "ZZZZ";
                when 'X'|'x'=> value := "XXXX";
                when '-'    => value := "----";
                when '_'    => spc   := TRUE  ;
                when others => exit MAIN_LOOP;
            end case;
            pos := pos + 1;
            if (spc = FALSE) then
                if (VAL'length > 4) then
                    vec(VAL'length-1 downto 4) := vec(VAL'length-5 downto 0);
                    vec(           3 downto 0) := value;
                else
                    vec := value(vec'range);
                end if;
                len := len + 4;
                exit MAIN_LOOP when (len >= VAL'length);
            end if;
        end loop;
        ---------------------------------------------------------------------------
        -- 出来た定数を出力変数に代入する。
        ---------------------------------------------------------------------------
        VAL     := vec;
        VAL_LEN := len;
        STR_LEN := pos - STR'low;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 8進数文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_OCT(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    ) is
        variable  vec       :       std_logic_vector(VAL'length-1 downto 0) := (others => '0');
        variable  value     :       std_logic_vector(2 downto 0);
        variable  pos       :       integer;
        variable  len       :       integer;
        variable  spc       :       boolean;
    begin
        pos := STR'low;
        len := 0;
        MAIN_LOOP: loop
            spc := FALSE;
            exit MAIN_LOOP when (pos > STR'high);
            case STR(pos) is
                when '0'    => value := "000";
                when '1'    => value := "001";
                when '2'    => value := "010";
                when '3'    => value := "011";
                when '4'    => value := "100";
                when '5'    => value := "101";
                when '6'    => value := "110";
                when '7'    => value := "111";
                when 'U'|'u'=> value := "UUU";
                when 'Z'|'z'=> value := "ZZZ";
                when 'X'|'x'=> value := "XXX";
                when '-'    => value := "---";
                when '_'    => spc   := TRUE ;
                when others => exit MAIN_LOOP;
            end case;
            pos := pos + 1;
            if (spc = FALSE) then
                if (VAL'length > 3) then
                    vec(VAL'length-1 downto 3) := vec(VAL'length-4 downto 0);
                    vec(           2 downto 0) := value;
                else
                    vec := value(vec'range);
                end if;
                len := len + 3;
                exit MAIN_LOOP when (len >= VAL'length);
            end if;
        end loop;
        ---------------------------------------------------------------------------
        -- 出来た定数を出力変数に代入する。
        ---------------------------------------------------------------------------
        VAL     := vec;
        VAL_LEN := len;
        STR_LEN := pos - STR'low;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 2進数文字列をstd_logic_vector型の値に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    STR     入力文字列.
    --! @param    VAL     変換された std_logic_vector 型の値.
    --! @param    STR_LEN 入力文字列のうち、変換に要した文字の数.
    --! @param    VAL_LEN 変換された std_logic_vector のビット数.
    -------------------------------------------------------------------------------
    procedure STRING_TO_BIN(
                  STR       : in    string          ;
                  VAL       : out   std_logic_vector;
                  STR_LEN   : out   integer         ;
                  VAL_LEN   : out   integer         
    ) is
        variable  vec       :       std_logic_vector(VAL'length-1 downto 0) := (others => '0');
        variable  bin       :       std_logic;
        variable  pos       :       integer;
        variable  len       :       integer;
        variable  spc       :       boolean;
    begin
        pos := STR'low;
        len := 0;
        MAIN_LOOP: loop
            spc := FALSE;
            exit MAIN_LOOP when (pos > STR'high);
            case STR(pos) is
                when '0'    => bin := '0' ;
                when '1'    => bin := '1' ;
                when 'X'    => bin := 'X' ;
                when 'U'    => bin := 'U' ;
                when 'Z'    => bin := 'Z' ;
                when '-'    => bin := '-' ;
                when '_'    => spc := TRUE;
                when others => exit MAIN_LOOP;
            end case;
            pos := pos + 1;
            if (spc = FALSE) then
                if (VAL'length > 1) then
                    vec(VAL'length-1 downto 1) := vec(VAL'length-2 downto 0);
                end if;
                vec(0) := bin;
                len    := len + 1;
                exit MAIN_LOOP when (len > VAL'length);
            end if;
        end loop;
        ---------------------------------------------------------------------------
        -- 出来た定数を出力変数に代入する。
        ---------------------------------------------------------------------------
        VAL     := vec;
        VAL_LEN := len;
        STR_LEN := pos - STR'low;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 整数を文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @param    STR     変換された文字列.
    --! @param    LEN     変換された文字列の文字数.
    -------------------------------------------------------------------------------
    procedure INTEGER_TO_STRING(
                  VAL   : in    integer;
                  STR   : out   STRING ;
                  LEN   : out   integer
    ) is
	variable  buf   :       string(STR'length downto 1);
	variable  pos   :       integer;
	variable  tmp   :       integer;
        variable  digit :       integer range 0 to 9;
    begin
        pos := 1;
        tmp := abs(VAL);
	loop
            digit := abs(tmp mod 10);
            case digit is
               when 0 => buf(pos) := '0';
               when 1 => buf(pos) := '1';
               when 2 => buf(pos) := '2';
               when 3 => buf(pos) := '3';
               when 4 => buf(pos) := '4';
               when 5 => buf(pos) := '5';
               when 6 => buf(pos) := '6';
               when 7 => buf(pos) := '7';
               when 8 => buf(pos) := '8';
               when 9 => buf(pos) := '9';
            end case;
            pos := pos + 1;
	    tmp := tmp / 10;
	    exit when tmp = 0;
	end loop;
	if (VAL < 0) then
	    buf(pos) := '-';
        else
            pos := pos - 1;
	end if;
	STR(1 to pos) := buf(pos downto 1);
	LEN := pos;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 整数型の値を文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function INTEGER_TO_STRING(VAL: integer) return STRING is
	variable  str : string(1 to 32);
	variable  len : integer;
    begin
	INTEGER_TO_STRING(VAL, str, len);
	return str(1 to len);
    end function;
    -------------------------------------------------------------------------------
    --! @brief 整数型の値を16進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @param    LEN     整数値のビット数を指定する.文字列の文字数じゃないことに注意.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function  HEX_TO_STRING(VAL: integer; LEN: integer) return STRING is
        variable  vec : std_logic_vector(LEN-1 downto 0);
    begin
        vec := std_logic_vector(to_unsigned(VAL,LEN));
        return HEX_TO_STRING(vec);
    end function;
    -------------------------------------------------------------------------------
    --! @brief std_logic_vector型の値をを16進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function HEX_TO_STRING(VAL: std_logic_vector) return STRING is
	constant  ne   : integer := (VAL'length+3)/4;
        variable  quad : std_logic_vector(0 to 3);
	variable  pv   : std_logic_vector(0 to VAL'length-1) := VAL;
	variable  bv   : std_logic_vector(0 to ne*4-1);
	variable  str  : string(1 to ne);
        variable  len  : integer range 0 to 3;
    begin
        ---------------------------------------------------------------------------
        -- 入力された VAL の長さを ４の倍数 になるように正規化して bv に代入
        ---------------------------------------------------------------------------
        len := VAL'length mod 4;
        case len is
            when 1      => bv(0 to 2) := "000"; bv(3 to bv'right) := pv;
            when 2      => bv(0 to 1) := "00" ; bv(2 to bv'right) := pv;
            when 3      => bv(0 to 0) := "0"  ; bv(1 to bv'right) := pv;
            when others =>                      bv(0 to bv'right) := pv;
        end case;
        ---------------------------------------------------------------------------
        -- 処理ループ
        ---------------------------------------------------------------------------
	for i in 0 to ne-1 loop
            for j in 0 to 3 loop
                case bv(4*i+j) is
                    when '0'    => quad(j) := '0';
                    when '1'    => quad(j) := '1';
                    when 'L'    => quad(j) := '0';
                    when 'H'    => quad(j) := '1';
                    when 'Z'    => quad(j) := 'Z';
                    when 'U'    => quad(j) := 'U';
                    when '-'    => quad(j) := '-';
                    when others => quad(j) := 'X';
                end case;
            end loop;
	    case quad is
                when "0000" => str(i+1) := '0';
                when "0001" => str(i+1) := '1';
                when "0010" => str(i+1) := '2';
                when "0011" => str(i+1) := '3';
                when "0100" => str(i+1) := '4';
                when "0101" => str(i+1) := '5';
                when "0110" => str(i+1) := '6';
                when "0111" => str(i+1) := '7';
                when "1000" => str(i+1) := '8';
                when "1001" => str(i+1) := '9';
                when "1010" => str(i+1) := 'A';
                when "1011" => str(i+1) := 'B';
                when "1100" => str(i+1) := 'C';
                when "1101" => str(i+1) := 'D';
                when "1110" => str(i+1) := 'E';
                when "1111" => str(i+1) := 'F';
                when "ZZZZ" => str(i+1) := 'Z';
                when "UUUU" => str(i+1) := 'U';
                when "----" => str(i+1) := '-';
                when others => str(i+1) := 'X';
	    end case;
	end loop;
	return str;
    end HEX_TO_STRING; 
    -------------------------------------------------------------------------------
    --! @brief std_logic型の値を２進数文字に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字.
    -------------------------------------------------------------------------------
    function BIN_TO_CHAR(VAL: std_logic) return character is
    begin
        case VAL is
            when '0'    => return '0';
            when '1'    => return '1';
            when 'L'    => return 'L';
            when 'H'    => return 'H';
            when 'Z'    => return 'Z';
            when 'U'    => return 'U';
            when '-'    => return '-';
            when others => return 'X';
         end case;
    end BIN_TO_CHAR; 
    -------------------------------------------------------------------------------
    --! @brief 整数型の値を２進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @param    LEN     整数値のビット数を指定する.文字列の文字数じゃないことに注意.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function  BIN_TO_STRING(VAL: integer; LEN: integer) return STRING is
        variable  vec : std_logic_vector(LEN-1 downto 0);
    begin
        vec := std_logic_vector(to_unsigned(VAL,LEN));
        return BIN_TO_STRING(vec);
    end function;
    -------------------------------------------------------------------------------
    --! @brief std_logic_vector型の値を２進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function BIN_TO_STRING(VAL: std_logic_vector) return STRING is
	variable  bv :  std_logic_vector(1 to VAL'length) := VAL;
	variable  str:  string(1 to VAL'length) ;
    begin
	for i in bv'range loop
            str(i) := BIN_TO_CHAR(bv(i));
    	end loop;
    	return str;
    end BIN_TO_STRING; 
    -------------------------------------------------------------------------------
    --! @brief std_logic型の値を２進数文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字列.
    -------------------------------------------------------------------------------
    function BIN_TO_STRING(VAL: std_logic) return STRING is
        variable  str:  string(1 to 1);
    begin
        str(1) := BIN_TO_CHAR(VAL);
        return str;
    end BIN_TO_STRING; 
    -------------------------------------------------------------------------------
    --! @brief boolean型の値を文字列に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VAL     入力値.
    --! @return           変換された文字.
    -------------------------------------------------------------------------------
    function  BOOLEAN_TO_STRING(VAL: boolean) return STRING is
        constant  T : string(1 to 4) := "TRUE";
        constant  F : string(1 to 5) := "FALSE";
    begin
        if (VAL) then return T;
        else          return F;
        end if;
    end function;
    -------------------------------------------------------------------------------
    --! @brief std_logic型の値同士を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    A       比較する値.
    --! @param    B       比較する値.
    --! @return           比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    function  MATCH_STD_LOGIC(A,B:std_logic) return boolean is
    begin
       case A is
            when '0'    => if (B /= '0') then return FALSE; end if;
            when '1'    => if (B /= '1') then return FALSE; end if;
            when 'L'    => if (B /= 'L') then return FALSE; end if;
            when 'H'    => if (B /= 'H') then return FALSE; end if;
            when 'Z'    => if (B /= 'Z') then return FALSE; end if;
            when 'U'    => if (B /= 'U') then return FALSE; end if;
            when 'X'    => if (B /= 'X') then return FALSE; end if;
            when '-'    => 
            when others => 
        end case;
        return TRUE;
    end function;
    -------------------------------------------------------------------------------
    --! @brief std_logic_vector型の値同士を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    A       比較する値.
    --! @param    B       比較する値.
    --! @return           比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    function  MATCH_STD_LOGIC(A,B:std_logic_vector) return boolean is
        alias vec_a : std_logic_vector(A'length-1 downto 0) is A;
        alias vec_b : std_logic_vector(B'length-1 downto 0) is B;
    begin
        if (A'length /= B'length) then
            assert FALSE
            report "MATCH_STD_LOGIC_VECTOR arguments are not of the same length"
            severity FAILURE;
        else
            for i in 0 to A'length-1 loop
                if (MATCH_STD_LOGIC(vec_a(i),vec_b(i)) = FALSE) then
                    return FALSE;
                end if;
            end loop;
        end if;
        return TRUE;
    end function;
end UTIL;
-----------------------------------------------------------------------------------
--!     @file    reader.vhd
--!     @brief   Package for Dummy Plug Scenario Reader.
--!     @version 1.6.1
--!     @date    2016/1/7
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug のシナリオを読み込むためのパッケージ
-----------------------------------------------------------------------------------
package READER is
    -------------------------------------------------------------------------------
    --! @brief イベントのタイプ
    -------------------------------------------------------------------------------
    type      EVENT_TYPE is (
              EVENT_DIRECTIVE      , -- ディレクティブを示すイベント(未サポート).
              EVENT_DOC_BEGIN      , -- ドキュメントの開始を示すイベント.
              EVENT_DOC_END        , -- ドキュメントの終了を示すイベント.
              EVENT_STREAM_END     , -- ストリームの終わりを示すイベント.
              EVENT_SEQ_BEGIN      , -- リスト(Sequence)の開始を示すイベント.
              EVENT_SEQ_NEXT       , -- リスト(Sequence)の続きを示すイベント.
              EVENT_SEQ_END        , -- リスト(Sequence)の終了を示すイベント.
              EVENT_MAP_BEGIN      , -- ハッシュ(Mapping)の開始を示すイベント.
              EVENT_MAP_NEXT       , -- ハッシュ(Mapping)の続きを示すイベント.
              EVENT_MAP_END        , -- ハッシュ(Mapping)の終了を示すイベント.
              EVENT_MAP_SEP        , -- ハッシュ(Mapping)のキーと値を分けるイベント.
              EVENT_SCALAR         , -- スカラーを示すノード.
              EVENT_TAG_PROP       , -- タグプロパティ.
              EVENT_ANCHOR         , -- アンカー.
              EVENT_ALIAS          , -- エイリアス.
              EVENT_ERROR            -- ノードの読み込みに失敗したことを示す.
    );
    -------------------------------------------------------------------------------
    --! @brief 処理できる構造(STRUCTURE)の状態の深さの最大値.
    -------------------------------------------------------------------------------
    constant  STRUCT_STATE_DEPTH   : integer := 16;
    -------------------------------------------------------------------------------
    --! @brief 処理中の構造(STRUCTURE)の状態を保持するためのスタックのタイプ.
    -------------------------------------------------------------------------------
    type      STRUCT_STATE_STACK   is array (1 to STRUCT_STATE_DEPTH) of integer;
    -------------------------------------------------------------------------------
    --! @brief 処理中の構造(STRUCTURE)のポインタを示すタイプ.
    -------------------------------------------------------------------------------
    subtype   STRUCT_STATE_PTR     is integer range 1 to STRUCT_STATE_DEPTH;
    -------------------------------------------------------------------------------
    --! @brief リーダーの状態を保持する構造体.
    -------------------------------------------------------------------------------
    type      READER_TYPE is record
        name                : LINE;               -- インスタンス名を保持.
        stream_name         : LINE;               -- ストリーム名を保持.
        text_line           : LINE;               -- 現在処理中の行の内容を保持.
        text_pos            : integer;            -- 現在処理中の文字の位置を保持.
        text_end            : integer;            -- 現在処理中の行の最後の文字位置を保持.
        line_num            : integer;            -- 行番号.
        end_of_file         : boolean;            -- ファイルの終端に達したことを示すフラグ.
        debug_mode          : integer;            -- デバッグモード.
        state_stack         : STRUCT_STATE_STACK; -- 処理中の構造を保持するためのスタック.
        state_top           : STRUCT_STATE_PTR;   -- 現在処理中の構造を示すスタックポインタ.
    end record;
    -------------------------------------------------------------------------------
    --! @brief リーダーの状態を保持する構造体の初期化用定数を生成する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NAME        リーダーの識別名.
    --! @param    STREAM_NAME シナリオファイルの名前を指定する.
    --! @return               生成した定数.
    -------------------------------------------------------------------------------
    function  NEW_READER(NAME: string; STREAM_NAME: string) return READER_TYPE;
    -------------------------------------------------------------------------------
    --! @brief 次に読み取ることのできるイベントまで読み飛ばすサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    NEXT_EVENT  見つかったイベント.
    -------------------------------------------------------------------------------
    procedure SEEK_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;       
                  NEXT_EVENT    : out   EVENT_TYPE  
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからイベントを読み取るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み取るイベント.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure READ_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE;
                  GOOD          : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからイベントを読み取るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み取るイベント.
    --! @param    STR         格納された文字列.
    --! @param    STR_LEN     格納した文字列の文字数.
    --! @param    READ_LEN    ストリームから読み取った文字数.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure READ_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SCALAR,EVENT_TAG_PROP,EVENT_ANCHOR,EVENT_ALIASを
    --!        文字列として取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    STR         格納された文字列.
    --! @param    STR_LEN     格納した文字列の文字数.
    --! @param    READ_LEN    ストリームから読み取った文字数.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure READ_STRING(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SCALARを整数(INTEGER)として取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VALUE       読み取った整数の値.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure READ_INTEGER(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  VALUE         : out   integer;
                  GOOD          : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SCALARを真偽値(BOOLEAN)として取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VALUE       読み取った真偽値の値.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure READ_BOOLEAN(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  VALUE         : out   boolean;
                  GOOD          : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENTを読み飛ばすサブプログラム.
    --!        EVENTがMAP_BEGINやSEQ_BEGINの場合は、対応するMAP_ENDまたはSEQ_ENDまで
    --!        読み飛ばすことに注意.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み飛ばすイベント.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure SKIP_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE;
                  GOOD          : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief イベントを文字列に変換する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    EVENT       イベント入力.
    --! @return               変換した文字列.
    -------------------------------------------------------------------------------
    function  EVENT_TO_STRING(EVENT: EVENT_TYPE) return string;
    -------------------------------------------------------------------------------
    --! @brief 標準出力にリーダーの状態をダンプするサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    -------------------------------------------------------------------------------
    procedure DEBUG_DUMP (
        variable  SELF          : inout READER_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief 標準出力にリーダーの状態をダンプするサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    MESSAGE     メッセージ.
    -------------------------------------------------------------------------------
    procedure DEBUG_DUMP (
        variable  SELF          : inout READER_TYPE;
                  MESSAGE       : in    string
    );
    -------------------------------------------------------------------------------
    --! @brief 標準出力にリーダーの状態をダンプするサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    POS         キャレットの位置.
    -------------------------------------------------------------------------------
    procedure DEBUG_DUMP (
        variable  SELF          : inout READER_TYPE;
                  POS           : in    integer
    );
end READER;
-----------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.UTIL.STRING_TO_INTEGER;
use     DUMMY_PLUG.UTIL.STRING_TO_BOOLEAN;
use     DUMMY_PLUG.UTIL.INTEGER_TO_STRING;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug のシナリオを読み込むためのパッケージの本体.
-----------------------------------------------------------------------------------
package body  READER is
    -------------------------------------------------------------------------------
    --! @brief トークンの定義
    -------------------------------------------------------------------------------
    type      TOKEN_TYPE is (
              TOKEN_DOCUMENT_BEGIN    , -- "---"
              TOKEN_DOCUMENT_END      , -- "..."
              TOKEN_SEQ_ENTRY         , -- "-"(#x2D,hyphen) denotes a block sequence entry.
              TOKEN_FLOW_ENTRY        , -- ","(#x2C,comma) ends a flow collection entry.
              TOKEN_FLOW_SEQ_BEGIN    , -- "["(#x5B,left  bracket) starts a flow sequence.
              TOKEN_FLOW_SEQ_END      , -- "]"(#x5D,right bracket) ends   a flow sequence.
              TOKEN_FLOW_MAP_BEGIN    , -- "{"(#x7B,left  brace  ) starts a flow mapping.
              TOKEN_FLOW_MAP_END      , -- "{"(#x7D,right brace  ) ends   a flow sequence.
              TOKEN_SINGLE_QUOTE      , -- "'"(#x27,single quote ) a single quoted flow scala.
              TOKEN_DOUBLE_QUOTE      , -- """(#x22,double quote ) a dobule quoted flow scala.
              TOKEN_LITERAL           , -- "|"(#x7C,vertical bar ) denotes a literal block scala.
              TOKEN_FOLDED            , -- ">"(#x3E,greater than ) denotes a folded  block scala.
              TOKEN_DIRECTIVE         , -- "%"
              TOKEN_TAG_PROPERTY      , -- "!"
              TOKEN_ANCHOR_PROPERTY   , -- "&"
              TOKEN_ALIAS_NODE        , -- "*"
              TOKEN_MAP_EXPLICIT_KEY  , -- "? "
              TOKEN_MAP_SEPARATOR     , -- ": "
              TOKEN_SCALAR            , -- SCALAR
              TOKEN_ERROR             , -- パースエラー
              TOKEN_STREAM_END          -- ストリームの終端を示す.
    );
    -------------------------------------------------------------------------------
    --! @brief STRUCT_STACK の内容
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!     *  READER_TYPEではすべてひっくるめて integer に押し込んでいるが、
    --!        実際はステート、インデント、暗黙のマップキー探索の各状態を持っている.
    -------------------------------------------------------------------------------
    constant  STATE_MAX_SIZE                : integer    := 18;
    constant  INDENT_MAX_SIZE               : integer    := 1024;
    constant  MAPKEY_MAX_SIZE               : integer    :=  4;
    constant  STATE_OFFSET                  : integer    := INDENT_MAX_SIZE;
    constant  MAPKEY_OFFSET                 : integer    := STATE_MAX_SIZE*INDENT_MAX_SIZE;
    subtype   STATE_TYPE                   is integer range 0 to  STATE_MAX_SIZE-1;
    subtype   INDENT_TYPE                  is integer range 0 to INDENT_MAX_SIZE-1;
    subtype   MAPKEY_MODE                  is integer range 0 to MAPKEY_MAX_SIZE-1;
    -------------------------------------------------------------------------------
    --! @brief ステートマシンの状態の定義.
    -------------------------------------------------------------------------------
    constant  STATE_NONE                    : STATE_TYPE :=  0;
    constant  STATE_DOCUMENT                : STATE_TYPE :=  1;
    constant  STATE_BLOCK_SEQ_VAL           : STATE_TYPE :=  2;
    constant  STATE_BLOCK_SEQ_END           : STATE_TYPE :=  3;
    constant  STATE_BLOCK_MAP_IMPLICIT_KEY  : STATE_TYPE :=  4;
    constant  STATE_BLOCK_MAP_IMPLICIT_SEP  : STATE_TYPE :=  5;
    constant  STATE_BLOCK_MAP_IMPLICIT_VAL  : STATE_TYPE :=  6;
    constant  STATE_BLOCK_MAP_IMPLICIT_END  : STATE_TYPE :=  7;
    constant  STATE_BLOCK_MAP_EXPLICIT_KEY  : STATE_TYPE :=  8;
    constant  STATE_BLOCK_MAP_EXPLICIT_SEP  : STATE_TYPE :=  9;
    constant  STATE_BLOCK_MAP_EXPLICIT_VAL  : STATE_TYPE := 10;
    constant  STATE_BLOCK_MAP_EXPLICIT_END  : STATE_TYPE := 11;
    constant  STATE_FLOW_SEQ_VAL            : STATE_TYPE := 12;
    constant  STATE_FLOW_SEQ_END            : STATE_TYPE := 13;
    constant  STATE_FLOW_MAP_KEY            : STATE_TYPE := 14;
    constant  STATE_FLOW_MAP_SEP            : STATE_TYPE := 15;
    constant  STATE_FLOW_MAP_VAL            : STATE_TYPE := 16;
    constant  STATE_FLOW_MAP_END            : STATE_TYPE := 17;
    -------------------------------------------------------------------------------
    --! @brief 暗黙のマップキー探索時の状態の定義.
    -------------------------------------------------------------------------------
    constant  MAPKEY_NULL                   : MAPKEY_MODE := 0;
    constant  MAPKEY_FOUND                  : MAPKEY_MODE := 1;
    constant  MAPKEY_READ                   : MAPKEY_MODE := 2;
    -------------------------------------------------------------------------------
    --! @brief 構造の状態を整数に変換するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VALUE       変換された整数値.
    --! @param    STATE       変換する構造の状態.
    --! @param    INDENT      変換するインデントの状態.
    --! @param    MAPKEY      変換する暗黙のマップキー探索状態.
    -------------------------------------------------------------------------------
    procedure pack_struct_state_value(
        variable  VALUE         : out   integer    ;
                  STATE         : in    STATE_TYPE ;
                  INDENT        : in    INDENT_TYPE;
                  MAPKEY        : in    MAPKEY_MODE 
    ) is
    begin 
        VALUE := (MAPKEY * MAPKEY_OFFSET)
               + (STATE  * STATE_OFFSET )
               + (INDENT                );
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 整数から構造の状態に変換.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    VALUE       変換する整数値.
    --! @param    STATE       変換された構造の状態.
    --! @param    INDENT      変換されたインデントの状態.
    --! @param    MAPKEY      変換された暗黙のマップキー探索状態.
    -------------------------------------------------------------------------------
    procedure unpack_struct_state_value(
                  VALUE         : in    integer    ;
                  STATE         : out   STATE_TYPE ;
                  INDENT        : out   INDENT_TYPE;
                  MAPKEY        : out   MAPKEY_MODE 
    ) is
    begin 
        MAPKEY := (VALUE / MAPKEY_OFFSET) mod MAPKEY_MAX_SIZE;
        STATE  := (VALUE / STATE_OFFSET ) mod STATE_MAX_SIZE;
        INDENT := (VALUE                ) mod INDENT_MAX_SIZE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 構造の状態の初期化.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    -------------------------------------------------------------------------------
    procedure init_struct_state(
        variable  SELF          : inout READER_TYPE
    ) is
        variable  value         :       integer;
    begin
        pack_struct_state_value(value, STATE_NONE, 0, MAPKEY_NULL);
        SELF.state_top   := SELF.state_stack'low;
        SELF.state_stack := (others => value);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の構造の状態を得る.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    CURR_STATE  現在の構造の状態を出力.
    --! @param    CURR_INDENT 現在のインデントを出力.
    --! @param    CURR_MAPKEY 暗黙のマップキー探索状態を出力.
    -------------------------------------------------------------------------------
    procedure get_struct_state(
        variable  SELF          : inout READER_TYPE;
                  CURR_STATE    : out   STATE_TYPE ;
                  CURR_INDENT   : out   INDENT_TYPE;
                  CURR_MAPKEY   : out   MAPKEY_MODE
    ) is
        variable  curr_value    :       integer;
    begin
        curr_value := SELF.state_stack(SELF.state_top);
        unpack_struct_state_value(curr_value, CURR_STATE, CURR_INDENT, CURR_MAPKEY);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の構造の状態を得る.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    CURR_STATE  現在の構造の状態を出力.
    --! @param    CURR_INDENT 現在のインデントを出力.
    -------------------------------------------------------------------------------
    procedure get_struct_state(
        variable  SELF          : inout READER_TYPE;
                  CURR_STATE    : out   STATE_TYPE ;
                  CURR_INDENT   : out   INDENT_TYPE
    ) is
        variable  curr_mapkey   :       MAPKEY_MODE;
    begin
        get_struct_state(SELF, CURR_STATE, CURR_INDENT, curr_mapkey);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の構造の状態を得る.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    CURR_STATE  現在の構造の状態を出力.
    -------------------------------------------------------------------------------
    procedure get_struct_state(
        variable  SELF          : inout READER_TYPE;
                  CURR_STATE    : out   STATE_TYPE
    ) is
        variable  curr_indent   :       INDENT_TYPE;
        variable  curr_mapkey   :       MAPKEY_MODE;
    begin
        get_struct_state(SELF, CURR_STATE, curr_indent, curr_mapkey);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の構造の状態を変更する(indent/mapkeyの変更も行う).
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    NEW_STATE   新しい構造の状態.
    --! @param    NEW_INDENT  新しいインデント状態.
    --! @param    NEW_MAPKEY  新しい暗黙のマップキー探索状態.
    -------------------------------------------------------------------------------
    procedure set_struct_state(
        variable  SELF          : inout READER_TYPE;
                  NEW_STATE     : in    STATE_TYPE ;
                  NEW_INDENT    : in    INDENT_TYPE;
                  NEW_MAPKEY    : in    MAPKEY_MODE
    ) is
        variable  new_value     :       integer;
    begin
        pack_struct_state_value(new_value, NEW_STATE, NEW_INDENT, NEW_MAPKEY);
        SELF.state_stack(SELF.state_top) := new_value;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の構造の状態を変更する(indentの変更も行う).
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    NEW_STATE   新しい構造の状態.
    --! @param    NEW_INDENT  新しいインデント状態.
    -------------------------------------------------------------------------------
    procedure set_struct_state(
        variable  SELF          : inout READER_TYPE;
                  NEW_STATE     : in    STATE_TYPE ;
                  NEW_INDENT    : in    INDENT_TYPE
    ) is
        variable  curr_state    :       STATE_TYPE ;
        variable  curr_indent   :       INDENT_TYPE;
        variable  curr_mapkey   :       MAPKEY_MODE;
    begin
        get_struct_state(SELF, curr_state, curr_indent, curr_mapkey);
        set_struct_state(SELF,  NEW_STATE,  NEW_indent, curr_mapkey);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の構造の状態を変更する(indentの変更は行わない).
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    NEW_STATE   新しい構造の状態.
    -------------------------------------------------------------------------------
    procedure set_struct_state(
        variable  SELF          : inout READER_TYPE;
                  NEW_STATE     : in    STATE_TYPE
    ) is
        variable  curr_state    :       STATE_TYPE ;
        variable  curr_indent   :       INDENT_TYPE;
        variable  curr_mapkey   :       MAPKEY_MODE;
    begin
        get_struct_state(SELF, curr_state, curr_indent, curr_mapkey);
        set_struct_state(SELF,  NEW_STATE, curr_indent, curr_mapkey);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の構造の状態を保存してから状態を変更する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    RET_STATE   新しい状態から戻ったときの状態.
    --! @param    RET_INDENT  新しい状態から戻ったときのインデント状態.
    --! @param    RET_MAPKEY  新しい状態から戻ったときの暗黙のマップキー探索状態.
    --! @param    NEW_STATE   新しい構造の状態.
    --! @param    NEW_INDENT  新しいインデント状態.
    --! @param    NEW_MAPKEY  新しい暗黙のマップキー探索状態.
    --! @param    GOOD        スタックに保存できたことを示す変数.
    -------------------------------------------------------------------------------
    procedure call_struct_state(
        variable  SELF          : inout READER_TYPE;
                  RET_STATE     : in    STATE_TYPE ;
                  RET_INDENT    : in    INDENT_TYPE;
                  RET_MAPKEY    : in    MAPKEY_MODE;
                  NEW_STATE     : in    STATE_TYPE ;
                  NEW_INDENT    : in    INDENT_TYPE;
                  NEW_MAPKEY    : in    MAPKEY_MODE;
                  GOOD          : out   boolean     
    ) is
    begin
        if (SELF.state_top < SELF.state_stack'high) then
            set_struct_state(SELF, RET_STATE, RET_INDENT, RET_MAPKEY);
            SELF.state_top := SELF.state_top + 1;
            set_struct_state(SELF, NEW_STATE, NEW_INDENT, NEW_MAPKEY);
            GOOD := TRUE;
        else
            GOOD := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の構造の状態を保存してから状態を変更する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    RET_STATE   新しい状態から戻ったときの状態.
    --! @param    RET_INDENT  新しい状態から戻ったときのインデント状態.
    --! @param    NEW_STATE   新しい構造の状態.
    --! @param    NEW_INDENT  新しいインデント状態.
    --! @param    GOOD        スタックに保存できたことを示す変数.
    -------------------------------------------------------------------------------
    procedure call_struct_state(
        variable  SELF          : inout READER_TYPE;
                  RET_STATE     : in    STATE_TYPE ;
                  RET_INDENT    : in    INDENT_TYPE;
                  NEW_STATE     : in    STATE_TYPE ;
                  NEW_INDENT    : in    INDENT_TYPE;
                  GOOD          : out   boolean
    ) is
    begin
        if (SELF.state_top < SELF.state_stack'high) then
            set_struct_state(SELF, RET_STATE, RET_INDENT);
            SELF.state_top := SELF.state_top + 1;
            set_struct_state(SELF, NEW_STATE, NEW_INDENT, MAPKEY_NULL);
            GOOD := TRUE;
        else
            GOOD := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 前の構造の状態を復元する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    CURR_STATE  復帰時の構造の状態を出力.
    --! @param    CURR_INDENT 復帰時のインデントを出力.
    --! @param    CURR_MAPKEY 復帰時のマップキー探索状態を出力.
    --! @param    GOOD        スタックから取り出せたことを示す変数.
    -------------------------------------------------------------------------------
    procedure return_struct_state(
        variable  SELF          : inout READER_TYPE;
                  CURR_STATE    : out   STATE_TYPE ;
                  CURR_INDENT   : out   INDENT_TYPE;
                  CURR_MAPKEY   : out   MAPKEY_MODE;
                  GOOD          : out   boolean
    ) is
        variable  struct        :       integer;
    begin
        if (SELF.state_top >  SELF.state_stack'low) then
            SELF.state_top := SELF.state_top - 1;
            get_struct_state(SELF, CURR_STATE, CURR_INDENT, CURR_MAPKEY);
            GOOD := TRUE;
        else
            GOOD := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 前の構造の状態を復元する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    GOOD        スタックから取り出せたことを示す変数.
    -------------------------------------------------------------------------------
    procedure return_struct_state(
        variable  SELF          : inout READER_TYPE;
                  GOOD          : out   boolean     
    ) is
        variable  struct        :       integer    ;    
        variable  next_state    :       STATE_TYPE ; 
        variable  next_indent   :       INDENT_TYPE;
        variable  next_mapkey   :       INDENT_TYPE;
    begin
        return_struct_state(SELF, next_state, next_indent, next_mapkey, GOOD);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 現在の暗黙のマップキー探索状態を得る.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    CURR_MAPKEY 現在の暗黙のマップキー探索状態.
    -------------------------------------------------------------------------------
    procedure get_map_key_mode(
        variable  SELF          : inout READER_TYPE;
                  CURR_MAPKEY   : out   MAPKEY_MODE 
    ) is
        variable  curr_state    :       STATE_TYPE ;
        variable  curr_indent   :       INDENT_TYPE;
    begin
        get_struct_state(SELF, curr_state, curr_indent, CURR_MAPKEY);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 暗黙のマップキー探索状態を設定する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    NEW_MAPKEY  設定する暗黙のマップキー探索状態.
    -------------------------------------------------------------------------------
    procedure set_map_key_mode(
        variable  SELF          : inout READER_TYPE;
                  NEW_MAPKEY    : in    MAPKEY_MODE
    ) is
        variable  curr_state    :       STATE_TYPE ;
        variable  curr_indent   :       INDENT_TYPE;
        variable  curr_mapkey   :       MAPKEY_MODE;
    begin
        get_struct_state(SELF, curr_state, curr_indent, curr_mapkey);
        set_struct_state(SELF, curr_state, curr_indent,  NEW_MAPKEY);
    end procedure;
    -------------------------------------------------------------------------------
    -- @brief 文字がワードをスカラーを構成する文字かどうかを判定する関数.
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    -- 現時点では未使用のためコメントアウト
    -------------------------------------------------------------------------------
    -- function  is_word_char(CHAR : character) return boolean is
    -- begin
    --     case CHAR is
    --         when 'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|
    --              'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z'|
    --              'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|
    --              'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|
    --              '0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'_'|'-' => return TRUE;
    --         when others =>                                          return FALSE;
    --     end case;
    -- end function;
    -------------------------------------------------------------------------------
    -- @brief 文字が英数字かどうかを判定する関数.
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    -- 現時点では未使用のためコメントアウト
    -------------------------------------------------------------------------------
    -- function  is_alnum(CHAR : character) return boolean is
    -- begin
    --     case CHAR is
    --         when 'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|
    --              'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z'|
    --              'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|
    --              'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|
    --              '0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'_' => return TRUE;
    --         when others =>                                      return FALSE;
    --     end case;
    -- end function;
    -------------------------------------------------------------------------------
    -- @brief 文字が数字かどうかを判定する関数
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    -- 現時点では未使用のためコメントアウト
    -------------------------------------------------------------------------------
    -- function  is_digit(CHAR : character) return boolean is
    -- begin
    --     case CHAR is
    --         when '0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9' => return TRUE;
    --         when others                                  => return FALSE;
    --     end case;
    -- end is_digit;
    -------------------------------------------------------------------------------
    --! @brief 文字が空白かどうかを判定する関数
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    CHAR        判定する文字.
    --! @return               判定結果.空白だった場合はTRUE.
    -------------------------------------------------------------------------------
    function  is_space(CHAR : character) return boolean is
    begin
        case CHAR is
            when ' '| '#' | ht  => return TRUE;
            when others         => return FALSE;
        end case;
    end function;
    -------------------------------------------------------------------------------
    --! @brief ストリームから１行読んでテキストラインにセットするサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure read_text_line(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT
    ) is
    begin
        if (EndFile(STREAM)) then
            SELF.end_of_file := TRUE;
        else
            READLINE(STREAM, SELF.text_line);
            SELF.text_pos    := SELF.text_line'low;
            SELF.text_end    := SELF.text_line'high;
            SELF.line_num    := SELF.line_num + 1;
            SELF.end_of_file := FALSE;
            set_map_key_mode(SELF, MAPKEY_NULL);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置の* 文字を得るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    POS         スキャンする位置.
    --! @param    CHAR        ポインタが示している文字を出力.
    --! @param    GOOD        ポインタがまだ行内にあることを示す.
    -------------------------------------------------------------------------------
    procedure scan_char(
        variable  SELF          : inout READER_TYPE;
                  POS           : in    integer    ;
                  CHAR          : out   character  ;
                  GOOD          : out   boolean    
    ) is
    begin
        if (SELF.end_of_file = TRUE) or
           (SELF.text_line   = null) or
           (POS     > SELF.text_end) then
            CHAR := nul;
            GOOD := FALSE;
        else
            CHAR := SELF.text_line(POS);
            GOOD := TRUE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の位置の* 文字を得るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    CHAR        ポインタが示している文字を出力.
    --! @param    GOOD        ポインタがまだ行内にあることを示す.
    -------------------------------------------------------------------------------
    procedure scan_char(
        variable  SELF          : inout READER_TYPE;
                  CHAR          : out   character  ;
                  GOOD          : out   boolean    
    ) is
    begin
        scan_char(SELF, SELF.text_pos, CHAR, GOOD);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --!        空白以外のキャラクタをみつけたら、そのキャラと空白文字の数を返す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    FOUND_CHAR  見つかった空白以外のキャラクタ.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_space(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;    
                  FOUND_CHAR    : out   character;  
                  FOUND         : out   boolean;    
                  FOUND_LEN     : out   integer;    
                  END_LINE      : out   boolean     
    ) is
        variable  pos           :       integer;    
        variable  len           :       integer;    
        variable  curr_char     :       character;  
    begin
        if (SELF.end_of_file  =  TRUE) or
           (SELF.text_line    =  null) or
           (START_POS > SELF.text_end) then
                FOUND_CHAR := nul;
                FOUND      := FALSE;
                FOUND_LEN  := 0;
                END_LINE   := TRUE;
                return;
        end if;
        pos  := START_POS;
        len  := 0;
        scan_space_loop:  loop
            if (pos > SELF.text_end) then
                FOUND_CHAR := nul;
                FOUND      := FALSE;
                FOUND_LEN  := 0;
                END_LINE   := TRUE;
                return;
            end if;
            curr_char := SELF.text_line(pos);
            if (curr_char = '#') then
                FOUND_CHAR := ' ';
                FOUND      := TRUE;
                FOUND_LEN  := SELF.text_end-START_POS+1;
                END_LINE   := FALSE;
                return;
            end if;
            if (is_space(curr_char) = FALSE) then
                FOUND_CHAR := curr_char;
                FOUND      := (pos > START_POS);
                FOUND_LEN  := len;
                END_LINE   := FALSE;
                return;
            end if;
            pos := pos + 1;
            len := len + 1;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームから空白を読み飛ばすサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * 空白を読み飛ばして最初に見つかった文字を返す.
    --!      * 文字が見つかった場合は FOUND=TRUE を返す.
    --!      * 何も見付からずにストリームの終端に到達した場合はEND_STREAM=TRUEを返す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    FOUND_CHAR  見つかった空白以外の文字.
    --! @param    FOUND       空白以外の文字が見つかったことを示す.
    --! @param    END_STREAM  ストリームが最期に達したことを示す.
    -------------------------------------------------------------------------------
    procedure skip_space(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;       
                  FOUND_CHAR    : out   character;  
                  FOUND         : out   boolean;    
                  END_STREAM    : out   boolean     
    ) is
        variable  curr_char     :       character;  
    begin
        while(SELF.end_of_file = FALSE) loop
            if (SELF.text_line = null) or
               (SELF.text_pos > SELF.text_end) then
                read_text_line(SELF, STREAM);
                exit when(SELF.end_of_file);
            end if;
            for pos in SELF.text_pos to SELF.text_end loop
                curr_char := SELF.text_line(pos);
                exit when (curr_char = '#');
                if (is_space(curr_char) = FALSE) then
                    SELF.text_pos := pos;
                    FOUND_CHAR    := curr_char;
                    FOUND         := TRUE;
                    END_STREAM    := FALSE;
                    return;
                end if;
            end loop;
            SELF.text_pos := SELF.text_end+1;
        end loop;
        FOUND_CHAR := nul;
        FOUND      := FALSE;
        END_STREAM := TRUE;
    end skip_space;
    -------------------------------------------------------------------------------
    --! @brief ストリームから空白を読み飛ばすサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * これは何もステータスを返さない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure skip_space(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT        
    ) is
        variable  char          :       character;  
        variable  found         :       boolean;    
        variable  stream_end    :       boolean;    
    begin
        skip_space(SELF, STREAM, char, found, stream_end);
    end skip_space;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --!        '...' または "..." のようなクォートされた文字列をみつけたら
    --!        その文字数(クォート文字含む)を返す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_quoted_string(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
        variable  quote_char    :       character;
    begin
        if (SELF.end_of_file  =  TRUE) or
           (SELF.text_line    =  null) or
           (START_POS > SELF.text_end) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := TRUE;
            return;
        end if;
        if    (START_POS+1 > SELF.text_end) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := FALSE;
            return;
        end if;
        if (SELF.text_line(START_POS) /= ''') and
           (SELF.text_line(START_POS) /= '"') then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := FALSE;
            return;
        end if;
        quote_char := SELF.text_line(START_POS);
        for pos in START_POS+1 to SELF.text_end loop
            if (SELF.text_line(pos) = quote_char) then
                FOUND     := TRUE;
                FOUND_LEN := pos - START_POS + 1;
                END_LINE  := FALSE;
                return;
            end if;
        end loop;
        FOUND     := FALSE;
        FOUND_LEN := 0;
        END_LINE  := FALSE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の位置から* スキャンを開始し、
    --!        '...' または "..." のようなクォートされた文字列をみつけたら
    --!        その文字数(クォート文字含む)を返す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_quoted_string(
        variable  SELF          : inout READER_TYPE;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        scan_quoted_string(SELF, SELF.text_pos, FOUND, FOUND_LEN, END_LINE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --!        ドキュメント開始を示すキーワード "---" 探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_doc_begin(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        if (SELF.end_of_file  =  TRUE) or
           (SELF.text_line    =  null) or
           (START_POS  /= SELF.text_line'low) or
           (START_POS+2 > SELF.text_end     ) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := TRUE;
            return;
        end if;
        if (SELF.text_line(START_POS  ) = '-') and
           (SELF.text_line(START_POS+1) = '-') and
           (SELF.text_line(START_POS+2) = '-') then
            FOUND     := TRUE;
            FOUND_LEN := 3;
            END_LINE  := TRUE;
        else
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := TRUE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の位置から* スキャンを開始し、
    --!        ドキュメント開始を示すキーワード "---" 探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_doc_begin(
        variable  SELF          : inout READER_TYPE;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        scan_doc_begin(SELF, SELF.text_pos, FOUND, FOUND_LEN, END_LINE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --!        ドキュメント開始を示すキーワード "..." 探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_doc_end(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        if (SELF.end_of_file  =  TRUE) or
           (SELF.text_line    =  null) or
           (START_POS  /= SELF.text_line'low) or
           (START_POS+2 > SELF.text_end     ) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := TRUE;
            return;
        end if;
        if (SELF.text_line(START_POS  ) = '.') and
           (SELF.text_line(START_POS+1) = '.') and
           (SELF.text_line(START_POS+2) = '.') then
            FOUND     := TRUE;
            FOUND_LEN := 3;
            END_LINE  := TRUE;
        else
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := TRUE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の地点から* スキャンを開始し、
    --!        ドキュメント終了を示すキーワード "..." 探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_doc_end(
        variable  SELF          : inout READER_TYPE;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        scan_doc_end(SELF, SELF.text_pos, FOUND, FOUND_LEN, END_LINE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --!        指定されたインジケーターを探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * インジケーターの後に空白または行末があることに注意.
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    INDICATOR   探すインジケーター.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_indicator(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  INDICATOR     : in    character;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
        variable  curr_state    :       STATE_TYPE;
    begin
        if    (SELF.end_of_file  =  TRUE) or
              (SELF.text_line    =  null) or
              (START_POS > SELF.text_end) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := TRUE;
        elsif (SELF.text_line(START_POS) /= INDICATOR) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := FALSE;
        elsif (START_POS+1 > SELF.text_end) then
            FOUND     := TRUE;
            FOUND_LEN := 1;
            END_LINE  := TRUE;
        elsif (is_space(SELF.text_line(START_POS+1))) then
            FOUND     := TRUE;
            FOUND_LEN := 2;
            END_LINE  := FALSE;
        elsif (INDICATOR = ':') then
            get_struct_state(SELF, curr_state);
            if (curr_state = STATE_FLOW_MAP_KEY or curr_state = STATE_FLOW_MAP_SEP) then
                FOUND     := TRUE;
                FOUND_LEN := 1;
                END_LINE  := FALSE;
            else
                FOUND     := FALSE;
                FOUND_LEN := 0;
                END_LINE  := FALSE;
            end if;
        else
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の位置から* スキャンを開始し、
    --!        指定されたインジケーターを探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * インジケーターの後に空白または行末があることに注意.
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    INDICATOR   探すインジケーター.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_indicator(
        variable  SELF          : inout READER_TYPE;
                  INDICATOR     : in    character;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        scan_indicator(SELF, SELF.text_pos, INDICATOR, FOUND, FOUND_LEN, END_LINE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --!        指定されたインジケーターを探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * インジケーターの後に空白または行末があることに注意.
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    INDICATOR   探すインジケーター.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_POS   見つかったインジケータの位置.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure find_indicator(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  INDICATOR     : in    character;
                  FOUND         : out   boolean;
                  FOUND_POS     : out   integer;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
        variable  pos           :       integer;
        variable  char_found    :       boolean;
        variable  space_len     :       integer;
        variable  sep_len       :       integer;
        variable  found_char    :       character;
        variable  end_of_line   :       boolean;
    begin
        pos := START_POS;
        scan_space    (SELF, pos, found_char, char_found, space_len, end_of_line);
        pos := pos + space_len;
        scan_indicator(SELF, pos, INDICATOR , char_found, sep_len  , end_of_line);
        if (char_found = FALSE) then
            FOUND     := FALSE;
            FOUND_POS := START_POS;
            FOUND_LEN := 0;
            END_LINE  := end_of_line;
        else
            FOUND     := TRUE;
            FOUND_POS := pos;
            FOUND_LEN := sep_len;
            END_LINE  := end_of_line;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    -- @brief テキストラインの *現在の位置から* スキャンを開始し、
    --        指定されたインジケーターを探す.
    -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --      * インジケーターの後に空白または行末があることに注意.
    --      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    -------------------------------------------------------------------------------
    -- 現時点では未使用のためコメントアウト
    ------------------------------------------------------------------------------
    -- procedure find_indicator(
    --     variable SELF       : inout READER_TYPE;   -- コンテキスト.
    --              INDICATOR  : in    character;     -- 探すインジケーター.
    --              FOUND      : out   boolean;       -- 見つかったことを示す.
    --              FOUND_POS  : out   integer;       -- 見つかったインジケータの場所.
    --              FOUND_LEN  : out   integer;       -- 見つかったインジケータの文字数.
    --              END_LINE   : out   boolean        -- ポインタが行末を越えたことを示す.
    -- ) is
    -- begin 
    --     find_indicator(SELF, SELF.text_pos, INDICATOR, FOUND, FOUND_POS, FOUND_LEN, END_LINE);
    -- end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --!        TAGを見つけてタグの文字列の位置と長さを返す.
    --!        その文字数(クォート文字含む)を返す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    TAG_POS     タグ文字列の開始位置.
    --! @param    TAG_LEN     タグ文字列の文字数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_tag_prop(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  TAG_POS       : out   integer;
                  TAG_LEN       : out   integer;
                  END_LINE      : out   boolean 
    ) is
        variable  quote_char    :       character;
    begin
        if (SELF.end_of_file  =  TRUE) or
           (SELF.text_line    =  null) or
           (START_POS > SELF.text_end) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            TAG_POS   := START_POS;
            TAG_LEN   := 0;
            END_LINE  := TRUE;
            return;
        end if;
        if (START_POS+1 > SELF.text_end) or
           (SELF.text_line(START_POS) /= '!') then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            TAG_POS   := START_POS;
            TAG_LEN   := 0;
            END_LINE  := FALSE;
            return;
        end if;
        if (SELF.text_line(START_POS+1) = '!') then
            FOUND     := TRUE;
            TAG_POS   := START_POS+2;
            for pos in START_POS+2 to SELF.text_end loop
                if (is_space(SELF.text_line(pos))) then
                    FOUND_LEN := pos - START_POS;
                    TAG_LEN   := pos - START_POS - 2;
                    END_LINE  := FALSE;
                    return;
                end if;
            end loop;
            FOUND_LEN := SELF.text_end - START_POS;
            TAG_LEN   := SELF.text_end - START_POS-2;
            END_LINE  := TRUE;
            return;
        end if;
        if (START_POS+4 > SELF.text_end) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            TAG_POS   := START_POS;
            TAG_LEN   := 0;
            END_LINE  := FALSE;
            return;
        end if;
        if (SELF.text_line(START_POS+1) = '<') and
           (SELF.text_line(START_POS+2) = '!') then
            TAG_POS   := START_POS+3;
            for pos in START_POS+3 to SELF.text_end loop
                if (SELF.text_line(pos) = '>') then
                    FOUND     := TRUE;
                    FOUND_LEN := pos - START_POS + 1;
                    TAG_LEN   := pos - START_POS + 1 - 4;
                    END_LINE  := FALSE;
                    return;
                end if;
            end loop;
        end if;
        FOUND     := FALSE;
        FOUND_LEN := 0;
        TAG_POS   := START_POS;
        TAG_LEN   := 0;
        END_LINE  := FALSE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の位置から* スキャンを開始し、
    --!        TAGを見つけてタグの文字列の位置と長さを返す.
    --!        その文字数(クォート文字含む)を返す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    TAG_POS     タグ文字列の開始位置.
    --! @param    TAG_LEN     タグ文字列の文字数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_tag_prop(
        variable  SELF          : inout READER_TYPE;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  TAG_POS       : out   integer;
                  TAG_LEN       : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        scan_tag_prop(SELF, SELF.text_pos, FOUND, FOUND_LEN, TAG_POS, TAG_LEN, END_LINE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置の次の位置* スキャンを開始し、
    --!        プレーンスカラー(plain scalar)を探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * 最初の位置のキャラクタは既にスキャン済みでスカラーであることが
    --!        確認されている事が前提.
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_plain_one_line(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
        variable  len           :       integer;
        variable  char          :       character;
        variable  curr_state    :       STATE_TYPE;
        variable  scan_found    :       boolean;
        variable  scan_pos      :       integer;
        variable  scan_len      :       integer;
    begin
        len      := 1;
        END_LINE := FALSE;
        get_struct_state(SELF, curr_state);
        for pos in START_POS+1 to SELF.text_end loop
            char := SELF.text_line(pos);
            case char is
                when NUL|SOH|STX|ETX|EOT|ENQ|ACK|BEL|
                     BS |HT |LF |VT |FF |CR |SO |SI |
                     DLE|DC1|DC2|DC3|DC4|NAK|SYN|ETB|
                     CAN|EM |SUB|ESC|FSP|GSP|RSP|USP|DEL =>
                    exit;
                when '['|']'|'{'|'}'|',' =>
                    if (curr_state = STATE_FLOW_MAP_KEY) or
                       (curr_state = STATE_FLOW_MAP_VAL) or
                       (curr_state = STATE_FLOW_MAP_SEP) or
                       (curr_state = STATE_FLOW_MAP_END) or
                       (curr_state = STATE_FLOW_SEQ_VAL) or
                       (curr_state = STATE_FLOW_SEQ_END) then
                        for prev_pos in pos-1 downto START_POS loop
                            exit when (SELF.text_line(prev_pos) /= ' ');
                            len := len - 1;
                        end loop;
                        exit;
                    end if;
                when ':'=>
                    find_indicator(SELF, pos, ':', scan_found, scan_pos, scan_len, END_LINE);
                    if (scan_found) then
                        for prev_pos in pos-1 downto START_POS loop
                            exit when (SELF.text_line(prev_pos) /= ' ');
                            len := len - 1;
                        end loop;
                        exit;
                    end if;
                when '#' =>
                    if (SELF.text_line(pos-1) = ' ') then
                        for prev_pos in pos-1 downto START_POS loop
                            exit when (SELF.text_line(prev_pos) /= ' ');
                            len := len - 1;
                        end loop;
                        exit;
                    end if;
                when others => null;
            end case;
            len := len + 1;
        end loop;
        FOUND     := TRUE;
        FOUND_LEN := len;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の位置の次の位置* スキャンを開始し、
    --!        プレーンスカラー(plain scalar)を探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * 最初の位置のキャラクタは既にスキャン済みでスカラーであることが
    --!        確認されている事が前提.
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_plain_one_line(
        variable  SELF          : inout READER_TYPE;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        scan_plain_one_line(SELF, SELF.text_pos, FOUND, FOUND_LEN, END_LINE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!        プレーンスカラー(plain scalar)を探す.
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_plain_scalar(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
        variable  len           :       integer;
        variable  char          :       character;
        variable  found_key     :       boolean;
    begin
        if (SELF.end_of_file  =  TRUE) or
           (SELF.text_line    =  null) or
           (START_POS > SELF.text_end) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := TRUE;
            return;
        end if;
        char := SELF.text_line(START_POS);
        case char is
            when NUL|SOH|STX|ETX|EOT|ENQ|ACK|BEL|
                 BS |HT |LF |VT |FF |CR |SO |SI |
                 DLE|DC1|DC2|DC3|DC4|NAK|SYN|ETB|
                 CAN|EM |SUB|ESC|FSP|GSP|RSP|USP|
                 DEL|'.'|','|'['|']'|'{'|'}'|'#'|
                 '&'|'*'|'!'|'|'|'>'|'%'|'@'|'`'=>
                FOUND     := FALSE;
                FOUND_LEN := 0;
                END_LINE  := FALSE;
            when '-' | ':' | '?' =>
                scan_indicator(SELF, START_POS, char, found_key, len, END_LINE);
                if (found_key) then
                    FOUND     := FALSE;
                    FOUND_LEN := 0;
                    END_LINE  := FALSE;
                else
                    scan_plain_one_line(SELF, START_POS, FOUND, FOUND_LEN, END_LINE);
                end if;
            when '"' | ''' =>
                scan_quoted_string(SELF, START_POS, found_key, len, END_LINE);
                if (found_key) then
                    FOUND     := TRUE;
                    FOUND_LEN := len;
                    END_LINE  := FALSE;
                else
                    FOUND     := TRUE;
                    FOUND_LEN := SELF.text_end - START_POS;
                    END_LINE  := TRUE;
                end if;
            when others =>
                scan_plain_one_line(SELF, START_POS, FOUND, FOUND_LEN, END_LINE);
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の地点から* スキャンを開始し、スカラーを探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_plain_scalar(
        variable  SELF          : inout READER_TYPE;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean 
    ) is
    begin
        scan_plain_scalar(SELF, SELF.text_pos, FOUND, FOUND_LEN, END_LINE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインからプレーンスカラー(plain scalar)を読んでバッファに
    --!        格納するサブプログラム
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STR         見つかったワードを格納するバッファ.
    --! @param    STR_LEN     格納したワードの文字数.
    --! @param    READ_LEN    見つかったワードの文字数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure read_plain_scalar(
        variable  SELF          : inout READER_TYPE;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  END_LINE      : out   boolean 
    ) is
        alias     str_buf       :       string(1 to STR'length) is STR;
        variable  pos           :       integer;
        variable  scalar_len    :       integer;
        variable  found         :       boolean;
        variable  end_of_line   :       boolean;
    begin
        scan_plain_scalar(SELF, found, scalar_len, end_of_line);
        if (found = TRUE) then
            pos  := SELF.text_pos;
            if (scalar_len <= STR'length) then
                str_buf := (others => ' ');
                str_buf(1 to scalar_len) := SELF.text_line(pos to pos + scalar_len-1);
                STR_LEN := scalar_len;
            else
                str_buf(1 to STR'length) := SELF.text_line(pos to pos + STR'length-1);
                STR_LEN := STR'length;
            end if;
            SELF.text_pos := SELF.text_pos + scalar_len;
            READ_LEN := scalar_len;
            END_LINE := FALSE;
        else
            STR_LEN  := 0;
            READ_LEN := 0;
            END_LINE := end_of_line;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからクォートされた文字列を取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STR         見つかったワードを格納するバッファ.
    --! @param    STR_LEN     格納したワードの文字数.
    --! @param    READ_LEN    見つかったワードの文字数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure read_quoted_string(
        variable  SELF          : inout READER_TYPE;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  END_LINE      : out   boolean 
    ) is
        alias     str_buf       :       string(1 to STR'length) is STR;
        variable  pos           :       integer;
        variable  string_len    :       integer;
        variable  quoted_len    :       integer;
        variable  found         :       boolean;
        variable  end_of_line   :       boolean;
    begin
        scan_quoted_string(SELF, found, quoted_len, end_of_line);
        if (found = TRUE and end_of_line = FALSE) then
            pos  := SELF.text_pos + 1;
            string_len := quoted_len-2;
            if (string_len <= STR'length) then
                str_buf := (others => ' ');
                str_buf(1 to string_len) := SELF.text_line(pos to pos + string_len-1);
                STR_LEN := string_len;
            else
                str_buf(1 to STR'length) := SELF.text_line(pos to pos + STR'length-1);
                STR_LEN := STR'length;
            end if;
            SELF.text_pos := SELF.text_pos + quoted_len;
            READ_LEN := quoted_len;
            END_LINE := FALSE;
        else
            STR_LEN  := 0;
            READ_LEN := 0;
            END_LINE := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの現在のポインタが示しているトークンを得るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    TOKEN       見つかったトークンのタイプ.
    --! @param    TOKEN_POS   見つかったトークンの位置.
    --! @param    TOKEN_LEN   見つかったトークンの文字数.
    -------------------------------------------------------------------------------
    procedure scan_token(
        variable  SELF          : inout READER_TYPE;
                  TOKEN         : out   TOKEN_TYPE;
                  TOKEN_POS     : out   integer;
                  TOKEN_LEN     : out   integer
    ) is
        variable  char          :       character;
        variable  found         :       boolean;
        variable  found_len     :       integer;
        variable  line_end      :       boolean;
    begin
        ---------------------------------------------------------------------------
        -- 現在のポインタにあるキャラクタをcharにセットする.
        ---------------------------------------------------------------------------
        scan_char(SELF, char, found);
        ---------------------------------------------------------------------------
        -- 現在のポインタの位置を変数 TOKEN_POS にセットする.
        ---------------------------------------------------------------------------
        TOKEN_POS := SELF.text_pos;
        ---------------------------------------------------------------------------
        -- ファイルの終端の場合はTOKEN_STREAM_ENDをセットする.
        ---------------------------------------------------------------------------
        if (SELF.end_of_file) then
            TOKEN_LEN := 0;
            TOKEN     := TOKEN_STREAM_END;
            return;
        end if;
        ---------------------------------------------------------------------------
        -- キャラクタを調べる.
        ---------------------------------------------------------------------------
        case char is
            -----------------------------------------------------------------------
            -- 最初の文字が制御文字(プリントできない文字)だった場合.
            -----------------------------------------------------------------------
            when NUL|SOH|STX|ETX|EOT|ENQ|ACK|BEL|
                 BS |HT |LF |VT |FF |CR |SO |SI |
                 DLE|DC1|DC2|DC3|DC4|NAK|SYN|ETB|
                 CAN|EM |SUB|ESC|FSP|GSP|RSP|USP|DEL =>
                TOKEN_LEN := 0; TOKEN := TOKEN_ERROR;
            -----------------------------------------------------------------------
            -- 最初の文字が'-'で始まっているならば、'---'か'-'をチェックする.
            -----------------------------------------------------------------------
            when '-'    =>
                scan_doc_begin(SELF, found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN     := TOKEN_DOCUMENT_BEGIN;
                    TOKEN_LEN := found_len;
                    return;
                end if;
                scan_indicator(SELF, '-', found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN     := TOKEN_SEQ_ENTRY;
                    TOKEN_LEN := found_len;
                    return;
                end if;
                scan_plain_one_line(SELF, found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN     := TOKEN_SCALAR;
                    TOKEN_LEN := found_len;
                    return;
                else
                    TOKEN     := TOKEN_ERROR;
                    TOKEN_LEN := 0;
                    return;
                end if;
            -----------------------------------------------------------------------
            -- 最初の文字が'?'で始まっているならば、'? 'をチェックする.
            -----------------------------------------------------------------------
            when '?'    =>
                scan_indicator(SELF, '?', found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN     := TOKEN_MAP_EXPLICIT_KEY;
                    TOKEN_LEN := found_len;
                    return;
                end if;
                scan_plain_one_line(SELF, found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN     := TOKEN_SCALAR;
                    TOKEN_LEN := found_len;
                    return;
                else
                    TOKEN     := TOKEN_ERROR;
                    TOKEN_LEN := 0;
                    return;
                end if;
            -----------------------------------------------------------------------
            -- 最初の文字が':'で始まっているならば、': 'をチェックする.
            -----------------------------------------------------------------------
            when ':'    =>
                scan_indicator(SELF, ':', found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN  := TOKEN_MAP_SEPARATOR;
                    TOKEN_LEN := found_len;
                    return;
                end if;
                scan_plain_one_line(SELF, found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN     := TOKEN_SCALAR;
                    TOKEN_LEN := found_len;
                    return;
                else
                    TOKEN     := TOKEN_ERROR;
                    TOKEN_LEN := 0;
                    return;
                end if;
            -----------------------------------------------------------------------
            -- 最初の文字が'.'で始まっているならば、'...'をチェックする.
            -----------------------------------------------------------------------
            when '.'    => 
                scan_doc_end(SELF, found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN  := TOKEN_DOCUMENT_END;
                    TOKEN_LEN := found_len;
                    return;
                end if;
                scan_plain_scalar(SELF, found, found_len, line_end);
                if (found = TRUE) then
                    TOKEN  := TOKEN_SCALAR;
                    TOKEN_LEN := found_len;
                    return;
                else
                    TOKEN  := TOKEN_ERROR;
                    TOKEN_LEN := 0;
                    return;
                end if;
            -----------------------------------------------------------------------
            -- それ以外のインジケーター候補の場合...
            -----------------------------------------------------------------------
            when ','    => TOKEN_LEN := 1; TOKEN := TOKEN_FLOW_ENTRY;
            when '['    => TOKEN_LEN := 1; TOKEN := TOKEN_FLOW_SEQ_BEGIN;
            when ']'    => TOKEN_LEN := 1; TOKEN := TOKEN_FLOW_SEQ_END;
            when '{'    => TOKEN_LEN := 1; TOKEN := TOKEN_FLOW_MAP_BEGIN;
            when '}'    => TOKEN_LEN := 1; TOKEN := TOKEN_FLOW_MAP_END;
            when '#'    => TOKEN_LEN := 0; TOKEN := TOKEN_ERROR;
            when '&'    => TOKEN_LEN := 1; TOKEN := TOKEN_ANCHOR_PROPERTY;
            when '*'    => TOKEN_LEN := 1; TOKEN := TOKEN_ALIAS_NODE;
            when '!'    => TOKEN_LEN := 1; TOKEN := TOKEN_TAG_PROPERTY;
            when '|'    => TOKEN_LEN := 1; TOKEN := TOKEN_LITERAL;
            when '>'    => TOKEN_LEN := 1; TOKEN := TOKEN_FOLDED;
            when '''    => TOKEN_LEN := 1; TOKEN := TOKEN_SINGLE_QUOTE;
            when '"'    => TOKEN_LEN := 1; TOKEN := TOKEN_DOUBLE_QUOTE;
            when '%'    => TOKEN_LEN := 1; TOKEN := TOKEN_DIRECTIVE;
            when '@'    => TOKEN_LEN := 0; TOKEN := TOKEN_ERROR;
            when '`'    => TOKEN_LEN := 0; TOKEN := TOKEN_ERROR;
            -----------------------------------------------------------------------
            -- それ以外の文字だった場合...
            -----------------------------------------------------------------------
            when others =>
                scan_plain_one_line(SELF, found, found_len, line_end);
                TOKEN_LEN := found_len;
                TOKEN     := TOKEN_SCALAR;
        end case;
    end scan_token;
    -------------------------------------------------------------------------------
    --! @brief テキストラインから指定したトークンを読み飛ばすサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    TOKEN       読み飛ばすトークン.
    --! @param    POS         トークンの位置.
    --! @param    LEN         トークンの文字数.
    -------------------------------------------------------------------------------
    procedure skip_token(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  TOKEN         : in    TOKEN_TYPE;
                  POS           : in    integer;
                  LEN           : in    integer
    ) is
    begin
        SELF.text_pos := POS + LEN;
    end skip_token;
    -------------------------------------------------------------------------------
    --! @brief リーダーの状態を保持する構造体の初期化用定数を生成する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NAME        リーダーの識別名.
    --! @param    STREAM_NAME シナリオファイルの名前を指定する.
    --! @return               生成した定数.
    -------------------------------------------------------------------------------
    function  NEW_READER(NAME: string;STREAM_NAME: string) return READER_TYPE is
        variable self    : READER_TYPE;
    begin
        WRITE(self.name       , NAME       );
        WRITE(self.stream_name, STREAM_NAME);
        self.text_line   := null;
        self.text_pos    := 0;
        self.text_end    := 0;
        self.line_num    := 0;
        self.end_of_file := FALSE;
        self.debug_mode  := 0;
        init_struct_state(self);
        return self;
    end function;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *指定された位置から* スキャンを開始し、
    --!        行内に完結したフローコレクション('['...']' or '{'...'}')があるかを探す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * このサブプログラムは、行内に暗黙のマップキーがあるかどうかを調べる
    --!        ために使われる.
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    START_POS   スキャンを開始する位置.
    --! @param    END_CHAR    閉じ括弧を指定する.
    --! @param    FOUND       見つかったことを示す.
    --! @param    FOUND_LEN   見つかった空白の数.
    --! @param    END_LINE    ポインタが行末を越えたことを示す.
    -------------------------------------------------------------------------------
    procedure scan_flow_collection(
        variable  SELF          : inout READER_TYPE;
                  START_POS     : in    integer;
                  END_CHAR      : in    character;
                  FOUND         : out   boolean;
                  FOUND_LEN     : out   integer;
                  END_LINE      : out   boolean
    ) is
        variable  pos           :       integer;
        variable  scan_found    :       boolean;
        variable  scan_len      :       integer;
        variable  end_of_line   :       boolean;
    begin
        if (START_POS > SELF.text_end) then
            FOUND     := FALSE;
            FOUND_LEN := 0;
            END_LINE  := TRUE;
            return;
        end if;
        pos := START_POS;
        end_of_line := FALSE;
        while (end_of_line = FALSE) loop
            if    (SELF.text_line(pos) = END_CHAR) then
                FOUND     := TRUE;
                FOUND_LEN := pos - START_POS + 1;
                END_LINE  := FALSE;
               return;
            elsif (SELF.text_line(pos) = '[') then
                scan_flow_collection(SELF, pos+1, ']', scan_found, scan_len, end_of_line);
                if (scan_found) then
                    pos := pos + scan_len+1;
                    next;
                end if;
            elsif (SELF.text_line(pos) = '{') then
                scan_flow_collection(SELF, pos+1, '}', scan_found, scan_len, end_of_line);
                if (scan_found) then
                    pos := pos + scan_len+1;
                    next;
                end if;
            elsif (SELF.text_line(pos) = ''') or
                  (SELF.text_line(pos) = '"') then
                scan_quoted_string(SELF, pos, scan_found, scan_len, end_of_line);
                if (scan_found) then
                    pos := pos + scan_len;
                end if;
            elsif (SELF.text_line(pos) = '#') then
                exit;
            elsif (pos >= SELF.text_end) then
                end_of_line := TRUE;
            else
                pos := pos + 1;
            end if;
        end loop;
        FOUND     := FALSE;
        FOUND_LEN := 0;
        END_LINE  := TRUE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief テキストラインの *現在の位置から* スキャンを開始し、
    --!        行内に暗黙のマップキーがあるか調べる.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * テキストラインをスキャンするだけで、ポインタを更新したり、新たに
    --!        ストリームからテキストラインを読み込む等のコンテキストの変更は行わない.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    FOUND       暗黙のマップキーが見つかったことを示す.
    -------------------------------------------------------------------------------
    procedure scan_block_map_implicit_key(
        variable  SELF          : inout READER_TYPE;
                  FOUND         : out   boolean
    ) is
        variable  pos           :       integer;
        variable  len           :       integer;
        variable  scan_found    :       boolean;
        variable  line_end      :       boolean;
        variable  map_key       :       MAPKEY_MODE;
    begin
        get_map_key_mode(SELF, map_key);
        case map_key is
            when MAPKEY_NULL =>
                pos := SELF.text_pos;
                case SELF.text_line(pos) is
                    when '[' =>
                        scan_flow_collection(SELF, pos+1, ']', scan_found, len, line_end);
                        pos := pos + len+1;
                    when '{' =>
                        scan_flow_collection(SELF, pos+1, '}', scan_found, len, line_end);
                        pos := pos + len+1;
                    when others =>
                        scan_plain_scalar(SELF, pos, scan_found, len, line_end);
                        pos := pos + len;
                end case;
                if (scan_found) then
                    find_indicator(SELF, pos, ':', scan_found, pos, len, line_end);
                    if (scan_found) then
                        FOUND := TRUE;
                        set_map_key_mode(SELF, MAPKEY_FOUND);
                    else
                        FOUND := FALSE;
                    end if;
                else
                        FOUND := FALSE;
                end if;
            when MAPKEY_FOUND =>
                FOUND := TRUE;
            when others =>
                FOUND := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 次に読み取ることのできるイベントをスキャンするサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    NEXT_EVENT  見つかったイベント.
    -------------------------------------------------------------------------------
    procedure SEEK_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  NEXT_EVENT    : out   EVENT_TYPE
    ) is
        variable  curr_state    :       STATE_TYPE;
        variable  curr_indent   :       INDENT_TYPE;
        variable  indent        :       INDENT_TYPE;
        variable  token         :       TOKEN_TYPE;
        variable  pos           :       integer;
        variable  len           :       integer;
        variable  found         :       boolean;
    begin
        ---------------------------------------------------------------------------
        -- まずは空白を読み飛ばす.
        ---------------------------------------------------------------------------
        skip_space(SELF, STREAM);
        ---------------------------------------------------------------------------
        -- テキストラインからイベント情報を得る.
        ---------------------------------------------------------------------------
        scan_token(SELF, token, pos, len);
        indent := SELF.text_pos;
        ---------------------------------------------------------------------------
        -- 現在の状態により分岐.
        ---------------------------------------------------------------------------
        get_struct_state(SELF, curr_state, curr_indent);
        case curr_state is
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_NONE  =>
                case token is
                    when TOKEN_DIRECTIVE        => NEXT_EVENT := EVENT_DIRECTIVE;
                    when TOKEN_DOCUMENT_BEGIN   => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_SEQ_ENTRY        => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_FLOW_SEQ_BEGIN   => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_FLOW_MAP_BEGIN   => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_MAP_EXPLICIT_KEY => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_SCALAR           => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_LITERAL          => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_FOLDED           => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_SINGLE_QUOTE     => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_DOUBLE_QUOTE     => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_TAG_PROPERTY     => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_ANCHOR_PROPERTY  => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_ALIAS_NODE       => NEXT_EVENT := EVENT_DOC_BEGIN;
                    when TOKEN_STREAM_END       => NEXT_EVENT := EVENT_STREAM_END;
                    when others                 => NEXT_EVENT := EVENT_ERROR;
                end case;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_DOCUMENT =>
                case token is
                    when TOKEN_DOCUMENT_BEGIN   => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_DOCUMENT_END     => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_STREAM_END       => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_SEQ_ENTRY        => NEXT_EVENT := EVENT_SEQ_BEGIN;
                    when TOKEN_FLOW_SEQ_BEGIN   => NEXT_EVENT := EVENT_SEQ_BEGIN;
                    when TOKEN_FLOW_MAP_BEGIN   => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_MAP_EXPLICIT_KEY => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_SCALAR           => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_LITERAL          => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_FOLDED           => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_SINGLE_QUOTE     => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_DOUBLE_QUOTE     => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_TAG_PROPERTY     => NEXT_EVENT := EVENT_TAG_PROP;
                    when TOKEN_ANCHOR_PROPERTY  => NEXT_EVENT := EVENT_ANCHOR;
                    when TOKEN_ALIAS_NODE       => NEXT_EVENT := EVENT_ALIAS;
                    when others                 => NEXT_EVENT := EVENT_ERROR;
                end case;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_FLOW_MAP_KEY           |
                 STATE_BLOCK_MAP_IMPLICIT_KEY |
                 STATE_BLOCK_MAP_EXPLICIT_KEY =>
                case token is
                    when TOKEN_DOCUMENT_BEGIN   => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_DOCUMENT_END     => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_STREAM_END       => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_SEQ_ENTRY        => NEXT_EVENT := EVENT_SEQ_BEGIN;
                    when TOKEN_FLOW_SEQ_BEGIN   => NEXT_EVENT := EVENT_SEQ_BEGIN;
                    when TOKEN_FLOW_MAP_BEGIN   => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_MAP_EXPLICIT_KEY => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_SCALAR           => NEXT_EVENT := EVENT_SCALAR;
                    when TOKEN_DOUBLE_QUOTE     => NEXT_EVENT := EVENT_SCALAR;
                    when TOKEN_SINGLE_QUOTE     => NEXT_EVENT := EVENT_SCALAR;
                    when TOKEN_LITERAL          => NEXT_EVENT := EVENT_SCALAR;
                    when TOKEN_FOLDED           => NEXT_EVENT := EVENT_SCALAR;
                    when TOKEN_TAG_PROPERTY     => NEXT_EVENT := EVENT_TAG_PROP;
                    when TOKEN_ANCHOR_PROPERTY  => NEXT_EVENT := EVENT_ANCHOR;
                    when TOKEN_ALIAS_NODE       => NEXT_EVENT := EVENT_ALIAS;
                    when others                 => NEXT_EVENT := EVENT_ERROR;
                end case;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_BLOCK_SEQ_VAL          |
                 STATE_FLOW_SEQ_VAL           |
                 STATE_FLOW_MAP_VAL           |
                 STATE_BLOCK_MAP_IMPLICIT_VAL |
                 STATE_BLOCK_MAP_EXPLICIT_VAL =>
                case token is
                    when TOKEN_DOCUMENT_BEGIN   => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_DOCUMENT_END     => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_STREAM_END       => NEXT_EVENT := EVENT_DOC_END;
                    when TOKEN_SEQ_ENTRY        => NEXT_EVENT := EVENT_SEQ_BEGIN;
                    when TOKEN_MAP_EXPLICIT_KEY => NEXT_EVENT := EVENT_MAP_BEGIN;
                    when TOKEN_TAG_PROPERTY     => NEXT_EVENT := EVENT_TAG_PROP;
                    when TOKEN_ANCHOR_PROPERTY  => NEXT_EVENT := EVENT_ANCHOR;
                    when TOKEN_ALIAS_NODE       => NEXT_EVENT := EVENT_ALIAS;
                    when TOKEN_FLOW_SEQ_BEGIN   =>
                        scan_block_map_implicit_key(SELF, found);
                        if (found) then
                            NEXT_EVENT := EVENT_MAP_BEGIN;
                        else
                            NEXT_EVENT := EVENT_SEQ_BEGIN;
                        end if;
                    when TOKEN_FLOW_MAP_BEGIN   =>
                        scan_block_map_implicit_key(SELF, found);
                        if (found) then
                            NEXT_EVENT := EVENT_MAP_BEGIN;
                        else
                            NEXT_EVENT := EVENT_MAP_BEGIN;
                        end if;
                    when TOKEN_SCALAR           |
                         TOKEN_DOUBLE_QUOTE     |
                         TOKEN_SINGLE_QUOTE     =>
                        scan_block_map_implicit_key(SELF, found);
                        if (found) then
                            NEXT_EVENT := EVENT_MAP_BEGIN;
                        else
                            NEXT_EVENT := EVENT_SCALAR;
                        end if;
                    when TOKEN_LITERAL        => NEXT_EVENT := EVENT_SCALAR;
                    when TOKEN_FOLDED         => NEXT_EVENT := EVENT_SCALAR;
                    when others               => NEXT_EVENT := EVENT_ERROR;
                end case;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_BLOCK_SEQ_END =>
                case token is
                    when TOKEN_DOCUMENT_BEGIN => NEXT_EVENT := EVENT_SEQ_END;
                    when TOKEN_DOCUMENT_END   => NEXT_EVENT := EVENT_SEQ_END;
                    when TOKEN_STREAM_END     => NEXT_EVENT := EVENT_SEQ_END;
                    when TOKEN_SEQ_ENTRY      =>
                        if    (indent < curr_indent) then
                            NEXT_EVENT := EVENT_SEQ_END;
                        elsif (indent = curr_indent) then
                            NEXT_EVENT := EVENT_SEQ_NEXT;
                        else
                            NEXT_EVENT := EVENT_ERROR;
                        end if;
                    when others               =>
                        if    (indent < curr_indent) then
                            NEXT_EVENT := EVENT_SEQ_END;
                        else
                            NEXT_EVENT := EVENT_ERROR;
                        end if;
                end case;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_FLOW_SEQ_END =>
                case token is
                    when TOKEN_FLOW_ENTRY     => NEXT_EVENT := EVENT_SEQ_NEXT;
                    when TOKEN_FLOW_SEQ_END   => NEXT_EVENT := EVENT_SEQ_END;
                    when others               => NEXT_EVENT := EVENT_ERROR;
                end case;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_FLOW_MAP_SEP           |
                 STATE_BLOCK_MAP_IMPLICIT_SEP =>
                if (token = TOKEN_MAP_SEPARATOR) then
                    NEXT_EVENT := EVENT_MAP_SEP;
                else
                    NEXT_EVENT := EVENT_ERROR;
                end if;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_BLOCK_MAP_EXPLICIT_SEP =>
                if (token = TOKEN_MAP_SEPARATOR) and
                   (indent = curr_indent      ) then
                    NEXT_EVENT := EVENT_MAP_SEP;
                else
                    NEXT_EVENT := EVENT_ERROR;
                end if;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_BLOCK_MAP_IMPLICIT_END |
                 STATE_BLOCK_MAP_EXPLICIT_END =>
                case token is
                    when TOKEN_DOCUMENT_BEGIN => NEXT_EVENT := EVENT_MAP_END;
                    when TOKEN_DOCUMENT_END   => NEXT_EVENT := EVENT_MAP_END;
                    when TOKEN_STREAM_END     => NEXT_EVENT := EVENT_MAP_END;
                    when others               => 
                        if    (indent < curr_indent) then
                            NEXT_EVENT := EVENT_MAP_END;
                        elsif (indent = curr_indent) then
                            NEXT_EVENT := EVENT_MAP_NEXT;
                        else
                            NEXT_EVENT := EVENT_ERROR;
                        end if;
                end case;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when STATE_FLOW_MAP_END =>
                case token is
                    when TOKEN_FLOW_ENTRY       => NEXT_EVENT := EVENT_MAP_NEXT;
                    when TOKEN_FLOW_MAP_END     => NEXT_EVENT := EVENT_MAP_END;
                    when others                 => NEXT_EVENT := EVENT_ERROR;
                end case;
            -----------------------------------------------------------------------
            -- 
            -----------------------------------------------------------------------
            when others                         => NEXT_EVENT := EVENT_ERROR;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_DOC_BEGINを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_doc_begin(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean 
    ) is
        variable  curr_state    :       STATE_TYPE;
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
    begin
        get_struct_state(SELF, curr_state);
        case curr_state is
            when STATE_NONE  =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_DOCUMENT_BEGIN) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                end if;
                set_struct_state(SELF, STATE_DOCUMENT, 0);
                LEN  := token_len;
                GOOD := TRUE;
            when others =>
                LEN  := 0;
                GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_DOC_ENDを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_doc_end(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  curr_state    :       STATE_TYPE;
        variable  token         :       TOKEN_TYPE; 
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
        variable  stack_good    :       boolean;
    begin
        get_struct_state(SELF, curr_state);
        case curr_state is
            when STATE_DOCUMENT  =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_DOCUMENT_END) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    while(SELF.end_of_file = FALSE) loop
                        read_text_line(SELF, STREAM);
                        scan_token(SELF, token, token_pos, token_len);
                        if (token = TOKEN_DIRECTIVE     ) or
                           (token = TOKEN_DOCUMENT_BEGIN) then
                            exit;
                        end if;
                    end loop;
                end if;
                set_struct_state(SELF, STATE_NONE, 0);
                LEN  := token_len;
                GOOD := TRUE;
            when others =>
                LEN  := 0;
                GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SEQ_BEGINを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_seq_begin(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
        variable  curr_state    :       STATE_TYPE;
        variable  next_state    :       STATE_TYPE;
        variable  next_indent   :       INDENT_TYPE;
        variable  new_indent    :       INDENT_TYPE;
    begin
        get_struct_state(SELF, curr_state, next_indent);
        case curr_state is
            when STATE_DOCUMENT               => next_state := STATE_DOCUMENT;
            when STATE_FLOW_SEQ_VAL           => next_state := STATE_FLOW_SEQ_END ;
            when STATE_FLOW_MAP_KEY           => next_state := STATE_FLOW_MAP_SEP ;
            when STATE_FLOW_MAP_VAL           => next_state := STATE_FLOW_MAP_END ;
            when STATE_BLOCK_SEQ_VAL          => next_state := STATE_BLOCK_SEQ_END;
            when STATE_BLOCK_MAP_IMPLICIT_KEY => next_state := STATE_BLOCK_MAP_IMPLICIT_SEP;
            when STATE_BLOCK_MAP_IMPLICIT_VAL => next_state := STATE_BLOCK_MAP_IMPLICIT_END;
            when STATE_BLOCK_MAP_EXPLICIT_KEY => next_state := STATE_BLOCK_MAP_EXPLICIT_SEP;
            when STATE_BLOCK_MAP_EXPLICIT_VAL => next_state := STATE_BLOCK_MAP_EXPLICIT_END;
            when others                       => GOOD := FALSE;
                                                 return;
        end case;
        scan_token(SELF, token, token_pos, token_len);
        new_indent := SELF.text_pos;
        case token is
            when TOKEN_SEQ_ENTRY =>
                skip_token(SELF, STREAM, token, token_pos, token_len);
                set_struct_state(SELF, next_state);
                call_struct_state(
                    SELF       => SELF,
                    RET_STATE  => next_state,
                    RET_INDENT => next_indent,
                    NEW_STATE  => STATE_BLOCK_SEQ_VAL,
                    NEW_INDENT => new_indent,
                    GOOD       => GOOD
                );
                LEN := token_len;
            when TOKEN_FLOW_SEQ_BEGIN => 
                skip_token(SELF, STREAM, token, token_pos, token_len);
                set_struct_state(SELF, next_state);
                call_struct_state(
                    SELF    => SELF,
                    RET_STATE  => next_state,
                    RET_INDENT => next_indent,
                    NEW_STATE  => STATE_FLOW_SEQ_VAL,
                    NEW_INDENT => new_indent,
                    GOOD       => GOOD
                );
                LEN := token_len;
            when others =>
                LEN  := 0;
                GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief コンテキストからEVENT_SEQ_ENDを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_seq_end(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  curr_state    :       STATE_TYPE;
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
    begin
        get_struct_state(SELF, curr_state);
        case curr_state is
            when STATE_BLOCK_SEQ_END =>
                LEN := 0;
                return_struct_state(SELF, GOOD);
            when STATE_FLOW_SEQ_END  =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_FLOW_SEQ_END) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    return_struct_state(SELF, GOOD);
                    LEN  := token_len;
                else
                    LEN  := 0;
                    GOOD := FALSE;
                end if;
            when others =>
                    LEN  := 0;
                    GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SEQ_NEXTを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_seq_next(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean 
    ) is
        variable  curr_state    :       STATE_TYPE;
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
        variable  stack_good    :       boolean;
    begin
        get_struct_state(SELF, curr_state);
        case curr_state is
            when STATE_BLOCK_SEQ_END => 
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_SEQ_ENTRY) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    set_struct_state(SELF, STATE_BLOCK_SEQ_VAL);
                    LEN  := token_len;
                    GOOD := TRUE;
                else
                    LEN  := 0;
                    GOOD := FALSE;
                end if;
            when STATE_FLOW_SEQ_END  =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_FLOW_ENTRY) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    set_struct_state(SELF, STATE_FLOW_SEQ_VAL);
                    LEN  := token_len;
                    GOOD := TRUE;
                else
                    LEN  := 0;
                    GOOD := FALSE;
                end if;
            when others =>
                    LEN  := 0;
                    GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_MAP_BEGINを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_map_begin(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
        variable  found         :       boolean;
        variable  curr_state    :       STATE_TYPE;
        variable  ret_state     :       STATE_TYPE;
        variable  ret_indent    :       INDENT_TYPE;
        variable  new_indent    :       INDENT_TYPE;
    begin
        get_struct_state(SELF, curr_state, ret_indent);
        case curr_state is
            when STATE_DOCUMENT               => ret_state := STATE_DOCUMENT;
            when STATE_FLOW_SEQ_VAL           => ret_state := STATE_FLOW_SEQ_END ;
            when STATE_FLOW_MAP_KEY           => ret_state := STATE_FLOW_MAP_SEP ;
            when STATE_FLOW_MAP_VAL           => ret_state := STATE_FLOW_MAP_END ;
            when STATE_BLOCK_SEQ_VAL          => ret_state := STATE_BLOCK_SEQ_END;
            when STATE_BLOCK_MAP_IMPLICIT_KEY => ret_state := STATE_BLOCK_MAP_IMPLICIT_SEP;
            when STATE_BLOCK_MAP_IMPLICIT_VAL => ret_state := STATE_BLOCK_MAP_IMPLICIT_END;
            when STATE_BLOCK_MAP_EXPLICIT_KEY => ret_state := STATE_BLOCK_MAP_EXPLICIT_SEP;
            when STATE_BLOCK_MAP_EXPLICIT_VAL => ret_state := STATE_BLOCK_MAP_EXPLICIT_END;
            when others                       => GOOD := FALSE;
                                                 return;
        end case;
        new_indent := SELF.text_pos;
        scan_token(SELF, token, token_pos, token_len);
        case token is
            when TOKEN_SCALAR          |
                 TOKEN_LITERAL         |
                 TOKEN_FOLDED          |
                 TOKEN_DOUBLE_QUOTE    |
                 TOKEN_SINGLE_QUOTE    |
                 TOKEN_FLOW_SEQ_BEGIN  =>
                call_struct_state(
                    SELF       => SELF,
                    RET_STATE  => ret_state,
                    RET_INDENT => ret_indent,
                    RET_MAPKEY => MAPKEY_NULL,
                    NEW_STATE  => STATE_BLOCK_MAP_IMPLICIT_KEY,
                    NEW_INDENT => new_indent,
                    NEW_MAPKEY => MAPKEY_READ,
                    GOOD       => GOOD
                );
                LEN := 0;
            when TOKEN_MAP_EXPLICIT_KEY =>
                skip_token(SELF, STREAM, token, token_pos, token_len);
                call_struct_state(
                    SELF       => SELF,
                    RET_STATE  => ret_state,
                    RET_INDENT => ret_indent,
                    NEW_STATE  => STATE_BLOCK_MAP_EXPLICIT_KEY,
                    NEW_INDENT => new_indent,
                    GOOD       => GOOD
                );
                LEN := token_len;
            when TOKEN_FLOW_MAP_BEGIN   =>
                scan_block_map_implicit_key(SELF, found);
                if (found = TRUE) then
                    call_struct_state(
                        SELF       => SELF,
                        RET_STATE  => ret_state,
                        RET_INDENT => ret_indent,
                        RET_MAPKEY => MAPKEY_NULL,
                        NEW_STATE  => STATE_BLOCK_MAP_IMPLICIT_KEY,
                        NEW_INDENT => new_indent,
                        NEW_MAPKEY => MAPKEY_READ,
                        GOOD       => GOOD
                    );
                    LEN := 0;
                else
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    call_struct_state(
                        SELF       => SELF,
                        RET_STATE  => ret_state,
                        RET_INDENT => ret_indent,
                        NEW_STATE  => STATE_FLOW_MAP_KEY,
                        NEW_INDENT => new_indent,
                        GOOD       => GOOD
                    );
                    LEN := token_len;
                end if;
            when others =>
                LEN  := 0;
                GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_MAP_SEPを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_map_sep(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  curr_state    :       STATE_TYPE;
        variable  curr_indent   :       INDENT_TYPE;
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
    begin
        get_struct_state(SELF, curr_state, curr_indent);
        case curr_state is
            when STATE_BLOCK_MAP_IMPLICIT_SEP =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_MAP_SEPARATOR) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    set_struct_state(SELF, STATE_BLOCK_MAP_IMPLICIT_VAL, curr_indent, MAPKEY_NULL);
                    LEN  := token_len;
                    GOOD := TRUE;
                else
                    LEN  := 0;
                    GOOD := FALSE;
                end if;
            when STATE_BLOCK_MAP_EXPLICIT_SEP =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_MAP_SEPARATOR) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    set_struct_state(SELF, STATE_BLOCK_MAP_EXPLICIT_VAL, curr_indent, MAPKEY_NULL);
                    LEN  := token_len;
                    GOOD := TRUE;
                else
                    LEN  := 0;
                    GOOD := FALSE;
                end if;
            when STATE_FLOW_MAP_SEP  =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_MAP_SEPARATOR) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    set_struct_state(SELF, STATE_FLOW_MAP_VAL          , curr_indent, MAPKEY_NULL);
                    LEN  := token_len;
                    GOOD := TRUE;
                else
                    LEN  := 0;
                    GOOD := FALSE;
                end if;
            when others =>
                    LEN  := 0;
                    GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_MAP_ENDを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_map_end(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean 
    ) is
        variable  curr_state    :       STATE_TYPE;
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
    begin
        get_struct_state(SELF, curr_state);
        case curr_state is
            when STATE_BLOCK_MAP_IMPLICIT_END =>
                LEN := 0;
                return_struct_state(SELF, GOOD);
            when STATE_BLOCK_MAP_EXPLICIT_END => 
                LEN := 0;
                return_struct_state(SELF, GOOD);
            when STATE_FLOW_MAP_END  =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_FLOW_MAP_END) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    return_struct_state(SELF, GOOD);
                    LEN  := token_len;
                else
                    LEN  := 0;
                    GOOD := FALSE;
                end if;
            when others =>
                LEN  := 0;
                GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_MAP_NEXTを取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    LEN         読み出した文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_map_next(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  LEN           : out   integer;
                  GOOD          : out   boolean 
    ) is
        variable  curr_state    :       STATE_TYPE;
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
    begin
        get_struct_state(SELF, curr_state);
        case curr_state is
            when STATE_BLOCK_MAP_IMPLICIT_END |
                 STATE_BLOCK_MAP_EXPLICIT_END =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_MAP_EXPLICIT_KEY) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    set_struct_state(SELF, STATE_BLOCK_MAP_EXPLICIT_KEY);
                    LEN := token_len;
                else
                    set_struct_state(SELF, STATE_BLOCK_MAP_IMPLICIT_KEY);
                    LEN := 0;
                end if;
                GOOD := TRUE;
            when STATE_FLOW_MAP_END  =>
                scan_token(SELF, token, token_pos, token_len);
                if (token = TOKEN_FLOW_ENTRY) then
                    skip_token(SELF, STREAM, token, token_pos, token_len);
                    set_struct_state(SELF, STATE_FLOW_MAP_KEY);
                    LEN  := token_len;
                    GOOD := TRUE;
                else
                    LEN  := 0;
                    GOOD := FALSE;
                end if;
            when others =>
                    LEN  := 0;
                    GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_TAG_PROPを取り出す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    STR         読み取ったタグを格納するバッファ.
    --! @param    STR_LEN     バッファに格納した文字数.
    --! @param    READ_LEN    読み取った文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_tag_prop(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean 
    ) is
        alias     str_buf       :       string(1 to STR'length) is STR;
        variable  string_pos    :       integer;
        variable  string_len    :       integer;
        variable  scan_len      :       integer;
        variable  found         :       boolean;
        variable  end_of_line   :       boolean;
    begin
        scan_tag_prop(SELF, found, scan_len, string_pos, string_len, end_of_line);
        if (found = TRUE) then
            if (string_len <= STR'length) then
                str_buf := (others => ' ');
                str_buf(1 to string_len) := SELF.text_line(string_pos to string_pos + string_len-1);
                STR_LEN := string_len;
            else
                str_buf(1 to STR'length) := SELF.text_line(string_pos to string_pos + STR'length-1);
                STR_LEN := STR'length;
            end if;
            SELF.text_pos := SELF.text_pos + scan_len;
            READ_LEN := scan_len;
            GOOD     := TRUE;
        else
            STR_LEN  := 0;
            READ_LEN := 0;
            GOOD     := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_ANCHORを取り出す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    STR         読み取ったタグを格納するバッファ.
    --! @param    STR_LEN     バッファに格納した文字数.
    --! @param    READ_LEN    読み取った文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_anchor(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean 
    ) is
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
        variable  line_end      :       boolean;
    begin
        scan_token(SELF, token, token_pos, token_len);
        if (token = TOKEN_ANCHOR_PROPERTY) then
            skip_token(SELF, STREAM, token, token_pos, token_len);
            read_plain_scalar(SELF, STR, STR_LEN, READ_LEN, line_end);
            GOOD := TRUE;
        else
            STR_LEN  := 0;
            READ_LEN := 0;
            GOOD     := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_ALIASを取り出す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    STR         読み取ったタグを格納するバッファ.
    --! @param    STR_LEN     バッファに格納した文字数.
    --! @param    READ_LEN    読み取った文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_alias(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean 
    ) is
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
        variable  line_end      :       boolean;
        variable  curr_state    :       STATE_TYPE;
        variable  next_state    :       STATE_TYPE;
        variable  next_event    :       EVENT_TYPE;
    begin
        scan_token(SELF, token, token_pos, token_len);
        if (token /= TOKEN_ALIAS_NODE) then
            STR_LEN  := 0;
            READ_LEN := 0;
            GOOD     := FALSE;
            return;
        end if;
        get_struct_state(SELF, curr_state);
        case curr_state is
            when STATE_FLOW_SEQ_VAL           => next_state := STATE_FLOW_SEQ_END ;
            when STATE_FLOW_MAP_KEY           => next_state := STATE_FLOW_MAP_SEP ;
            when STATE_FLOW_MAP_VAL           => next_state := STATE_FLOW_MAP_END ;
            when STATE_BLOCK_SEQ_VAL          => next_state := STATE_BLOCK_SEQ_END;
            when STATE_BLOCK_MAP_IMPLICIT_KEY => next_state := STATE_BLOCK_MAP_IMPLICIT_SEP;
            when STATE_BLOCK_MAP_IMPLICIT_VAL => next_state := STATE_BLOCK_MAP_IMPLICIT_END;
            when STATE_BLOCK_MAP_EXPLICIT_KEY => next_state := STATE_BLOCK_MAP_EXPLICIT_SEP;
            when STATE_BLOCK_MAP_EXPLICIT_VAL => next_state := STATE_BLOCK_MAP_EXPLICIT_END;
            when others                       => STR_LEN  := 0;
                                                 READ_LEN := 0;
                                                 GOOD     := FALSE;
                                                 return;
        end case;
        set_struct_state(SELF, next_state);
        skip_token(SELF, STREAM, token, token_pos, token_len);
        read_plain_scalar(SELF, STR, STR_LEN, READ_LEN, line_end);
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when  EVENT_SEQ_NEXT => read_seq_next(SELF, STREAM, token_len, GOOD);
            when  EVENT_MAP_NEXT => read_map_next(SELF, STREAM, token_len, GOOD);
            when  EVENT_MAP_SEP  => read_map_sep (SELF, STREAM, token_len, GOOD);
            when  others         => GOOD := TRUE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからliteralの文字列を取り出す
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    TOKEN       リテラルのタイプ
    --! @param    STR         読み取ったタグを格納するバッファ.
    --! @param    STR_LEN     バッファに格納した文字数.
    --! @param    READ_LEN    読み取った文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_literal_string(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  TOKEN         : in    TOKEN_TYPE;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean 
    ) is
        variable  str_pos       :       integer;
        variable  literal_len   :       integer;
        variable  char          :       character;
        variable  indent        :       integer;
        variable  now_literal   :       boolean;
    begin
        --------------------------------------------------------------------------
        -- まず TOKEN_LITERAL または TOKEN_FOLDED のある行は捨てて次の行を読む.
        --------------------------------------------------------------------------
        read_text_line(SELF, STREAM);
        --------------------------------------------------------------------------
        -- なにか空白以外の文字が含まれる行まで読む.
        --------------------------------------------------------------------------
        now_literal := FALSE;
        indent      := 0;
        literal_len := 0;
        str_pos     := STR'low;
        while(now_literal = FALSE and SELF.end_of_file = FALSE) loop
            for pos in SELF.text_line'low to SELF.text_line'high loop
                char   := SELF.text_line(pos);
                if (char /= ' ' and char /= ht) then
                    now_literal := TRUE;
                    indent := pos;
                    exit;
                end if;
            end loop;
            if (now_literal = FALSE) then
                read_text_line(SELF, STREAM);
                literal_len := literal_len + 1;
                if (str_pos <= STR'high) then
                    STR(str_pos) := LF;
                    str_pos := str_pos + 1;
                end if;
            end if;
        end loop;        
        --------------------------------------------------------------------------
        -- インデント数以下の行まで読み込む.
        --------------------------------------------------------------------------
        while (now_literal = TRUE and SELF.end_of_file = FALSE) loop
            for pos in SELF.text_line'low to SELF.text_end loop
                char := SELF.text_line(pos);
                if (pos >= indent) then
                    literal_len := literal_len + 1;
                    if (str_pos <= STR'high) then
                        STR(str_pos) := char;
                        str_pos := str_pos + 1;
                    end if;
                end if;
            end loop;
            read_text_line(SELF, STREAM);
            for pos in SELF.text_line'low to SELF.text_end loop
                char := SELF.text_line(pos);
                if (pos < indent) then
                    if (char /= ' ' and char /= ht) then
                        now_literal := FALSE;
                        exit;
                    end if;
                end if;
            end loop;
            exit when (now_literal = FALSE);
            literal_len := literal_len + 1;
            if (str_pos <= STR'high) then
                if (TOKEN = TOKEN_FOLDED) then
                    STR(str_pos) := ' ';
                else
                    STR(str_pos) := LF;
                end if;
                str_pos := str_pos + 1;
            end if;
        end loop;
        STR_LEN  := str_pos - STR'low;
        READ_LEN := literal_len;
        GOOD     := TRUE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SCALARを文字列(STRING)として読み出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    STR         読み取ったタグを格納するバッファ.
    --! @param    STR_LEN     バッファに格納した文字数.
    --! @param    READ_LEN    読み取った文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure read_scalar(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean 
    ) is
        variable  token         :       TOKEN_TYPE;
        variable  token_pos     :       integer;
        variable  token_len     :       integer;
        variable  curr_state    :       STATE_TYPE;
        variable  line_end      :       boolean;
        variable  next_state    :       STATE_TYPE;
        variable  next_event    :       EVENT_TYPE;
    begin
        get_struct_state(SELF, curr_state);
        case curr_state is
            when STATE_FLOW_SEQ_VAL           => next_state := STATE_FLOW_SEQ_END ;
            when STATE_FLOW_MAP_KEY           => next_state := STATE_FLOW_MAP_SEP ;
            when STATE_FLOW_MAP_VAL           => next_state := STATE_FLOW_MAP_END ;
            when STATE_BLOCK_SEQ_VAL          => next_state := STATE_BLOCK_SEQ_END;
            when STATE_BLOCK_MAP_IMPLICIT_KEY => next_state := STATE_BLOCK_MAP_IMPLICIT_SEP;
            when STATE_BLOCK_MAP_IMPLICIT_VAL => next_state := STATE_BLOCK_MAP_IMPLICIT_END;
            when STATE_BLOCK_MAP_EXPLICIT_KEY => next_state := STATE_BLOCK_MAP_EXPLICIT_SEP;
            when STATE_BLOCK_MAP_EXPLICIT_VAL => next_state := STATE_BLOCK_MAP_EXPLICIT_END;
            when others                       => STR_LEN  := 0;
                                                 READ_LEN := 0;
                                                 GOOD     := FALSE;
                                                 return;
        end case;
        scan_token(SELF, token, token_pos, token_len);
        case token is
            when TOKEN_SCALAR  =>
                read_plain_scalar (SELF, STR, STR_LEN, READ_LEN, line_end);
                set_struct_state(SELF, next_state);
                GOOD := TRUE;
            when TOKEN_SINGLE_QUOTE =>
                read_quoted_string(SELF, STR, STR_LEN, READ_LEN, line_end);
                set_struct_state(SELF, next_state);
                GOOD := TRUE;
            when TOKEN_DOUBLE_QUOTE =>
                read_quoted_string(SELF, STR, STR_LEN, READ_LEN, line_end);
                set_struct_state(SELF, next_state);
                GOOD := TRUE;
            when TOKEN_LITERAL =>
                read_literal_string(SELF, STREAM, token, STR, STR_LEN, READ_LEN, GOOD);
                set_struct_state(SELF, next_state);
            when TOKEN_FOLDED =>
                read_literal_string(SELF, STREAM, token, STR, STR_LEN, READ_LEN, GOOD);
                set_struct_state(SELF, next_state);
            when others =>
                STR_LEN  := 0;
                READ_LEN := 0;
                GOOD     := FALSE;
        end case;
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when  EVENT_SEQ_NEXT => read_seq_next(SELF, STREAM, token_len, GOOD);
            when  EVENT_MAP_NEXT => read_map_next(SELF, STREAM, token_len, GOOD);
            when  EVENT_MAP_SEP  => read_map_sep (SELF, STREAM, token_len, GOOD);
            when  others         => null;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SCALAR,EVENT_TAG_PROP,EVENT_ANCHOR,EVENT_ALIASを
    --!        文字列として取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    STR         読み取ったタグを格納するバッファ.
    --! @param    STR_LEN     バッファに格納した文字数.
    --! @param    READ_LEN    読み取った文字数.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure READ_STRING(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  next_event    :       EVENT_TYPE;
    begin
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when EVENT_SCALAR   => read_scalar  (SELF, STREAM, STR, STR_LEN, READ_LEN, GOOD);
            when EVENT_TAG_PROP => read_tag_prop(SELF, STREAM, STR, STR_LEN, READ_LEN, GOOD);
            when EVENT_ANCHOR   => read_anchor  (SELF, STREAM, STR, STR_LEN, READ_LEN, GOOD);
            when EVENT_ALIAS    => read_alias   (SELF, STREAM, STR, STR_LEN, READ_LEN, GOOD);
            when others         => STR_LEN := 0; READ_LEN := 0; GOOD := FALSE;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SCALARを整数(INTEGER)として取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VALUE       読み取った整数値.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure READ_INTEGER(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  VALUE         : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  word          :       string(1 to 128);
        variable  word_len      :       integer;
        variable  read_len      :       integer;
        variable  value_len     :       integer;
    begin
        read_scalar(SELF, STREAM, word, word_len, read_len, GOOD);
        if (word_len > 0) then
            STRING_TO_INTEGER(word(1 to word_len), VALUE, value_len);
            GOOD := TRUE;
        else
            VALUE:= 0;
            GOOD := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENT_SCALARを真偽値数(BOOLEAN)として取り出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VALUE       読み取った真偽値.
    --! @param    GOOD        読み取りに成功したことを示す.
    -------------------------------------------------------------------------------
    procedure READ_BOOLEAN(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  VALUE         : out   boolean;
                  GOOD          : out   boolean
    ) is
        variable  word          :       string(1 to 5);
        variable  word_len      :       integer;
        variable  read_len      :       integer;
        variable  value_len     :       integer;
    begin
        read_scalar(SELF, STREAM, word, word_len, read_len, GOOD);
        if (word_len > 0) then
            STRING_TO_BOOLEAN(word(1 to word_len), VALUE, value_len);
            GOOD := (value_len > 0);
        else
            VALUE:= FALSE;
            GOOD := FALSE;
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームから指定されたイベントを読み出すサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み取るイベント.
    --! @param    STR         格納された文字列.
    --! @param    STR_LEN     格納した文字列の文字数.
    --! @param    READ_LEN    ストリームから読み取った文字数.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure READ_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE;
                  STR           : out   string;
                  STR_LEN       : out   integer;
                  READ_LEN      : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  next_event    :       EVENT_TYPE;
        variable  dummy_len     :       integer;
    begin
        if (EVENT = EVENT_ERROR) then
            DEBUG_DUMP(SELF, string'("READ_EVENT INTERNAL ERROR"));
            assert (FALSE) report "READ_EVENT INTERNAL ERROR"
            severity FAILURE;
        end if;
        SEEK_EVENT(SELF, STREAM, next_event);
        if (EVENT /= next_event) then
            GOOD := FALSE;
            return;
        end if;
        STR_LEN  := 0;
        case EVENT is
            when EVENT_DOC_BEGIN  => read_doc_begin(SELF, STREAM, READ_LEN, GOOD);
            when EVENT_DOC_END    => read_doc_end  (SELF, STREAM, READ_LEN, GOOD);
            when EVENT_SEQ_BEGIN  => read_seq_begin(SELF, STREAM, READ_LEN, GOOD);
            when EVENT_SEQ_NEXT   => read_seq_next (SELF, STREAM, READ_LEN, GOOD);
            when EVENT_SEQ_END    => read_seq_end  (SELF, STREAM, READ_LEN, GOOD);
            when EVENT_MAP_BEGIN  => read_map_begin(SELF, STREAM, READ_LEN, GOOD);
            when EVENT_MAP_SEP    => read_map_sep  (SELF, STREAM, READ_LEN, GOOD);
            when EVENT_MAP_NEXT   => read_map_next (SELF, STREAM, READ_LEN, GOOD);
            when EVENT_MAP_END    => read_map_end  (SELF, STREAM, READ_LEN, GOOD);
            when EVENT_SCALAR     => read_scalar   (SELF, STREAM, STR, STR_LEN, READ_LEN, GOOD);
            when EVENT_TAG_PROP   => read_tag_prop (SELF, STREAM, STR, STR_LEN, READ_LEN, GOOD);
            when EVENT_ANCHOR     => read_anchor   (SELF, STREAM, STR, STR_LEN, READ_LEN, GOOD);
            when EVENT_ALIAS      => read_alias    (SELF, STREAM, STR, STR_LEN, READ_LEN, GOOD);
            when EVENT_DIRECTIVE  => read_text_line(SELF, STREAM);
                                     READ_LEN := 0; GOOD := TRUE;
            when EVENT_STREAM_END => READ_LEN := 0; GOOD := TRUE;
            when others           => READ_LEN := 0; GOOD := FALSE;
        end case;
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when EVENT_SEQ_NEXT => read_seq_next(SELF, STREAM, dummy_len, GOOD);
            when EVENT_MAP_NEXT => read_map_next(SELF, STREAM, dummy_len, GOOD);
            when EVENT_MAP_SEP  => read_map_sep (SELF, STREAM, dummy_len, GOOD);
            when others         => 
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームから指定されたイベントを読み出すサブプログラム.
    --!        ただしスカラー、文字列などは読み捨てる.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み取るイベント.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure READ_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE;
                  GOOD          : out   boolean
    ) is
        variable  str_buf       :       string(1 to 1); -- どうせ捨てるので少なくてもかまわない.
        variable  str_len       :       integer;
        variable  read_len      :       integer;
    begin
        READ_EVENT(SELF, STREAM, EVENT, str_buf, str_len, read_len, GOOD);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENTを読み飛ばすサブプログラム.
    --!        EVENTがMAP_BEGINやSEQ_BEGINの場合は、対応するMAP_ENDまたはSEQ_ENDまで
    --!        読み飛ばすことに注意.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み取るイベント.
    --! @param    STR_BUF     文字列読み飛ばし用のバッファ.
    --! @param    STR_LEN     バッファに格納した文字数.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure SKIP_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE;
                  STR_BUF       : out   string;
                  STR_LEN       : out   integer;
                  GOOD          : out   boolean
    ) is
        variable  end_event     :       EVENT_TYPE;
        variable  next_event    :       EVENT_TYPE;
        variable  skip_done     :       boolean;
        variable  read_good     :       boolean;
        variable  read_len      :       integer;
        variable  dummy_len     :       integer;
    begin
        SEEK_EVENT(SELF, STREAM, next_event);
        if (EVENT /= next_event) then
            GOOD := FALSE;
            return;
        end if;
        STR_LEN  := 0;
        case EVENT is
            when EVENT_DOC_BEGIN  => read_doc_begin(SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_DOC_END;
                                     skip_done := FALSE;
            when EVENT_DOC_END    => read_doc_end  (SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_STREAM_END;
                                     skip_done := TRUE;
            when EVENT_SEQ_BEGIN  => read_seq_begin(SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_SEQ_END;
                                     skip_done := FALSE;
            when EVENT_SEQ_NEXT   => read_seq_next (SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_SEQ_END;
                                     skip_done := FALSE;
            when EVENT_SEQ_END    => read_seq_end  (SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_SEQ_END;
                                     skip_done := TRUE;
            when EVENT_MAP_BEGIN  => read_map_begin(SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_MAP_END;
                                     skip_done := FALSE;
            when EVENT_MAP_SEP    => read_map_sep  (SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_MAP_END;
                                     skip_done := FALSE;
            when EVENT_MAP_NEXT   => read_map_next (SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_MAP_END;
                                     skip_done := FALSE;
            when EVENT_MAP_END    => read_map_end  (SELF, STREAM, read_len, read_good);
                                     end_event := EVENT_MAP_END;
                                     skip_done := TRUE;
            when EVENT_DIRECTIVE  => read_text_line(SELF, STREAM);
                                     end_event := EVENT_DOC_BEGIN;
                                     skip_done := TRUE;
            when EVENT_STREAM_END => end_event := EVENT_STREAM_END;
                                     skip_done := TRUE;
            when EVENT_SCALAR     => read_scalar  (SELF, STREAM, STR_BUF, STR_LEN, read_len, read_good);
                                     end_event := EVENT_SCALAR;
                                     skip_done := TRUE;
            when EVENT_TAG_PROP   => read_tag_prop(SELF, STREAM, STR_BUF, STR_LEN, read_len, read_good);
                                     end_event := EVENT_STREAM_END;
                                     skip_done := FALSE;
            when EVENT_ANCHOR     => read_anchor  (SELF, STREAM, STR_BUF, STR_LEN, read_len, read_good);
                                     end_event := EVENT_STREAM_END;
                                     skip_done := FALSE;
            when EVENT_ALIAS      => read_alias   (SELF, STREAM, STR_BUF, STR_LEN, read_len, read_good);
                                     end_event := EVENT_SCALAR;
                                     skip_done := TRUE;
            when others           => skip_done := TRUE;
                                     read_good := FALSE;
        end case;
        if (read_good = FALSE) then
            GOOD := FALSE;
            return;
        end if;
        while (skip_done = FALSE) loop
            -- DEBUG_DUMP(SELF, string'("SKIP_EVENT LOOP"));
            SEEK_EVENT(SELF, STREAM, next_event);
            if (next_event = end_event) then
                READ_EVENT(SELF, STREAM, next_event, read_good);
                exit;
            end if;
            case next_event is
                when EVENT_DOC_BEGIN  |
                     EVENT_SEQ_BEGIN  |
                     EVENT_MAP_BEGIN  =>
                    SKIP_EVENT(SELF, STREAM, next_event, STR_BUF, STR_LEN, read_good);
                when EVENT_STREAM_END =>
                    READ_EVENT(SELF, STREAM, next_event, read_good);
                    skip_done := TRUE;
                when EVENT_ERROR     =>
                    read_good := FALSE;
                    skip_done := TRUE;
                when others => 
                    READ_EVENT(SELF, STREAM, next_event, read_good);
            end case;
        end loop;
        if (read_good = FALSE) then
            GOOD := FALSE;
            return;
        end if;
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when EVENT_SEQ_NEXT => read_seq_next(SELF, STREAM, dummy_len, read_good);
            when EVENT_MAP_NEXT => read_map_next(SELF, STREAM, dummy_len, read_good);
            when EVENT_MAP_SEP  => read_map_sep (SELF, STREAM, dummy_len, read_good);
            when EVENT_ERROR    => read_good := FALSE;
            when others         => 
        end case;
        GOOD := read_good;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENTを読み飛ばすサブプログラム.
    --!        EVENTがMAP_BEGINやSEQ_BEGINの場合は、対応するMAP_ENDまたはSEQ_ENDまで
    --!        読み飛ばすことに注意.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        リーダー変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み取るイベント.
    --! @param    GOOD        正常に読み取れかどうかを示す.
    -------------------------------------------------------------------------------
    procedure SKIP_EVENT(
        variable  SELF          : inout READER_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE;
                  GOOD          : out   boolean
    ) is
        variable  skip_buf      :       string(1 to 1);
        variable  skip_len      :       integer;
    begin
        SKIP_EVENT(SELF, STREAM, EVENT, skip_buf, skip_len, GOOD);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief イベントに対応した文字列.
    -------------------------------------------------------------------------------
    constant  STRING_EVENT_DIRECTIVE   : string := "EVENT_DIRECTIVE"  ;
    constant  STRING_EVENT_DOC_BEGIN   : string := "EVENT_DOC_BEGIN"  ;
    constant  STRING_EVENT_DOC_END     : string := "EVENT_DOC_END"    ;
    constant  STRING_EVENT_STREAM_END  : string := "EVENT_STREAM_END" ;
    constant  STRING_EVENT_SEQ_BEGIN   : string := "EVENT_SEQ_BEGIN"  ;
    constant  STRING_EVENT_SEQ_NEXT    : string := "EVENT_SEQ_NEXT"   ;
    constant  STRING_EVENT_SEQ_END     : string := "EVENT_SEQ_END"    ;
    constant  STRING_EVENT_MAP_BEGIN   : string := "EVENT_MAP_BEGIN"  ;
    constant  STRING_EVENT_MAP_SEP     : string := "EVENT_MAP_SEP"    ;
    constant  STRING_EVENT_MAP_NEXT    : string := "EVENT_MAP_NEXT"   ;
    constant  STRING_EVENT_MAP_END     : string := "EVENT_MAP_END"    ;
    constant  STRING_EVENT_SCALAR      : string := "EVENT_SCALAR"     ;
    constant  STRING_EVENT_TAG_PROP    : string := "EVENT_TAG_PROP"   ;
    constant  STRING_EVENT_ANCHOR      : string := "EVENT_ANCHOR"     ;
    constant  STRING_EVENT_ALIAS       : string := "EVENT_ALIAS"      ;
    constant  STRING_EVENT_ERROR       : string := "EVENT_ERROR "     ;
    -------------------------------------------------------------------------------
    --! @brief イベントを文字列に変換する関数.
    -------------------------------------------------------------------------------
    function  EVENT_TO_STRING(EVENT: EVENT_TYPE) return string is
    begin
        case EVENT is
            when EVENT_DIRECTIVE       => return STRING_EVENT_DIRECTIVE  ;
            when EVENT_DOC_BEGIN       => return STRING_EVENT_DOC_BEGIN  ;
            when EVENT_DOC_END         => return STRING_EVENT_DOC_END    ;
            when EVENT_STREAM_END      => return STRING_EVENT_STREAM_END ;
            when EVENT_SEQ_BEGIN       => return STRING_EVENT_SEQ_BEGIN  ;
            when EVENT_SEQ_NEXT        => return STRING_EVENT_SEQ_NEXT   ;
            when EVENT_SEQ_END         => return STRING_EVENT_SEQ_END    ;
            when EVENT_MAP_BEGIN       => return STRING_EVENT_MAP_BEGIN  ;
            when EVENT_MAP_SEP         => return STRING_EVENT_MAP_SEP    ;
            when EVENT_MAP_NEXT        => return STRING_EVENT_MAP_NEXT   ;
            when EVENT_MAP_END         => return STRING_EVENT_MAP_END    ;
            when EVENT_SCALAR          => return STRING_EVENT_SCALAR     ;
            when EVENT_TAG_PROP        => return STRING_EVENT_TAG_PROP   ;
            when EVENT_ANCHOR          => return STRING_EVENT_ANCHOR     ;
            when EVENT_ALIAS           => return STRING_EVENT_ALIAS      ;
            when EVENT_ERROR           => return STRING_EVENT_ERROR      ;
        end case;
    end function;
    -------------------------------------------------------------------------------
    --! @brief 状態に対応した文字列.
    -------------------------------------------------------------------------------
    constant  STRING_STATE_NONE                   : string := "STATE_NONE"                  ;
    constant  STRING_STATE_DOCUMENT               : string := "STATE_DOCUMENT"              ;
    constant  STRING_STATE_BLOCK_SEQ_VAL          : string := "STATE_BLOCK_SEQ_VAL"         ;
    constant  STRING_STATE_BLOCK_SEQ_END          : string := "STATE_BLOCK_SEQ_END"         ;
    constant  STRING_STATE_BLOCK_MAP_IMPLICIT_KEY : string := "STATE_BLOCK_MAP_IMPLICIT_KEY";
    constant  STRING_STATE_BLOCK_MAP_IMPLICIT_SEP : string := "STATE_BLOCK_MAP_IMPLICIT_SEP";
    constant  STRING_STATE_BLOCK_MAP_IMPLICIT_VAL : string := "STATE_BLOCK_MAP_IMPLICIT_VAL";
    constant  STRING_STATE_BLOCK_MAP_IMPLICIT_END : string := "STATE_BLOCK_MAP_IMPLICIT_END";
    constant  STRING_STATE_BLOCK_MAP_EXPLICIT_KEY : string := "STATE_BLOCK_MAP_EXPLICIT_KEY";
    constant  STRING_STATE_BLOCK_MAP_EXPLICIT_SEP : string := "STATE_BLOCK_MAP_EXPLICIT_SEP";
    constant  STRING_STATE_BLOCK_MAP_EXPLICIT_VAL : string := "STATE_BLOCK_MAP_EXPLICIT_VAL";
    constant  STRING_STATE_BLOCK_MAP_EXPLICIT_END : string := "STATE_BLOCK_MAP_EXPLICIT_END";
    constant  STRING_STATE_FLOW_SEQ_VAL           : string := "STATE_FLOW_SEQ_VAL"          ;
    constant  STRING_STATE_FLOW_SEQ_END           : string := "STATE_FLOW_SEQ_END"          ;
    constant  STRING_STATE_FLOW_MAP_KEY           : string := "STATE_FLOW_MAP_KEY"          ;
    constant  STRING_STATE_FLOW_MAP_VAL           : string := "STATE_FLOW_MAP_VAL"          ;
    constant  STRING_STATE_FLOW_MAP_SEP           : string := "STATE_FLOW_MAP_SEP"          ;
    constant  STRING_STATE_FLOW_MAP_END           : string := "STATE_FLOW_MAP_END"          ;
    constant  STRING_STATE_ERROR                  : string := "STATE_ERROR"                 ;
    -------------------------------------------------------------------------------
    --! @brief 状態を文字列に変換する関数.
    -------------------------------------------------------------------------------
    function  struct_state_to_string(state: STATE_TYPE) return string
    is
    begin
        case(state) is
            when STATE_NONE                   => return STRING_STATE_NONE                   ;
            when STATE_DOCUMENT               => return STRING_STATE_DOCUMENT               ;
            when STATE_BLOCK_SEQ_VAL          => return STRING_STATE_BLOCK_SEQ_VAL          ;
            when STATE_BLOCK_SEQ_END          => return STRING_STATE_BLOCK_SEQ_END          ;
            when STATE_BLOCK_MAP_IMPLICIT_KEY => return STRING_STATE_BLOCK_MAP_IMPLICIT_KEY ;
            when STATE_BLOCK_MAP_IMPLICIT_SEP => return STRING_STATE_BLOCK_MAP_IMPLICIT_SEP ;
            when STATE_BLOCK_MAP_IMPLICIT_VAL => return STRING_STATE_BLOCK_MAP_IMPLICIT_VAL ;
            when STATE_BLOCK_MAP_IMPLICIT_END => return STRING_STATE_BLOCK_MAP_IMPLICIT_END ;
            when STATE_BLOCK_MAP_EXPLICIT_KEY => return STRING_STATE_BLOCK_MAP_EXPLICIT_KEY ;
            when STATE_BLOCK_MAP_EXPLICIT_SEP => return STRING_STATE_BLOCK_MAP_EXPLICIT_SEP ;
            when STATE_BLOCK_MAP_EXPLICIT_VAL => return STRING_STATE_BLOCK_MAP_EXPLICIT_VAL ;
            when STATE_BLOCK_MAP_EXPLICIT_END => return STRING_STATE_BLOCK_MAP_EXPLICIT_END ;
            when STATE_FLOW_SEQ_VAL           => return STRING_STATE_FLOW_SEQ_VAL           ;
            when STATE_FLOW_SEQ_END           => return STRING_STATE_FLOW_SEQ_END           ;
            when STATE_FLOW_MAP_KEY           => return STRING_STATE_FLOW_MAP_KEY           ;
            when STATE_FLOW_MAP_VAL           => return STRING_STATE_FLOW_MAP_VAL           ;
            when STATE_FLOW_MAP_SEP           => return STRING_STATE_FLOW_MAP_SEP           ;
            when STATE_FLOW_MAP_END           => return STRING_STATE_FLOW_MAP_END           ;
            when others                       => return STRING_STATE_ERROR                  ;
        end case;
    end function;
    -------------------------------------------------------------------------------
    --! @brief MAPKEY_MODE に対応した文字列.
    -------------------------------------------------------------------------------
    constant  STRING_MAPKEY_NULL       : string := "MAPKEY_NULL" ;
    constant  STRING_MAPKEY_FOUND      : string := "MAPKEY_FOUND";
    constant  STRING_MAPKEY_READ       : string := "MAPKEY_READ" ;
    constant  STRING_MAPKEY_ERROR      : string := "MAPKEY_ERROR";
    -------------------------------------------------------------------------------
    --! @brief MAPKEY_MODE を文字列に変換する関数.
    -------------------------------------------------------------------------------
    function  struct_mapkey_to_string(mapkey: MAPKEY_MODE) return string is
    begin
        case (mapkey) is
            when MAPKEY_NULL  => return STRING_MAPKEY_NULL ;
            when MAPKEY_FOUND => return STRING_MAPKEY_FOUND;
            when MAPKEY_READ  => return STRING_MAPKEY_READ ;
            when others       => return STRING_MAPKEY_ERROR;
        end case;
    end function;
    -------------------------------------------------------------------------------
    --! @brief 標準出力にリーダーの状態をダンプするサブプログラム.
    -------------------------------------------------------------------------------
    procedure DEBUG_DUMP (
        variable  SELF          : inout READER_TYPE;
                  MESSAGE       : in    string
    ) is
        variable  text_line     :       LINE;
    begin
        WRITE(text_line, "message    : " & MESSAGE);
        WRITELINE(OUTPUT, text_line);
        DEBUG_DUMP(SELF);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力にリーダーの状態をダンプするサブプログラム.
    -------------------------------------------------------------------------------
    procedure DEBUG_DUMP (
        variable  SELF          : inout READER_TYPE
    ) is
    begin
        DEBUG_DUMP(SELF, SELF.text_pos);
    end procedure;        
    -------------------------------------------------------------------------------
    --! @brief 標準出力にリーダーの状態をダンプするサブプログラム.
    -------------------------------------------------------------------------------
    procedure DEBUG_DUMP (
        variable  SELF          : inout READER_TYPE;
                  POS           : in    integer
    ) is
        variable  text_line     :       LINE;
        variable  state         :       STATE_TYPE;
        variable  indent        :       INDENT_TYPE;
        variable  mapkey        :       MAPKEY_MODE;
    begin
        if TRUE then
            get_struct_state(SELF, state, indent, mapkey);
            WRITE(text_line, "   name       : " & SELF.name(SELF.name'range));
            WRITELINE(OUTPUT, text_line);
            WRITE(text_line, "   stream_name: " & SELF.stream_name(SELF.stream_name'range) &
                                            "(" & INTEGER_TO_STRING(SELF.line_num) &
                                            "," & INTEGER_TO_STRING(SELF.text_pos) &
                                            "," & INTEGER_TO_STRING(SELF.text_end) & ")");
            WRITELINE(OUTPUT, text_line);
            WRITE(text_line, "   curr_state : " & struct_state_to_string(state)    &
                                            "(" & INTEGER_TO_STRING(indent)        &
                                            "," & struct_mapkey_to_string(mapkey)  & ")");
                                        
            WRITELINE(OUTPUT, text_line);
        end if;
        for i in SELF.state_top-1 downto SELF.state_stack'low loop
            unpack_struct_state_value(SELF.state_stack(i),state,indent,mapkey);
            WRITE(text_line, "   prev_state : " & struct_state_to_string(state)    &
                                            "(" & INTEGER_TO_STRING(indent)        &
                                            "," & struct_mapkey_to_string(mapkey)  & ")");
            WRITELINE(OUTPUT, text_line);
        end loop;
        if (SELF.text_line = null) then
            WRITE(text_line, string'("   text_line  : null "));
        else
            WRITE(text_line, "   text_line  : " & SELF.text_line(SELF.text_line'range));
            WRITELINE(OUTPUT, text_line);
            WRITE(text_line, string'("               |"));
            for i in SELF.text_line'low to SELF.text_line'high loop
                if (i = POS) then
                    WRITE(text_line, string'("^"));
                else
                    WRITE(text_line, string'(" "));
                end if;
            end loop;
        end if;
        WRITE(text_line, string'("|"));
        WRITELINE(OUTPUT, text_line);
    end procedure;
end READER;
-----------------------------------------------------------------------------------
--!     @file    sync.vhd
--!     @brief   Package for Synchronize some dummy-plugs.
--!     @version 1.6.1
--!     @date    2016/3/12
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug のモデル間で同期するためのパッケージ.
--!      * 同期のための信号が1bitのstd_logicになっているバージョン.
-----------------------------------------------------------------------------------
package SYNC is
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)できる本数の最大値.
    --!        ただしこのパッケージでは意味が無い.
    -------------------------------------------------------------------------------
    constant  SYNC_MAX_PLUG_SIZE: integer := 32;
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)できる本数を指定するタイプ宣言.
    -------------------------------------------------------------------------------
    subtype   SYNC_PLUG_NUM_TYPE   is integer range 1 to SYNC_MAX_PLUG_SIZE;
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)のための信号のタイプ宣言.
    -------------------------------------------------------------------------------
    alias     SYNC_SIG_TYPE        is std_logic;
    type      SYNC_SIG_VECTOR      is array (INTEGER range <>) of SYNC_SIG_TYPE;
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)のための信号を制御するための信号のタイプ宣言.
    -------------------------------------------------------------------------------
    subtype   SYNC_REQ_TYPE        is integer;
    subtype   SYNC_ACK_TYPE        is std_logic;
    type      SYNC_REQ_VECTOR      is array (INTEGER range <>) of SYNC_REQ_TYPE;
    type      SYNC_ACK_VECTOR      is array (INTEGER range <>) of SYNC_ACK_TYPE;
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)開始サブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_CNT    同期ウェイトクロック数.
    -------------------------------------------------------------------------------
    procedure SYNC_BEGIN(
        signal   SYNC_REQ : out   SYNC_REQ_VECTOR;
                 SYNC_CNT : in    SYNC_REQ_VECTOR
    );
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)が完了したかどうかを調べるサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_ACK    同期応答信号入力.
    --! @param    SYNC_CNT    同期ウェイトクロック数.
    --! @param    DONE        終了フラグ.
    -------------------------------------------------------------------------------
    procedure SYNC_CHECK(
        signal   SYNC_REQ : out   SYNC_REQ_VECTOR;
        signal   SYNC_ACK : in    SYNC_ACK_VECTOR;
                 SYNC_CNT : inout SYNC_REQ_VECTOR;
                 DONE     : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)終了サブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_ACK    同期応答信号入力.
    --! @param    SYNC_CNT    同期ウェイトクロック数.
    -------------------------------------------------------------------------------
    procedure SYNC_END  (
        signal   SYNC_REQ : out   SYNC_REQ_VECTOR;
        signal   SYNC_ACK : in    SYNC_ACK_VECTOR;
                 SYNC_CNT : in    SYNC_REQ_VECTOR
    );
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)信号を制御するコンポーネント.
    -------------------------------------------------------------------------------
    component SYNC_SIG_DRIVER
        generic (
                 NAME     :       STRING;
                 PLUG_NUM :       SYNC_PLUG_NUM_TYPE
        );
        port (
                 CLK      : in    std_logic;
                 RST      : in    std_logic;
                 CLR      : in    std_logic;
                 DEBUG    : in    boolean;
                 SYNC     : inout SYNC_SIG_TYPE;
                 REQ      : in    SYNC_REQ_TYPE;
                 ACK      : out   SYNC_ACK_TYPE
        );
    end component;
    -------------------------------------------------------------------------------
    --! @brief モジュール内でローカルにモデル間同期するためのコンポーネント.
    -------------------------------------------------------------------------------
    component SYNC_LOCAL_HUB
        generic (
                 NAME     :       STRING;
                 PLUG_SIZE:       SYNC_PLUG_NUM_TYPE
        );
        port (
                 CLK      : in    std_logic;
                 RST      : in    std_logic;
                 CLR      : in    std_logic;
                 DEBUG    : in    boolean;
                 SYNC     : inout SYNC_SIG_TYPE;
                 REQ      : in    SYNC_REQ_VECTOR(1 to PLUG_SIZE);
                 ACK      : out   SYNC_ACK_VECTOR(1 to PLUG_SIZE)
        );
    end component;
    -------------------------------------------------------------------------------
    --! @brief 同期信号の値を標準出力に出力するコンポーネント.
    -------------------------------------------------------------------------------
    component SYNC_PRINT
        generic( NAME     :       STRING);
        port   ( SYNC     : in    SYNC_SIG_TYPE);
    end component;
end package;
-----------------------------------------------------------------------------------
-- SYNC :
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug のモデル間で同期するためのパッケージ.
-----------------------------------------------------------------------------------
package body SYNC is
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)開始サブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_CNT    同期ウェイトクロック数.
    -------------------------------------------------------------------------------
    procedure SYNC_BEGIN(
        signal   SYNC_REQ : out   SYNC_REQ_VECTOR;
                 SYNC_CNT : in    SYNC_REQ_VECTOR
    ) is
    begin
        ---------------------------------------------------------------------------
        -- SYNC_REQ信号に SYNC_CNT を出力.
        ---------------------------------------------------------------------------
        SYNC_REQ <= SYNC_CNT;
        ---------------------------------------------------------------------------
        -- SYNC_CNTの値がSYNC_REQ信号に反映されるまでのΔ時間だけ待つ.
        ---------------------------------------------------------------------------
        wait for 0 ns;
        ---------------------------------------------------------------------------
        -- SYNC_SIG_DRIVER にて SYNC_REQ信号が変化して SYNC 信号に反映されるまでの
        -- Δ時間だけ待つ.
        ---------------------------------------------------------------------------
        wait for 0 ns;
        ---------------------------------------------------------------------------
        -- SYNC_SIG_DRIVER にて SYNC信号が変化して SYNC_ACK 信号に反映されるまで
        -- のΔ時間だけ待つ.
        ---------------------------------------------------------------------------
        wait for 0 ns;
    end SYNC_BEGIN;
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)が完了したかどうかを調べるサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_ACK    同期応答信号入力.
    --! @param    SYNC_CNT    同期ウェイトクロック数.
    --! @param    DONE        終了フラグ.
    -------------------------------------------------------------------------------
    procedure SYNC_CHECK(
        signal   SYNC_REQ : out   SYNC_REQ_VECTOR;
        signal   SYNC_ACK : in    SYNC_ACK_VECTOR;
                 SYNC_CNT : inout SYNC_REQ_VECTOR;
                 DONE     : out   boolean
    ) is 
        variable use_sync :       std_logic_vector(SYNC_CNT'range);
        constant all_done :       std_logic_vector(SYNC_CNT'range) := (others => '0');
    begin
        use_sync := (others => '1');
        for i in SYNC_CNT'range loop
            if (SYNC_CNT(i) > 0 and SYNC_ACK(i) = '1') then
                SYNC_CNT(i) := 0;
                SYNC_REQ(i) <= 0;
            end if;
            if (SYNC_CNT(i) > 0) then
                use_sync(i) := '1';
            else
                use_sync(i) := '0';
            end if;
        end loop;
        DONE := (use_sync = all_done);
    end SYNC_CHECK;
    -------------------------------------------------------------------------------
    --! @brief モデル間同期(SYNC)終了サブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_ACK    同期応答信号入力.
    --! @param    SYNC_CNT    同期ウェイトクロック数.
    -------------------------------------------------------------------------------
    procedure SYNC_END  (
        signal   SYNC_REQ : out   SYNC_REQ_VECTOR;
        signal   SYNC_ACK : in    SYNC_ACK_VECTOR;
                 SYNC_CNT : in    SYNC_REQ_VECTOR
    ) is 
        variable count    :       SYNC_REQ_VECTOR (SYNC_CNT'range);
        variable done     :       boolean;
    begin
        count := SYNC_CNT;
        ---------------------------------------------------------------------------
        -- SYNC_CHECKを実行して done が TRUE になるまで待つループ.
        ---------------------------------------------------------------------------
        WAIT_SYNC_ACK_LOOP : loop
            SYNC_CHECK(SYNC_REQ => SYNC_REQ, -- Out: SYNC_REQ_VECTOR;
                       SYNC_ACK => SYNC_ACK, -- In : SYNC_ACK_VECTOR;
                       SYNC_CNT => count,    -- I/O: SYNC_REQ_VECTOR;
                       DONE     => done);    -- Out: boolean;
            exit when done;
            wait on SYNC_ACK; -- 超重要 これがないとシミュレーターが無限ループに陥る
        end loop;
        ---------------------------------------------------------------------------
        -- SYNC_CNTをクリアしたのがSYNC_REQ信号に反映されるまでのΔ時間だけ待つ.
        ---------------------------------------------------------------------------
        wait for 0 ns;
    end SYNC_END;
end package body;
-----------------------------------------------------------------------------------
-- SYNC_SIG_DRIVER : 
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.SYNC.all;
-----------------------------------------------------------------------------------
--! @brief モデル間同期(SYNC)信号を制御するコンポーネント.
-----------------------------------------------------------------------------------
entity  SYNC_SIG_DRIVER is
    generic (
        NAME     :       STRING;            --! デバッグ出力用の名前.
        PLUG_NUM :       SYNC_PLUG_NUM_TYPE --! プラグの番号.
    );
    port (
        CLK      : in    std_logic;         --! クロック.
        RST      : in    std_logic;         --! 非同期リセット.
        CLR      : in    std_logic;         --! 同期リセット.
        DEBUG    : in    boolean;           --! デバッグ出力をするための信号.
        SYNC     : inout SYNC_SIG_TYPE;     --! モデル間同期用入出力信号.
        REQ      : in    SYNC_REQ_TYPE;     --! 同期要求入力信号.
        ACK      : out   SYNC_ACK_TYPE      --! 同期応答出力信号.
    );
end     SYNC_SIG_DRIVER;
architecture MODEL of SYNC_SIG_DRIVER is
    procedure REPORT_DEBUG(MESSAGE: STRING) is
        variable text_line  : line;
    begin
        if (DEBUG) then
            WRITE(text_line, Now, RIGHT,  13);
            WRITE(text_line, string'(" (") & NAME & ") SYNC_SIG_DRIVER:");
            WRITE(text_line, MESSAGE);
            WRITELINE(OUTPUT, text_line);
        end if;
    end procedure;
begin
    process 
        variable sync_delay : integer;
    begin
        SYNC   <= 'Z';
        ACK    <= '0';
        SYNC_LOOP: loop
            if (REQ > 0) then
                REPORT_DEBUG(string'("REQ>0"));
                sync_delay := REQ;
                if (sync_delay >= 2) then
                    for i in 2 to sync_delay loop
                        wait until (CLK'event and CLK = '1');
                    end loop;
                end if;
                SYNC   <= 'H';
                REPORT_DEBUG(string'("WAIT SYNC START"));
                wait until (SYNC = '1' or SYNC = 'H');
                REPORT_DEBUG(string'("WAIT SYNC DONE"));
                SYNC   <= '0';
                ACK    <= '1';
                REPORT_DEBUG(string'("WAIT REQ START"));
                wait until (REQ = 0);
                REPORT_DEBUG(string'("WAIT REQ DONE"));
                ACK    <= '0';
            elsif (REQ = 0) then
                REPORT_DEBUG(string'("REQ=0"));
                SYNC   <= '0';
            else
                REPORT_DEBUG(string'("REQ<0"));
                SYNC   <= 'Z';
            end if;
            wait on REQ;
        end loop;
    end process;
end MODEL;
-----------------------------------------------------------------------------------
-- SYNC_LOCAL_HUB : 
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.SYNC.all;
use     DUMMY_PLUG.UTIL.INTEGER_TO_STRING;
-----------------------------------------------------------------------------------
--! @brief モジュール内でローカルにモデル間同期するためのコンポーネント.
-----------------------------------------------------------------------------------
entity SYNC_LOCAL_HUB is
    generic (
        NAME     :       STRING;            --! デバッグ出力用の名前.
        PLUG_SIZE:       SYNC_PLUG_NUM_TYPE --! 接続するモデルの数.
    );
    port (
        CLK      : in    std_logic;         --! クロック.
        RST      : in    std_logic;         --! 非同期リセット.
        CLR      : in    std_logic;         --! 同期リセット.
        DEBUG    : in    boolean;           --! デバッグ出力をするための信号.
        SYNC     : inout SYNC_SIG_TYPE;     --! モデル間同期用入出力信号.
        REQ      : in    SYNC_REQ_VECTOR(1 to PLUG_SIZE);  --! 同期要求入力信号.
        ACK      : out   SYNC_ACK_VECTOR(1 to PLUG_SIZE)   --! 同期応答出力信号.
    );
end SYNC_LOCAL_HUB;
architecture MODEL of SYNC_LOCAL_HUB is
begin
    PLUG : for i in 1 to PLUG_SIZE generate
        DRIVER : SYNC_SIG_DRIVER
            generic map (
                NAME     => NAME & "(" & INTEGER_TO_STRING(i) & ")",
                PLUG_NUM => i
            )
            port map (
                CLK      => CLK   ,   --! In  : 
                RST      => RST   ,   --! In  : 
                CLR      => CLR   ,   --! In  : 
                DEBUG    => DEBUG ,   --! In  : 
                SYNC     => sync  ,   --! I/O : 
                REQ      => REQ(i),   --! In  : 
                ACK      => ACK(i)    --! Out : 
            );
    end generate;
end MODEL;
----------------------------------------------------------------------------------
--
----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.SYNC.all;
use     DUMMY_PLUG.UTIL.BIN_TO_STRING;
-----------------------------------------------------------------------------------
--! @brief 同期信号の値を標準出力に出力するコンポーネント.
-----------------------------------------------------------------------------------
entity  SYNC_PRINT is
    generic(NAME:    STRING       );
    port   (SYNC: in SYNC_SIG_TYPE);
end SYNC_PRINT;
architecture MODEL of SYNC_PRINT is
begin
    process (SYNC)
        variable text_line : line;
    begin
        WRITE(text_line, Now, RIGHT,  13);
        WRITE(text_line, string'(" (") & NAME & ") ");
        WRITE(text_line, BIN_TO_STRING(SYNC));
        WRITELINE(OUTPUT, text_line);
    end process;
end MODEL;
----------------------------------------------------------------------------------
--
----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--!     @file    vocal.vhd
--!     @brief   Package for Dummy Plug Message Output.
--!     @version 1.6.1
--!     @date    2016/3/15
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug の各種文字列を標準出力に出力するパッケージ.
-----------------------------------------------------------------------------------
package VOCAL is
    -------------------------------------------------------------------------------
    --! @brief 各種の状態を保持する構造体.
    -------------------------------------------------------------------------------
    type      VOCAL_TYPE is record
        name                : LINE;
        tag_debug           : LINE;
        tag_remark          : LINE;
        tag_note            : LINE;
        tag_warning         : LINE;
        tag_mismatch        : LINE;
        tag_error           : LINE;
        tag_failure         : LINE;
        tag_read_error      : LINE;
        tag_field_width     : integer;
        time_field_width    : integer;
        name_field_width    : integer;
        enable_debug        : boolean;
        enable_remark       : boolean;
        enable_note         : boolean;
        enable_warning      : boolean;
        enable_mismatch     : boolean;
        enable_error        : boolean;
        enable_failure      : boolean;
    end record;
    -------------------------------------------------------------------------------
    --! @brief 各種の状態を保持する構造体の初期化用定数を生成する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NAME    名前.
    --! @return        生成した定数.
    -------------------------------------------------------------------------------
    function  NEW_VOCAL(NAME: STRING) return VOCAL_TYPE;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にDEBUGメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_DEBUG   (SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にREMARKメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_REMARK  (SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にNOTEメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_NOTE    (SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にWARNINGメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_WARNING (SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にMISMATCHメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_MISMATCH(SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にERRORメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_ERROR   (SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にFAILUREメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_FAILURE (SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にシナリオリードエラーメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_READ_ERROR(SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)に適当にメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure SAY  (SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)に適当にメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure SHOUT(SELF:inout VOCAL_TYPE;MESSAGE:in STRING);
end VOCAL;
-----------------------------------------------------------------------------------
-- 
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug の各種文字列を標準出力に出力するパッケージの本体.
-----------------------------------------------------------------------------------
package body  VOCAL is
    -------------------------------------------------------------------------------
    --! @brief デフォルトの出力用タグ
    -------------------------------------------------------------------------------
    constant  DEFAULT_TAG_DEBUG          : STRING  := ">>>>> Debug   :";
    constant  DEFAULT_TAG_REMARK         : STRING  := "----- Remark  :";
    constant  DEFAULT_TAG_NOTE           : STRING  := "----- Note    :";
    constant  DEFAULT_TAG_WARNING        : STRING  := "+++++ Warning :";
    constant  DEFAULT_TAG_MISMATCH       : STRING  := "????? Mismatch:";
    constant  DEFAULT_TAG_ERROR          : STRING  := "***** Error   :";
    constant  DEFAULT_TAG_FAILURE        : STRING  := "##### Failure :";
    constant  DEFAULT_TAG_READ_ERROR     : STRING  := "!!!!Read Error:";
    -------------------------------------------------------------------------------
    --! @brief デフォルトの各フィールド幅
    -------------------------------------------------------------------------------
    constant  DEFAULT_TIME_FIELD_WIDTH   : integer := 13;
    constant  DEFAULT_NAME_FIELD_WIDTH   : integer := 8;
    constant  DEFAULT_TAG_FIELD_WIDTH    : integer := -15;
    -------------------------------------------------------------------------------
    --! @brief 各種の状態を保持する構造体の初期化用定数を生成する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NAME    名前.
    --! @return           生成した定数.
    -------------------------------------------------------------------------------
    function  NEW_VOCAL(
                 NAME       : STRING 
    ) return VOCAL_TYPE is
        variable self       : VOCAL_TYPE;
    begin
        WRITE(self.name          , NAME);
        WRITE(self.tag_debug     , DEFAULT_TAG_DEBUG     );
        WRITE(self.tag_remark    , DEFAULT_TAG_REMARK    );
        WRITE(self.tag_note      , DEFAULT_TAG_NOTE      );
        WRITE(self.tag_warning   , DEFAULT_TAG_WARNING   );
        WRITE(self.tag_mismatch  , DEFAULT_TAG_MISMATCH  );
        WRITE(self.tag_error     , DEFAULT_TAG_ERROR     );
        WRITE(self.tag_failure   , DEFAULT_TAG_FAILURE   );
        WRITE(self.tag_read_error, DEFAULT_TAG_READ_ERROR);
        self.time_field_width := DEFAULT_TIME_FIELD_WIDTH;
        self.name_field_width := DEFAULT_NAME_FIELD_WIDTH;
        self.tag_field_width  := DEFAULT_TAG_FIELD_WIDTH;
        self.enable_debug     := FALSE;
        self.enable_remark    := TRUE;
        self.enable_note      := TRUE;
        self.enable_warning   := TRUE;
        self.enable_mismatch  := TRUE;
        self.enable_error     := TRUE;
        self.enable_failure   := TRUE;
        return self;
    end function;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    TAG     タグ.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_MESSAGE(SELF:inout VOCAL_TYPE; TAG:inout LINE; MESSAGE:in STRING) is
        variable text_line   : LINE;
    begin
        if    (SELF.tag_field_width > 0) then
            WRITE(text_line, TAG(TAG'range), RIGHT,  SELF.tag_field_width);
            WRITE(text_line, string'(" "));
        elsif (SELF.tag_field_width < 0) then
            WRITE(text_line, TAG(TAG'range), LEFT , -SELF.tag_field_width);
            WRITE(text_line, string'(" "));
        end if;
        if    (SELF.time_field_width > 0) then
            WRITE(text_line, Now, RIGHT,  SELF.time_field_width);
        elsif (SELF.time_field_width < 0) then
            WRITE(text_line, Now, LEFT , -SELF.time_field_width);
        end if;
        WRITE(text_line, " (" & SELF.name(SELF.name'range) & ") " & MESSAGE);
        WRITELINE(OUTPUT, text_line);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にDEBUGメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_DEBUG(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
    begin
        if (SELF.enable_debug) then 
            REPORT_MESSAGE(SELF, SELF.tag_debug, MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にREMARKメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_REMARK(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
    begin
        if (SELF.enable_remark) then 
            REPORT_MESSAGE(SELF, SELF.tag_remark, MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にNOTEメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_NOTE(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
    begin
        if (SELF.enable_note) then 
            REPORT_MESSAGE(SELF, SELF.tag_note, MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にWARNINGメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_WARNING(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
    begin
        if (SELF.enable_warning) then 
            REPORT_MESSAGE(SELF, SELF.tag_warning, MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にMISMATCHメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_MISMATCH(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
    begin
        if (SELF.enable_mismatch) then 
            REPORT_MESSAGE(SELF, SELF.tag_mismatch, MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にERRORメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_ERROR(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
    begin
        if (SELF.enable_error) then 
            REPORT_MESSAGE(SELF, SELF.tag_error, MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にFAILUREメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_FAILURE(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
    begin
        if (SELF.enable_failure) then 
            REPORT_MESSAGE(SELF, SELF.tag_failure, MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にシナリオリードエラーメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_READ_ERROR(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
    begin
        REPORT_MESSAGE(SELF, SELF.tag_read_error, MESSAGE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)に適当にメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure SAY(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
        variable text_line   : LINE;
    begin
        if    (SELF.time_field_width > 0) then
            WRITE(text_line, Now, RIGHT,  SELF.time_field_width);
            WRITE(text_line, string'("|"));
        elsif (SELF.time_field_width < 0) then
            WRITE(text_line, Now, LEFT , -SELF.time_field_width);
            WRITE(text_line, string'("|"));
        end if;
        if    (SELF.name_field_width > 0) then
            WRITE(text_line, SELF.name(SELF.name'range), RIGHT,  SELF.name_field_width);
            WRITE(text_line, string'(" < "));
        elsif (SELF.name_field_width < 0) then
            WRITE(text_line, SELF.name(SELF.name'range), LEFT , -SELF.name_field_width);
            WRITE(text_line, string'(" < "));
        end if;
        WRITE(text_line, MESSAGE);
        WRITELINE(OUTPUT, text_line);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)に適当にメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF    ボーカル変数.
    --! @param    MESSAGE 出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure SHOUT(SELF:inout VOCAL_TYPE;MESSAGE:in STRING) is
        variable text_line   : LINE;
    begin
        if    (SELF.time_field_width > 0) then
            WRITE(text_line, Now, RIGHT,  SELF.time_field_width);
            WRITE(text_line, string'("|"));
        elsif (SELF.time_field_width < 0) then
            WRITE(text_line, Now, LEFT , -SELF.time_field_width);
            WRITE(text_line, string'("|"));
        end if;
        if    (SELF.name_field_width > 0) then
            WRITE(text_line, SELF.name(SELF.name'range), RIGHT,  SELF.name_field_width);
            WRITE(text_line, string'(" < "));
        elsif (SELF.name_field_width < 0) then
            WRITE(text_line, SELF.name(SELF.name'range), LEFT , -SELF.name_field_width);
            WRITE(text_line, string'(" < "));
        end if;
        WRITE(text_line, MESSAGE);
        WRITELINE(OUTPUT, text_line);
    end procedure;
end VOCAL;
-----------------------------------------------------------------------------------
--!     @file    axi4_types.vhd
--!     @brief   AXI4 Channel Signal Type Package.
--!     @version 1.6.1
--!     @date    2016/3/15
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
-----------------------------------------------------------------------------------
--! @brief AXI4 の各種タイプ/定数を定義しているパッケージ.
-----------------------------------------------------------------------------------
package AXI4_TYPES is
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのバースト長信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_ALEN_WIDTH      : integer := 8;
    constant  AXI3_ALEN_WIDTH      : integer := 4;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルの転送サイズ信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_ASIZE_WIDTH     : integer := 3;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルの転送サイズ信号のタイプ.
    -------------------------------------------------------------------------------
    subtype   AXI4_ASIZE_TYPE      is std_logic_vector(AXI4_ASIZE_WIDTH  -1 downto 0);
    constant  AXI4_ASIZE_1BYTE     : AXI4_ASIZE_TYPE := "000";
    constant  AXI4_ASIZE_2BYTE     : AXI4_ASIZE_TYPE := "001";
    constant  AXI4_ASIZE_4BYTE     : AXI4_ASIZE_TYPE := "010";
    constant  AXI4_ASIZE_8BYTE     : AXI4_ASIZE_TYPE := "011";
    constant  AXI4_ASIZE_16BYTE    : AXI4_ASIZE_TYPE := "100";
    constant  AXI4_ASIZE_32BYTE    : AXI4_ASIZE_TYPE := "101";
    constant  AXI4_ASIZE_64BYTE    : AXI4_ASIZE_TYPE := "110";
    constant  AXI4_ASIZE_128BYTE   : AXI4_ASIZE_TYPE := "111";
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのバースト種別信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_ABURST_WIDTH    : integer := 2;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのバースト種別信号のタイプ.
    -------------------------------------------------------------------------------
    subtype   AXI4_ABURST_TYPE     is std_logic_vector(AXI4_ABURST_WIDTH -1 downto 0);
    constant  AXI4_ABURST_FIXED    : AXI4_ABURST_TYPE := "00";
    constant  AXI4_ABURST_INCR     : AXI4_ABURST_TYPE := "01";
    constant  AXI4_ABURST_WRAP     : AXI4_ABURST_TYPE := "10";
    constant  AXI4_ABURST_RESV     : AXI4_ABURST_TYPE := "11";
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルの排他アクセス信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_ALOCK_WIDTH     : integer := 1;
    constant  AXI3_ALOCK_WIDTH     : integer := 2;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのキャッシュ信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_ACACHE_WIDTH    : integer := 4;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのキャッシュ信号のタイプ.
    -------------------------------------------------------------------------------
    subtype   AXI4_ACACHE_TYPE     is std_logic_vector(AXI4_ACACHE_WIDTH -1 downto 0);
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルの保護ユニットサポート信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_APROT_WIDTH     : integer := 3;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルの保護ユニットサポート信号のタイプ.
    -------------------------------------------------------------------------------
    subtype   AXI4_APROT_TYPE      is std_logic_vector(AXI4_APROT_WIDTH  -1 downto 0);
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのQoS(Quality of Service)信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_AQOS_WIDTH      : integer := 4;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのQoS(Quality of Service)信号のタイプ.
    -------------------------------------------------------------------------------
    subtype   AXI4_AQOS_TYPE       is std_logic_vector(AXI4_AQOS_WIDTH   -1 downto 0);
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのリージョン信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_AREGION_WIDTH   : integer := 4;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルのリージョン信号のタイプ.
    -------------------------------------------------------------------------------
    subtype   AXI4_AREGION_TYPE    is std_logic_vector(AXI4_AREGION_WIDTH-1 downto 0);
    -------------------------------------------------------------------------------
    --! @brief 応答信号のビット数.
    -------------------------------------------------------------------------------
    constant  AXI4_RESP_WIDTH      : integer := 2;
    -------------------------------------------------------------------------------
    --! @brief 応答信号のタイプ.
    -------------------------------------------------------------------------------
    subtype   AXI4_RESP_TYPE       is std_logic_vector(AXI4_RESP_WIDTH   -1 downto 0);
    constant  AXI4_RESP_OKAY       : AXI4_RESP_TYPE := "00";
    constant  AXI4_RESP_EXOKAY     : AXI4_RESP_TYPE := "01";
    constant  AXI4_RESP_SLVERR     : AXI4_RESP_TYPE := "10";
    constant  AXI4_RESP_DECERR     : AXI4_RESP_TYPE := "11";
    -------------------------------------------------------------------------------
    --! @brief AXI4 ID の最大ビット幅
    -------------------------------------------------------------------------------
    constant  AXI4_ID_MAX_WIDTH    : integer := 32;
    -------------------------------------------------------------------------------
    --! @brief AXI4 ADDR の最大ビット幅
    -------------------------------------------------------------------------------
    constant  AXI4_ADDR_MAX_WIDTH  : integer := 64;
    -------------------------------------------------------------------------------
    --! @brief AXI4 DATA の最大ビット幅
    -------------------------------------------------------------------------------
    constant  AXI4_DATA_MAX_WIDTH  : integer := 1024;
    -------------------------------------------------------------------------------
    --! @brief AXI4 WSTRB の最大ビット幅
    -------------------------------------------------------------------------------
    constant  AXI4_STRB_MAX_WIDTH  : integer := AXI4_DATA_MAX_WIDTH/8;
    -------------------------------------------------------------------------------
    --! @brief AXI4 USER の最大ビット幅
    -------------------------------------------------------------------------------
    constant  AXI4_USER_MAX_WIDTH  : integer := 32;
    -------------------------------------------------------------------------------
    --! @brief AXI4 ARLEN/AWLEN の最大ビット幅
    -------------------------------------------------------------------------------
    constant  AXI4_ALEN_MAX_WIDTH  : integer :=  8;
    -------------------------------------------------------------------------------
    --! @brief AXI4 ARLOCK/AWLOCK の最大ビット幅
    -------------------------------------------------------------------------------
    constant  AXI4_ALOCK_MAX_WIDTH : integer :=  2;
    -------------------------------------------------------------------------------
    --! @brief AXI4 チャネルの可変長信号のビット幅を指定するレコードタイプ.
    -------------------------------------------------------------------------------
    type      AXI4_SIGNAL_WIDTH_TYPE is record
              ID                   : integer range 1 to AXI4_ID_MAX_WIDTH;
              AWADDR               : integer range 1 to AXI4_USER_MAX_WIDTH;
              AWUSER               : integer range 1 to AXI4_USER_MAX_WIDTH;
              ARADDR               : integer range 1 to AXI4_USER_MAX_WIDTH;
              ARUSER               : integer range 1 to AXI4_USER_MAX_WIDTH;
              ALEN                 : integer range 4 to AXI4_ALEN_MAX_WIDTH;
              ALOCK                : integer range 1 to AXI4_ALOCK_MAX_WIDTH;
              WDATA                : integer range 8 to AXI4_DATA_MAX_WIDTH;
              WUSER                : integer range 1 to AXI4_USER_MAX_WIDTH;
              RDATA                : integer range 8 to AXI4_DATA_MAX_WIDTH;
              RUSER                : integer range 1 to AXI4_USER_MAX_WIDTH;
              BUSER                : integer range 1 to AXI4_USER_MAX_WIDTH;
    end record;
    -------------------------------------------------------------------------------
    --! @brief AXI4-Stream TDEST の最大ビット幅
    -------------------------------------------------------------------------------
    constant  AXI4_DEST_MAX_WIDTH  : integer := 32;
    -------------------------------------------------------------------------------
    --! @brief AXI4-Stream の可変長信号のビット幅を指定するレコードタイプ.
    -------------------------------------------------------------------------------
    type      AXI4_STREAM_SIGNAL_WIDTH_TYPE is record
              ID                   : integer range 1 to AXI4_ID_MAX_WIDTH;
              USER                 : integer range 1 to AXI4_USER_MAX_WIDTH;
              DEST                 : integer range 1 to AXI4_DEST_MAX_WIDTH;
              DATA                 : integer range 8 to AXI4_DATA_MAX_WIDTH;
    end record;
end package;
-----------------------------------------------------------------------------------
--!     @file    core.vhd
--!     @brief   Core Package for Dummy Plug.
--!     @version 1.6.1
--!     @date    2016/3/15
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.READER.READER_TYPE;
use     DUMMY_PLUG.READER.EVENT_TYPE;
use     DUMMY_PLUG.VOCAL.VOCAL_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_REQ_VECTOR;
use     DUMMY_PLUG.SYNC.SYNC_ACK_VECTOR;
use     DUMMY_PLUG.SYNC.SYNC_SIG_VECTOR;
use     DUMMY_PLUG.SYNC.SYNC_PLUG_NUM_TYPE;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug のコアパッケージ.
-----------------------------------------------------------------------------------
package CORE is
    -------------------------------------------------------------------------------
    --! @brief オペレーションタイプ
    -------------------------------------------------------------------------------
    type      OPERATION_TYPE is (
              OP_INIT        ,-- コアオペレーションの開始.
              OP_DOC_BEGIN   ,-- シナリオのブロック開始オペレーション.
              OP_DOC_END     ,-- シナリオのブロック終了オペレーション.
              OP_MAP         ,-- マップオペレーション.
              OP_SCALAR      ,-- スカラーオペレーション.
              OP_FINISH       -- コアオペレーションの終了.
    );
    -------------------------------------------------------------------------------
    --! @brief オペレーション処理状態タイプ
    -------------------------------------------------------------------------------
    type      STATE_TYPE is (
              STATE_NULL     , -- 初期済み状態.
              STATE_STREAM   , --
              STATE_DOCUMENT , --
              STATE_TOP_SEQ  , -- コア名チェックモード.
              STATE_OP_MAP   , -- マップオペレーションモード.
              STATE_OP_SCALAR, -- スカラーオペレーションモード.
              STATE_MAP_VAL  , -- 
              STATE_MAP_SEQ  , -- 
              STATE_MAP_END  , -- 
              STATE_SEQ_VAL  , --
              STATE_SEQ_SKIP , --
              STATE_FINISH     --
    );
    -------------------------------------------------------------------------------
    --! @brief ステータスレポートタイプ.
    -------------------------------------------------------------------------------
    type      REPORT_STATUS_TYPE is record
                  valid               : boolean;
                  warning_count       : integer;
                  mismatch_count      : integer;
                  error_count         : integer;
                  failure_count       : integer;
                  read_error_count    : integer;
    end record;
    -------------------------------------------------------------------------------
    --! @brief ステータスレポートタイプのNULL定数.
    -------------------------------------------------------------------------------
    constant  REPORT_STATUS_NULL : REPORT_STATUS_TYPE := (
                  valid               => FALSE,
                  warning_count       => 0,
                  mismatch_count      => 0,
                  error_count         => 0,
                  failure_count       => 0,
                  read_error_count    => 0
    );
    -------------------------------------------------------------------------------
    --! @brief ステータスレポート配列タイプ.
    -------------------------------------------------------------------------------
    type      REPORT_STATUS_VECTOR is array (integer range <>) of  REPORT_STATUS_TYPE;
    -------------------------------------------------------------------------------
    --! @brief スクラッチ用文字列領域の大きさの定義.
    -------------------------------------------------------------------------------
    constant  STR_BUF_SIZE  : integer := 1024;
    -------------------------------------------------------------------------------
    --! @brief コアの各種状態を保持する構造体.
    -------------------------------------------------------------------------------
    type      CORE_TYPE is record
                  name          : LINE;                     -- インスタンス名を保持.
                  reader        : READER_TYPE;              -- リーダー用変数.
                  vocal         : VOCAL_TYPE;               -- ボーカル用変数.
                  str_buf       : STRING(1 to STR_BUF_SIZE);-- スクラッチ用文字列バッファ.
                  str_len       : integer;                  -- str_bufに格納されている文字数.
                  prev_state    : STATE_TYPE;               -- 一つ前の状態.
                  curr_state    : STATE_TYPE;               -- 現在の状態.
                  report_status : REPORT_STATUS_TYPE;       -- 各種状態をレポートする変数.
                  debug         : integer;                  -- デバッグ用変数.
    end record;
    -------------------------------------------------------------------------------
    --! @brief コア変数の初期化用定数を生成する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NAME        コアの識別名.
    --! @param    STREAM_NAME シナリオファイルの名前を指定する.
    --! @return               生成した定数.
    -------------------------------------------------------------------------------
    function  NEW_CORE(
                  NAME          : STRING;
                  STREAM_NAME   : STRING
    ) return CORE_TYPE;
    -------------------------------------------------------------------------------
    --! @brief コア変数の初期化用定数を生成する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NAME        コアの識別名.
    --! @param    VOCAL_NAME  メッセージ用の識別名.
    --! @param    STREAM_NAME シナリオファイルの名前を指定する.
    --! @return               生成した定数.
    -------------------------------------------------------------------------------
    function  NEW_CORE(
                  NAME          : STRING;
                  VOCAL_NAME    : STRING;
                  STREAM_NAME   : STRING 
    ) return CORE_TYPE;
    -------------------------------------------------------------------------------
    --! @brief コア変数の初期化サブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        コアの識別名.
    --! @param    STREAM      シナリオのストリーム.
    --! @param    STREAM_NAME シナリオのストリーム名.
    --! @param    OPERATION   オペレーションコマンド.
    -------------------------------------------------------------------------------
    procedure CORE_INIT(
        variable  SELF          : inout CORE_TYPE;
                  NAME          : in    STRING;
        file      STREAM        :       TEXT;
                  STREAM_NAME   : in    STRING;
        variable  OPERATION     : out   OPERATION_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief コア変数の初期化サブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        コアの識別名.
    --! @param    VOCAL_NAME  メッセージ用の識別名.
    --! @param    STREAM      シナリオのストリーム.
    --! @param    STREAM_NAME シナリオのストリーム名.
    --! @param    OPERATION   オペレーションコマンド.
    -------------------------------------------------------------------------------
    procedure CORE_INIT(
        variable  SELF          : inout CORE_TYPE;
                  NAME          : in    STRING;
                  VOCAL_NAME    :       STRING;
        file      STREAM        :       TEXT;
                  STREAM_NAME   : in    STRING;
        variable  OPERATION     : out   OPERATION_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief コアからオペレーションコマンドを読むサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      シナリオのストリーム.
    --! @param    OPERATION   オペレーションコマンド.
    --! @param    OP_WORD     オペレーションキーワード.
    -------------------------------------------------------------------------------
    procedure READ_OPERATION(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
        variable  OPERATION     : out   OPERATION_TYPE;
        variable  OP_WORD       : out   string
    );
    -------------------------------------------------------------------------------
    --! @brief SYNCオペレーションの引数を読むサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      シナリオのストリーム.
    --! @param    OPERATION   オペレーションコマンド.
    --! @param    SYNC_PORT   読み取ったポート番号.
    --! @param    SYNC_WAIT   読み取った同期までの待ちクロック数.
    -------------------------------------------------------------------------------
    procedure READ_SYNC_ARGS(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  OPERATION     : in    OPERATION_TYPE;
                  SYNC_PORT     : out   integer;
                  SYNC_WAIT     : out   integer
    );
    -------------------------------------------------------------------------------
    --! @brief 同期オペレーション.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NUM         同期ポート番号.
    --! @param    COUNT       同期までの待ちクロック数.
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_ACK    同期応答信号入力.
    -------------------------------------------------------------------------------
    procedure CORE_SYNC(
        variable  SELF          : inout CORE_TYPE;
                  NUM           : in    integer;
                  COUNT         : in    integer;
        signal    SYNC_REQ      : out   SYNC_REQ_VECTOR;
        signal    SYNC_ACK      : in    SYNC_ACK_VECTOR
    );
    -------------------------------------------------------------------------------
    --! @brief 次に読み取ることのできるイベントまで読み飛ばすサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    NEXT_EVENT  見つかったイベント.
    -------------------------------------------------------------------------------
    procedure SEEK_EVENT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  NEXT_EVENT    : out   EVENT_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからイベントを読み取るサブプログラム.
    --!        ただしスカラー、文字列などは読み捨てる.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み取るイベント.
    -------------------------------------------------------------------------------
    procedure READ_EVENT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENTを読み飛ばすサブプログラム.
    --!        EVENTがMAP_BEGINやSEQ_BEGINの場合は、対応するMAP_ENDまたはSEQ_ENDまで
    --!        読み飛ばすことに注意.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み飛ばすイベント.
    -------------------------------------------------------------------------------
    procedure SKIP_EVENT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームから読んだスカラーとキーワードがマッチするかどうか調べる.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    KEY_WORD    キーワード.
    --! @param    MATCH       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure MATCH_KEY_WORD(
        variable  SELF          : inout CORE_TYPE;
                  KEY_WORD      : in    STRING;
                  MATCH         : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief READ_EVENTで読み取った文字列をキーワードに変換する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    KEY_WORD    キーワード.
    -------------------------------------------------------------------------------
    procedure COPY_KEY_WORD(
        variable  SELF          : inout CORE_TYPE;
                  KEY_WORD      : out   STRING
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームからメッセージを読んで標準出力(OUTPUT)に出力する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure EXECUTE_SAY(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT
    );
    -------------------------------------------------------------------------------
    --! @brief OUTオペレーション.GPO(General Purpose Output)に値を出力する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    SIGNALS     出力する値を保持している変数.
    --! @param    GPO         GPO(General Purpose Output)信号.
    ---------------------------------------------------------------------------
    procedure EXECUTE_OUT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  SIGNALS       : inout std_logic_vector;
        signal    GPO           : out   std_logic_vector
    );
    -------------------------------------------------------------------------------
    --! @brief GPI(General Purpose Input)信号の値をチェックする.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    SIGNALS     チェックする値.
    --! @param    GPI         GPI(General Purpose Input)信号.
    --! @param    MATCH       GPIとSIGNALSを比較して一致したらTRUE、しなかったらFALSE.
    -------------------------------------------------------------------------------
    procedure  MATCH_GPI(
        variable  SELF          : inout CORE_TYPE;
                  SIGNALS       : in    std_logic_vector;
        signal    GPI           : in    std_logic_vector;
                  MATCH         : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief ストリームから、次のEVENTを読み飛ばす.
    --!        EVENTがMAP_BEGINやSEQ_BEGINの場合は、対応するMAP_ENDまたはSEQ_ENDまで
    --!        読み飛ばすことに注意.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure EXECUTE_SKIP(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT
    );
    -------------------------------------------------------------------------------
    --! @brief REPORTフラグを書き換えるオペレーションを実行する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure EXECUTE_REPORT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT
    );
    -------------------------------------------------------------------------------
    --! @brief DEBUGフラグを書き換えるオペレーションを実行する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure EXECUTE_DEBUG(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT
    );
    -------------------------------------------------------------------------------
    --! @brief 不正なSCALARオペレーションを警告して読み飛ばす.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    OP_WORD     オペレーションキーワード.
    -------------------------------------------------------------------------------
    procedure EXECUTE_UNDEFINED_SCALAR(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  OP_WORD       : in    STRING
    );
    ------------------------------------------------------------------------------
    --! @brief 不正なMAPオペレーションを警告して読み飛ばす.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    OP_WORD     オペレーションキーワード.
    -------------------------------------------------------------------------------
    procedure EXECUTE_UNDEFINED_MAP_KEY(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  OP_WORD       : in    STRING
    );
    -------------------------------------------------------------------------------
    --! @brief シナリオから整数型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VAL         読んだ整数型の値.
    --! @param    GOOD        読み取れたことを示す.
    -------------------------------------------------------------------------------
    procedure READ_INTEGER(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  VAL           : inout integer;
                  GOOD          : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief シナリオからboolean型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VAL         読んだboolean型の値.
    --! @param    GOOD        読み取れたことを示す.
    -------------------------------------------------------------------------------
    procedure READ_BOOLEAN(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  VAL           : inout boolean;
                  GOOD          : out   boolean
    );
    -------------------------------------------------------------------------------
    --! @brief シナリオからstd_logic_vector型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VAL         読んだstd_logic_vector型の値.
    --! @param    VAL_LEN     読んだstd_logic_vectorのビット数.
    -------------------------------------------------------------------------------
    procedure READ_STD_LOGIC_VECTOR(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  VAL           : inout std_logic_vector;
                  VAL_LEN       : out   integer
    );
    ------------------------------------------------------------------------------
    --! @brief シナリオのマップからキーと値を読み出す準備をするサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       次のイベント.
    -------------------------------------------------------------------------------
    procedure MAP_READ_PREPARE_FOR_NEXT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : inout EVENT_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief シナリオのマップから名前を指定してstd_logic_vector型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    KEY         信号名/変数名.
    --! @param    VAL         読んだstd_logic_vector型の値.
    --! @param    EVENT       次のイベント.
    -------------------------------------------------------------------------------
    procedure MAP_READ_STD_LOGIC_VECTOR(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  KEY           : in    STRING;
                  VAL           : inout std_logic_vector;
                  EVENT         : inout EVENT_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief シナリオのマップから名前を指定してinteger型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    KEY         信号名/変数名.
    --! @param    VAL         読んだinteger型の値.
    --! @param    EVENT       次のイベント.
    -------------------------------------------------------------------------------
    procedure MAP_READ_INTEGER(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  KEY           : in    STRING;
                  VAL           : inout integer;
                  EVENT         : inout EVENT_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief シナリオのマップからキーを指定してboolean型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    KEY         信号名/変数名.
    --! @param    VAL         読んだboolean型の値.
    --! @param    EVENT       次のイベント.
    -------------------------------------------------------------------------------
    procedure MAP_READ_BOOLEAN(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  KEY           : in    STRING;
                  VAL           : inout boolean;
                  EVENT         : inout EVENT_TYPE
    );
    -------------------------------------------------------------------------------
    --! @brief コア変数のデバッグ用ダンプ
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        識別名.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_DEBUG     (SELF:inout CORE_TYPE; NAME,MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief コア変数のデバッグ用ダンプ
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_DEBUG     (SELF:inout CORE_TYPE; MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にREMARKメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_REMARK    (SELF:inout CORE_TYPE; MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にNOTEメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_NOTE      (SELF:inout CORE_TYPE; MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にWARNINGメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_WARNING   (SELF:inout CORE_TYPE; MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にMISMATCHメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_MISMATCH  (SELF:inout CORE_TYPE; MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にERRORメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_ERROR     (SELF:inout CORE_TYPE; MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にFAILUREメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_FAILURE   (SELF:inout CORE_TYPE; MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief シナリオリードエラーによる中断.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure READ_ERROR       (SELF:inout CORE_TYPE; MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief シナリオリードエラーによる中断.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        識別名.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure READ_ERROR       (SELF:inout CORE_TYPE; NAME, MESSAGE:in STRING);
    -------------------------------------------------------------------------------
    --! @brief 致命的エラーによる中断.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure EXECUTE_ABORT    (SELF:inout CORE_TYPE; MESSAGE: in STRING);
    -------------------------------------------------------------------------------
    --! @brief 致命的エラーによる中断.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        識別名.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure EXECUTE_ABORT    (SELF:inout CORE_TYPE; NAME, MESSAGE: in STRING);
    -------------------------------------------------------------------------------
    --! @brief ステータスレポートを集計する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    REPORTS     集計するステータスレポート.
    --! @return               集計したステータスレポート.
    -------------------------------------------------------------------------------
    function  MARGE_REPORT_STATUS(REPORTS: REPORT_STATUS_VECTOR) return REPORT_STATUS_TYPE;
    ------------------------------------------------------------------------------
    -- 
    ------------------------------------------------------------------------------
    component MARCHAL
        generic (
            SCENARIO_FILE   : STRING;
            NAME            : STRING;
            SYNC_PLUG_NUM   : SYNC_PLUG_NUM_TYPE;
            SYNC_WIDTH      : integer;
            FINISH_ABORT    : boolean
        );
        port(
            CLK             : in    std_logic;
            RESET           : out   std_logic;
            SYNC            : inout SYNC_SIG_VECTOR(SYNC_WIDTH-1 downto 0);
            REPORT_STATUS   : out   REPORT_STATUS_TYPE;
            FINISH          : out   std_logic
        );
    end component;
end CORE;
-----------------------------------------------------------------------------------
--! @brief Dummy Plug のコアパッケージ本体.
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.READER.all;
use     DUMMY_PLUG.VOCAL.all;
use     DUMMY_PLUG.SYNC.all;
use     DUMMY_PLUG.UTIL.INTEGER_TO_STRING;
use     DUMMY_PLUG.UTIL.BOOLEAN_TO_STRING;
use     DUMMY_PLUG.UTIL.BIN_TO_STRING;
use     DUMMY_PLUG.UTIL.STRING_TO_BOOLEAN;
use     DUMMY_PLUG.UTIL.STRING_TO_INTEGER;
use     DUMMY_PLUG.UTIL.STRING_TO_STD_LOGIC_VECTOR;
use     DUMMY_PLUG.UTIL.MATCH_STD_LOGIC;
package body CORE is
    -------------------------------------------------------------------------------
    --! @brief コア変数のデバッグ用ダンプ
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_DEBUG     (SELF: inout CORE_TYPE;MESSAGE:in STRING) is
    begin
        if (SELF.debug > 0) then
            REPORT_DEBUG(SELF.vocal, MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief コア変数のデバッグ用ダンプ
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        識別名.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_DEBUG     (SELF: inout CORE_TYPE; NAME, MESSAGE:in STRING) is
    begin
        if (SELF.debug > 0) then
            REPORT_DEBUG(SELF.vocal, NAME & " " & MESSAGE);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にREMARKメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_REMARK    (SELF:inout CORE_TYPE;MESSAGE:in STRING) is
    begin
        REPORT_REMARK(SELF.vocal, MESSAGE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にNOTEメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_NOTE      (SELF:inout CORE_TYPE;MESSAGE:in STRING) is
    begin
        REPORT_NOTE(SELF.vocal, MESSAGE);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にWARNINGメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_WARNING   (SELF:inout CORE_TYPE;MESSAGE:in STRING) is
    begin
        REPORT_WARNING(SELF.vocal, MESSAGE);
        SELF.report_status.warning_count := SELF.report_status.warning_count + 1;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にMISMATCHメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_MISMATCH  (SELF:inout CORE_TYPE;MESSAGE:in STRING) is
    begin
        REPORT_MISMATCH(SELF.vocal, MESSAGE);
        SELF.report_status.mismatch_count := SELF.report_status.mismatch_count + 1;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にERRORメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_ERROR     (SELF:inout CORE_TYPE;MESSAGE:in STRING) is
    begin
        REPORT_ERROR(SELF.vocal, MESSAGE);
        SELF.report_status.error_count := SELF.report_status.error_count + 1;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 標準出力(OUTPUT)にFAILUREメッセージを出力するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure REPORT_FAILURE   (SELF:inout CORE_TYPE;MESSAGE:in STRING) is
    begin
        REPORT_FAILURE(SELF.vocal, MESSAGE);
        SELF.report_status.failure_count := SELF.report_status.failure_count + 1;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief コア変数の初期化用定数を生成する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NAME        コアの識別名.
    --! @param    STREAM_NAME シナリオファイルの名前を指定する.
    --! @return               生成した定数.
    -------------------------------------------------------------------------------
    function  NEW_CORE(
                  NAME          : STRING;
                  STREAM_NAME   : STRING
    ) return CORE_TYPE is
        variable self       : CORE_TYPE;
    begin
        return NEW_CORE(NAME, NAME, STREAM_NAME);
    end function;
    -------------------------------------------------------------------------------
    --! @brief コア変数の初期化用定数を生成する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    NAME        コアの識別名.
    --! @param    VOCAL_NAME  メッセージ用の識別名.
    --! @param    STREAM_NAME シナリオファイルの名前を指定する.
    --! @return               生成した定数.
    -------------------------------------------------------------------------------
    function  NEW_CORE(
                  NAME          : STRING;
                  VOCAL_NAME    : STRING;
                  STREAM_NAME   : STRING 
    ) return CORE_TYPE is
        variable self       : CORE_TYPE;
    begin
        WRITE(self.name, NAME);
        self.reader        := NEW_READER(NAME, STREAM_NAME);
        self.vocal         := NEW_VOCAL (VOCAL_NAME);
        self.debug         := 0;           
        self.prev_state    := STATE_NULL;
        self.curr_state    := STATE_NULL;
        self.report_status := REPORT_STATUS_NULL;
        self.report_status.valid := TRUE;
        return self;
    end function;
    -------------------------------------------------------------------------------
    --! @brief コア変数の初期化サブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        コアの識別名.
    --! @param    STREAM      シナリオのストリーム.
    --! @param    STREAM_NAME シナリオのストリーム名.
    --! @param    OPERATION   オペレーションコマンド.
    -------------------------------------------------------------------------------
    procedure CORE_INIT(
        variable  SELF          : inout CORE_TYPE;
                  NAME          : in    STRING;
        file      STREAM        :       TEXT;
                  STREAM_NAME   : in    STRING;
        variable  OPERATION     : out   OPERATION_TYPE
    ) is
    begin
        file_open(STREAM, STREAM_NAME, READ_MODE);
        SELF      := NEW_CORE(NAME, STREAM_NAME);
        OPERATION := OP_INIT;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief コア変数の初期化サブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        コアの識別名.
    --! @param    VOCAL_NAME  メッセージ用の識別名.
    --! @param    STREAM      シナリオのストリーム.
    --! @param    STREAM_NAME シナリオのストリーム名.
    --! @param    OPERATION   オペレーションコマンド.
    -------------------------------------------------------------------------------
    procedure CORE_INIT(
        variable  SELF          : inout CORE_TYPE;
                  NAME          : in    STRING;
                  VOCAL_NAME    :       STRING;
        file      STREAM        :       TEXT;
                  STREAM_NAME   : in    STRING;
        variable  OPERATION     : out   OPERATION_TYPE
    ) is
    begin
        file_open(STREAM, STREAM_NAME, READ_MODE);
        SELF      := NEW_CORE(NAME,VOCAL_NAME, STREAM_NAME);
        OPERATION := OP_INIT;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 次に読み取ることのできるイベントまで読み飛ばすサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    NEXT_EVENT  見つかったイベント.
    -------------------------------------------------------------------------------
    procedure SEEK_EVENT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  NEXT_EVENT    : out   EVENT_TYPE
    ) is
    begin
        SEEK_EVENT(SELF.reader, STREAM, NEXT_EVENT);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからイベントを読み取るサブプログラム.
    --!        ただしスカラー、文字列などは読み捨てる.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み取るイベント.
    -------------------------------------------------------------------------------
    procedure READ_EVENT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE
    ) is
        constant  PROC_NAME     :       string := "CORE.READ_EVENT";
        variable  read_len      :       integer;
        variable  read_good     :       boolean;
    begin 
        READ_EVENT(SELF.reader, STREAM, EVENT, SELF.str_buf, SELF.str_len, read_len, read_good);
        if (read_good = FALSE) then
            READ_ERROR(SELF, PROC_NAME, "READ_EVENT NG");
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからEVENTを読み飛ばすサブプログラム.
    --!        EVENTがMAP_BEGINやSEQ_BEGINの場合は、対応するMAP_ENDまたはSEQ_ENDまで
    --!        読み飛ばすことに注意.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       読み飛ばすイベント.
    -------------------------------------------------------------------------------
    procedure SKIP_EVENT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : in    EVENT_TYPE
    ) is
        constant  PROC_NAME     :       string := "CORE.SKIP_EVENT";
        variable  skip_good     :       boolean;
    begin
        SKIP_EVENT(SELF.reader, STREAM, EVENT, skip_good);
        if (skip_good = FALSE) then
            READ_ERROR(SELF, PROC_NAME, "SKIP_EVENT NG");
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームから読んだスカラーとキーワードがマッチするかどうか調べる.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    KEY_WORD    キーワード.
    --! @param    MATCH       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure MATCH_KEY_WORD(
        variable  SELF          : inout CORE_TYPE;
                  KEY_WORD      : in    STRING;
                  MATCH         : out   boolean
    ) is
    begin
        if (SELF.str_len /= KEY_WORD'length) then
            match := FALSE;
        else
            match := (SELF.str_buf(1 to SELF.str_len) = KEY_WORD);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 最も外側のシーケンスの各ノードに現れる最初のノードを調べて、
    --!        自分の名前があるか調べる.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    FOUND       名前があるかどうかを返す.
    -------------------------------------------------------------------------------
    procedure check_my_name(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
        variable  FOUND         : out   boolean
    ) is
        constant  PROC_NAME     :       string := "CORE.check_my_name";
        variable  get_event     :       EVENT_TYPE;
        variable  seq_level     :       integer;
        variable  match         :       boolean;
    begin
        seq_level := 0;
        FOUND     := FALSE;
        MAIN_LOOP: loop
            SEEK_EVENT(SELF, STREAM, get_event);
            case get_event is
                when EVENT_SEQ_BEGIN  =>
                    READ_EVENT(SELF, STREAM, get_event);
                    seq_level := seq_level + 1;
                when EVENT_SEQ_END    =>
                    if (seq_level > 0) then
                        READ_EVENT(SELF, STREAM, get_event);
                        seq_level := seq_level - 1;
                    end if;
                    exit when (seq_level = 0);
                when EVENT_SCALAR     =>
                    READ_EVENT(SELF, STREAM, get_event);
                    MATCH_KEY_WORD(SELF, SELF.name(SELF.name'range), match);
                    if (match) then
                        FOUND := TRUE;
                    end if;
                    exit when (seq_level = 0);
                when EVENT_ERROR     =>
                    READ_ERROR(SELF, PROC_NAME, "SEEK_EVENT NG");
                when others =>
                    SKIP_EVENT(SELF, STREAM, get_event);
            end case;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 最も外側のシーケンスの各ノードに現れる最初のノードを調べて、
    --!        次に遷移する状態を返す.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    NEXT_STATE  次に遷移する状態.
    -------------------------------------------------------------------------------
    procedure check_first_node(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
        variable  NEXT_STATE    : out   STATE_TYPE
    ) is
        constant  PROC_NAME     :       string := "CORE.check_first_node";
        variable  next_event    :       EVENT_TYPE;
        variable  found         :       boolean;
    begin
        CHECK_LOOP: loop
            SEEK_EVENT(SELF, STREAM, next_event);
            case next_event is
                -------------------------------------------------------------------
                -- エラーだった場合.
                -------------------------------------------------------------------
                when EVENT_ERROR =>
                    READ_ERROR(SELF, PROC_NAME, "SEEK_EVENT NG");
                -------------------------------------------------------------------
                -- 最初のノードがマップだった場合.
                -- * 例１ ID: {...}
                -- * 例２ ID: [{...},{...}]
                -------------------------------------------------------------------
                when EVENT_MAP_BEGIN =>
                    READ_EVENT(SELF, STREAM, next_event);
                    check_my_name(SELF, STREAM, found);
                    if (found) then
                        SEEK_EVENT(SELF, STREAM, next_event);
                        if (next_event = EVENT_SEQ_BEGIN) then
                            READ_EVENT(SELF, STREAM, next_event);
                            NEXT_STATE := STATE_MAP_SEQ;
                        else
                            NEXT_STATE := STATE_MAP_VAL;
                        end if;
                    else
                        SEEK_EVENT(SELF, STREAM, next_event);
                        SKIP_EVENT(SELF, STREAM, next_event);
                        NEXT_STATE := STATE_TOP_SEQ;
                    end if;
                    exit;
                -------------------------------------------------------------------
                -- 最初のノードがシーケンスだった場合.
                -- * 例１ [ID, {...}]
                -------------------------------------------------------------------
                when EVENT_SEQ_BEGIN =>
                    READ_EVENT(SELF, STREAM, next_event);
                    check_my_name(SELF, STREAM, found);
                    if (found) then
                        NEXT_STATE := STATE_SEQ_VAL;
                    else
                        NEXT_STATE := STATE_SEQ_SKIP;
                    end if;
                    exit;
                -------------------------------------------------------------------
                -- 最初のノードがTAG PROPERTYまたはアンカーの場合は単純に読み飛ばす.
                -------------------------------------------------------------------
                when EVENT_TAG_PROP | EVENT_ANCHOR =>
                    SKIP_EVENT(SELF, STREAM, next_event);
                    next;
                -------------------------------------------------------------------
                -- 最初のノードがマップでもシーケンスでもなかった場合はエラー.
                -------------------------------------------------------------------
                when others =>
                    SKIP_EVENT(SELF, STREAM, next_event);
                    NEXT_STATE := STATE_TOP_SEQ;
                    exit;
            end case;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief READ_EVENTで読み取った文字列をキーワードに変換する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    KEY_WORD    キーワード.
    -------------------------------------------------------------------------------
    procedure COPY_KEY_WORD(
        variable  SELF          : inout CORE_TYPE;
                  KEY_WORD      : out   STRING
    ) is
        variable  skip          :       boolean;
        alias     key_buf       :       string(1 to KEY_WORD'length) is KEY_WORD;
    begin
        skip := false;
        for i in key_buf'range loop
            if (i <= SELF.str_len and skip = false) then
                case SELF.str_buf(i) is
                    when 'a' => key_buf(i) := 'A';
                    when 'b' => key_buf(i) := 'B';
                    when 'c' => key_buf(i) := 'C';
                    when 'd' => key_buf(i) := 'D';
                    when 'e' => key_buf(i) := 'E';
                    when 'f' => key_buf(i) := 'F';
                    when 'g' => key_buf(i) := 'G';
                    when 'h' => key_buf(i) := 'H';
                    when 'i' => key_buf(i) := 'I';
                    when 'j' => key_buf(i) := 'J';
                    when 'k' => key_buf(i) := 'K';
                    when 'l' => key_buf(i) := 'L';
                    when 'm' => key_buf(i) := 'M';
                    when 'n' => key_buf(i) := 'N';
                    when 'o' => key_buf(i) := 'O';
                    when 'p' => key_buf(i) := 'P';
                    when 'q' => key_buf(i) := 'Q';
                    when 'r' => key_buf(i) := 'R';
                    when 's' => key_buf(i) := 'S';
                    when 't' => key_buf(i) := 'T';
                    when 'u' => key_buf(i) := 'U';
                    when 'v' => key_buf(i) := 'V';
                    when 'w' => key_buf(i) := 'W';
                    when 'x' => key_buf(i) := 'X';
                    when 'y' => key_buf(i) := 'Y';
                    when 'z' => key_buf(i) := 'Z';
                    when 'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|
                         'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z'|
                         '0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'_'|'.'|':'|'-'|
                         '?' => key_buf(i) := SELF.str_buf(i);
                    when others =>
                        skip := true;
                end case;
            else
                key_buf(i) := ' ';
            end if;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief コアからオペレーションコマンドを読むサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      シナリオのストリーム.
    --! @param    OPERATION   オペレーションコマンド.
    --! @param    OP_WORD     オペレーションキーワード.
    -------------------------------------------------------------------------------
    procedure READ_OPERATION(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
        variable  OPERATION     : out   OPERATION_TYPE;
        variable  OP_WORD       : out   string
    ) is
        constant  PROC_NAME     :       string := "CORE.READ_OPERATION";
        variable  next_event    :       EVENT_TYPE;
        variable  next_state    :       STATE_TYPE;
        procedure REPORT_DEBUG(state:in STRING;event:EVENT_TYPE) is
        begin
            REPORT_DEBUG(SELF, PROC_NAME, string'("state=") & state & 
                               string'(" next_event=") & EVENT_TO_STRING(event));
            if (SELF.debug > 1) then
                DEBUG_DUMP(SELF.reader);
            end if;
        end procedure;
    begin
        SELF.vocal.enable_debug := TRUE;
        MAIN_LOOP: loop
            SEEK_EVENT(SELF, STREAM, next_event);
            if (next_event = EVENT_ERROR) then
                READ_ERROR(SELF, PROC_NAME, "SEEK_EVENT NG");
            end if;
            case SELF.curr_state is
                -------------------------------------------------------------------
                -- 初期状態.
                -------------------------------------------------------------------
                when STATE_NULL | STATE_STREAM =>
                    REPORT_DEBUG(string'("STATE_STREAM"),next_event);
                    case next_event is
                        when EVENT_DOC_BEGIN  => 
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_DOCUMENT;
                            OPERATION       := OP_DOC_BEGIN;
                            exit;
                        when EVENT_STREAM_END =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_NULL;
                            OPERATION       := OP_FINISH;
                            exit;
                        when others =>
                            SKIP_EVENT(SELF, STREAM, next_event);
                    end case;
                -------------------------------------------------------------------
                -- ドキュメント処理中.
                -------------------------------------------------------------------
                when STATE_DOCUMENT =>
                    REPORT_DEBUG(string'("STATE_DOCUMENT"), next_event);
                    case next_event is
                        when EVENT_SEQ_BEGIN =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_TOP_SEQ;
                        when EVENT_DOC_END   =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_STREAM;
                            OPERATION       := OP_DOC_END;
                            exit;
                        when others =>
                            READ_EVENT(SELF, STREAM, next_event);
                            -- ERROR
                    end case;
                -------------------------------------------------------------------
                -- 最も外側のシーケンス処理中.
                -- シーケンスの各ノードに現れる最初のノードによって、
                -- 以降の状態が変化する.
                -- * 例１ - ID:{...}           #=>STATE_MAP_VAL
                -- * 例２ - ID:[{...},{...}]   #=>STATE_MAP_SEQ
                -- * 例３ - [ID,{...},{...}]   #=>STATE_SEQ_VAL or STATE_SEQ_SKIP
                -------------------------------------------------------------------
                when STATE_TOP_SEQ  =>
                    REPORT_DEBUG(string'("STATE_TOP_SEQ"), next_event);
                    case next_event is
                        when EVENT_SEQ_END =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_DOCUMENT;
                        when others =>
                            check_first_node(SELF, STREAM, next_state);
                            SELF.curr_state := next_state;
                    end case;
                -------------------------------------------------------------------
                -- ID:{...} を処理する状態.
                -------------------------------------------------------------------
                when STATE_MAP_VAL =>
                    REPORT_DEBUG(string'("STATE_MAP_VAL"), next_event);
                    case next_event is
                        when EVENT_MAP_BEGIN =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SEEK_EVENT(SELF, STREAM, next_event);
                            READ_EVENT(SELF, STREAM, next_event);
                            COPY_KEY_WORD(SELF, OP_WORD);
                            SELF.curr_state := STATE_OP_MAP;
                            SELF.prev_state := STATE_MAP_END;
                            OPERATION       := OP_MAP;
                            exit;
                        when EVENT_SCALAR =>
                            READ_EVENT(SELF, STREAM, next_event);
                            COPY_KEY_WORD(SELF, OP_WORD);
                            SELF.curr_state := STATE_OP_SCALAR;
                            SELF.prev_state := STATE_TOP_SEQ;
                            OPERATION       := OP_SCALAR;
                            exit;
                        when others =>
                            SKIP_EVENT(SELF, STREAM, next_event);
                    end case;
                -------------------------------------------------------------------
                -- ID:[{...},{...}] を処理する状態.
                -------------------------------------------------------------------
                when STATE_MAP_SEQ =>
                    REPORT_DEBUG(string'("STATE_MAP_SEQ"), next_event);
                    case next_event is
                        when EVENT_SEQ_END =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_MAP_END;
                        when EVENT_MAP_BEGIN =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SEEK_EVENT(SELF, STREAM, next_event);
                            READ_EVENT(SELF, STREAM, next_event);
                            COPY_KEY_WORD(SELF, OP_WORD);
                            SELF.curr_state := STATE_OP_MAP;
                            SELF.prev_state := STATE_MAP_SEQ;
                            OPERATION       := OP_MAP;
                            exit;
                        when EVENT_SCALAR =>
                            READ_EVENT(SELF, STREAM, next_event);
                            COPY_KEY_WORD(SELF, OP_WORD);
                            SELF.curr_state := STATE_OP_SCALAR;
                            SELF.prev_state := STATE_MAP_SEQ;
                            OPERATION       := OP_SCALAR;
                            exit;
                        when others =>
                            SKIP_EVENT(SELF, STREAM, next_event);
                    end case;
                -------------------------------------------------------------------
                -- [ID,{...},{...}] を処理する状態.
                -------------------------------------------------------------------
                when STATE_SEQ_VAL =>
                    REPORT_DEBUG(string'("STATE_SEQ_VAL"), next_event);
                    case next_event is
                        when EVENT_SEQ_END =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_TOP_SEQ;
                        when EVENT_MAP_BEGIN =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SEEK_EVENT(SELF, STREAM, next_event);
                            READ_EVENT(SELF, STREAM, next_event);
                            COPY_KEY_WORD(SELF, OP_WORD);
                            SELF.curr_state := STATE_OP_MAP;
                            SELF.prev_state := STATE_SEQ_VAL;
                            OPERATION       := OP_MAP;
                            exit;
                        when EVENT_SCALAR =>
                            READ_EVENT(SELF, STREAM, next_event);
                            COPY_KEY_WORD(SELF, OP_WORD);
                            SELF.curr_state := STATE_OP_SCALAR;
                            SELF.prev_state := STATE_SEQ_VAL;
                            OPERATION       := OP_SCALAR;
                            exit;
                        when others =>
                            SKIP_EVENT(SELF, STREAM, next_event);
                    end case;
                -------------------------------------------------------------------
                -- [ID,{...},{...}]を読み飛ばす状態.
                -------------------------------------------------------------------
                when STATE_SEQ_SKIP =>
                    REPORT_DEBUG(string'("STATE_SEQ_SKIP"), next_event);
                    case next_event is
                        when EVENT_SEQ_END =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_TOP_SEQ;
                        when others => 
                            SKIP_EVENT(SELF, STREAM, next_event);
                    end case;
                -------------------------------------------------------------------
                -- {ID: {...}} または {ID: [{...},{...}]}の最後のEVENT_MAP_ENDを
                -- 読む状態.
                -------------------------------------------------------------------
                when STATE_MAP_END =>
                    REPORT_DEBUG(string'("STATE_MAP_END"), next_event);
                    case next_event is
                        when EVENT_MAP_END =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := STATE_TOP_SEQ;
                        when others =>
                            READ_ERROR(SELF, PROC_NAME,
                                       "need EVENT_MAP_END but " &
                                       EVENT_TO_STRING(next_event) &
                                       " in STATE_MAP_END");
                    end case;
                -------------------------------------------------------------------
                -- OP_MAPを処理している状態.
                -------------------------------------------------------------------
                when STATE_OP_MAP =>
                    REPORT_DEBUG(string'("STATE_OP_MAP"), next_event);
                    case next_event is
                        when EVENT_MAP_END =>
                            READ_EVENT(SELF, STREAM, next_event);
                            SELF.curr_state := SELF.prev_state;
                        when EVENT_SCALAR  => 
                            READ_EVENT(SELF, STREAM, next_event);
                            COPY_KEY_WORD(SELF, OP_WORD);
                            OPERATION       := OP_MAP;
                            exit;
                        when others =>
                            READ_ERROR(SELF, PROC_NAME,
                                       "need EVENT_MAP_END but " &
                                       EVENT_TO_STRING(next_event) &
                                       " in STATE_OP_MAP");
                    end case;
                -------------------------------------------------------------------
                -- OP_SCALARを処理している状態.
                -------------------------------------------------------------------
                when STATE_OP_SCALAR =>
                    REPORT_DEBUG(string'("STATE_OP_SCALAR"), next_event);
                    SELF.curr_state := SELF.prev_state;
                -------------------------------------------------------------------
                -- 不正な状態(ありえないはず).
                -------------------------------------------------------------------
                when others =>
                    EXECUTE_ABORT(SELF, PROC_NAME, "bad state");
            end case;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief SYNCオペレーションの引数を読むサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      シナリオのストリーム.
    --! @param    OPERATION   オペレーションコマンド.
    --! @param    SYNC_PORT   読み取ったポート番号.
    --! @param    SYNC_WAIT   読み取った同期までの待ちクロック数.
    -------------------------------------------------------------------------------
    procedure READ_SYNC_ARGS(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  OPERATION     : in    OPERATION_TYPE;
                  SYNC_PORT     : out   integer;
                  SYNC_WAIT     : out   integer
    ) is
        constant  PROC_NAME     :       string := "CORE.READ_SYNC_ARGS";
        type      STATE_TYPE is (
                     STATE_NULL,
                     STATE_SCALAR_PORT,
                     STATE_MAP_KEY,
                     STATE_MAP_PORT,
                     STATE_MAP_WAIT,
                     STATE_ERROR
        );
        variable  state         :       STATE_TYPE;
        variable  next_event    :       EVENT_TYPE;
        variable  port_num      :       integer;
        variable  wait_num      :       integer;
        variable  scan_len      :       integer;
        variable  match         :       boolean;
        variable  map_level     :       integer;
        variable  keyword       :       STRING(1 to 5);
        constant  KEY_WAIT      :       STRING(1 to 5) := "WAIT ";
        constant  KEY_PORT      :       STRING(1 to 5) := "PORT ";
        constant  KEY_LOCAL     :       STRING(1 to 5) := "LOCAL";
    begin
        port_num := 0;
        wait_num := 2;
        case OPERATION is
            when OP_MAP =>
                map_level := 0;
                state     := STATE_SCALAR_PORT;
                OP_MAP_LOOP: loop
                    SEEK_EVENT(SELF, STREAM, next_event);
                    case next_event is
                        when EVENT_MAP_BEGIN =>
                            READ_EVENT(SELF, STREAM, next_event);
                            map_level := map_level + 1;
                            state     := STATE_MAP_KEY;
                        when EVENT_MAP_END   =>
                            READ_EVENT(SELF, STREAM, next_event);
                            map_level := map_level - 1;
                            state     := STATE_NULL;
                        when EVENT_SCALAR    =>
                            READ_EVENT(SELF, STREAM, next_event);
                            case state is
                                when STATE_MAP_KEY =>
                                    COPY_KEY_WORD(SELF, keyword);
                                    case keyword is
                                        when KEY_PORT => state := STATE_MAP_PORT;
                                        when KEY_WAIT => state := STATE_MAP_WAIT;
                                        when others   => state := STATE_ERROR;
                                    end case;
                                when STATE_SCALAR_PORT | STATE_MAP_PORT =>
                                    COPY_KEY_WORD(SELF, keyword);
                                    if    (keyword = KEY_LOCAL) then
                                        port_num := -1;
                                    else
                                        STRING_TO_INTEGER(SELF.str_buf(1 to SELF.str_len), port_num, scan_len);
                                    end if;
                                    if (state = STATE_MAP_PORT) then
                                        state := STATE_MAP_KEY;
                                    else
                                        state := STATE_NULL;
                                    end if;
                                when STATE_MAP_WAIT =>
                                    STRING_TO_INTEGER(SELF.str_buf(1 to SELF.str_len), wait_num, scan_len);
                                    state := STATE_MAP_KEY;
                                when others =>
                                    state := STATE_MAP_KEY;
                            end case;
                        when EVENT_ERROR =>
                            READ_ERROR(SELF, PROC_NAME, "SEEK_EVENT NG");
                        when others =>
                            SKIP_EVENT(SELF, stream, next_event);
                    end case;
                    exit when (map_level = 0);
                end loop;
                if (next_event /= EVENT_MAP_END) then
                    READ_ERROR(SELF, PROC_NAME, "need EVENT_MAP_END but " &
                                                 EVENT_TO_STRING(next_event));
                end if;
            when OP_DOC_BEGIN => null;
            when OP_SCALAR    => null;
            when others       => null;
        end case;
        SYNC_PORT := port_num;
        SYNC_WAIT := wait_num;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 同期オペレーション.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NUM         同期ポート番号.
    --! @param    COUNT       同期までの待ちクロック数.
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_ACK    同期応答信号入力.
    -------------------------------------------------------------------------------
    procedure CORE_SYNC(
        variable  SELF          : inout CORE_TYPE;
                  NUM           : in    integer;
                  COUNT         : in    integer;
        signal    SYNC_REQ      : out   SYNC_REQ_VECTOR;
        signal    SYNC_ACK      : in    SYNC_ACK_VECTOR
    ) is
        variable  sync_count    :       SYNC_REQ_VECTOR(SYNC_REQ'range);
    begin 
        sync_count(NUM) := COUNT;
        SYNC_BEGIN(SYNC_REQ,           sync_count);
        SYNC_END  (SYNC_REQ, SYNC_ACK, sync_count);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームからメッセージを読んで標準出力(OUTPUT)に出力する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure EXECUTE_SAY(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT
    ) is
        constant  PROC_NAME     :       STRING := "CORE.EXECUTE_SAY";
        variable  next_event    :       EVENT_TYPE;
    begin
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        SEEK_EVENT(SELF, STREAM, next_event);
        if (next_event = EVENT_SCALAR) then
            READ_EVENT(SELF, STREAM, next_event);
            SAY(SELF.vocal, SELF.str_buf(1 to SELF.str_len));
        else
            SKIP_EVENT(SELF, STREAM, next_event);
        end if;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief OUTオペレーション.GPO(General Purpose Output)に値を出力する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    SIGNALS     出力する値を保持している変数.
    --! @param    GPO         GPO(General Purpose Output)信号.
    ---------------------------------------------------------------------------
    procedure EXECUTE_OUT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  SIGNALS       : inout std_logic_vector;
        signal    GPO           : out   std_logic_vector
    ) is
        constant  PROC_NAME     :       string := "CORE.EXECUTE_OUT";
        variable  next_event    :       EVENT_TYPE;
        variable  match         :       boolean;
    begin
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when EVENT_MAP_BEGIN =>
                READ_EVENT(SELF, STREAM, EVENT_MAP_BEGIN);
                MAP_READ_LOOP: loop
                    MAP_READ_PREPARE_FOR_NEXT(
                        SELF       => SELF            ,  -- I/O:
                        STREAM     => STREAM          ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    MAP_READ_STD_LOGIC_VECTOR(
                        SELF       => SELF            ,  -- I/O:
                        STREAM     => STREAM          ,  -- I/O:
                        KEY        => "GPO"           ,  -- In :
                        VAL        => SIGNALS         ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    case next_event is
                        when EVENT_SCALAR  =>
                            EXECUTE_UNDEFINED_MAP_KEY(
                                SELF    => SELF  ,
                                STREAM  => STREAM,
                                OP_WORD => SELF.str_buf(1 to SELF.str_len)
                            );
                        when EVENT_MAP_END =>
                            exit MAP_READ_LOOP;
                        when others        =>
                            READ_ERROR(SELF, PROC_NAME, "need EVENT_MAP_END but " &
                                       EVENT_TO_STRING(next_event));
                    end case;
                end loop;
                GPO <= SIGNALS;
            when others =>
                READ_ERROR(SELF, PROC_NAME, "SEEK_EVENT NG");
        end case;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief GPI(General Purpose Input)信号の値をチェックする.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    SIGNALS     チェックする値.
    --! @param    GPI         GPI(General Purpose Input)信号.
    --! @param    MATCH       GPIとSIGNALSを比較して一致したらTRUE、しなかったらFALSE.
    -------------------------------------------------------------------------------
    procedure  MATCH_GPI(
        variable  SELF          : inout CORE_TYPE;
                  SIGNALS       : in    std_logic_vector;
        signal    GPI           : in    std_logic_vector;
                  MATCH         : out   boolean
    ) is
        variable  count         :       integer;
    begin
        count := 0;
        for i in GPI'range loop
            if (MATCH_STD_LOGIC(SIGNALS(i), GPI(i)) = FALSE) then
                REPORT_MISMATCH(SELF, string'("GPI(") & INTEGER_TO_STRING(i) & ") " &
                                BIN_TO_STRING(GPI(i)) & " /= " &
                                BIN_TO_STRING(SIGNALS(i)));
                count := count + 1;
            end if;
        end loop;
        MATCH := (count = 0);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ストリームから、次のEVENTを読み飛ばす.
    --!        EVENTがMAP_BEGINやSEQ_BEGINの場合は、対応するMAP_ENDまたはSEQ_ENDまで
    --!        読み飛ばすことに注意.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure EXECUTE_SKIP(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT
    ) is
        constant  PROC_NAME     :       STRING := "CORE.EXECUTE_SKIP";
        variable  next_event    :       EVENT_TYPE;
    begin
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        SEEK_EVENT(SELF, STREAM, next_event);
        if (next_event = EVENT_ERROR) then
            READ_ERROR(SELF, PROC_NAME, "SEEK_EVENT NG");
        else
            SKIP_EVENT(SELF, STREAM, next_event);
        end if;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief REPORTフラグを書き換えるオペレーションを実行する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure EXECUTE_REPORT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT
    ) is
        constant  PROC_NAME     :       STRING := "CORE.EXECUTE_REPORT";
        variable  next_event    :       EVENT_TYPE;
        constant  KEY_DEBUG     :       STRING(1 to 3) := "DEB";
        constant  KEY_REMARK    :       STRING(1 to 3) := "REM";
        constant  KEY_NOTE      :       STRING(1 to 3) := "NOT";
        constant  KEY_WARNING   :       STRING(1 to 3) := "WAR";
        constant  KEY_MISMATCH  :       STRING(1 to 3) := "MIS";
        constant  KEY_ERROR     :       STRING(1 to 3) := "ERR";
        constant  KEY_FAILURE   :       STRING(1 to 3) := "FAI";
        constant  KEY_GET       :       STRING(1 to 3) := "GET";
        constant  KEY_NONE      :       STRING(1 to 3) := "   ";
        variable  key_word      :       STRING(1 to 3);
        variable  map_level     :       integer;
        variable  map_value     :       boolean;
        variable  scan_len      :       integer;
    begin
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        map_level := 0;
        map_value := FALSE;
        key_word  := KEY_GET;
        SCAN_LOOP: loop
            SEEK_EVENT(SELF, STREAM, next_event);
            case next_event is
                when EVENT_ERROR     =>
                    READ_ERROR(SELF, PROC_NAME, "SEEK_EVENT NG");
                when EVENT_MAP_BEGIN =>
                    READ_EVENT(SELF, STREAM, next_event);
                    map_level := map_level + 1;
                when EVENT_MAP_END   =>
                    READ_EVENT(SELF, STREAM, next_event);
                    map_level := map_level - 1;
                when EVENT_SCALAR =>
                    READ_EVENT(SELF, STREAM, next_event);
                    if (key_word = KEY_GET) then
                        COPY_KEY_WORD(SELF, key_word);
                        case key_word is
                            when KEY_DEBUG   => null;
                            when KEY_REMARK  => null;
                            when KEY_NOTE    => null;
                            when KEY_WARNING => null;
                            when KEY_MISMATCH=> null;
                            when KEY_ERROR   => null;
                            when KEY_FAILURE => null;
                            when others      =>
                                READ_ERROR(SELF, PROC_NAME, "Illegal keyword");
                                key_word := KEY_NONE;
                        end case;
                    else
                        STRING_TO_BOOLEAN(SELF.str_buf(1 to SELF.str_len), map_value, scan_len);
                        if (scan_len > 0) then
                            case key_word is
                                when KEY_DEBUG   => SELF.vocal.enable_debug    := map_value;
                                when KEY_REMARK  => SELF.vocal.enable_remark   := map_value;
                                when KEY_NOTE    => SELF.vocal.enable_note     := map_value;
                                when KEY_WARNING => SELF.vocal.enable_warning  := map_value;
                                when KEY_MISMATCH=> SELF.vocal.enable_mismatch := map_value;
                                when KEY_ERROR   => SELF.vocal.enable_error    := map_value;
                                when KEY_FAILURE => SELF.vocal.enable_failure  := map_value;
                                when others      => null;
                            end case;
                        else
                            READ_ERROR(SELF, PROC_NAME, "Illegal boolean value");
                        end if;
                        key_word := KEY_GET;
                    end if;
                when others =>
                    READ_ERROR(SELF, PROC_NAME, EVENT_TO_STRING(next_event));
                    SKIP_EVENT(SELF, STREAM, next_event);
            end case;
            exit when (map_level = 0);
        end loop;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief DEBUGフラグを書き換えるオペレーションを実行する.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure EXECUTE_DEBUG(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT
    ) is
        constant  PROC_NAME     :       string := "CORE.EXECUTE_DEBUG";
        variable  next_event    :       EVENT_TYPE;
        variable  scan_len      :       integer;
        variable  debug         :       integer;
    begin 
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when EVENT_SCALAR =>
                READ_EVENT(SELF, STREAM, EVENT_SCALAR);
                STRING_TO_INTEGER(SELF.str_buf(1 to SELF.str_len), debug, scan_len);
                if (scan_len > 0) then
                    SELF.debug := debug;
                    REPORT_DEBUG(SELF, PROC_NAME & " ON");
                end if;
            when others =>
                READ_ERROR(SELF, PROC_NAME, EVENT_TO_STRING(next_event));
                SKIP_EVENT(SELF, STREAM, next_event);
        end case;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 不正なSCALARオペレーションを警告して読み飛ばす.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    OP_WORD     オペレーションキーワード.
    -------------------------------------------------------------------------------
    procedure EXECUTE_UNDEFINED_SCALAR(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  OP_WORD       : in    STRING
    ) is
    begin
        REPORT_READ_ERROR(SELF.vocal, string'("Undefined Scalar Operation(") & OP_WORD & ")");
        DEBUG_DUMP(SELF.reader);
        SELF.report_status.read_error_count := SELF.report_status.read_error_count + 1;
    end procedure;
    ------------------------------------------------------------------------------
    --! @brief 不正なMAPオペレーションを警告して読み飛ばす.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    OP_WORD     オペレーションキーワード.
    -------------------------------------------------------------------------------
    procedure EXECUTE_UNDEFINED_MAP_KEY(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  OP_WORD       : in    STRING
    ) is
        variable  next_event    :       EVENT_TYPE;
    begin
        REPORT_READ_ERROR(SELF.vocal, string'("Undefined Map Operation(") & OP_WORD & ")");
        DEBUG_DUMP(SELF.reader);
        SEEK_EVENT(SELF, STREAM, next_event);
        SKIP_EVENT(SELF, STREAM, next_event);
        SELF.report_status.read_error_count := SELF.report_status.read_error_count + 1;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 致命的エラーによる中断.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure EXECUTE_ABORT(SELF: inout CORE_TYPE; MESSAGE: in STRING) is
    begin
        REPORT_FAILURE(SELF.vocal, MESSAGE);
        DEBUG_DUMP(SELF.reader);
        assert FALSE report MESSAGE severity FAILURE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 致命的エラーによる中断.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        識別名.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure EXECUTE_ABORT(SELF: inout CORE_TYPE; NAME, MESSAGE: in STRING) is
    begin
        REPORT_FAILURE(SELF.vocal, NAME & " " & MESSAGE);
        DEBUG_DUMP(SELF.reader);
        assert FALSE report NAME & " " & MESSAGE severity FAILURE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオリードエラーによる中断.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure READ_ERROR(SELF:inout CORE_TYPE;MESSAGE:in STRING) is
    begin
        REPORT_READ_ERROR(SELF.vocal, string'("Read Error ") & MESSAGE);
        DEBUG_DUMP(SELF.reader);
        SELF.report_status.read_error_count := SELF.report_status.read_error_count + 1;
        assert FALSE report string'("Read Error ") & MESSAGE severity FAILURE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオリードエラーによる中断.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    NAME        識別名.
    --! @param    MESSAGE     出力するメッセージ.
    -------------------------------------------------------------------------------
    procedure READ_ERROR(SELF:inout CORE_TYPE;NAME, MESSAGE:in STRING) is
    begin
        REPORT_READ_ERROR(SELF.vocal, NAME & " Read Error " & MESSAGE);
        DEBUG_DUMP(SELF.reader);
        SELF.report_status.read_error_count := SELF.report_status.read_error_count + 1;
        assert FALSE report NAME & " Read Error " & MESSAGE severity FAILURE;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ステータスレポートを集計する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    REPORTS     集計するステータスレポート.
    --! @return               集計したステータスレポート.
    -------------------------------------------------------------------------------
    function  MARGE_REPORT_STATUS(REPORTS: REPORT_STATUS_VECTOR) return REPORT_STATUS_TYPE is
        variable  status : REPORT_STATUS_TYPE;
    begin
        status := REPORT_STATUS_NULL;
        for i in REPORTS'range loop
            if (REPORTS(i).valid) then
                status.valid            := TRUE;
                status.warning_count    := status.warning_count    + REPORTS(i).warning_count;
                status.mismatch_count   := status.mismatch_count   + REPORTS(i).mismatch_count;
                status.error_count      := status.error_count      + REPORTS(i).error_count;
                status.failure_count    := status.failure_count    + REPORTS(i).failure_count;
                status.read_error_count := status.read_error_count + REPORTS(i).read_error_count;
            end if;
        end loop;
        return status;
    end function;
    -------------------------------------------------------------------------------
    --! @brief シナリオから整数型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VAL         読んだ整数型の値.
    --! @param    GOOD        読み取れたことを示す.
    -------------------------------------------------------------------------------
    procedure READ_INTEGER(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  VAL           : inout integer;
                  GOOD          : out   boolean
    ) is
        constant  PROC_NAME     :       string := "CORE.READ_INTEGER";
        variable  next_event    :       EVENT_TYPE;
        variable  read_len      :       integer;
        variable  read_val      :       integer;
    begin 
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when EVENT_SCALAR =>
                read_len := 0;
                READ_EVENT(SELF, STREAM, next_event);
                STRING_TO_INTEGER(
                    STR     => SELF.str_buf(1 to SELF.str_len),
                    VAL     => read_val,
                    STR_LEN => read_len
                );
                if (read_len > 0) then
                    VAL  := read_val;
                    GOOD := TRUE;
                    REPORT_DEBUG(SELF, PROC_NAME, "GOOD => " & INTEGER_TO_STRING(read_val));
                else
                    VAL  := 0;
                    GOOD := FALSE;
                    REPORT_DEBUG(SELF, PROC_NAME, "NG");
                end if;
            when others =>
                READ_ERROR(SELF, PROC_NAME, EVENT_TO_STRING(next_event));
                SKIP_EVENT(SELF, STREAM, next_event);
        end case;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオからboolean型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VAL         読んだboolean型の値.
    --! @param    GOOD        読み取れたことを示す.
    -------------------------------------------------------------------------------
    procedure READ_BOOLEAN(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  VAL           : inout boolean;
                  GOOD          : out   boolean
    ) is
        constant  PROC_NAME     :       string := "CORE.READ_BOOLEAN";
        variable  next_event    :       EVENT_TYPE;
        variable  read_len      :       integer;
        variable  read_val      :       boolean;
    begin 
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        SEEK_EVENT(SELF, STREAM, next_event);
        case next_event is
            when EVENT_SCALAR =>
                read_len := 0;
                READ_EVENT(SELF, STREAM, next_event);
                STRING_TO_BOOLEAN(
                    STR     => SELF.str_buf(1 to SELF.str_len),
                    VAL     => read_val,
                    STR_LEN => read_len
                );
                if (read_len > 0) then
                    VAL  := read_val;
                    GOOD := TRUE;
                    REPORT_DEBUG(SELF, PROC_NAME, "GOOD => " & BOOLEAN_TO_STRING(read_val));
                else
                    VAL  := FALSE;
                    GOOD := FALSE;
                    REPORT_DEBUG(SELF, PROC_NAME, "NG");
                end if;
            when others =>
                READ_ERROR(SELF, PROC_NAME, EVENT_TO_STRING(next_event));
                SKIP_EVENT(SELF, STREAM, next_event);
        end case;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオからstd_logic_vector型の値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    VAL         読んだstd_logic_vector型の値.
    --! @param    VAL_LEN     読んだstd_logic_vectorのビット数.
    -------------------------------------------------------------------------------
    procedure READ_STD_LOGIC_VECTOR(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  VAL           : inout std_logic_vector;
                  VAL_LEN       : out   integer
    ) is
        constant  PROC_NAME     :       string := "CORE.READ_STD_LOGIC_VECTOR";
        variable  next_event    :       EVENT_TYPE;
        variable  str_len       :       integer;
        variable  seq_level     :       integer;
        variable  pos           :       integer;
        variable  len           :       integer;
    begin
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        seq_level := 0;
        pos       := VAL'low;
        MAIN_LOOP: loop
            SEEK_EVENT(SELF, STREAM, next_event);
            case next_event is
                when EVENT_SEQ_BEGIN  =>
                    READ_EVENT(SELF, STREAM, next_event);
                    seq_level := seq_level + 1;
                when EVENT_SEQ_END    =>
                    if (seq_level > 0) then
                        READ_EVENT(SELF, STREAM, next_event);
                        seq_level := seq_level - 1;
                    end if;
                when EVENT_SCALAR     =>
                    READ_EVENT(SELF, STREAM, next_event);
                    if (pos <= VAL'high) then
                        STRING_TO_STD_LOGIC_VECTOR(
                            STR     => SELF.str_buf(1 to SELF.str_len),
                            VAL     => VAL(VAL'high downto pos),
                            STR_LEN => str_len,
                            VAL_LEN => len
                        );
                        pos := pos + len;
                    end if;
                when EVENT_ERROR      =>
                    READ_ERROR(SELF, PROC_NAME, "SEEK_EVENT NG");
                when others =>
                    SKIP_EVENT(SELF, STREAM, next_event);
            end case;
            exit when (seq_level = 0);
        end loop;
        VAL_LEN := pos - VAL'low;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    ------------------------------------------------------------------------------
    --! @brief シナリオのマップからキーと値を読み出す準備をするサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    EVENT       次のイベント.
    -------------------------------------------------------------------------------
    procedure MAP_READ_PREPARE_FOR_NEXT(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  EVENT         : inout EVENT_TYPE
    ) is
    begin
        SEEK_EVENT(SELF, STREAM, EVENT);
        if (EVENT = EVENT_SCALAR) then
            READ_EVENT(SELF, STREAM, EVENT_SCALAR);
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオのマップからキーを指定してstd_logic_vectorタイプの値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * マップに指定されたキーが無いときは、何もしない。
    --!        VALに値を上書きすることも無い.
    --!      * このサブプログラムを呼ぶときは、前もって MAP_READ_PREPARE_FOR_NEXTを
    --!        実行しておかなければならない。
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    KEY         信号名/変数名.
    --! @param    VAL         読んだstd_logic_vector型の値.
    --! @param    EVENT       次のイベント.
    -------------------------------------------------------------------------------
    procedure MAP_READ_STD_LOGIC_VECTOR(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  KEY           : in    STRING;
                  VAL           : inout std_logic_vector;
                  EVENT         : inout EVENT_TYPE
    ) is
        constant  PROC_NAME     :       string := "CORE.MAP_READ_STD_LOGIC_VECTOR";
        variable  next_event    :       EVENT_TYPE;
        variable  key_word      :       string(1 to KEY'length);
        variable  pos           :       integer;
        variable  port_num      :       integer;
        variable  read_len      :       integer;
        variable  value         :       std_logic_vector(0 downto 0);
        variable  val_size      :       integer;
    begin
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN");
        next_event := EVENT;
        MAP_LOOP: loop
            case next_event is
                when EVENT_SCALAR  =>
                    pos := SELF.str_buf'low;
                    if (SELF.str_len < 6) then
                        exit MAP_LOOP;
                    end if;
                    COPY_KEY_WORD(SELF, key_word);
                    if (key_word = KEY) then
                        pos := pos + key_word'length;
                        if (SELF.str_buf(pos) /= '(' ) then
                            exit MAP_LOOP;
                        end if;
                        pos := pos + 1;
                        STRING_TO_INTEGER(
                            STR     => SELF.str_buf(pos to SELF.str_len),
                            VAL     => port_num,
                            STR_LEN => read_len
                        );
                        if (read_len = 0 or pos+read_len /= SELF.str_len) then
                            exit MAP_LOOP;
                        end if;
                        if (SELF.str_buf(pos+read_len) /= ')') then
                            exit MAP_LOOP;
                        end if;
                        SEEK_EVENT(SELF, STREAM, next_event);
                        if (next_event /= EVENT_SCALAR) then
                            READ_ERROR(SELF, PROC_NAME, "READ_VAL NG KEY=" & KEY);
                        end if;
                        READ_EVENT(SELF, STREAM, EVENT_SCALAR);
                        STRING_TO_STD_LOGIC_VECTOR(
                            STR     => SELF.str_buf(1 to SELF.str_len),
                            VAL     => value,
                            STR_LEN => read_len,
                            VAL_LEN => val_size
                        );
                        if (VAL'low <= port_num and port_num <= VAL'high) then
                            VAL(port_num) := value(0);
                        else
                            READ_ERROR(SELF, PROC_NAME, "OUT OF RANGE KEY =" & KEY &
                                       " index=" & INTEGER_TO_STRING(port_num) &
                                       " range=" & INTEGER_TO_STRING(VAL'low ) &
                                       ":"       & INTEGER_TO_STRING(VAL'high));
                        end if;
                    else
                        exit MAP_LOOP;
                    end if;
                when EVENT_MAP_END => exit MAP_LOOP;
                when others        => exit MAP_LOOP;
            end case;
            MAP_READ_PREPARE_FOR_NEXT(SELF, STREAM, next_event);
        end loop;
        EVENT := next_event;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオのマップからキーを指定してintegerタイプの値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * マップに指定されたキーが無いときは、何もしない。
    --!        VALに値を上書きすることも無い.
    --!      * このサブプログラムを呼ぶときは、前もって MAP_READ_PREPARE_FOR_NEXTを
    --!        実行しておかなければならない。
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    KEY         信号名/変数名.
    --! @param    VAL         読んだinteger型の値.
    --! @param    EVENT       次のイベント.
    -------------------------------------------------------------------------------
    procedure MAP_READ_INTEGER(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  KEY           : in    STRING;
                  VAL           : inout integer;
                  EVENT         : inout EVENT_TYPE
    ) is
        constant  PROC_NAME     :       string := "CORE.MAP_READ_INTEGER";
        variable  next_event    :       EVENT_TYPE;
        variable  key_word      :       string(1 to KEY'length);
        variable  read_good     :       boolean;
    begin
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN KEY=" & KEY);
        next_event := EVENT;
        if (next_event = EVENT_SCALAR) then
            COPY_KEY_WORD(SELF, key_word);
            if (key_word = KEY) then
                READ_INTEGER(SELF, STREAM, VAL, read_good);
                if (read_good = FALSE) then
                     READ_ERROR(SELF, PROC_NAME, "READ_INTEGER NG");
                end if;
                MAP_READ_PREPARE_FOR_NEXT(SELF, STREAM, next_event);
            end if;
        end if;
        EVENT := next_event;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオのマップからキーを指定してbooleanタイプの値を読む.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --!      * マップに指定されたキーが無いときは、何もしない。
    --!        VALに値を上書きすることも無い.
    --!      * このサブプログラムを呼ぶときは、前もって MAP_READ_PREPARE_FOR_NEXTを
    --!        実行しておかなければならない。
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SELF        コア変数.
    --! @param    STREAM      入力ストリーム.
    --! @param    KEY         信号名/変数名.
    --! @param    VAL         読んだboolean型の値.
    --! @param    EVENT       次のイベント.
    -------------------------------------------------------------------------------
    procedure MAP_READ_BOOLEAN(
        variable  SELF          : inout CORE_TYPE;
        file      STREAM        :       TEXT;
                  KEY           : in    STRING;
                  VAL           : inout boolean;
                  EVENT         : inout EVENT_TYPE
    ) is
        constant  PROC_NAME     :       string := "CORE.MAP_READ_BOOLEAN";
        variable  next_event    :       EVENT_TYPE;
        variable  key_word      :       string(1 to KEY'length);
        variable  read_good     :       boolean;
    begin
        REPORT_DEBUG(SELF, PROC_NAME, "BEGIN KEY=" & KEY);
        next_event := EVENT;
        if (next_event = EVENT_SCALAR) then
            COPY_KEY_WORD(SELF, key_word);
            if (key_word = KEY) then
                READ_BOOLEAN(SELF, STREAM, VAL, read_good);
                if (read_good = FALSE) then
                     READ_ERROR(SELF, PROC_NAME, "READ_BOOLEAN NG");
                end if;
                MAP_READ_PREPARE_FOR_NEXT(SELF, STREAM, next_event);
            end if;
        end if;
        EVENT := next_event;
        REPORT_DEBUG(SELF, PROC_NAME, "END");
    end procedure;
end CORE;
-----------------------------------------------------------------------------------
--!     @file    axi4_core.vhd
--!     @brief   AXI4 Dummy Plug Core Package.
--!     @version 1.6.1
--!     @date    2016/3/15
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.CORE.CORE_TYPE;
use     DUMMY_PLUG.CORE.REPORT_STATUS_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_REQ_VECTOR;
use     DUMMY_PLUG.SYNC.SYNC_ACK_VECTOR;
use     DUMMY_PLUG.SYNC.SYNC_SIG_VECTOR;
use     DUMMY_PLUG.SYNC.SYNC_PLUG_NUM_TYPE;
use     DUMMY_PLUG.READER.EVENT_TYPE;
-----------------------------------------------------------------------------------
--! @brief AXI4 Dummy Plug のコアパッケージ.
-----------------------------------------------------------------------------------
package AXI4_CORE is
    -------------------------------------------------------------------------------
    --! @brief AXI4 チャネルのタイプ.
    -------------------------------------------------------------------------------
    type      AXI4_CHANNEL_TYPE is (
        AXI4_CHANNEL_AR,
        AXI4_CHANNEL_AW,
        AXI4_CHANNEL_R,
        AXI4_CHANNEL_W,
        AXI4_CHANNEL_B,
        AXI4_CHANNEL_M
    );
    -------------------------------------------------------------------------------
    --! @brief WAITオペレーション実行時のデフォルトのタイムアウトクロック数
    -------------------------------------------------------------------------------
    constant  DEFAULT_WAIT_TIMEOUT : integer := 10000;
    -------------------------------------------------------------------------------
    --! @brief AXI4 トランザクションデータの最大バイト数.
    -------------------------------------------------------------------------------
    constant  AXI4_XFER_MAX_BYTES  : integer := 1024;
    -------------------------------------------------------------------------------
    --! @brief AXI4 アドレスチャネル信号のレコード宣言.
    -------------------------------------------------------------------------------
    type      AXI4_A_CHANNEL_SIGNAL_TYPE is record
        ADDR     : std_logic_vector(AXI4_ADDR_MAX_WIDTH -1 downto 0);
        WRITE    : std_logic;
        LEN      : std_logic_vector(AXI4_ALEN_MAX_WIDTH -1 downto 0);
        SIZE     : AXI4_ASIZE_TYPE;
        BURST    : AXI4_ABURST_TYPE;
        LOCK     : std_logic_vector(AXI4_ALOCK_MAX_WIDTH-1 downto 0);
        CACHE    : AXI4_ACACHE_TYPE;
        PROT     : AXI4_APROT_TYPE;
        QOS      : AXI4_AQOS_TYPE;
        REGION   : AXI4_AREGION_TYPE;
        USER     : std_logic_vector(AXI4_USER_MAX_WIDTH -1 downto 0);
        ID       : std_logic_vector(AXI4_ID_MAX_WIDTH   -1 downto 0);
        VALID    : std_logic;
        READY    : std_logic;
    end record;
    -------------------------------------------------------------------------------
    --! @brief AXI4 アドレスチャネル信号のドントケア定数.
    -------------------------------------------------------------------------------
    constant  AXI4_A_CHANNEL_SIGNAL_DONTCARE : AXI4_A_CHANNEL_SIGNAL_TYPE := (
        ADDR    => (others => '-'),
        WRITE   => '-',
        LEN     => (others => '-'),
        SIZE    => (others => '-'),
        BURST   => (others => '-'),
        LOCK    => (others => '-'),
        CACHE   => (others => '-'),
        PROT    => (others => '-'),
        QOS     => (others => '-'),
        REGION  => (others => '-'),
        USER    => (others => '-'),
        ID      => (others => '-'),
        VALID   => '-',
        READY   => '-'
    );
    -------------------------------------------------------------------------------
    --! @brief AXI4 アドレスチャネル信号のNULL定数.
    -------------------------------------------------------------------------------
    constant  AXI4_A_CHANNEL_SIGNAL_NULL     : AXI4_A_CHANNEL_SIGNAL_TYPE := (
        ADDR    => (others => '0'),
        WRITE   => '0',
        LEN     => (others => '0'),
        SIZE    => (others => '0'),
        BURST   => (others => '0'),
        LOCK    => (others => '0'),
        CACHE   => (others => '0'),
        PROT    => (others => '0'),
        QOS     => (others => '0'),
        REGION  => (others => '0'),
        USER    => (others => '0'),
        ID      => (others => '0'),
        VALID   => '0',
        READY   => '0'
    );
    -------------------------------------------------------------------------------
    --! @brief AXI4 リードチャネル信号のレコード宣言.
    -------------------------------------------------------------------------------
    type      AXI4_R_CHANNEL_SIGNAL_TYPE is record
        DATA     : std_logic_vector(AXI4_DATA_MAX_WIDTH-1 downto 0);
        RESP     : AXI4_RESP_TYPE;
        LAST     : std_logic;
        USER     : std_logic_vector(AXI4_USER_MAX_WIDTH-1 downto 0);
        ID       : std_logic_vector(AXI4_ID_MAX_WIDTH  -1 downto 0);
        VALID    : std_logic;
        READY    : std_logic;
    end record;
    -------------------------------------------------------------------------------
    --! @brief AXI4 リードチャネル信号のドントケア定数.
    -------------------------------------------------------------------------------
    constant  AXI4_R_CHANNEL_SIGNAL_DONTCARE : AXI4_R_CHANNEL_SIGNAL_TYPE := (
        DATA    => (others => '-'),
        RESP    => (others => '-'),
        LAST    => '-',
        USER    => (others => '-'),
        ID      => (others => '-'),
        VALID   => '-',
        READY   => '-'
    );        
    -------------------------------------------------------------------------------
    --! @brief AXI4 リードチャネル信号のNULL定数.
    -------------------------------------------------------------------------------
    constant  AXI4_R_CHANNEL_SIGNAL_NULL     : AXI4_R_CHANNEL_SIGNAL_TYPE := (
        DATA    => (others => '0'),
        RESP    => (others => '0'),
        LAST    => '0',
        USER    => (others => '0'),
        ID      => (others => '0'),
        VALID   => '0',
        READY   => '0'
    );        
    -------------------------------------------------------------------------------
    --! @brief AXI4 ライトチャネル信号のレコード宣言.
    -------------------------------------------------------------------------------
    type      AXI4_W_CHANNEL_SIGNAL_TYPE is record
        DATA     : std_logic_vector(AXI4_DATA_MAX_WIDTH-1 downto 0);
        LAST     : std_logic;
        STRB     : std_logic_vector(AXI4_STRB_MAX_WIDTH-1 downto 0);
        USER     : std_logic_vector(AXI4_USER_MAX_WIDTH-1 downto 0);
        ID       : std_logic_vector(AXI4_ID_MAX_WIDTH  -1 downto 0);
        VALID    : std_logic;
        READY    : std_logic;
    end record;
    -------------------------------------------------------------------------------
    --! @brief AXI4 ライトチャネル信号のドントケア定数.
    -------------------------------------------------------------------------------
    constant  AXI4_W_CHANNEL_SIGNAL_DONTCARE : AXI4_W_CHANNEL_SIGNAL_TYPE := (
        DATA    => (others => '-'),
        LAST    => '-',
        STRB    => (others => '-'),
        USER    => (others => '-'),
        ID      => (others => '-'),
        VALID   => '-',
        READY   => '-'
    );        
    -------------------------------------------------------------------------------
    --! @brief AXI4 ライトチャネル信号のNULL定数.
    -------------------------------------------------------------------------------
    constant  AXI4_W_CHANNEL_SIGNAL_NULL     : AXI4_W_CHANNEL_SIGNAL_TYPE := (
        DATA    => (others => '0'),
        LAST    => '0',
        STRB    => (others => '0'),
        USER    => (others => '0'),
        ID      => (others => '0'),
        VALID   => '0',
        READY   => '0'
    );        
    -------------------------------------------------------------------------------
    --! @brief AXI4 ライト応答チャネル信号のレコード宣言.
    -------------------------------------------------------------------------------
    type      AXI4_B_CHANNEL_SIGNAL_TYPE is record
        RESP     : AXI4_RESP_TYPE;
        USER     : std_logic_vector(AXI4_USER_MAX_WIDTH-1 downto 0);
        ID       : std_logic_vector(AXI4_ID_MAX_WIDTH  -1 downto 0);
        VALID    : std_logic;
        READY    : std_logic;
    end record;
    -------------------------------------------------------------------------------
    --! @brief AXI4 ライト応答チャネル信号のドントケア定数.
    -------------------------------------------------------------------------------
    constant  AXI4_B_CHANNEL_SIGNAL_DONTCARE : AXI4_B_CHANNEL_SIGNAL_TYPE := (
        RESP    => (others => '-'),
        ID      => (others => '-'),
        USER    => (others => '-'),
        VALID   => '-',
        READY   => '-'
    );        
    -------------------------------------------------------------------------------
    --! @brief AXI4 ライト応答チャネル信号のNULL定数.
    -------------------------------------------------------------------------------
    constant  AXI4_B_CHANNEL_SIGNAL_NULL     : AXI4_B_CHANNEL_SIGNAL_TYPE := (
        RESP    => (others => '0'),
        USER    => (others => '0'),
        ID      => (others => '0'),
        VALID   => '0',
        READY   => '0'
    );        
    -------------------------------------------------------------------------------
    --! @brief AXI4 チャネル信号のレコード宣言.
    -------------------------------------------------------------------------------
    type      AXI4_CHANNEL_SIGNAL_TYPE is record
        AR       : AXI4_A_CHANNEL_SIGNAL_TYPE;
        R        : AXI4_R_CHANNEL_SIGNAL_TYPE;
        AW       : AXI4_A_CHANNEL_SIGNAL_TYPE;
        W        : AXI4_W_CHANNEL_SIGNAL_TYPE;
        B        : AXI4_B_CHANNEL_SIGNAL_TYPE;
    end record;
    -------------------------------------------------------------------------------
    --! @brief AXI4 チャネル信号のドントケア定数.
    -------------------------------------------------------------------------------
    constant  AXI4_CHANNEL_SIGNAL_DONTCARE : AXI4_CHANNEL_SIGNAL_TYPE := (
        AR      => AXI4_A_CHANNEL_SIGNAL_DONTCARE,
        R       => AXI4_R_CHANNEL_SIGNAL_DONTCARE,
        AW      => AXI4_A_CHANNEL_SIGNAL_DONTCARE,
        W       => AXI4_W_CHANNEL_SIGNAL_DONTCARE,
        B       => AXI4_B_CHANNEL_SIGNAL_DONTCARE
    );
    -------------------------------------------------------------------------------
    --! @brief AXI4 チャネル信号のNULL定数.
    -------------------------------------------------------------------------------
    constant  AXI4_CHANNEL_SIGNAL_NULL     : AXI4_CHANNEL_SIGNAL_TYPE := (
        AR      => AXI4_A_CHANNEL_SIGNAL_NULL,
        R       => AXI4_R_CHANNEL_SIGNAL_NULL,
        AW      => AXI4_A_CHANNEL_SIGNAL_NULL,
        W       => AXI4_W_CHANNEL_SIGNAL_NULL,
        B       => AXI4_B_CHANNEL_SIGNAL_NULL
    );
    -------------------------------------------------------------------------------
    --! @brief AXI4トランザクション信号のレコード宣言.
    -------------------------------------------------------------------------------
    type      AXI4_TRANSACTION_SIGNAL_TYPE is record
        VALID    : std_logic;
        ID       : std_logic_vector(AXI4_ID_MAX_WIDTH    -1 downto 0);
        ADDR     : std_logic_vector(AXI4_ADDR_MAX_WIDTH  -1 downto 0);
        AUSER    : std_logic_vector(AXI4_USER_MAX_WIDTH  -1 downto 0);
        DUSER    : std_logic_vector(AXI4_USER_MAX_WIDTH  -1 downto 0);
        BUSER    : std_logic_vector(AXI4_USER_MAX_WIDTH  -1 downto 0);
        DATA     : std_logic_vector(AXI4_XFER_MAX_BYTES*8-1 downto 0);
        DATA_LEN : integer;
        WRITE    : std_logic;
        LEN      : std_logic_vector(AXI4_ALEN_MAX_WIDTH  -1 downto 0);
        SIZE     : AXI4_ASIZE_TYPE;
        BURST    : AXI4_ABURST_TYPE;
        LOCK     : std_logic_vector(AXI4_ALOCK_MAX_WIDTH -1 downto 0);
        CACHE    : AXI4_ACACHE_TYPE;
        PROT     : AXI4_APROT_TYPE;
        QOS      : AXI4_AQOS_TYPE;
        REGION   : AXI4_AREGION_TYPE;
        RESP     : AXI4_RESP_TYPE;
        TIMEOUT  : integer;
    end record;
    -------------------------------------------------------------------------------
    --! @brief AXI4トランザクション信号のNULL定数.
    -------------------------------------------------------------------------------
    constant  AXI4_TRANSACTION_SIGNAL_NULL     : AXI4_TRANSACTION_SIGNAL_TYPE := (
        VALID    => '0'              ,
        ID       => (others => '0')  ,
        ADDR     => (others => '0')  ,
        AUSER    => (others => '0')  ,
        DUSER    => (others => '0')  ,
        BUSER    => (others => '0')  ,
        DATA     => (others => '0')  ,
        DATA_LEN =>  0               ,
        WRITE    => '0'              ,
        LEN      => (others => '0')  ,
        SIZE     => (others => '0')  ,
        BURST    => (others => '0')  ,
        LOCK     => (others => '0')  ,
        CACHE    => (others => '0')  ,
        PROT     => (others => '0')  ,
        QOS      => (others => '0')  ,
        REGION   => (others => '0')  ,
        RESP     => (others => '0')  ,
        TIMEOUT  => 0
    );
    -------------------------------------------------------------------------------
    --! @brief AXI4トランザクション信号のドントケア定数.
    -------------------------------------------------------------------------------
    constant  AXI4_TRANSACTION_SIGNAL_DONTCARE : AXI4_TRANSACTION_SIGNAL_TYPE := (
        VALID    => '-'              ,
        ID       => (others => '-')  ,
        ADDR     => (others => '-')  ,
        AUSER    => (others => '-')  ,
        DUSER    => (others => '-')  ,
        BUSER    => (others => '-')  ,
        DATA     => (others => '-')  ,
        DATA_LEN =>  0               ,
        WRITE    => '-'              ,
        LEN      => (others => '-')  ,
        SIZE     => (others => '-')  ,
        BURST    => (others => '-')  ,
        LOCK     => (others => '-')  ,
        CACHE    => (others => '-')  ,
        PROT     => (others => '-')  ,
        QOS      => (others => '-')  ,
        REGION   => (others => '-')  ,
        RESP     => (others => '-')  ,
        TIMEOUT  => 0
    );
    -------------------------------------------------------------------------------
    --! @brief AXI4-Stream 信号のレコード宣言.
    -------------------------------------------------------------------------------
    type      AXI4_STREAM_SIGNAL_TYPE is record
        DATA     : std_logic_vector(AXI4_DATA_MAX_WIDTH-1 downto 0);
        KEEP     : std_logic_vector(AXI4_STRB_MAX_WIDTH-1 downto 0);
        STRB     : std_logic_vector(AXI4_STRB_MAX_WIDTH-1 downto 0);
        USER     : std_logic_vector(AXI4_USER_MAX_WIDTH-1 downto 0);
        DEST     : std_logic_vector(AXI4_DEST_MAX_WIDTH-1 downto 0);
        ID       : std_logic_vector(AXI4_ID_MAX_WIDTH  -1 downto 0);
        LAST     : std_logic;
        VALID    : std_logic;
        READY    : std_logic;
    end record;
    -------------------------------------------------------------------------------
    --! @brief AXI4-Stream信号のドントケア定数.
    -------------------------------------------------------------------------------
    constant  AXI4_STREAM_SIGNAL_DONTCARE : AXI4_STREAM_SIGNAL_TYPE := (
        DATA    => (others => '-'),
        KEEP    => (others => '-'),
        STRB    => (others => '-'),
        USER    => (others => '-'),
        DEST    => (others => '-'),
        ID      => (others => '-'),
        LAST    => '-',
        VALID   => '-',
        READY   => '-'
    );        
    -------------------------------------------------------------------------------
    --! @brief AXI4 ライト応答チャネル信号のNULL定数.
    -------------------------------------------------------------------------------
    constant  AXI4_STREAM_SIGNAL_NULL     : AXI4_STREAM_SIGNAL_TYPE := (
        DATA    => (others => '0'),
        KEEP    => (others => '0'),
        STRB    => (others => '0'),
        USER    => (others => '0'),
        DEST    => (others => '0'),
        ID      => (others => '0'),
        LAST    => '0',
        VALID   => '0',
        READY   => '0'
    );
    -------------------------------------------------------------------------------
    --! @brief AXI4_CHANNEL_PLAYER
    -------------------------------------------------------------------------------
    component  AXI4_CHANNEL_PLAYER is
        ---------------------------------------------------------------------------
        -- ジェネリック変数.
        ---------------------------------------------------------------------------
        generic (
            SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                              STRING;
            NAME            : --! @brief 固有名詞.
                              STRING;
            FULL_NAME       : --! @brief メッセージ出力用の固有名詞.
                              STRING;
            CHANNEL         : --! @brief チャネルタイプ.
                              AXI4_CHANNEL_TYPE;
            MASTER          : --! @brief マスターモードを指定する.
                              boolean   := FALSE;
            SLAVE           : --! @brief スレーブモードを指定する.
                              boolean   := FALSE;
            READ_ENABLE     : --! @brief リードトランザクションの可/不可を指定する.
                              boolean   := TRUE;
            WRITE_ENABLE    : --! @brief ライトトランザクションの可/不可を指定する.
                              boolean   := TRUE;
            OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                              time;
            WIDTH           : --! @brief AXI4 IS WIDTH :
                              AXI4_SIGNAL_WIDTH_TYPE;
            SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                              integer :=  1;
            SYNC_LOCAL_WAIT : --! @brief ローカル同期時のウェイトクロック数.
                              integer := 2;
            DEFAULT_SYNC_IO : --! @brief リードトランザクション/ライトトランザクション
                              --         ウェイト時に完了を待ってから次のコマンドを実行
                              --         するか否かを指定する.
                              boolean := false;
            GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                              integer := 8;
            GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                              integer := 8;
            FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                              --!        アボートするかどうかを指定するフラグ.
                              boolean := true
        );
        --------------------------------------------------------------------------
        -- 入出力ポートの定義.
        --------------------------------------------------------------------------
        port(
            ----------------------------------------------------------------------
            -- グローバルシグナル.
            ----------------------------------------------------------------------
            ACLK            : in    std_logic;
            ARESETn         : in    std_logic;
            ----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            ----------------------------------------------------------------------
            ARADDR_I        : in    std_logic_vector(WIDTH.ARADDR -1 downto 0);
            ARADDR_O        : out   std_logic_vector(WIDTH.ARADDR -1 downto 0);
            ARLEN_I         : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
            ARLEN_O         : out   std_logic_vector(WIDTH.ALEN   -1 downto 0);
            ARSIZE_I        : in    AXI4_ASIZE_TYPE;
            ARSIZE_O        : out   AXI4_ASIZE_TYPE;
            ARBURST_I       : in    AXI4_ABURST_TYPE;
            ARBURST_O       : out   AXI4_ABURST_TYPE;
            ARLOCK_I        : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
            ARLOCK_O        : out   std_logic_vector(WIDTH.ALOCK  -1 downto 0);
            ARCACHE_I       : in    AXI4_ACACHE_TYPE;
            ARCACHE_O       : out   AXI4_ACACHE_TYPE;
            ARPROT_I        : in    AXI4_APROT_TYPE;
            ARPROT_O        : out   AXI4_APROT_TYPE;
            ARQOS_I         : in    AXI4_AQOS_TYPE;
            ARQOS_O         : out   AXI4_AQOS_TYPE;
            ARREGION_I      : in    AXI4_AREGION_TYPE;
            ARREGION_O      : out   AXI4_AREGION_TYPE;
            ARUSER_I        : in    std_logic_vector(WIDTH.ARUSER -1 downto 0);
            ARUSER_O        : out   std_logic_vector(WIDTH.ARUSER -1 downto 0);
            ARID_I          : in    std_logic_vector(WIDTH.ID     -1 downto 0);
            ARID_O          : out   std_logic_vector(WIDTH.ID     -1 downto 0);
            ARVALID_I       : in    std_logic;
            ARVALID_O       : out   std_logic;
            ARREADY_I       : in    std_logic;
            ARREADY_O       : out   std_logic;
            ----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            ----------------------------------------------------------------------
            RVALID_I        : in    std_logic;
            RVALID_O        : out   std_logic;
            RLAST_I         : in    std_logic;
            RLAST_O         : out   std_logic;
            RDATA_I         : in    std_logic_vector(WIDTH.RDATA  -1 downto 0);
            RDATA_O         : out   std_logic_vector(WIDTH.RDATA  -1 downto 0);
            RRESP_I         : in    AXI4_RESP_TYPE;
            RRESP_O         : out   AXI4_RESP_TYPE;
            RUSER_I         : in    std_logic_vector(WIDTH.RUSER  -1 downto 0);
            RUSER_O         : out   std_logic_vector(WIDTH.RUSER  -1 downto 0);
            RID_I           : in    std_logic_vector(WIDTH.ID     -1 downto 0);
            RID_O           : out   std_logic_vector(WIDTH.ID     -1 downto 0);
            RREADY_I        : in    std_logic;
            RREADY_O        : out   std_logic;
            ----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            ----------------------------------------------------------------------
            AWADDR_I        : in    std_logic_vector(WIDTH.AWADDR -1 downto 0);
            AWADDR_O        : out   std_logic_vector(WIDTH.AWADDR -1 downto 0);
            AWLEN_I         : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
            AWLEN_O         : out   std_logic_vector(WIDTH.ALEN   -1 downto 0);
            AWSIZE_I        : in    AXI4_ASIZE_TYPE;
            AWSIZE_O        : out   AXI4_ASIZE_TYPE;
            AWBURST_I       : in    AXI4_ABURST_TYPE;
            AWBURST_O       : out   AXI4_ABURST_TYPE;
            AWLOCK_I        : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
            AWLOCK_O        : out   std_logic_vector(WIDTH.ALOCK  -1 downto 0);
            AWCACHE_I       : in    AXI4_ACACHE_TYPE;
            AWCACHE_O       : out   AXI4_ACACHE_TYPE;
            AWPROT_I        : in    AXI4_APROT_TYPE;
            AWPROT_O        : out   AXI4_APROT_TYPE;
            AWQOS_I         : in    AXI4_AQOS_TYPE;
            AWQOS_O         : out   AXI4_AQOS_TYPE;
            AWREGION_I      : in    AXI4_AREGION_TYPE;
            AWREGION_O      : out   AXI4_AREGION_TYPE;
            AWUSER_I        : in    std_logic_vector(WIDTH.AWUSER -1 downto 0);
            AWUSER_O        : out   std_logic_vector(WIDTH.AWUSER -1 downto 0);
            AWID_I          : in    std_logic_vector(WIDTH.ID     -1 downto 0);
            AWID_O          : out   std_logic_vector(WIDTH.ID     -1 downto 0);
            AWVALID_I       : in    std_logic;
            AWVALID_O       : out   std_logic;
            AWREADY_I       : in    std_logic;
            AWREADY_O       : out   std_logic;
            ----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            ----------------------------------------------------------------------
            WLAST_I         : in    std_logic;
            WLAST_O         : out   std_logic;
            WDATA_I         : in    std_logic_vector(WIDTH.WDATA  -1 downto 0);
            WDATA_O         : out   std_logic_vector(WIDTH.WDATA  -1 downto 0);
            WSTRB_I         : in    std_logic_vector(WIDTH.WDATA/8-1 downto 0);
            WSTRB_O         : out   std_logic_vector(WIDTH.WDATA/8-1 downto 0);
            WUSER_I         : in    std_logic_vector(WIDTH.WUSER  -1 downto 0);
            WUSER_O         : out   std_logic_vector(WIDTH.WUSER  -1 downto 0);
            WID_I           : in    std_logic_vector(WIDTH.ID     -1 downto 0);
            WID_O           : out   std_logic_vector(WIDTH.ID     -1 downto 0);
            WVALID_I        : in    std_logic;
            WVALID_O        : out   std_logic;
            WREADY_I        : in    std_logic;
            WREADY_O        : out   std_logic;
            ----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            ----------------------------------------------------------------------
            BRESP_I         : in    AXI4_RESP_TYPE;
            BRESP_O         : out   AXI4_RESP_TYPE;
            BUSER_I         : in    std_logic_vector(WIDTH.BUSER  -1 downto 0);
            BUSER_O         : out   std_logic_vector(WIDTH.BUSER  -1 downto 0);
            BID_I           : in    std_logic_vector(WIDTH.ID     -1 downto 0);
            BID_O           : out   std_logic_vector(WIDTH.ID     -1 downto 0);
            BVALID_I        : in    std_logic;
            BVALID_O        : out   std_logic;
            BREADY_I        : in    std_logic;
            BREADY_O        : out   std_logic;
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ        : out   SYNC_REQ_VECTOR(SYNC_WIDTH-1 downto 0);
            SYNC_ACK        : in    SYNC_ACK_VECTOR(SYNC_WIDTH-1 downto 0) := (others => '0');
            SYNC_LOCAL_REQ  : out   SYNC_REQ_VECTOR(0 downto 0);
            SYNC_LOCAL_ACK  : in    SYNC_ACK_VECTOR(0 downto 0);
            SYNC_TRANS_REQ  : out   SYNC_REQ_VECTOR(0 downto 0);
            SYNC_TRANS_ACK  : in    SYNC_ACK_VECTOR(0 downto 0);
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I          : in    AXI4_TRANSACTION_SIGNAL_TYPE;
            TRAN_O          : out   AXI4_TRANSACTION_SIGNAL_TYPE;
            -----------------------------------------------------------------------
            -- GPIO
            -----------------------------------------------------------------------
            GPI             : in    std_logic_vector(GPI_WIDTH     -1 downto 0) := (others => '0');
            GPO             : out   std_logic_vector(GPO_WIDTH     -1 downto 0);
            -----------------------------------------------------------------------
            -- 各種状態信号.
            -----------------------------------------------------------------------
            REPORT_STATUS   : out   REPORT_STATUS_TYPE;
            FINISH          : out   std_logic
        );
    end component;
    -------------------------------------------------------------------------------
    --! @brief   AXI4_STREAM_PLAYER :
    -------------------------------------------------------------------------------
    component AXI4_STREAM_PLAYER
        ---------------------------------------------------------------------------
        -- ジェネリック変数.
        ---------------------------------------------------------------------------
        generic (
            SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                              STRING;
            NAME            : --! @brief 固有名詞.
                              STRING;
            FULL_NAME       : --! @brief メッセージ出力用の固有名詞.
                              STRING;
            MASTER          : --! @brief マスターモードを指定する.
                              boolean   := FALSE;
            SLAVE           : --! @brief スレーブモードを指定する.
                              boolean   := FALSE;
            OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                              time;
            WIDTH           : --! @brief AXI4 IS WIDTH :
                              AXI4_STREAM_SIGNAL_WIDTH_TYPE;
            SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                              integer :=  1;
            GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                              integer := 8;
            GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                              integer := 8;
            FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                              --!        アボートするかどうかを指定するフラグ.
                              boolean := true
        );
        ---------------------------------------------------------------------------
        -- 入出力ポートの定義.
        ---------------------------------------------------------------------------
        port(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK            : in    std_logic;
            ARESETn         : in    std_logic;
            -----------------------------------------------------------------------
            -- AXI4-Streamシグナル.
            -----------------------------------------------------------------------
            TDATA_I         : in    std_logic_vector(WIDTH.DATA  -1 downto 0);
            TDATA_O         : out   std_logic_vector(WIDTH.DATA  -1 downto 0);
            TSTRB_I         : in    std_logic_vector(WIDTH.DATA/8-1 downto 0);
            TSTRB_O         : out   std_logic_vector(WIDTH.DATA/8-1 downto 0);
            TKEEP_I         : in    std_logic_vector(WIDTH.DATA/8-1 downto 0);
            TKEEP_O         : out   std_logic_vector(WIDTH.DATA/8-1 downto 0);
            TUSER_I         : in    std_logic_vector(WIDTH.USER  -1 downto 0);
            TUSER_O         : out   std_logic_vector(WIDTH.USER  -1 downto 0);
            TDEST_I         : in    std_logic_vector(WIDTH.DEST  -1 downto 0);
            TDEST_O         : out   std_logic_vector(WIDTH.DEST  -1 downto 0);
            TID_I           : in    std_logic_vector(WIDTH.ID    -1 downto 0);
            TID_O           : out   std_logic_vector(WIDTH.ID    -1 downto 0);
            TLAST_I         : in    std_logic;
            TLAST_O         : out   std_logic;
            TVALID_I        : in    std_logic;
            TVALID_O        : out   std_logic;
            TREADY_I        : in    std_logic;
            TREADY_O        : out   std_logic;
            -----------------------------------------------------------------------
            -- シンクロ用信号.
            -----------------------------------------------------------------------
            SYNC_REQ        : out   SYNC_REQ_VECTOR (SYNC_WIDTH   -1 downto 0);
            SYNC_ACK        : in    SYNC_ACK_VECTOR (SYNC_WIDTH   -1 downto 0);
            -----------------------------------------------------------------------
            -- General Purpose Input 信号
            -----------------------------------------------------------------------
            GPI             : in    std_logic_vector(GPI_WIDTH-1 downto 0) := (others => '0');
            -----------------------------------------------------------------------
            -- General Purpose Output 信号
            -----------------------------------------------------------------------
            GPO             : out   std_logic_vector(GPO_WIDTH-1 downto 0);
            -----------------------------------------------------------------------
            -- レポートステータス出力.
            -----------------------------------------------------------------------
            REPORT_STATUS   : out   REPORT_STATUS_TYPE;
            -----------------------------------------------------------------------
            -- シミュレーション終了通知信号.
            -----------------------------------------------------------------------
            FINISH          : out   std_logic
        );
    end component;
end     AXI4_CORE;
-----------------------------------------------------------------------------------
--!     @file    axi4_channel_player.vhd
--!     @brief   AXI4 A/R/W/B Channel Dummy Plug Player.
--!     @version 1.6.1
--!     @date    2016/3/15
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.AXI4_CORE.all;
use     DUMMY_PLUG.CORE.REPORT_STATUS_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_PLUG_NUM_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_REQ_VECTOR;
use     DUMMY_PLUG.SYNC.SYNC_ACK_VECTOR;
-----------------------------------------------------------------------------------
--! @brief   AXI4_CHANNEL_PLAYER :
-----------------------------------------------------------------------------------
entity  AXI4_CHANNEL_PLAYER is
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING;
        NAME            : --! @brief 固有名詞.
                          STRING;
        FULL_NAME       : --! @brief メッセージ出力用の固有名詞.
                          STRING;
        CHANNEL         : --! @brief チャネルタイプ.
                          AXI4_CHANNEL_TYPE;
        MASTER          : --! @brief マスターモードを指定する.
                          boolean   := FALSE;
        SLAVE           : --! @brief スレーブモードを指定する.
                          boolean   := FALSE;
        READ_ENABLE     : --! @brief リードトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        WRITE_ENABLE    : --! @brief ライトトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                          time;
        WIDTH           : --! @brief AXI4 IS WIDTH :
                          AXI4_SIGNAL_WIDTH_TYPE;
        SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                          integer :=  1;
        SYNC_LOCAL_WAIT : --! @brief ローカル同期時のウェイトクロック数.
                          integer := 2;
        DEFAULT_SYNC_IO : --! @brief リードトランザクション/ライトトランザクション
                          --         ウェイト時に完了を待ってから次のコマンドを実行
                          --         するか否かを指定する.
                          boolean := true;
        GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                          integer := 8;
        GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                          integer := 8;
        FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                          --!        アボートするかどうかを指定するフラグ.
                          boolean := true
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        ---------------------------------------------------------------------------
        -- グローバルシグナル.
        ---------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        ---------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        ---------------------------------------------------------------------------
        ARADDR_I        : in    std_logic_vector(WIDTH.ARADDR -1 downto 0);
        ARADDR_O        : out   std_logic_vector(WIDTH.ARADDR -1 downto 0);
        ARLEN_I         : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
        ARLEN_O         : out   std_logic_vector(WIDTH.ALEN   -1 downto 0);
        ARSIZE_I        : in    AXI4_ASIZE_TYPE;
        ARSIZE_O        : out   AXI4_ASIZE_TYPE;
        ARBURST_I       : in    AXI4_ABURST_TYPE;
        ARBURST_O       : out   AXI4_ABURST_TYPE;
        ARLOCK_I        : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        ARLOCK_O        : out   std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        ARCACHE_I       : in    AXI4_ACACHE_TYPE;
        ARCACHE_O       : out   AXI4_ACACHE_TYPE;
        ARPROT_I        : in    AXI4_APROT_TYPE;
        ARPROT_O        : out   AXI4_APROT_TYPE;
        ARQOS_I         : in    AXI4_AQOS_TYPE;
        ARQOS_O         : out   AXI4_AQOS_TYPE;
        ARREGION_I      : in    AXI4_AREGION_TYPE;
        ARREGION_O      : out   AXI4_AREGION_TYPE;
        ARUSER_I        : in    std_logic_vector(WIDTH.ARUSER -1 downto 0);
        ARUSER_O        : out   std_logic_vector(WIDTH.ARUSER -1 downto 0);
        ARID_I          : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        ARID_O          : out   std_logic_vector(WIDTH.ID     -1 downto 0);
        ARVALID_I       : in    std_logic;
        ARVALID_O       : out   std_logic;
        ARREADY_I       : in    std_logic;
        ARREADY_O       : out   std_logic;
        ---------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        ---------------------------------------------------------------------------
        RVALID_I        : in    std_logic;
        RVALID_O        : out   std_logic;
        RLAST_I         : in    std_logic;
        RLAST_O         : out   std_logic;
        RDATA_I         : in    std_logic_vector(WIDTH.RDATA  -1 downto 0);
        RDATA_O         : out   std_logic_vector(WIDTH.RDATA  -1 downto 0);
        RRESP_I         : in    AXI4_RESP_TYPE;
        RRESP_O         : out   AXI4_RESP_TYPE;
        RUSER_I         : in    std_logic_vector(WIDTH.RUSER  -1 downto 0);
        RUSER_O         : out   std_logic_vector(WIDTH.RUSER  -1 downto 0);
        RID_I           : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        RID_O           : out   std_logic_vector(WIDTH.ID     -1 downto 0);
        RREADY_I        : in    std_logic;
        RREADY_O        : out   std_logic;
        ---------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        ---------------------------------------------------------------------------
        AWADDR_I        : in    std_logic_vector(WIDTH.AWADDR -1 downto 0);
        AWADDR_O        : out   std_logic_vector(WIDTH.AWADDR -1 downto 0);
        AWLEN_I         : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
        AWLEN_O         : out   std_logic_vector(WIDTH.ALEN   -1 downto 0);
        AWSIZE_I        : in    AXI4_ASIZE_TYPE;
        AWSIZE_O        : out   AXI4_ASIZE_TYPE;
        AWBURST_I       : in    AXI4_ABURST_TYPE;
        AWBURST_O       : out   AXI4_ABURST_TYPE;
        AWLOCK_I        : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        AWLOCK_O        : out   std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        AWCACHE_I       : in    AXI4_ACACHE_TYPE;
        AWCACHE_O       : out   AXI4_ACACHE_TYPE;
        AWPROT_I        : in    AXI4_APROT_TYPE;
        AWPROT_O        : out   AXI4_APROT_TYPE;
        AWQOS_I         : in    AXI4_AQOS_TYPE;
        AWQOS_O         : out   AXI4_AQOS_TYPE;
        AWREGION_I      : in    AXI4_AREGION_TYPE;
        AWREGION_O      : out   AXI4_AREGION_TYPE;
        AWUSER_I        : in    std_logic_vector(WIDTH.AWUSER -1 downto 0);
        AWUSER_O        : out   std_logic_vector(WIDTH.AWUSER -1 downto 0);
        AWID_I          : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        AWID_O          : out   std_logic_vector(WIDTH.ID     -1 downto 0);
        AWVALID_I       : in    std_logic;
        AWVALID_O       : out   std_logic;
        AWREADY_I       : in    std_logic;
        AWREADY_O       : out   std_logic;
        ---------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        ---------------------------------------------------------------------------
        WLAST_I         : in    std_logic;
        WLAST_O         : out   std_logic;
        WDATA_I         : in    std_logic_vector(WIDTH.WDATA  -1 downto 0);
        WDATA_O         : out   std_logic_vector(WIDTH.WDATA  -1 downto 0);
        WSTRB_I         : in    std_logic_vector(WIDTH.WDATA/8-1 downto 0);
        WSTRB_O         : out   std_logic_vector(WIDTH.WDATA/8-1 downto 0);
        WUSER_I         : in    std_logic_vector(WIDTH.WUSER  -1 downto 0);
        WUSER_O         : out   std_logic_vector(WIDTH.WUSER  -1 downto 0);
        WID_I           : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        WID_O           : out   std_logic_vector(WIDTH.ID     -1 downto 0);
        WVALID_I        : in    std_logic;
        WVALID_O        : out   std_logic;
        WREADY_I        : in    std_logic;
        WREADY_O        : out   std_logic;
        ---------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        ---------------------------------------------------------------------------
        BRESP_I         : in    AXI4_RESP_TYPE;
        BRESP_O         : out   AXI4_RESP_TYPE;
        BUSER_I         : in    std_logic_vector(WIDTH.BUSER  -1 downto 0);
        BUSER_O         : out   std_logic_vector(WIDTH.BUSER  -1 downto 0);
        BID_I           : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        BID_O           : out   std_logic_vector(WIDTH.ID     -1 downto 0);
        BVALID_I        : in    std_logic;
        BVALID_O        : out   std_logic;
        BREADY_I        : in    std_logic;
        BREADY_O        : out   std_logic;
        ---------------------------------------------------------------------------
        -- シンクロ用信号.
        ---------------------------------------------------------------------------
        SYNC_REQ        : out   SYNC_REQ_VECTOR(SYNC_WIDTH-1 downto 0);
        SYNC_ACK        : in    SYNC_ACK_VECTOR(SYNC_WIDTH-1 downto 0) := (others => '0');
        SYNC_LOCAL_REQ  : out   SYNC_REQ_VECTOR(0 downto 0);
        SYNC_LOCAL_ACK  : in    SYNC_ACK_VECTOR(0 downto 0);
        SYNC_TRANS_REQ  : out   SYNC_REQ_VECTOR(0 downto 0);
        SYNC_TRANS_ACK  : in    SYNC_ACK_VECTOR(0 downto 0);
        ---------------------------------------------------------------------------
        -- トランザクション用信号.
        ---------------------------------------------------------------------------
        TRAN_I          : in    AXI4_TRANSACTION_SIGNAL_TYPE;
        TRAN_O          : out   AXI4_TRANSACTION_SIGNAL_TYPE;
        --------------------------------------------------------------------------
        -- General Purpose Input 信号
        --------------------------------------------------------------------------
        GPI             : in    std_logic_vector(GPI_WIDTH-1 downto 0) := (others => '0');
        --------------------------------------------------------------------------
        -- General Purpose Output 信号
        --------------------------------------------------------------------------
        GPO             : out   std_logic_vector(GPO_WIDTH-1 downto 0);
        --------------------------------------------------------------------------
        -- レポートステータス出力.
        --------------------------------------------------------------------------
        REPORT_STATUS   : out   REPORT_STATUS_TYPE;
        --------------------------------------------------------------------------
        -- シミュレーション終了通知信号.
        --------------------------------------------------------------------------
        FINISH          : out   std_logic
    );
end AXI4_CHANNEL_PLAYER;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.AXI4_CORE.all;
use     DUMMY_PLUG.CORE.all;
use     DUMMY_PLUG.SYNC.all;
use     DUMMY_PLUG.UTIL.all;
use     DUMMY_PLUG.READER.all;
-----------------------------------------------------------------------------------
--! @brief   AXI4_CHANNEL_PLAYER :
-----------------------------------------------------------------------------------
architecture MODEL of AXI4_CHANNEL_PLAYER is
    -------------------------------------------------------------------------------
    --! @brief 入力信号のどれかに変化があるまで待つサブプログラム.
    -------------------------------------------------------------------------------
    procedure  wait_on_signals is
    begin
        wait on 
            ACLK       , -- In  :
            ARADDR_I   , -- In  :
            ARLEN_I    , -- In  :
            ARSIZE_I   , -- In  :
            ARBURST_I  , -- In  :
            ARLOCK_I   , -- In  :
            ARCACHE_I  , -- In  :
            ARPROT_I   , -- In  :
            ARQOS_I    , -- In  :
            ARREGION_I , -- In  :
            ARUSER_I   , -- In  :
            ARID_I     , -- In  :
            ARVALID_I  , -- In  :
            ARREADY_I  , -- In  :
            AWADDR_I   , -- In  :
            AWLEN_I    , -- In  :
            AWSIZE_I   , -- In  :
            AWBURST_I  , -- In  :
            AWLOCK_I   , -- In  :
            AWCACHE_I  , -- In  :
            AWPROT_I   , -- In  :
            AWQOS_I    , -- In  :
            AWREGION_I , -- In  :
            AWUSER_I   , -- In  :
            AWID_I     , -- In  :
            AWVALID_I  , -- In  :
            AWREADY_I  , -- In  :
            RLAST_I    , -- In  :
            RDATA_I    , -- In  :
            RRESP_I    , -- In  :
            RUSER_I    , -- In  :
            RID_I      , -- In  :
            RVALID_I   , -- In  :
            RREADY_I   , -- In  :
            WLAST_I    , -- In  :
            WDATA_I    , -- In  :
            WSTRB_I    , -- In  :
            WUSER_I    , -- In  :
            WID_I      , -- In  :
            WVALID_I   , -- In  :
            WREADY_I   , -- In  :
            BRESP_I    , -- In  :
            BUSER_I    , -- In  :
            BID_I      , -- In  :
            BVALID_I   , -- In  :
            BREADY_I   , -- In  :
            GPI        ; -- In  :
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 全チャネルの期待値と信号の値を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    SIGNALS     信号の期待値.
    --! @param    MATCH       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure match_axi4_channel(
                  signals       : in    AXI4_CHANNEL_SIGNAL_TYPE;
                  match         : out   boolean
    ) is
        variable  ar_match      :       boolean;
        variable  aw_match      :       boolean;
        variable  r_match       :       boolean;
        variable  w_match       :       boolean;
    begin
        ---------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナルの比較
        ---------------------------------------------------------------------------
        if (WRITE_ENABLE) then
            aw_match := MATCH_STD_LOGIC(signals.AW.VALID               ,AWVALID_I ) and 
                        MATCH_STD_LOGIC(signals.AW.READY               ,AWREADY_I ) and 
                        MATCH_STD_LOGIC(signals.AW.ID  (AWID_I  'range),AWID_I    ) and 
                        MATCH_STD_LOGIC(signals.AW.ADDR(AWADDR_I'range),AWADDR_I  ) and 
                        MATCH_STD_LOGIC(signals.AW.LEN (AWLEN_I 'range),AWLEN_I   ) and 
                        MATCH_STD_LOGIC(signals.AW.SIZE                ,AWSIZE_I  ) and 
                        MATCH_STD_LOGIC(signals.AW.BURST               ,AWBURST_I ) and 
                        MATCH_STD_LOGIC(signals.AW.LOCK(AWLOCK_I'range),AWLOCK_I  ) and 
                        MATCH_STD_LOGIC(signals.AW.CACHE               ,AWCACHE_I ) and 
                        MATCH_STD_LOGIC(signals.AW.PROT                ,AWPROT_I  ) and
                        MATCH_STD_LOGIC(signals.AW.QOS                 ,AWQOS_I   ) and
                        MATCH_STD_LOGIC(signals.AW.REGION              ,AWREGION_I) and
                        MATCH_STD_LOGIC(signals.AW.USER(AWUSER_I'range),AWUSER_I  );
        else
            aw_match := TRUE;
        end if;
        ---------------------------------------------------------------------------
        -- ライトチャネルシグナル/ライト応答チャネルシグナルの比較
        ---------------------------------------------------------------------------
        if (WRITE_ENABLE) then
            w_match  := MATCH_STD_LOGIC(signals.W.VALID                ,WVALID_I  ) and 
                        MATCH_STD_LOGIC(signals.W.READY                ,WREADY_I  ) and 
                        MATCH_STD_LOGIC(signals.B.VALID                ,BVALID_I  ) and 
                        MATCH_STD_LOGIC(signals.B.READY                ,BREADY_I  ) and
                        MATCH_STD_LOGIC(signals.W.ID(WID_I'range)      ,WID_I     ) and 
                        MATCH_STD_LOGIC(signals.B.ID(BID_I'range)      ,BID_I     ) and 
                        MATCH_STD_LOGIC(signals.W.DATA(WDATA_I'range)  ,WDATA_I   ) and 
                        MATCH_STD_LOGIC(signals.W.STRB(WSTRB_I'range)  ,WSTRB_I   ) and 
                        MATCH_STD_LOGIC(signals.W.LAST                 ,WLAST_I   ) and 
                        MATCH_STD_LOGIC(signals.B.RESP                 ,BRESP_I   ) and
                        MATCH_STD_LOGIC(signals.W.USER(WUSER_I'range)  ,WUSER_I   ) and 
                        MATCH_STD_LOGIC(signals.B.USER(BUSER_I'range)  ,BUSER_I   );
        else
            w_match  := TRUE;
        end if;
        ---------------------------------------------------------------------------
        -- リードアドレスチャネルシグナルの比較
        ---------------------------------------------------------------------------
        if (READ_ENABLE) then
            ar_match := MATCH_STD_LOGIC(signals.AR.VALID               ,ARVALID_I ) and 
                        MATCH_STD_LOGIC(signals.AR.READY               ,ARREADY_I ) and 
                        MATCH_STD_LOGIC(signals.AR.ID  (ARID_I  'range),ARID_I    ) and 
                        MATCH_STD_LOGIC(signals.AR.ADDR(ARADDR_I'range),ARADDR_I  ) and 
                        MATCH_STD_LOGIC(signals.AR.LEN (ARLEN_I 'range),ARLEN_I   ) and 
                        MATCH_STD_LOGIC(signals.AR.SIZE                ,ARSIZE_I  ) and 
                        MATCH_STD_LOGIC(signals.AR.BURST               ,ARBURST_I ) and 
                        MATCH_STD_LOGIC(signals.AR.LOCK(ARLOCK_I'range),ARLOCK_I  ) and 
                        MATCH_STD_LOGIC(signals.AR.CACHE               ,ARCACHE_I ) and 
                        MATCH_STD_LOGIC(signals.AR.PROT                ,ARPROT_I  ) and
                        MATCH_STD_LOGIC(signals.AR.QOS                 ,ARQOS_I   ) and
                        MATCH_STD_LOGIC(signals.AR.REGION              ,ARREGION_I) and
                        MATCH_STD_LOGIC(signals.AR.USER(ARUSER_I'range),ARUSER_I  );
        else
            ar_match := TRUE;
        end if;
        ---------------------------------------------------------------------------
        -- リードデータチャネルシグナルの比較
        ---------------------------------------------------------------------------
        if (READ_ENABLE) then
            r_match  := MATCH_STD_LOGIC(signals.R.VALID                ,RVALID_I  ) and 
                        MATCH_STD_LOGIC(signals.R.READY                ,RREADY_I  ) and 
                        MATCH_STD_LOGIC(signals.R.ID(RID_I'range)      ,RID_I     ) and 
                        MATCH_STD_LOGIC(signals.R.DATA(RDATA_I'range)  ,RDATA_I   ) and 
                        MATCH_STD_LOGIC(signals.R.LAST                 ,RLAST_I   ) and 
                        MATCH_STD_LOGIC(signals.R.USER(RUSER_I'range)  ,RUSER_I   );
        else
            r_match  := TRUE;
        end if;
        match := ar_match and aw_match and r_match and w_match;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief アドレスチャネルの期待値と信号の値を比較するサブプログラム.
    -------------------------------------------------------------------------------
    procedure match_axi4_channel(
        variable  core          : inout CORE_TYPE;
                  name          : in    STRING;
                  signals       : in    AXI4_A_CHANNEL_SIGNAL_TYPE;
                  match         : out   boolean;
        signal    ADDR          : in    std_logic_vector;
        signal    LEN           : in    std_logic_vector;
        signal    SIZE          : in    AXI4_ASIZE_TYPE;
        signal    BURST         : in    AXI4_ABURST_TYPE;
        signal    LOCK          : in    std_logic_vector;
        signal    CACHE         : in    AXI4_ACACHE_TYPE;
        signal    PROT          : in    AXI4_APROT_TYPE;
        signal    QOS           : in    AXI4_AQOS_TYPE;
        signal    REGION        : in    AXI4_AREGION_TYPE;
        signal    USER          : in    std_logic_vector;
        signal    ID            : in    std_logic_vector;
        signal    VALID         : in    std_logic;
        signal    READY         : in    std_logic
    ) is
        variable  count         :       integer;
    begin
        count := 0;
        if (MATCH_STD_LOGIC(signals.VALID           ,VALID ) = FALSE) then
            REPORT_MISMATCH(core, name & "VALID " &
                            BIN_TO_STRING(VALID) & " /= " &
                            BIN_TO_STRING(signals.VALID));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.READY           ,READY ) = FALSE) then
            REPORT_MISMATCH(core, name & "READY " & 
                            BIN_TO_STRING(READY) & " /= " &
                            BIN_TO_STRING(signals.READY));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.ADDR(ADDR'range),ADDR  ) = FALSE) then
            REPORT_MISMATCH(core, name & "ADDR " &
                            HEX_TO_STRING(ADDR ) & " /= " &
                            HEX_TO_STRING(signals.ADDR(ADDR'range)));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.LEN(LEN'range)  ,LEN   ) = FALSE) then
            REPORT_MISMATCH(core, name & "LEN " &
                            BIN_TO_STRING(LEN  ) & " /= " &
                            BIN_TO_STRING(signals.LEN));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.SIZE            ,SIZE  ) = FALSE) then
            REPORT_MISMATCH(core, name & "SIZE " &
                            BIN_TO_STRING(SIZE ) & " /= " &
                            BIN_TO_STRING(signals.SIZE));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.BURST           ,BURST ) = FALSE) then
            REPORT_MISMATCH(core, name & "BURST " &
                            BIN_TO_STRING(BURST) & " /= " &
                            BIN_TO_STRING(signals.BURST));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.LOCK(LOCK'range),LOCK  ) = FALSE) then
            REPORT_MISMATCH(core, name & "LOCK " &
                            BIN_TO_STRING(LOCK ) & " /= " &
                            BIN_TO_STRING(signals.LOCK));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.CACHE           ,CACHE ) = FALSE) then
            REPORT_MISMATCH(core, name & "CACHE " &
                            BIN_TO_STRING(CACHE) & " /= " &
                            BIN_TO_STRING(signals.CACHE));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.PROT            ,PROT  ) = FALSE) then
            REPORT_MISMATCH(core, name & "PROT " &
                            BIN_TO_STRING(PROT ) & " /= " &
                            BIN_TO_STRING(signals.PROT));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.QOS             ,QOS   ) = FALSE) then
            REPORT_MISMATCH(core, name & "QOS " &
                            HEX_TO_STRING(QOS  ) & " /= " &
                            HEX_TO_STRING(signals.QOS));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.REGION          ,REGION) = FALSE) then
            REPORT_MISMATCH(core, name & "REGION " &
                            HEX_TO_STRING(REGION) & " /= " &
                            HEX_TO_STRING(signals.REGION));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.ID(ID'range)    ,ID    ) = FALSE) then
            REPORT_MISMATCH(core, name & "ID " &
                            HEX_TO_STRING(ID   ) & " /= " &
                            HEX_TO_STRING(signals.ID(ID'range)));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.USER(USER'range),USER  ) = FALSE) then
            REPORT_MISMATCH(core, name & "USER " &
                            HEX_TO_STRING(USER ) & " /= " &
                            HEX_TO_STRING(signals.USER(USER'range)));
            count := count + 1;
        end if;
        match := (count = 0);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ライトアドレスチャネルの期待値と信号の値を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    signals     信号の期待値.
    --! @param    match       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure match_axi4_aw_channel(
        variable  core      : inout CORE_TYPE;
                  signals   : in    AXI4_A_CHANNEL_SIGNAL_TYPE;
                  match     : out   boolean
    ) is
    begin
        match_axi4_channel(
            core        => core         , -- I/O :
            name        => "AW"         , -- In  :
            signals     => signals      , -- In  :
            match       => match        , -- Out :
            ADDR        => AWADDR_I     , -- In  :
            LEN         => AWLEN_I      , -- In  :
            SIZE        => AWSIZE_I     , -- In  :
            BURST       => AWBURST_I    , -- In  :
            LOCK        => AWLOCK_I     , -- In  :
            CACHE       => AWCACHE_I    , -- In  :
            PROT        => AWPROT_I     , -- In  :
            QOS         => AWQOS_I      , -- In  :
            REGION      => AWREGION_I   , -- In  :
            USER        => AWUSER_I     , -- In  :
            ID          => AWID_I       , -- In  :
            VALID       => AWVALID_I    , -- In  :
            READY       => AWREADY_I      -- In  :
        );
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief リードアドレスチャネルの期待値と信号の値を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    signals     信号の期待値.
    --! @param    match       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure match_axi4_ar_channel(
        variable  core      : inout CORE_TYPE;
                  signals   : in    AXI4_A_CHANNEL_SIGNAL_TYPE;
                  match     : out   boolean
    ) is
    begin
        match_axi4_channel(
            core        => core         , -- I/O :
            name        => "AR"         , -- In  :
            signals     => signals      , -- In  :
            match       => match        , -- Out :
            ADDR        => ARADDR_I     , -- In  :
            LEN         => ARLEN_I      , -- In  :
            SIZE        => ARSIZE_I     , -- In  :
            BURST       => ARBURST_I    , -- In  :
            LOCK        => ARLOCK_I     , -- In  :
            CACHE       => ARCACHE_I    , -- In  :
            PROT        => ARPROT_I     , -- In  :
            QOS         => ARQOS_I      , -- In  :
            REGION      => ARREGION_I   , -- In  :
            USER        => ARUSER_I     , -- In  :
            ID          => ARID_I       , -- In  :
            VALID       => ARVALID_I    , -- In  :
            READY       => ARREADY_I      -- In  :
        );
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ライトデータチャネルの期待値と信号の値を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    signals     信号の期待値.
    --! @param    match       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure match_axi4_w_channel(
        variable  core      : inout CORE_TYPE;
                  signals   : in    AXI4_W_CHANNEL_SIGNAL_TYPE;
                  match     : out   boolean
    ) is
        variable  count     :       integer;
    begin
        count := 0;
        if (MATCH_STD_LOGIC(signals.VALID              ,WVALID_I) = FALSE) then
            REPORT_MISMATCH(core, "WVALID " & 
                            BIN_TO_STRING(WVALID_I) & " /= " &
                            BIN_TO_STRING(signals.VALID));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.READY              ,WREADY_I) = FALSE) then
            REPORT_MISMATCH(core, "WREADY " &
                            BIN_TO_STRING(WREADY_I) & " /= " &
                            BIN_TO_STRING(signals.READY));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.DATA(WDATA_I'range),WDATA_I ) = FALSE) then
            REPORT_MISMATCH(core, "WDATA " &
                            HEX_TO_STRING(WDATA_I ) & " /= " &
                            HEX_TO_STRING(signals.DATA(WDATA_I'range)));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.STRB(WSTRB_I'range),WSTRB_I ) = FALSE) then
            REPORT_MISMATCH(core, "WSTRB " &
                            BIN_TO_STRING(WSTRB_I ) & " /= " &
                            BIN_TO_STRING(signals.STRB(WSTRB_I'range)));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.LAST               ,WLAST_I ) = FALSE) then
            REPORT_MISMATCH(core, "WLAST " &
                            BIN_TO_STRING(WLAST_I ) & " /= " &
                            BIN_TO_STRING(signals.LAST));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.ID(WID_I'range)    ,WID_I   ) = FALSE) then
            REPORT_MISMATCH(core, "WID " &
                            HEX_TO_STRING(WID_I   ) & " /= " &
                            HEX_TO_STRING(signals.ID(WID_I'range)));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.USER(WUSER_I'range),WUSER_I ) = FALSE) then
            REPORT_MISMATCH(core, "WUSER " &
                            HEX_TO_STRING(WUSER_I ) & " /= " &
                            HEX_TO_STRING(signals.USER(WUSER_I'range)));
            count := count + 1;
        end if;
        match := (count = 0);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ライト応答チャネルの期待値と信号の値を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    signals     信号の期待値.
    --! @param    match       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure match_axi4_b_channel(
        variable  core      : inout CORE_TYPE;
                  signals   : in    AXI4_B_CHANNEL_SIGNAL_TYPE;
                  match     : out   boolean
    ) is
        variable  count     :       integer;
    begin
        count := 0;
        if (MATCH_STD_LOGIC(signals.VALID              ,BVALID_I) = FALSE) then
            REPORT_MISMATCH(core, "BVALID " & 
                            BIN_TO_STRING(BVALID_I)  & " /= " &
                            BIN_TO_STRING(signals.VALID));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.READY              ,BREADY_I) = FALSE) then
            REPORT_MISMATCH(core, "BREADY " &
                            BIN_TO_STRING(BREADY_I)  & " /= " &
                            BIN_TO_STRING(signals.READY));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.RESP               ,BRESP_I ) = FALSE) then
            REPORT_MISMATCH(core, "BRESP "  &
                            BIN_TO_STRING(BRESP_I )  & " /= " &
                            BIN_TO_STRING(signals.RESP));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.ID(BID_I'range)    ,BID_I   ) = FALSE) then
            REPORT_MISMATCH(core, "BID "    &
                            HEX_TO_STRING(BID_I   )  & " /= " &
                            HEX_TO_STRING(signals.ID(BID_I'range)));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.USER(BUSER_I'range),BUSER_I ) = FALSE) then
            REPORT_MISMATCH(core, "BUSER "  &
                            HEX_TO_STRING(BUSER_I )  & " /= " &
                            HEX_TO_STRING(signals.USER(BUSER_I'range)));
            count := count + 1;
        end if;
        match := (count = 0);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief リードデータチャネルの期待値と信号の値を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    signals     信号の期待値.
    --! @param    match       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure match_axi4_r_channel(
        variable  core      : inout CORE_TYPE;
                  signals   : in    AXI4_R_CHANNEL_SIGNAL_TYPE;
                  match     : out   boolean
    ) is
        variable  count     :       integer;
    begin
        count := 0;
        if (MATCH_STD_LOGIC(signals.VALID              ,RVALID_I) = FALSE) then
            REPORT_MISMATCH(core, "RVALID " & 
                            BIN_TO_STRING(RVALID_I) & " /= " &
                            BIN_TO_STRING(signals.VALID));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.READY              ,RREADY_I) = FALSE) then
            REPORT_MISMATCH(core, "RREADY " &
                            BIN_TO_STRING(RREADY_I) & " /= " &
                            BIN_TO_STRING(signals.READY));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.DATA(RDATA_I'range),RDATA_I ) = FALSE) then
            REPORT_MISMATCH(core, "RDATA " &
                            HEX_TO_STRING(RDATA_I ) & " /= " &
                            HEX_TO_STRING(signals.DATA(RDATA_I'range)));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.LAST               ,RLAST_I ) = FALSE) then
            REPORT_MISMATCH(core, "RLAST " &
                            BIN_TO_STRING(RLAST_I ) & " /= " &
                            BIN_TO_STRING(signals.LAST));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.RESP               ,RRESP_I ) = FALSE) then
            REPORT_MISMATCH(core, "RRESP " &
                            BIN_TO_STRING(RRESP_I ) & " /= " &
                            BIN_TO_STRING(signals.RESP));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.ID(RID_I'range)    ,RID_I   ) = FALSE) then
            REPORT_MISMATCH(core, "RID " &
                            HEX_TO_STRING(RID_I   ) & " /= " &
                            HEX_TO_STRING(signals.ID(RID_I'range)));
            count := count + 1;
        end if;
        if (MATCH_STD_LOGIC(signals.USER(RUSER_I'range),RUSER_I ) = FALSE) then
            REPORT_MISMATCH(core, "RUSER " &
                            HEX_TO_STRING(RUSER_I ) & " /= " &
                            HEX_TO_STRING(signals.USER(RUSER_I'range)));
            count := count + 1;
        end if;
        match := (count = 0);
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief 全チャネルの期待値と信号の値を比較するサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    signals     信号の期待値.
    --! @param    match       比較した結果。マッチすれば TRUE、しなければ FALSE.
    -------------------------------------------------------------------------------
    procedure  match_axi4_channel(
        variable  core      : inout CORE_TYPE;
                  signals   : in    AXI4_CHANNEL_SIGNAL_TYPE;
                  match     : out   boolean
    ) is
        variable  aw_match  :       boolean;
        variable  w_match   :       boolean;
        variable  b_match   :       boolean;
        variable  ar_match  :       boolean;
        variable  r_match   :       boolean;
    begin
        if (WRITE_ENABLE) then
            match_axi4_aw_channel(core, signals.AW, aw_match);
            match_axi4_w_channel (core, signals.W , w_match );
            match_axi4_b_channel (core, signals.B , b_match );
        else
            aw_match := TRUE;
            w_match  := TRUE;
            b_match  := TRUE;
        end if;
        if (READ_ENABLE) then
            match_axi4_ar_channel(core, signals.AR, ar_match);
            match_axi4_r_channel (core, signals.R , r_match );
        else
            ar_match := TRUE;
            r_match  := TRUE;
        end if;
        match := aw_match and w_match and b_match and ar_match and r_match;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ライトアドレスチャネルの転送を待つサブプログラム.
    -------------------------------------------------------------------------------
    procedure  wait_until_xfer_ar(
        variable  core      : inout CORE_TYPE;
                  proc_name : in    string;
                  timeout   : in    integer
    ) is
        variable  count     :       integer;
    begin
        count := 0;
        WAIT_LOOP: loop
            wait until (ACLK'event and ACLK = '1');
            exit when  (ARVALID_I = '1' and ARREADY_I = '1');
            if (count >= timeout) then
                EXECUTE_ABORT(core, proc_name, "WAIT AR Time Out!");
            end if;
            count := count + 1;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief リードアドレスチャネルの転送を待つサブプログラム.
    -------------------------------------------------------------------------------
    procedure  wait_until_xfer_aw(
        variable  core      : inout CORE_TYPE;
                  proc_name : in    string;
                  timeout   : in    integer
    ) is
        variable  count     :       integer;
    begin
        count := 0;
        WAIT_LOOP: loop
            wait until (ACLK'event and ACLK = '1');
            exit when  (AWVALID_I = '1' and AWREADY_I = '1');
            if (count >= timeout) then
                EXECUTE_ABORT(core, proc_name, "WAIT AW Time Out!");
            end if;
            count := count + 1;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief リードデータチャネルのデータ転送を待つサブプログラム.
    -------------------------------------------------------------------------------
    procedure  wait_until_xfer_r(
        variable  core      : inout CORE_TYPE;
                  proc_name : in    string;
                  timeout   : in    integer;
                  last      : in    std_logic
    ) is
        variable  count     :       integer;
    begin
        count := 0;
        WAIT_LOOP: loop
            wait until (ACLK'event and ACLK = '1');
            exit when  (RVALID_I = '1' and RREADY_I = '1' and (last = '0' or RLAST_I = '1'));
            if (count >= timeout) then
                EXECUTE_ABORT(core, proc_name, "WAIT R Time Out!");
            end if;
            count := count + 1;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ライトデータチャネルのデータ転送を待つサブプログラム.
    -------------------------------------------------------------------------------
    procedure  wait_until_xfer_w(
        variable  core      : inout CORE_TYPE;
                  proc_name : in    string;
                  timeout   : in    integer;
                  last      : in    std_logic
    ) is
        variable  count     :       integer;
    begin
        count := 0;
        WAIT_LOOP: loop
            wait until (ACLK'event and ACLK = '1');
            exit when  (WVALID_I = '1' and WREADY_I = '1' and (last = '0' or WLAST_I = '1'));
            if (count >= timeout) then
                EXECUTE_ABORT(core, proc_name, "WAIT W Time Out!");
            end if;
            count := count + 1;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ライト応答チャネルの転送を待つサブプログラム.
    -------------------------------------------------------------------------------
    procedure  wait_until_xfer_b(
        variable  core      : inout CORE_TYPE;
                  proc_name : in    string;
                  timeout   : in    integer
    ) is
        variable  count     :       integer;
    begin
        count := 0;
        WAIT_LOOP: loop
            wait until (ACLK'event and ACLK = '1');
            exit when  (BVALID_I = '1' and BREADY_I = '1');
            if (count >= timeout) then
                EXECUTE_ABORT(core, proc_name, "WAIT B Time Out!");
            end if;
            count := count + 1;
        end loop;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief チャネル信号変数の初期化.
    -------------------------------------------------------------------------------
    function  GEN_INIT_signals return AXI4_CHANNEL_SIGNAL_TYPE is
        variable  value : AXI4_CHANNEL_SIGNAL_TYPE;
    begin
        value := AXI4_CHANNEL_SIGNAL_DONTCARE;
        if (MASTER) then
            case CHANNEL is
                when AXI4_CHANNEL_AR =>
                    value.AR       := AXI4_A_CHANNEL_SIGNAL_NULL;
                    value.AR.READY := '-';
                when AXI4_CHANNEL_AW =>
                    value.AW       := AXI4_A_CHANNEL_SIGNAL_NULL;
                    value.AW.READY := '-';
                when AXI4_CHANNEL_W  =>
                    value.W        := AXI4_W_CHANNEL_SIGNAL_NULL;
                    value.W.READY  := '-';
                when AXI4_CHANNEL_R  => 
                    value.R        := AXI4_R_CHANNEL_SIGNAL_DONTCARE;
                    value.R.READY  := '0';
                when AXI4_CHANNEL_B  =>
                    value.B        := AXI4_B_CHANNEL_SIGNAL_DONTCARE;
                    value.B.READY  := '0';
                when others =>
                    null;
            end case;
        end if;
        if (SLAVE) then
            case CHANNEL is
                when AXI4_CHANNEL_AR =>
                    value.AR       := AXI4_A_CHANNEL_SIGNAL_DONTCARE;
                    value.AR.READY := '0';
                when AXI4_CHANNEL_AW =>
                    value.AW       := AXI4_A_CHANNEL_SIGNAL_DONTCARE;
                    value.AW.READY := '0';
                when AXI4_CHANNEL_W  =>
                    value.W        := AXI4_W_CHANNEL_SIGNAL_DONTCARE;
                    value.W.READY  := '0';
                when AXI4_CHANNEL_R  => 
                    value.R        := AXI4_R_CHANNEL_SIGNAL_NULL;
                    value.R.READY  := '-';
                when AXI4_CHANNEL_B  => 
                    value.B        := AXI4_B_CHANNEL_SIGNAL_NULL;
                    value.B.READY  := '-';
                when others =>
                    null;
            end case;
        end if;
        return value;
    end function;
    constant  INIT_SIGNALS  : AXI4_CHANNEL_SIGNAL_TYPE := GEN_INIT_SIGNALS;
    -------------------------------------------------------------------------------
    -- キーワードの定義.
    -------------------------------------------------------------------------------
    subtype   KEY_TYPE is STRING(1 to 7);
    constant  KEY_AR        : KEY_TYPE := "AR     ";
    constant  KEY_AW        : KEY_TYPE := "AW     ";
    constant  KEY_W         : KEY_TYPE := "W      ";
    constant  KEY_R         : KEY_TYPE := "R      ";
    constant  KEY_B         : KEY_TYPE := "B      ";

    constant  KEY_NULL      : KEY_TYPE := "       ";
    constant  KEY_SAY       : KEY_TYPE := "SAY    ";
    constant  KEY_SYNC      : KEY_TYPE := "SYNC   ";
    constant  KEY_WAIT      : KEY_TYPE := "WAIT   ";
    constant  KEY_CHECK     : KEY_TYPE := "CHECK  ";
    constant  KEY_OUT       : KEY_TYPE := "OUT    ";
    constant  KEY_DEBUG     : KEY_TYPE := "DEBUG  ";
    constant  KEY_REPORT    : KEY_TYPE := "REPORT ";
    constant  KEY_TIMEOUT   : KEY_TYPE := "TIMEOUT";

    constant  KEY_READ      : KEY_TYPE := "READ   ";
    constant  KEY_WRITE     : KEY_TYPE := "WRITE  ";
    constant  KEY_ADDR      : KEY_TYPE := "ADDR   ";
    constant  KEY_LEN       : KEY_TYPE := "LEN    ";
    constant  KEY_SIZE      : KEY_TYPE := "SIZE   ";
    constant  KEY_BURST     : KEY_TYPE := "BURST  ";
    constant  KEY_LOCK      : KEY_TYPE := "LOCK   ";
    constant  KEY_CACHE     : KEY_TYPE := "CACHE  ";
    constant  KEY_PROT      : KEY_TYPE := "PROT   ";
    constant  KEY_QOS       : KEY_TYPE := "QOS    ";
    constant  KEY_REGION    : KEY_TYPE := "REGION ";
    constant  KEY_USER      : KEY_TYPE := "USER   ";
    constant  KEY_ID        : KEY_TYPE := "ID     ";
    constant  KEY_DATA      : KEY_TYPE := "DATA   ";
    constant  KEY_RESP      : KEY_TYPE := "RESP   ";
    constant  KEY_LAST      : KEY_TYPE := "LAST   ";
    constant  KEY_KEEP      : KEY_TYPE := "KEEP   ";
    constant  KEY_DEST      : KEY_TYPE := "DEST   ";
    constant  KEY_STRB      : KEY_TYPE := "STRB   ";
    constant  KEY_VALID     : KEY_TYPE := "VALID  ";
    constant  KEY_READY     : KEY_TYPE := "READY  ";

    constant  KEY_AWRITE    : KEY_TYPE := "AWRITE ";
    constant  KEY_ALEN      : KEY_TYPE := "ALEN   ";
    constant  KEY_ASIZE     : KEY_TYPE := "ASIZE  ";
    constant  KEY_ABURST    : KEY_TYPE := "ABURST ";
    constant  KEY_ALOCK     : KEY_TYPE := "ALOCK  ";
    constant  KEY_ACACHE    : KEY_TYPE := "ACACHE ";
    constant  KEY_APROT     : KEY_TYPE := "APROT  ";
    constant  KEY_AQOS      : KEY_TYPE := "AQOS   ";
    constant  KEY_AREGION   : KEY_TYPE := "AREGION";
    constant  KEY_AUSER     : KEY_TYPE := "AUSER  ";
    constant  KEY_AID       : KEY_TYPE := "AID    ";
    constant  KEY_AVALID    : KEY_TYPE := "AVALID ";
    constant  KEY_AREADY    : KEY_TYPE := "AREADY ";
    
    constant  KEY_AWADDR    : KEY_TYPE := "AWADDR ";
    constant  KEY_AWLEN     : KEY_TYPE := "AWLEN  ";
    constant  KEY_AWSIZE    : KEY_TYPE := "AWSIZE ";
    constant  KEY_AWBURST   : KEY_TYPE := "AWBURST";
    constant  KEY_AWLOCK    : KEY_TYPE := "AWLOCK ";
    constant  KEY_AWCACHE   : KEY_TYPE := "AWCACHE";
    constant  KEY_AWPROT    : KEY_TYPE := "AWPROT ";
    constant  KEY_AWQOS     : KEY_TYPE := "AWQOS  ";
    constant  KEY_AWUSER    : KEY_TYPE := "AWUSER ";
    constant  KEY_AWREGION  : KEY_TYPE := "AWREGIO";
    constant  KEY_AWID      : KEY_TYPE := "AWID   ";
    constant  KEY_AWVALID   : KEY_TYPE := "AWVALID";
    constant  KEY_AWREADY   : KEY_TYPE := "AWREADY";
    
    constant  KEY_ARADDR    : KEY_TYPE := "ARADDR ";
    constant  KEY_ARLEN     : KEY_TYPE := "ARLEN  ";
    constant  KEY_ARSIZE    : KEY_TYPE := "ARSIZE ";
    constant  KEY_ARBURST   : KEY_TYPE := "ARBURST";
    constant  KEY_ARLOCK    : KEY_TYPE := "ARLOCK ";
    constant  KEY_ARCACHE   : KEY_TYPE := "ARCACHE";
    constant  KEY_ARPROT    : KEY_TYPE := "ARPROT ";
    constant  KEY_ARQOS     : KEY_TYPE := "ARQOS  ";
    constant  KEY_ARUSER    : KEY_TYPE := "ARUSER ";
    constant  KEY_ARREGION  : KEY_TYPE := "ARREGIO";
    constant  KEY_ARID      : KEY_TYPE := "ARID   ";
    constant  KEY_ARVALID   : KEY_TYPE := "ARVALID";
    constant  KEY_ARREADY   : KEY_TYPE := "ARREADY";
    
    constant  KEY_RDATA     : KEY_TYPE := "RDATA  ";
    constant  KEY_RRESP     : KEY_TYPE := "RRESP  ";
    constant  KEY_RLAST     : KEY_TYPE := "RLAST  ";
    constant  KEY_RUSER     : KEY_TYPE := "RUSER  ";
    constant  KEY_RID       : KEY_TYPE := "RID    ";
    constant  KEY_RVALID    : KEY_TYPE := "RVALID ";
    constant  KEY_RREADY    : KEY_TYPE := "RREADY ";

    constant  KEY_WDATA     : KEY_TYPE := "WDATA  ";
    constant  KEY_WSTRB     : KEY_TYPE := "WSTRB  ";
    constant  KEY_WLAST     : KEY_TYPE := "WLAST  ";
    constant  KEY_WUSER     : KEY_TYPE := "WUSER  ";
    constant  KEY_WID       : KEY_TYPE := "WID    ";
    constant  KEY_WVALID    : KEY_TYPE := "WVALID ";
    constant  KEY_WREADY    : KEY_TYPE := "WREADY ";

    constant  KEY_BRESP     : KEY_TYPE := "BRESP  ";
    constant  KEY_BUSER     : KEY_TYPE := "BUSER  ";
    constant  KEY_BID       : KEY_TYPE := "BID    ";
    constant  KEY_BVALID    : KEY_TYPE := "BVALID ";
    constant  KEY_BREADY    : KEY_TYPE := "BREADY ";

    constant  KEY_DUSER     : KEY_TYPE := "DUSER  ";
    constant  KEY_OKAY      : KEY_TYPE := "OKAY   ";
    constant  KEY_EXOKAY    : KEY_TYPE := "EXOKAY ";
    constant  KEY_SLVERR    : KEY_TYPE := "SLVERR ";
    constant  KEY_DECERR    : KEY_TYPE := "DECERR ";
    constant  KEY_FIXED     : KEY_TYPE := "FIXED  ";
    constant  KEY_INCR      : KEY_TYPE := "INCR   ";
    constant  KEY_WRAP      : KEY_TYPE := "WRAP   ";
    constant  KEY_RESV      : KEY_TYPE := "RESV   ";

    function  GENERATE_KEY_CHANNEL return KEY_TYPE is
    begin
        case CHANNEL is
            when AXI4_CHANNEL_AR => return KEY_AR;
            when AXI4_CHANNEL_AW => return KEY_AW;
            when AXI4_CHANNEL_R  => return KEY_R;
            when AXI4_CHANNEL_W  => return KEY_W;
            when AXI4_CHANNEL_B  => return KEY_B;
            when others          => return KEY_NULL;
        end case;
    end function;
    constant  KEY_CHANNEL   : KEY_TYPE := GENERATE_KEY_CHANNEL;

    -------------------------------------------------------------------------------
    --! @brief READERから読み取る信号の種類を示すタイプの定義.
    -------------------------------------------------------------------------------
    type      READ_AXI4_SIGNAL_TYPE is (
              READ_NONE     ,
              READ_ARADDR   ,
              READ_ARSIZE   ,
              READ_ARLEN    ,
              READ_ARBURST  ,
              READ_ARLOCK   ,
              READ_ARCACHE  ,
              READ_ARPROT   ,
              READ_ARQOS    ,
              READ_ARREGION ,
              READ_ARUSER   ,
              READ_ARID     ,
              READ_ARVALID  ,
              READ_ARREADY  ,
              READ_AWADDR   ,
              READ_AWSIZE   ,
              READ_AWLEN    ,
              READ_AWBURST  ,
              READ_AWLOCK   ,
              READ_AWCACHE  ,
              READ_AWPROT   ,
              READ_AWQOS    ,
              READ_AWREGION ,
              READ_AWUSER   ,
              READ_AWID     ,
              READ_AWVALID  ,
              READ_AWREADY  ,
              READ_RDATA    ,
              READ_RRESP    ,
              READ_RLAST    ,
              READ_RUSER    ,
              READ_RID      ,
              READ_RVALID   ,
              READ_RREADY   ,
              READ_WDATA    ,
              READ_WSTRB    ,
              READ_WLAST    ,
              READ_WUSER    ,
              READ_WID      ,
              READ_WVALID   ,
              READ_WREADY   ,
              READ_BRESP    ,
              READ_BUSER    ,
              READ_BID      ,
              READ_BVALID   ,
              READ_BREADY   
    );
    -------------------------------------------------------------------------------
    --! @brief KEY_WORD から READ_AXI4_SIGNAL_TYPEに変換する関数.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    KEY_WORD    キーワード.
    --! @param    CHANNEL     チャネルのタイプ.
    --! @param    R           リード可/不可を指定.
    --! @param    W           ライト可/不可を指定.
    --! @return               変換されたREAD_AXI4_SIGNAL_TYPE.
    -------------------------------------------------------------------------------
    function  to_read_axi4_channel_signal(
                  key_word   : KEY_TYPE;
                  channel    : AXI4_CHANNEL_TYPE;
                  r,w        : boolean
    ) return READ_AXI4_SIGNAL_TYPE is
    begin
        if (w and not r) then
            case key_word is
                when KEY_ID         =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWID ;
                        when AXI4_CHANNEL_W  => return READ_WID  ;
                        when AXI4_CHANNEL_B  => return READ_BID  ;
                        when others          => null;
                    end case;
                when KEY_USER       =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWUSER;
                        when AXI4_CHANNEL_W  => return READ_WUSER;
                        when AXI4_CHANNEL_B  => return READ_BUSER;
                        when others          => null;
                    end case;
                when KEY_VALID      =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWVALID;
                        when AXI4_CHANNEL_W  => return READ_WVALID;
                        when AXI4_CHANNEL_B  => return READ_BVALID;
                        when others           => null;
                    end case;
                when KEY_READY      =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWREADY;
                        when AXI4_CHANNEL_W  => return READ_WREADY;
                        when AXI4_CHANNEL_B  => return READ_BREADY;
                        when others          => null;
                    end case;
                when KEY_DATA       =>
                    case channel is
                        when AXI4_CHANNEL_W  => return READ_WDATA;
                        when others          => null;
                    end case;
                when KEY_LAST       =>
                    case channel is
                        when AXI4_CHANNEL_W  => return READ_WLAST;
                        when others          => null;
                    end case;
                when KEY_RESP       =>
                    case channel is
                        when AXI4_CHANNEL_B  => return READ_BRESP;
                        when others          => null;
                    end case;
                when KEY_ADDR       => 
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWADDR;
                        when others          => null;
                    end case;
                when KEY_LEN        =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWLEN;
                        when others          => null;
                    end case;
                when KEY_SIZE       =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWSIZE;
                        when others          => null;
                    end case;
                when KEY_BURST      =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWBURST;
                        when others          => null;
                    end case;
                when KEY_LOCK       =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWLOCK;
                        when others          => null;
                    end case;
                when KEY_CACHE      =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWCACHE;
                        when others          => null;
                    end case;
                when KEY_PROT       =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWPROT;
                        when others          => null;
                    end case;
                when KEY_QOS        =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWQOS;
                        when others          => null;
                    end case;
                when KEY_REGION     =>
                    case channel is
                        when AXI4_CHANNEL_AW => return READ_AWREGION;
                        when others          => null;
                    end case;
                when KEY_STRB       =>
                    case channel is
                        when AXI4_CHANNEL_W  => return READ_WSTRB;
                        when others          => null;
                    end case;
                when KEY_AWADDR              => return READ_AWADDR;
                when KEY_AWLEN               => return READ_AWLEN;   
                when KEY_AWSIZE              => return READ_AWSIZE;  
                when KEY_AWBURST             => return READ_AWBURST; 
                when KEY_AWLOCK              => return READ_AWLOCK;  
                when KEY_AWCACHE             => return READ_AWCACHE; 
                when KEY_AWPROT              => return READ_AWPROT;  
                when KEY_AWQOS               => return READ_AWQOS;   
                when KEY_AWREGION            => return READ_AWREGION;
                when KEY_AWUSER              => return READ_AWUSER;  
                when KEY_AWID                => return READ_AWID;    
                when KEY_AWVALID             => return READ_AWVALID; 
                when KEY_AWREADY             => return READ_AWREADY; 
                when KEY_ALEN                => return READ_AWLEN;   
                when KEY_ASIZE               => return READ_AWSIZE;  
                when KEY_ABURST              => return READ_AWBURST; 
                when KEY_ALOCK               => return READ_AWLOCK;  
                when KEY_ACACHE              => return READ_AWCACHE; 
                when KEY_APROT               => return READ_AWPROT;  
                when KEY_AQOS                => return READ_AWQOS;   
                when KEY_AREGION             => return READ_AWREGION;
                when KEY_AUSER               => return READ_AWUSER;  
                when KEY_AID                 => return READ_AWID;    
                when KEY_AVALID              => return READ_AWVALID; 
                when KEY_AREADY              => return READ_AWREADY; 
                when KEY_WDATA               => return READ_WDATA;  
                when KEY_WSTRB               => return READ_WSTRB;  
                when KEY_WLAST               => return READ_WLAST;  
                when KEY_WUSER               => return READ_WUSER;  
                when KEY_WID                 => return READ_WID;    
                when KEY_WVALID              => return READ_WVALID; 
                when KEY_WREADY              => return READ_WREADY; 
                when KEY_BRESP               => return READ_BRESP;  
                when KEY_BUSER               => return READ_BUSER;  
                when KEY_BID                 => return READ_BID;    
                when KEY_BVALID              => return READ_BVALID; 
                when KEY_BREADY              => return READ_BREADY; 
                when others                  => null;
            end case;
        elsif (r and not w) then
            case key_word is
                when KEY_ID         =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARID ;
                        when AXI4_CHANNEL_R  => return READ_RID  ;
                        when others          => null;
                    end case;
                when KEY_USER       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARUSER;  
                        when AXI4_CHANNEL_R  => return READ_RUSER;
                        when others          => null;
                    end case;
                when KEY_VALID      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARVALID; 
                        when AXI4_CHANNEL_R  => return READ_RVALID; 
                        when others          => null;
                    end case;
                when KEY_READY      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARREADY; 
                        when AXI4_CHANNEL_R  => return READ_RREADY; 
                        when others          => null;
                    end case;
                when KEY_DATA       =>
                    case channel is
                        when AXI4_CHANNEL_R  => return READ_RDATA;
                        when others          => null;
                    end case;
                when KEY_LAST       =>
                    case channel is
                        when AXI4_CHANNEL_R  => return READ_RLAST;
                        when others          => null;
                    end case;
                when KEY_RESP       =>
                    case channel is
                        when AXI4_CHANNEL_R  => return READ_RRESP;
                        when others          => null;
                    end case;
                when KEY_ADDR       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARADDR;
                        when others          => null;
                    end case;
                when KEY_LEN        =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARLEN;
                        when others          => null;
                    end case;
                when KEY_SIZE       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARSIZE;  
                        when others          => null;
                    end case;
                when KEY_BURST      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARBURST;
                        when others          => null;
                    end case;
                when KEY_LOCK       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARLOCK;
                        when others          => null;
                    end case;
                when KEY_CACHE      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARCACHE;
                        when others          => null;
                    end case;
                when KEY_PROT       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARPROT;
                        when others          => null;
                    end case;
                when KEY_QOS        =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARQOS;  
                        when others          => null;
                    end case;
                when KEY_REGION     =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARREGION;
                        when others          => null;
                    end case;
                when KEY_ARADDR              => return READ_ARADDR;   
                when KEY_ARLEN               => return READ_ARLEN;   
                when KEY_ARSIZE              => return READ_ARSIZE;  
                when KEY_ARBURST             => return READ_ARBURST; 
                when KEY_ARLOCK              => return READ_ARLOCK;  
                when KEY_ARCACHE             => return READ_ARCACHE; 
                when KEY_ARPROT              => return READ_ARPROT;  
                when KEY_ARQOS               => return READ_ARQOS;   
                when KEY_ARREGION            => return READ_ARREGION;
                when KEY_ARUSER              => return READ_ARUSER;  
                when KEY_ARID                => return READ_ARID;    
                when KEY_ARVALID             => return READ_ARVALID; 
                when KEY_ARREADY             => return READ_ARREADY;
                when KEY_ALEN                => return READ_ARLEN;   
                when KEY_ASIZE               => return READ_ARSIZE;  
                when KEY_ABURST              => return READ_ARBURST; 
                when KEY_ALOCK               => return READ_ARLOCK;  
                when KEY_ACACHE              => return READ_ARCACHE; 
                when KEY_APROT               => return READ_ARPROT;  
                when KEY_AQOS                => return READ_ARQOS;   
                when KEY_AREGION             => return READ_ARREGION;
                when KEY_AUSER               => return READ_ARUSER;  
                when KEY_AID                 => return READ_ARID;    
                when KEY_AVALID              => return READ_ARVALID; 
                when KEY_AREADY              => return READ_ARREADY; 
                when KEY_RDATA               => return READ_RDATA;  
                when KEY_RRESP               => return READ_RRESP;  
                when KEY_RLAST               => return READ_RLAST;  
                when KEY_RUSER               => return READ_RUSER;  
                when KEY_RID                 => return READ_RID;    
                when KEY_RVALID              => return READ_RVALID; 
                when KEY_RREADY              => return READ_RREADY; 
                when others                  => null;
            end case;
        elsif (r or w) then
            case key_word is
                when KEY_ID         =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARID ;
                        when AXI4_CHANNEL_AW => return READ_AWID ;
                        when AXI4_CHANNEL_R  => return READ_RID  ;
                        when AXI4_CHANNEL_W  => return READ_WID  ;
                        when AXI4_CHANNEL_B  => return READ_BID  ;
                        when others          => null;
                    end case;
                when KEY_USER       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARUSER;
                        when AXI4_CHANNEL_AW => return READ_AWUSER;
                        when AXI4_CHANNEL_R  => return READ_RUSER;
                        when AXI4_CHANNEL_W  => return READ_WUSER;
                        when AXI4_CHANNEL_B  => return READ_BUSER;
                        when others          => null;
                    end case;
                when KEY_VALID      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARVALID;
                        when AXI4_CHANNEL_AW => return READ_AWVALID;
                        when AXI4_CHANNEL_R  => return READ_RVALID;
                        when AXI4_CHANNEL_W  => return READ_WVALID;
                        when AXI4_CHANNEL_B  => return READ_BVALID;
                        when others          => null;
                    end case;
                when KEY_READY      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARREADY;
                        when AXI4_CHANNEL_AW => return READ_AWREADY;
                        when AXI4_CHANNEL_R  => return READ_RREADY;
                        when AXI4_CHANNEL_W  => return READ_WREADY;
                        when AXI4_CHANNEL_B  => return READ_BREADY;
                        when others          => null;
                    end case;
                when KEY_AUSER      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARUSER;
                        when AXI4_CHANNEL_AW => return READ_AWUSER;
                        when others          => null;
                    end case;
                when KEY_DATA       =>
                    case channel is
                        when AXI4_CHANNEL_R  => return READ_RDATA;
                        when AXI4_CHANNEL_W  => return READ_WDATA;
                        when others          => null;
                    end case;
                when KEY_LAST       =>
                    case channel is
                        when AXI4_CHANNEL_R  => return READ_RLAST;
                        when AXI4_CHANNEL_W  => return READ_WLAST;
                        when others          => null;
                    end case;
                when KEY_RESP       =>
                    case channel is
                        when AXI4_CHANNEL_R  => return READ_RRESP;
                        when AXI4_CHANNEL_B  => return READ_BRESP;
                        when others          => null;
                    end case;
                when KEY_ADDR       => 
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARADDR; 
                        when AXI4_CHANNEL_AW => return READ_AWADDR; 
                        when others          => null;
                    end case;
                when KEY_LEN        =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARLEN; 
                        when AXI4_CHANNEL_AW => return READ_AWLEN; 
                        when others          => null;
                    end case;
                when KEY_SIZE       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARSIZE;
                        when AXI4_CHANNEL_AW => return READ_AWSIZE;
                        when others          => null;
                    end case;
                when KEY_BURST      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARBURST;
                        when AXI4_CHANNEL_AW => return READ_AWBURST;
                        when others          => null;
                    end case;
                when KEY_LOCK       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARLOCK;
                        when AXI4_CHANNEL_AW => return READ_AWLOCK;
                        when others          => null;
                    end case;
                when KEY_CACHE      =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARCACHE;
                        when AXI4_CHANNEL_AW => return READ_AWCACHE;
                        when others          => null;
                    end case;
                when KEY_PROT       =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARPROT;
                        when AXI4_CHANNEL_AW => return READ_AWPROT;
                        when others          => null;
                    end case;
                when KEY_QOS        =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARQOS;
                        when AXI4_CHANNEL_AW => return READ_AWQOS;
                        when others          => null;
                    end case;
                when KEY_REGION     =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARREGION;
                        when AXI4_CHANNEL_AW => return READ_AWREGION;
                        when others          => null;
                    end case;
                when KEY_STRB       =>
                    case channel is
                        when AXI4_CHANNEL_W  => return READ_WSTRB;
                        when others          => null;
                    end case;
                when KEY_AVALID     =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARVALID;
                        when AXI4_CHANNEL_AW => return READ_AWVALID;
                        when AXI4_CHANNEL_R  => return READ_ARVALID;
                        when AXI4_CHANNEL_W  => return READ_AWVALID;
                        when AXI4_CHANNEL_B  => return READ_AWVALID;
                        when others          => null;
                    end case;
                when KEY_AREADY     =>
                    case channel is
                        when AXI4_CHANNEL_AR => return READ_ARREADY;
                        when AXI4_CHANNEL_AW => return READ_AWREADY;
                        when AXI4_CHANNEL_R  => return READ_ARREADY;
                        when AXI4_CHANNEL_W  => return READ_AWREADY;
                        when AXI4_CHANNEL_B  => return READ_AWREADY;
                        when others          => null;
                    end case;
                when KEY_ARADDR              => return READ_ARADDR;
                when KEY_ARLEN               => return READ_ARLEN; 
                when KEY_ARSIZE              => return READ_ARSIZE;
                when KEY_ARBURST             => return READ_ARBURST;
                when KEY_ARLOCK              => return READ_ARLOCK;
                when KEY_ARCACHE             => return READ_ARCACHE;
                when KEY_ARPROT              => return READ_ARPROT;
                when KEY_ARQOS               => return READ_ARQOS; 
                when KEY_ARREGION            => return READ_ARREGION;
                when KEY_ARUSER              => return READ_ARUSER;
                when KEY_ARID                => return READ_ARID;  
                when KEY_ARVALID             => return READ_ARVALID;
                when KEY_ARREADY             => return READ_ARREADY;
                when KEY_AWADDR              => return READ_AWADDR;
                when KEY_AWLEN               => return READ_AWLEN; 
                when KEY_AWSIZE              => return READ_AWSIZE;
                when KEY_AWBURST             => return READ_AWBURST;
                when KEY_AWLOCK              => return READ_AWLOCK;
                when KEY_AWCACHE             => return READ_AWCACHE;
                when KEY_AWPROT              => return READ_AWPROT;
                when KEY_AWQOS               => return READ_AWQOS; 
                when KEY_AWREGION            => return READ_AWREGION;
                when KEY_AWUSER              => return READ_AWUSER;
                when KEY_AWID                => return READ_AWID;  
                when KEY_AWVALID             => return READ_AWVALID;
                when KEY_AWREADY             => return READ_AWREADY;
                when KEY_RDATA               => return READ_RDATA;
                when KEY_RRESP               => return READ_RRESP;
                when KEY_RLAST               => return READ_RLAST;
                when KEY_RUSER               => return READ_RUSER;
                when KEY_RID                 => return READ_RID;  
                when KEY_RVALID              => return READ_RVALID;
                when KEY_RREADY              => return READ_RREADY;
                when KEY_WDATA               => return READ_WDATA;
                when KEY_WSTRB               => return READ_WSTRB;
                when KEY_WLAST               => return READ_WLAST;
                when KEY_WUSER               => return READ_WUSER;
                when KEY_WID                 => return READ_WID;  
                when KEY_WVALID              => return READ_WVALID;
                when KEY_WREADY              => return READ_WREADY;
                when KEY_BRESP               => return READ_BRESP;
                when KEY_BUSER               => return READ_BUSER;
                when KEY_BID                 => return READ_BID;  
                when KEY_BVALID              => return READ_BVALID;
                when KEY_BREADY              => return READ_BREADY;
                when others                  => null;
            end case;
        end if;
        return READ_NONE;
    end function;
    -------------------------------------------------------------------------------
    --! @brief シナリオからトランザクションサイズの値を読み取るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      シナリオのストリーム.
    --! @param    proc_name   プロシージャ名.リードエラー発生時に出力する.
    --! @param    val         読み取ったトランザクションサイズの値.
    -------------------------------------------------------------------------------
    procedure read_transaction_size(
        variable  core          : inout CORE_TYPE;
        file      stream        :       TEXT;
                  proc_name     : in    string;
                  val           : inout AXI4_ASIZE_TYPE
    ) is
        variable  size          :       integer;
        variable  good          :       boolean;
    begin
        READ_INTEGER(core, stream, size, good);
        if (good) then
            case size is
                when    128 => val := AXI4_ASIZE_128BYTE;
                when     64 => val := AXI4_ASIZE_64BYTE;
                when     32 => val := AXI4_ASIZE_32BYTE;
                when     16 => val := AXI4_ASIZE_16BYTE;
                when      8 => val := AXI4_ASIZE_8BYTE;
                when      4 => val := AXI4_ASIZE_4BYTE;
                when      2 => val := AXI4_ASIZE_2BYTE;
                when      1 => val := AXI4_ASIZE_1BYTE;
                when others => READ_ERROR(core, proc_name, "KEY=SIZE illegal number=" & INTEGER_TO_STRING(size));
            end case;
        else                   READ_ERROR(core, proc_name, "KEY=SIZE READ_INTEGER not good");
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオからトランザクションバースト長の値を読み取るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      シナリオのストリーム.
    --! @param    proc_name   プロシージャ名.リードエラー発生時に出力する.
    --! @param    val         読み取ったトランザクションバースト長の値.
    -------------------------------------------------------------------------------
    procedure read_transaction_alen(
        variable  core          : inout CORE_TYPE;
        file      stream        :       TEXT;
                  proc_name     : in    string;
                  val           : inout std_logic_vector
    ) is
        variable  size          :       integer;
        variable  good          :       boolean;
    begin
        READ_INTEGER(core, stream, size, good);
        if (good) then
            val := std_logic_vector(to_unsigned(size-1, WIDTH.ALEN));
        else
            READ_ERROR(core, proc_name, "KEY=SIZE READ_INTEGER not good");
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオからトランザクション応答ステータスの値を読み取るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      シナリオのストリーム.
    --! @param    proc_name   プロシージャ名.リードエラー発生時に出力する.
    --! @param    val         読み取ったトランザクション応答ステータスの値.
    -------------------------------------------------------------------------------
    procedure read_transaction_resp(
        variable  core          : inout CORE_TYPE;
        file      stream        :       TEXT;
                  proc_name     : in    string;
                  val           : inout AXI4_RESP_TYPE
    ) is
        variable  key_word      :       KEY_TYPE;
        variable  next_event    :       EVENT_TYPE;
    begin
        SEEK_EVENT(core, stream, next_event);
        if (next_event = EVENT_SCALAR) then
            READ_EVENT(core, stream, EVENT_SCALAR);
            COPY_KEY_WORD(core, key_word);
            case key_word is
                when KEY_OKAY    => val := AXI4_RESP_OKAY  ;
                when KEY_EXOKAY  => val := AXI4_RESP_EXOKAY;
                when KEY_SLVERR  => val := AXI4_RESP_SLVERR;
                when KEY_DECERR  => val := AXI4_RESP_DECERR;
                when others      => READ_ERROR(core, proc_name, "KEY=RESP illegal key_word=" & key_word);
            end case;
        else
            READ_ERROR(core, proc_name, "KEY=RESP SEEK_EVENT NG");
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオからトランザクションタイムアウトの値を読み取るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      シナリオのストリーム.
    --! @param    proc_name   プロシージャ名.リードエラー発生時に出力する.
    --! @param    val         読み取ったタイムアウト値.
    -------------------------------------------------------------------------------
    procedure read_transaction_timeout(
        variable  core          : inout CORE_TYPE;
        file      stream        :       TEXT;
                  proc_name     : in    string;
                  val           : inout integer
    ) is
        variable  timeout       :       integer;
        variable  good          :       boolean;
    begin
        READ_INTEGER(core, stream, timeout, good);
        if (good) then
            val := timeout;
        else
            READ_ERROR(core, proc_name, "KEY=TIMEOUT READ_INTEGER not good");
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオからトランザクションバーストモードの値を読み取るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      シナリオのストリーム.
    --! @param    proc_name   プロシージャ名.リードエラー発生時に出力する.
    --! @param    val         読み取ったトランザクションバーストモードの値.
    -------------------------------------------------------------------------------
    procedure read_transaction_burst(
        variable  core          : inout CORE_TYPE;
        file      stream        :       TEXT;
                  proc_name     : in    string;
                  val           : inout AXI4_ABURST_TYPE
    ) is
        variable  key_word      :       KEY_TYPE;
        variable  next_event    :       EVENT_TYPE;
    begin
        SEEK_EVENT(core, stream, next_event);
        if (next_event = EVENT_SCALAR) then
            READ_EVENT(core, stream, EVENT_SCALAR);
            COPY_KEY_WORD(core, key_word);
            case key_word is
                when KEY_FIXED   => val := AXI4_ABURST_FIXED;
                when KEY_INCR    => val := AXI4_ABURST_INCR;
                when KEY_WRAP    => val := AXI4_ABURST_WRAP;
                when KEY_RESV    => val := AXI4_ABURST_RESV;
                when others      => READ_ERROR(core, proc_name, "KEY=BURST illegal key_word=" & key_word);
            end case;
        else
            READ_ERROR(core, proc_name, "KEY=BURST SEEK_EVENT NG");
        end if;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief トランザクション情報からアドレスの下位ビットと１ワードのバイト数を生成
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    trans       トランザクション情報.
    --! @param    addr        アドレスの下位ビットの整数値.
    --! @param    size        １ワードのバイト数.
    -------------------------------------------------------------------------------
    procedure transaction_to_addr_and_bytes(
                  trans         : in    AXI4_TRANSACTION_SIGNAL_TYPE;
                  addr          : out   integer;
                  size          : out   integer
    ) is
    begin
        case trans.SIZE is
            when AXI4_ASIZE_1BYTE   => size :=   1; addr := 0;
            when AXI4_ASIZE_2BYTE   => size :=   2; addr := TO_INTEGER(unsigned(trans.ADDR(0 downto 0)));
            when AXI4_ASIZE_4BYTE   => size :=   4; addr := TO_INTEGER(unsigned(trans.ADDR(1 downto 0)));
            when AXI4_ASIZE_8BYTE   => size :=   8; addr := TO_INTEGER(unsigned(trans.ADDR(2 downto 0)));
            when AXI4_ASIZE_16BYTE  => size :=  16; addr := TO_INTEGER(unsigned(trans.ADDR(3 downto 0)));
            when AXI4_ASIZE_32BYTE  => size :=  32; addr := TO_INTEGER(unsigned(trans.ADDR(4 downto 0)));
            when AXI4_ASIZE_64BYTE  => size :=  64; addr := TO_INTEGER(unsigned(trans.ADDR(5 downto 0)));
            when AXI4_ASIZE_128BYTE => size := 128; addr := TO_INTEGER(unsigned(trans.ADDR(6 downto 0)));
            when others             => size :=   0; addr := 0;
        end case;
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオのマップからチャネル信号構造体の値を読み取るサブプログラム.
    --!      * このサブプログラムを呼ぶときは、すでにMAP_READ_BEGINを実行済みに
    --!        しておかなければならない。
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      シナリオのストリーム.
    --! @param    channel     チャネルのタイプ.
    --! @param    read        リード可/不可を指定.
    --! @param    write       ライト可/不可を指定.
    --! @param    width       チャネル信号のビット幅を指定する.
    --! @param    signals     読み取った値が入るレコード変数. inoutであることに注意.
    --! @param    event       次のイベント. inoutであることに注意.
    -------------------------------------------------------------------------------
    procedure map_read_axi4_channel(
        variable  core          : inout CORE_TYPE;
        file      stream        :       TEXT;
                  channel       : in    AXI4_CHANNEL_TYPE;
                  read          : in    boolean;
                  write         : in    boolean;
                  width         : in    AXI4_SIGNAL_WIDTH_TYPE;
                  signals       : inout AXI4_CHANNEL_SIGNAL_TYPE;
                  event         : inout EVENT_TYPE
    ) is
        constant  proc_name     :       string := "MAP_READ_AXI4_CHANNEL";
        variable  next_event    :       EVENT_TYPE;
        variable  key_word      :       KEY_TYPE;
        procedure read_val(val: out std_logic_vector) is
            variable  next_event    : EVENT_TYPE;
            variable  read_len      : integer;
            variable  val_size      : integer;
        begin
            SEEK_EVENT(core, stream, next_event  );
            if (next_event /= EVENT_SCALAR) then
                READ_ERROR(core, proc_name, "READ_VAL NG");
            end if;
            READ_EVENT(core, stream, EVENT_SCALAR);
            STRING_TO_STD_LOGIC_VECTOR(
                STR     => core.str_buf(1 to core.str_len),
                VAL     => val,
                STR_LEN => read_len,
                VAL_LEN => val_size
            );
        end procedure;
        procedure read_val(val: out std_logic) is
            variable  next_event    : EVENT_TYPE;
            variable  read_len      : integer;
            variable  val_size      : integer;
            variable  vec           : std_logic_vector(0 downto 0);
        begin
            SEEK_EVENT(core, stream, next_event  );
            if (next_event /= EVENT_SCALAR) then
                READ_ERROR(core, proc_name, "READ_VAL NG");
            end if;
            READ_EVENT(core, stream, EVENT_SCALAR);
            STRING_TO_STD_LOGIC_VECTOR(
                STR     => core.str_buf(1 to core.str_len),
                VAL     => vec,
                STR_LEN => read_len,
                VAL_LEN => val_size
            );
            val := vec(0);
        end procedure;
    begin
        REPORT_DEBUG(core, proc_name, "BEGIN");
        next_event := event;
        MAP_LOOP: loop
            case next_event is
                when EVENT_SCALAR  =>
                    COPY_KEY_WORD(core, key_word);
                    case to_read_axi4_channel_signal(key_word, channel, read, write) is
                        when READ_ARID     => read_val(signals.AR.ID  (width.ID     -1 downto 0));
                        when READ_ARADDR   => read_val(signals.AR.ADDR(width.ARADDR -1 downto 0));
                        when READ_ARLEN    => read_transaction_alen (core, stream, proc_name, signals.AR.LEN  );
                        when READ_ARSIZE   => read_transaction_size (core, stream, proc_name, signals.AR.SIZE );
                        when READ_ARBURST  => read_transaction_burst(core, stream, proc_name, signals.AR.BURST);
                        when READ_ARLOCK   => read_val(signals.AR.LOCK  );
                        when READ_ARCACHE  => read_val(signals.AR.CACHE );
                        when READ_ARPROT   => read_val(signals.AR.PROT  );
                        when READ_ARQOS    => read_val(signals.AR.QOS   );
                        when READ_ARREGION => read_val(signals.AR.REGION);
                        when READ_ARUSER   => read_val(signals.AR.USER(width.ARUSER -1 downto 0));
                        when READ_ARVALID  => read_val(signals.AR.VALID );
                        when READ_ARREADY  => read_val(signals.AR.READY );
                        when READ_AWID     => read_val(signals.AW.ID  (width.ID     -1 downto 0));
                        when READ_AWADDR   => read_val(signals.AW.ADDR(width.ARADDR -1 downto 0));
                        when READ_AWLEN    => read_transaction_alen (core, stream, proc_name, signals.AW.LEN  );
                        when READ_AWSIZE   => read_transaction_size (core, stream, proc_name, signals.AW.SIZE );
                        when READ_AWBURST  => read_transaction_burst(core, stream, proc_name, signals.AW.BURST);
                        when READ_AWLOCK   => read_val(signals.AW.LOCK  );
                        when READ_AWCACHE  => read_val(signals.AW.CACHE );
                        when READ_AWPROT   => read_val(signals.AW.PROT  );
                        when READ_AWQOS    => read_val(signals.AW.QOS   );
                        when READ_AWREGION => read_val(signals.AW.REGION);
                        when READ_AWUSER   => read_val(signals.AW.USER(width.ARUSER -1 downto 0));
                        when READ_AWVALID  => read_val(signals.AW.VALID );
                        when READ_AWREADY  => read_val(signals.AW.READY );
                        when READ_RID      => read_val(signals.R.ID   (width.ID     -1 downto 0));
                        when READ_RUSER    => read_val(signals.R.USER (width.RUSER  -1 downto 0));
                        when READ_RDATA    => read_val(signals.R.DATA (width.RDATA  -1 downto 0));
                        when READ_RRESP    => read_transaction_resp(core, stream, proc_name, signals.R.RESP);
                        when READ_RLAST    => read_val(signals.R.LAST  );
                        when READ_RVALID   => read_val(signals.R.VALID );
                        when READ_RREADY   => read_val(signals.R.READY );
                        when READ_WID      => read_val(signals.W.ID   (width.ID     -1 downto 0));
                        when READ_WUSER    => read_val(signals.W.USER (width.WUSER  -1 downto 0));
                        when READ_WDATA    => read_val(signals.W.DATA (width.WDATA  -1 downto 0));
                        when READ_WSTRB    => read_val(signals.W.STRB (width.WDATA/8-1 downto 0));
                        when READ_WLAST    => read_val(signals.W.LAST  );
                        when READ_WVALID   => read_val(signals.W.VALID );
                        when READ_WREADY   => read_val(signals.W.READY );
                        when READ_BID      => read_val(signals.B.ID   (width.ID     -1 downto 0));
                        when READ_BUSER    => read_val(signals.B.USER (width.BUSER  -1 downto 0));
                        when READ_BRESP    => read_transaction_resp(core, stream, proc_name, signals.B.RESP);
                        when READ_BVALID   => read_val(signals.B.VALID );
                        when READ_BREADY   => read_val(signals.B.READY );
                        when others        => exit MAP_LOOP;
                    end case;
                when EVENT_MAP_END =>         exit MAP_LOOP;
                when others        =>         exit MAP_LOOP;
            end case;
            SEEK_EVENT(core, stream, next_event);
            if (next_event = EVENT_SCALAR) then
                READ_EVENT(core, stream, EVENT_SCALAR);
            end if;
        end loop;
        event := next_event;
        REPORT_DEBUG(core, proc_name, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief シナリオのマップからトランザクションの値を読み取るサブプログラム.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      シナリオのストリーム.
    --! @param    addr_width  アドレスのビット幅.
    --! @param    auser_width ユーザー信号のビット幅.
    --! @param    duser_width ユーザー信号のビット幅.
    --! @param    BUSER_WIDTH ユーザー信号のビット幅.
    --! @param    id_width    ID信号のビット幅.
    --! @param    trans       トランザクション信号.
    --! @param    EVENT       次のイベント. inoutであることに注意.
    -------------------------------------------------------------------------------
    procedure map_read_axi4_transaction(
        variable  core          : inout CORE_TYPE;
        file      stream        :       TEXT;
                  addr_width    : in    integer;
                  auser_width   : in    integer;
                  duser_width   : in    integer;
                  buser_width   : in    integer;
                  id_width      : in    integer;
                  trans         : inout AXI4_TRANSACTION_SIGNAL_TYPE;
                  event         : inout EVENT_TYPE
    ) is
        constant  proc_name     :       string := "AXI4_CORE.MAP_READ_AXI4_TRANSACTION";
        variable  next_event    :       EVENT_TYPE;
        variable  key_word      :       KEY_TYPE;
        variable  len           :       integer;
        variable  pos           :       integer;
        variable  number_bytes  :       integer;
        variable  address       :       integer;
        variable  data_bytes    :       integer;
        variable  burst_len     :       integer;
    begin
        REPORT_DEBUG(core, proc_name, "BEGIN");
        next_event := event;
        pos        := trans.DATA_LEN;
        READ_MAP_LOOP: loop
            case next_event is
                when EVENT_SCALAR  =>
                    COPY_KEY_WORD(core, key_word);
                    REPORT_DEBUG(core, proc_name, "KEY=" & key_word);
                    case key_word is
                        when KEY_TIMEOUT=> read_transaction_timeout(core, stream, proc_name, trans.TIMEOUT);
                        when KEY_SIZE   => read_transaction_size   (core, stream, proc_name, trans.SIZE   );
                        when KEY_RESP   => read_transaction_resp   (core, stream, proc_name, trans.RESP   );
                        when KEY_BURST  => read_transaction_burst  (core, stream, proc_name, trans.BURST  );
                        when KEY_LOCK   => READ_STD_LOGIC_VECTOR   (core, stream, trans.LOCK  , len);
                        when KEY_CACHE  => READ_STD_LOGIC_VECTOR   (core, stream, trans.CACHE , len);
                        when KEY_PROT   => READ_STD_LOGIC_VECTOR   (core, stream, trans.PROT  , len);
                        when KEY_QOS    => READ_STD_LOGIC_VECTOR   (core, stream, trans.QOS   , len);
                        when KEY_REGION => READ_STD_LOGIC_VECTOR   (core, stream, trans.REGION, len);
                        when KEY_ADDR   => READ_STD_LOGIC_VECTOR   (core, stream, trans.ADDR (addr_width   -1 downto   0), len);
                        when KEY_AUSER  => READ_STD_LOGIC_VECTOR   (core, stream, trans.AUSER(auser_width  -1 downto   0), len);
                        when KEY_DUSER  => READ_STD_LOGIC_VECTOR   (core, stream, trans.DUSER(duser_width  -1 downto   0), len);
                        when KEY_BUSER  => READ_STD_LOGIC_VECTOR   (core, stream, trans.BUSER(buser_width  -1 downto   0), len);
                        when KEY_ID     => READ_STD_LOGIC_VECTOR   (core, stream, trans.ID   (id_width     -1 downto   0), len);
                        when KEY_DATA   => READ_STD_LOGIC_VECTOR   (core, stream, trans.DATA (trans.DATA'high downto pos), len);
                                           pos := pos + len;
                        when others     => exit READ_MAP_LOOP;
                    end case;
                when EVENT_MAP_END      => exit READ_MAP_LOOP;
                when others             => exit READ_MAP_LOOP;
            end case;
            SEEK_EVENT(core, stream, next_event);
            if (next_event = EVENT_SCALAR) then
                READ_EVENT(core, stream, EVENT_SCALAR);
            end if;
        end loop;
        event          := next_event;
        trans.DATA_LEN := pos;
        transaction_to_addr_and_bytes(trans, address, number_bytes);
        data_bytes := (pos+7)/8;
        burst_len  := (address + data_bytes + number_bytes - 1) / number_bytes;
        trans.LEN  := std_logic_vector(TO_UNSIGNED(burst_len-1, AXI4_ALEN_WIDTH));
        REPORT_DEBUG(core, proc_name, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief ローカル同期オペレーション.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    SYNC_REQ    同期開始信号出力.
    --! @param    SYNC_ACK    同期応答信号入力.
    -------------------------------------------------------------------------------
    procedure local_sync(
        variable  core       : inout CORE_TYPE;
        signal    sync_req   : out   SYNC_REQ_VECTOR(0 downto 0);
        signal    sync_ack   : in    SYNC_ACK_VECTOR(0 downto 0)
    ) is
        constant  proc_name  :       string := "LOCAL_SYNC";
        variable  sync_count :       SYNC_REQ_VECTOR(0 downto 0);
    begin
        REPORT_DEBUG(core, proc_name, "BEGIN");
        sync_count(0) := SYNC_LOCAL_WAIT;
        SYNC_BEGIN(sync_req,           sync_count);
        REPORT_DEBUG(core, proc_name, "SYNC");
        SYNC_END  (sync_req, sync_ack, sync_count);
        REPORT_DEBUG(core, proc_name, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief CHECKオペレーション.信号が指定された値になっているかチェック.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure execute_check(
        variable  core           : inout CORE_TYPE;
        file      stream         :       TEXT
    ) is
        constant  proc_name      : string := "EXECUTE_CHECK";
        variable  next_event     : EVENT_TYPE;
        variable  keyword        : KEY_TYPE;
        variable  match          : boolean;
        variable  axi_signals    : AXI4_CHANNEL_SIGNAL_TYPE;
        variable  gpi_signals    : std_logic_vector(GPI'range);
    begin
        REPORT_DEBUG(core, proc_name, "BEGIN");
        SEEK_EVENT(core, stream, next_event);
        case next_event is
            when EVENT_MAP_BEGIN =>
                READ_EVENT(core, stream, EVENT_MAP_BEGIN);
                axi_signals := AXI4_CHANNEL_SIGNAL_DONTCARE;
                gpi_signals := (others => '-');
                MAP_READ_LOOP: loop
                    MAP_READ_PREPARE_FOR_NEXT(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    map_read_axi4_channel(
                        core       => core            ,  -- I/O:
                        stream     => stream          ,  -- I/O:
                        channel    => channel         ,  -- In :
                        read       => READ_ENABLE     ,  -- In :
                        write      => WRITE_ENABLE    ,  -- In :
                        width      => WIDTH           ,  -- In :
                        signals    => axi_signals     ,  -- I/O:
                        event      => next_event         -- I/O:
                    );
                    MAP_READ_STD_LOGIC_VECTOR(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        KEY        => "GPI"           ,  -- In :
                        VAL        => gpi_signals     ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    case next_event is
                        when EVENT_SCALAR  =>
                            COPY_KEY_WORD(core, keyword);
                            EXECUTE_UNDEFINED_MAP_KEY(core, stream, keyword);
                        when EVENT_MAP_END =>
                            exit MAP_READ_LOOP;
                        when others        =>
                            READ_ERROR(core, proc_name, "need EVENT_MAP_END but " &
                                       EVENT_TO_STRING(next_event));
                    end case;
                end loop;
                match_axi4_channel(core, axi_signals, match);
                MATCH_GPI         (core, gpi_signals, GPI, match);
            when others =>
                READ_ERROR(core, proc_name, "SEEK_EVENT NG");
        end case;
        REPORT_DEBUG(core, proc_name, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief  WAITオペレーション. 指定された条件まで待機.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure execute_wait(
        variable  core           : inout CORE_TYPE;
        file      stream         :       TEXT;
                  sync_io        : inout boolean
    ) is
        constant  proc_name      : string := "EXECUTE_WAIT";
        variable  next_event     : EVENT_TYPE;
        variable  keyword        : KEY_TYPE;
        variable  wait_count     : integer;
        variable  scan_len       : integer;
        variable  timeout        : integer;
        variable  wait_on        : boolean;
        variable  axi_match      : boolean;
        variable  gpi_match      : boolean;
        variable  axi_signals    : AXI4_CHANNEL_SIGNAL_TYPE;
        variable  gpi_signals    : std_logic_vector(GPI'range);
    begin
        REPORT_DEBUG(core, proc_name, "BEGIN");
        timeout   := DEFAULT_WAIT_TIMEOUT;
        wait_on   := FALSE;
        sync_io   := DEFAULT_SYNC_IO;
        SEEK_EVENT(core, stream, next_event);
        case next_event is
            when EVENT_SCALAR =>
                READ_EVENT(core, stream, EVENT_SCALAR);
                STRING_TO_INTEGER(
                    STR     => core.str_buf(1 to core.str_len),
                    VAL     => wait_count,
                    STR_LEN => scan_len
                );
                if (scan_len = 0) then
                    wait_count := 1;
                end if;
                if (wait_count > 0) then
                    for i in 1 to wait_count loop
                        wait until (ACLK'event and ACLK = '1');
                    end loop;
                end if;
                wait_count := 0;
            when EVENT_MAP_BEGIN =>
                READ_EVENT(core, stream, EVENT_MAP_BEGIN);
                axi_signals := AXI4_CHANNEL_SIGNAL_DONTCARE;
                gpi_signals := (others => '-');
                MAP_READ_LOOP: loop
                    REPORT_DEBUG(core, proc_name, "MAP_READ_LOOP");
                    MAP_READ_PREPARE_FOR_NEXT(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    map_read_axi4_channel(
                        core       => core            ,  -- I/O:
                        stream     => stream          ,  -- I/O:
                        channel    => channel         ,  -- In :
                        read       => READ_ENABLE     ,  -- In :
                        write      => WRITE_ENABLE    ,  -- In :
                        width      => WIDTH           ,  -- In :
                        signals    => axi_signals     ,  -- I/O:
                        event      => next_event         -- I/O:
                    );
                    MAP_READ_STD_LOGIC_VECTOR(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        KEY        => "GPI"           ,  -- In :
                        VAL        => gpi_signals     ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    MAP_READ_INTEGER(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        KEY        => "TIMEOUT"       ,  -- In :
                        VAL        => timeout         ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    MAP_READ_BOOLEAN(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        KEY        => "ON"            ,  -- In :
                        VAL        => wait_on         ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    MAP_READ_BOOLEAN(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        KEY        => "SYNC"          ,  -- In :
                        VAL        => sync_io         ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    case next_event is
                        when EVENT_SCALAR  =>
                            COPY_KEY_WORD(core, keyword);
                            EXECUTE_UNDEFINED_MAP_KEY(core, stream, keyword);
                        when EVENT_MAP_END =>
                            exit MAP_READ_LOOP;
                        when others        =>
                            READ_ERROR(core, proc_name, "need EVENT_MAP_END but " &
                                       EVENT_TO_STRING(next_event));
                    end case;
                end loop;
                if (wait_on) then
                    SIG_LOOP:loop
                        REPORT_DEBUG(core, proc_name, "SIG_LOOP");
                        wait_on_signals;
                        match_axi4_channel(axi_signals, axi_match);
                        gpi_match := MATCH_STD_LOGIC(gpi_signals, GPI);
                        exit when(axi_match and gpi_match);
                        if (ACLK'event and ACLK = '1') then
                            if (timeout > 0) then
                                timeout := timeout - 1;
                            else
                                EXECUTE_ABORT(core, proc_name, "Time Out!");
                            end if;
                        end if;
                    end loop;
                else
                    CLK_LOOP:loop
                        REPORT_DEBUG(core, proc_name, "CLK_LOOP");
                        wait until (ACLK'event and ACLK = '1');
                        match_axi4_channel(axi_signals, axi_match);
                        gpi_match := MATCH_STD_LOGIC(gpi_signals, GPI);
                        exit when(axi_match and gpi_match);
                        if (timeout > 0) then
                            timeout := timeout - 1;
                        else
                            EXECUTE_ABORT(core, proc_name, "Time Out!");
                        end if;
                    end loop;
                end if;
            when others =>
                READ_ERROR(core, proc_name, "SEEK_EVENT NG");
        end case;
        REPORT_DEBUG(core, proc_name, "END");
    end procedure;
    -------------------------------------------------------------------------------
    --! @brief  WAITオペレーション. 指定された条件まで待機.
    --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    --! @param    core        コア変数.
    --! @param    stream      入力ストリーム.
    -------------------------------------------------------------------------------
    procedure execute_skip_sync_io(
        variable  core           : inout CORE_TYPE;
        file      stream         :       TEXT;
                  sync_io        : inout boolean
    ) is
        constant  proc_name      :       STRING := "EXECUTE_SKIP_SYNC_IO";
        variable  next_event     :       EVENT_TYPE;
    begin
        REPORT_DEBUG(core, proc_name, "BEGIN");
        sync_io   := DEFAULT_SYNC_IO;
        SEEK_EVENT(core, stream, next_event);
        case next_event is
            when EVENT_SCALAR =>
                SKIP_EVENT(core, stream, EVENT_SCALAR);
            when EVENT_MAP_BEGIN =>
                READ_EVENT(core, stream, EVENT_MAP_BEGIN);
                MAP_READ_LOOP: loop
                    REPORT_DEBUG(core, proc_name, "MAP_READ_LOOP");
                    MAP_READ_PREPARE_FOR_NEXT(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    MAP_READ_BOOLEAN(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        KEY        => "SYNC"          ,  -- In :
                        VAL        => sync_io         ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    case next_event is
                        when EVENT_SCALAR  =>
                            SEEK_EVENT(core, STREAM, next_event);
                            SKIP_EVENT(core, STREAM, next_event);
                        when EVENT_MAP_END =>
                            exit MAP_READ_LOOP;
                        when others        =>
                            READ_ERROR(core, proc_name, "need EVENT_MAP_END but " &
                                       EVENT_TO_STRING(next_event));
                    end case;
                end loop;
            when others =>
                READ_ERROR(core, proc_name, "SEEK_EVENT NG");
        end case;
        REPORT_DEBUG(core, proc_name, "END");
    end procedure;
begin 
    -------------------------------------------------------------------------------
    -- メインチャネル.
    -------------------------------------------------------------------------------
    CHANNEL_M: if (CHANNEL = AXI4_CHANNEL_M) generate
        PROCESS_M: process
            -----------------------------------------------------------------------
            -- 各種変数の定義.
            -----------------------------------------------------------------------
            file      stream        : TEXT;
            variable  core          : CORE_TYPE;
            variable  keyword       : KEY_TYPE;
            variable  operation     : OPERATION_TYPE;
            variable  gpo_signals   : std_logic_vector(GPO'range);
            variable  sync_io       : boolean;
            -----------------------------------------------------------------------
            --! @brief  SYNCオペレーション. 
            --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            --! @param    core        コア変数.
            --! @param    stream      入力ストリーム.
            --! @param    OPERATION   オペレーション.
            -----------------------------------------------------------------------
            procedure execute_sync(
                variable  core      : inout CORE_TYPE;
                file      stream    :       TEXT;
                          operation : in    OPERATION_TYPE
            ) is
                constant  proc_name : string := "EXECUTE_SYNC";
                variable  port_num  : integer;
                variable  wait_num  : integer;
            begin
                REPORT_DEBUG  (core, proc_name, "BEGIN");
                READ_SYNC_ARGS(core, stream, operation, port_num, wait_num);
                REPORT_DEBUG  (core, proc_name, "PORT=" & INTEGER_TO_STRING(port_num) &
                                               " WAIT=" & INTEGER_TO_STRING(wait_num));
                local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                if (SYNC_REQ'low <= port_num and port_num <= SYNC_REQ'high) then
                    CORE_SYNC(core, port_num, wait_num, SYNC_REQ, SYNC_ACK);
                end if;
                REPORT_DEBUG  (core, proc_name, "END");
            end procedure;
        begin
            -----------------------------------------------------------------------
            -- ダミープラグコアの初期化.
            -----------------------------------------------------------------------
            CORE_INIT(
                SELF        => core,          -- 初期化するコア変数.
                NAME        => NAME,          -- コアの名前.
                VOCAL_NAME  => FULL_NAME,     -- メッセージ出力用の名前.
                STREAM      => stream,        -- シナリオのストリーム.
                stream_NAME => SCENARIO_FILE, -- シナリオのストリーム名.
                OPERATION   => operation      -- コアのオペレーション.
            );
            -----------------------------------------------------------------------
            -- 変数の初期化.
            -----------------------------------------------------------------------
            gpo_signals := (others => 'Z');
            core.debug  := 0;
            -----------------------------------------------------------------------
            -- 信号の初期化
            -----------------------------------------------------------------------
            SYNC_REQ       <= (0 => 0, others => -1);
            SYNC_LOCAL_REQ <= (        others =>  0);
            SYNC_TRANS_REQ <= (        others =>  0);
            FINISH         <= '0';
            REPORT_STATUS  <= core.report_status;
            -----------------------------------------------------------------------
            -- リセット解除待ち
            -----------------------------------------------------------------------
            wait until(ACLK'event and ACLK = '1' and ARESETn = '1');
            -----------------------------------------------------------------------
            -- メインオペレーションループ
            -----------------------------------------------------------------------
            while (operation /= OP_FINISH) loop
                REPORT_STATUS <= core.report_status;
                READ_OPERATION(core, stream, operation, keyword);
                case operation is
                    when OP_DOC_BEGIN       => execute_sync  (core, stream, operation);
                    when OP_SCALAR =>
                        case keyword is
                            when KEY_SYNC   => execute_sync  (core, stream, operation);
                            when others     => EXECUTE_UNDEFINED_SCALAR(core, stream, keyword);
                        end case;
                    when OP_MAP             =>
                        REPORT_DEBUG(core, string'("MAIN_LOOP:OP_MAP(") & keyword & ")");
                        case keyword is
                            when KEY_AR     |
                                 KEY_AW     |
                                 KEY_R      |
                                 KEY_W      |
                                 KEY_B      => EXECUTE_SKIP  (core, stream);
                            when KEY_REPORT => EXECUTE_REPORT(core, stream);
                            when KEY_DEBUG  => EXECUTE_DEBUG (core, stream);
                            when KEY_SAY    => EXECUTE_SAY   (core, stream);
                            when KEY_CHECK  => execute_check (core, stream);
                            when KEY_OUT    => EXECUTE_OUT   (core, stream, gpo_signals, GPO);
                            when KEY_SYNC   => execute_sync  (core, stream, operation);
                            when KEY_WAIT   => execute_wait  (core, stream, sync_io);
                                                   if (sync_io) then
                                                       local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                                                   end if;
                            when KEY_READ   => if (READ_ENABLE ) then
                                                   execute_skip_sync_io(core, stream, sync_io);
                                                   if (sync_io) then
                                                       local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                                                   end if;
                                               else
                                                   EXECUTE_UNDEFINED_MAP_KEY(core, stream, keyword);
                                               end if;
                            when KEY_WRITE  => if (WRITE_ENABLE) then
                                                   execute_skip_sync_io(core, stream, sync_io);
                                                   if (sync_io) then
                                                       local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                                                   end if;
                                               else
                                                   EXECUTE_UNDEFINED_MAP_KEY(core, stream, keyword);
                                               end if;
                            when others     => EXECUTE_UNDEFINED_MAP_KEY(core, stream, keyword);
                        end case;
                    when OP_FINISH => exit;
                    when others    => null;
                end case;
            end loop;
            REPORT_STATUS <= core.report_status;
            FINISH        <= '1';
            if (FINISH_ABORT) then
                assert FALSE report "Simulation complete." severity FAILURE;
            end if;
            wait;
        end process;
    end generate;
    -------------------------------------------------------------------------------
    -- アドレスチャネル
    -------------------------------------------------------------------------------
    CHANNEL_A:if (CHANNEL = AXI4_CHANNEL_AW or CHANNEL = AXI4_CHANNEL_AR) generate
        PROCESS_A: process
            ---------------------------------------------------------------------------
            -- 各種変数の定義.
            ---------------------------------------------------------------------------
            file      stream        : TEXT;
            variable  core          : CORE_TYPE;
            variable  keyword       : KEY_TYPE;
            variable  operation     : OPERATION_TYPE;
            variable  out_signals   : AXI4_CHANNEL_SIGNAL_TYPE;
            variable  chk_a_signals : AXI4_A_CHANNEL_SIGNAL_TYPE;
            variable  tran_info     : AXI4_TRANSACTION_SIGNAL_TYPE;
            -----------------------------------------------------------------------
            --! @brief 信号変数(signals)の値をポートに出力するサブプログラム.
            --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            --! @param    signals    出力する信号の値を指定する変数.
            -----------------------------------------------------------------------
            procedure execute_output(signals: in AXI4_CHANNEL_SIGNAL_TYPE) is
            begin 
                if (MASTER and WRITE_ENABLE and CHANNEL = AXI4_CHANNEL_AW) then
                    AWADDR_O  <= signals.AW.ADDR(AWADDR_O'range)after OUTPUT_DELAY;
                    AWVALID_O <= signals.AW.VALID               after OUTPUT_DELAY;
                    AWLEN_O   <= signals.AW.LEN (AWLEN_O 'range)after OUTPUT_DELAY;
                    AWSIZE_O  <= signals.AW.SIZE                after OUTPUT_DELAY;
                    AWBURST_O <= signals.AW.BURST               after OUTPUT_DELAY;
                    AWLOCK_O  <= signals.AW.LOCK(AWLOCK_O'range)after OUTPUT_DELAY;
                    AWCACHE_O <= signals.AW.CACHE               after OUTPUT_DELAY;
                    AWPROT_O  <= signals.AW.PROT                after OUTPUT_DELAY;
                    AWQOS_O   <= signals.AW.QOS                 after OUTPUT_DELAY;
                    AWREGION_O<= signals.AW.REGION              after OUTPUT_DELAY;
                    AWUSER_O  <= signals.AW.USER(AWUSER_O'range)after OUTPUT_DELAY;
                    AWID_O    <= signals.AW.id  (AWID_O  'range)after OUTPUT_DELAY;
                end if;
                if (MASTER and READ_ENABLE  and CHANNEL = AXI4_CHANNEL_AR) then
                    ARADDR_O  <= signals.AR.ADDR(ARADDR_O'range)after OUTPUT_DELAY;
                    ARVALID_O <= signals.AR.VALID               after OUTPUT_DELAY;
                    ARLEN_O   <= signals.AR.LEN (ARLEN_O 'range)after OUTPUT_DELAY;
                    ARSIZE_O  <= signals.AR.SIZE                after OUTPUT_DELAY;
                    ARBURST_O <= signals.AR.BURST               after OUTPUT_DELAY;
                    ARLOCK_O  <= signals.AR.LOCK(ARLOCK_O'range)after OUTPUT_DELAY;
                    ARCACHE_O <= signals.AR.CACHE               after OUTPUT_DELAY;
                    ARPROT_O  <= signals.AR.PROT                after OUTPUT_DELAY;
                    ARQOS_O   <= signals.AR.QOS                 after OUTPUT_DELAY;
                    ARREGION_O<= signals.AR.REGION              after OUTPUT_DELAY;
                    ARUSER_O  <= signals.AR.USER(ARUSER_O'range)after OUTPUT_DELAY;
                    ARID_O    <= signals.AR.id  (ARID_O  'range)after OUTPUT_DELAY;
                end if;
                if (SLAVE  and WRITE_ENABLE and CHANNEL = AXI4_CHANNEL_AW) then
                    AWREADY_O <= signals.AW.READY               after OUTPUT_DELAY;
                end if;
                if (SLAVE  and READ_ENABLE  and CHANNEL = AXI4_CHANNEL_AR) then
                    ARREADY_O <= signals.AR.READY               after OUTPUT_DELAY;
                end if;
            end procedure;
            -----------------------------------------------------------------------
            --! @brief トランザクションの情報をシナリオから読むサブプログラム.
            --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            --! @param    proc_name  プロシージャの名前.
            --! @param    timeout    タイムアウトのクロック数.
            -----------------------------------------------------------------------
            procedure read_transaction_info(
                          proc_name  : in     string;
                          sync_io    : inout  boolean
            ) is
                variable  next_event : EVENT_TYPE;
                variable  addr_width : integer;
                variable  auser_width: integer;
                variable  duser_width: integer;
                variable  buser_width: integer;
            begin
                sync_io   := DEFAULT_SYNC_IO;
                case CHANNEL is
                    when AXI4_CHANNEL_AR =>
                        addr_width  := WIDTH.ARADDR;
                        auser_width := WIDTH.ARUSER;
                        duser_width := WIDTH.RUSER;
                        buser_width := 1;
                    when AXI4_CHANNEL_AW =>
                        addr_width  := WIDTH.AWADDR;
                        auser_width := WIDTH.AWUSER;
                        duser_width := WIDTH.WUSER;
                        buser_width := WIDTH.BUSER;
                    when others =>
                        null;
                end case;
                SEEK_EVENT(core, stream, next_event);
                case next_event is
                    when EVENT_MAP_BEGIN =>
                        READ_EVENT(core, stream, EVENT_MAP_BEGIN);
                        MAP_READ_LOOP: loop
                            MAP_READ_PREPARE_FOR_NEXT(
                                SELF       => core            ,  -- I/O:
                                STREAM     => stream          ,  -- I/O:
                                EVENT      => next_event         -- I/O:
                            );
                            map_read_axi4_transaction(
                                core       => core            ,  -- I/O:
                                stream     => stream          ,  -- I/O:
                                addr_width => addr_width      ,  -- In :
                                auser_width=> auser_width     ,  -- In :
                                duser_width=> duser_width     ,  -- In :
                                buser_width=> buser_width     ,  -- In :
                                id_width   => WIDTH.ID        ,  -- In :
                                trans      => tran_info       ,  -- I/O:
                                event      => next_event         -- I/O:
                            );
                            MAP_READ_BOOLEAN(
                                SELF       => core            ,  -- I/O:
                                STREAM     => stream          ,  -- I/O:
                                KEY        => "SYNC"          ,  -- In :
                                VAL        => sync_io         ,  -- I/O:
                                EVENT      => next_event         -- I/O:
                            );
                            case next_event is
                                when EVENT_SCALAR  =>
                                    COPY_KEY_WORD(core, keyword);
                                    EXECUTE_UNDEFINED_MAP_KEY(core, stream, keyword);
                                when EVENT_MAP_END =>
                                    exit MAP_READ_LOOP;
                                when others        =>
                                    READ_ERROR(core, proc_name, "need EVENT_MAP_END but " &
                                               EVENT_TO_STRING(next_event));
                            end case;
                        end loop;
                    when others =>
                        READ_ERROR(core, proc_name, "SEEK_EVENT NG");
                end case;
            end procedure;
            -----------------------------------------------------------------------
            --! @brief デフォルトの ASIZE を計算するサブプログラム.
            -----------------------------------------------------------------------
            function  default_asize(WIDTH:integer) return AXI4_ASIZE_TYPE is
            begin
                case WIDTH is
                    when      8 => return AXI4_ASIZE_1BYTE;
                    when     16 => return AXI4_ASIZE_2BYTE;
                    when     32 => return AXI4_ASIZE_4BYTE;
                    when     64 => return AXI4_ASIZE_8BYTE;
                    when    128 => return AXI4_ASIZE_16BYTE;
                    when    256 => return AXI4_ASIZE_32BYTE;
                    when    512 => return AXI4_ASIZE_64BYTE;
                    when   1024 => return AXI4_ASIZE_128BYTE;
                    when others => return (others => '0');
                end case;
            end function;
            constant  AXI4_ARSIZE_DEFAULT : AXI4_ASIZE_TYPE := default_asize(WIDTH.RDATA);
            constant  AXI4_AWSIZE_DEFAULT : AXI4_ASIZE_TYPE := default_asize(WIDTH.WDATA);
            -----------------------------------------------------------------------
            --! @brief マスターリードランザクション(アドレスチャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_master_read_addr is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_MASTER_READ_ADDR";
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                tran_info         := AXI4_TRANSACTION_SIGNAL_NULL;
                tran_info.SIZE    := AXI4_ARSIZE_DEFAULT;
                tran_info.BURST   := AXI4_ABURST_INCR;
                tran_info.DUSER   := (others => '-');
                tran_info.VALID   := '1';
                tran_info.TIMEOUT := DEFAULT_WAIT_TIMEOUT;
                read_transaction_info(proc_name, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                TRAN_O <= tran_info;
                out_signals.AR.ADDR(ARADDR_O'range) := tran_info.ADDR (ARADDR_O'range);
                out_signals.AR.USER(ARUSER_O'range) := tran_info.AUSER(ARUSER_O'range);
                out_signals.AR.ID  (ARID_O  'range) := tran_info.ID   (ARID_O  'range);
                out_signals.AR.WRITE                := '0';
                out_signals.AR.LEN (ARLEN_O 'range) := tran_info.LEN  (ARLEN_O 'range);
                out_signals.AR.SIZE                 := tran_info.SIZE;
                out_signals.AR.BURST                := tran_info.BURST;
                out_signals.AR.LOCK(ARLOCK_O'range) := tran_info.LOCK (ARLOCK_O'range);
                out_signals.AR.CACHE                := tran_info.CACHE;
                out_signals.AR.PROT                 := tran_info.PROT;
                out_signals.AR.QOS                  := tran_info.QOS;
                out_signals.AR.REGION               := tran_info.REGION;
                out_signals.AR.VALID                := '1';
                execute_output(out_signals);
                wait until (ACLK'event and ACLK = '0');
                TRAN_O.VALID <= '0';
                wait_until_xfer_ar(core, proc_name, tran_info.TIMEOUT);
                out_signals.AR                      := AXI4_A_CHANNEL_SIGNAL_NULL;
                execute_output(out_signals);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief マスターライトトランザクション(アドレスチャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_master_write_addr is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_MASTER_WRITE_ADDR";
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                tran_info         := AXI4_TRANSACTION_SIGNAL_NULL;
                tran_info.SIZE    := AXI4_AWSIZE_DEFAULT;
                tran_info.BURST   := AXI4_ABURST_INCR;
                tran_info.BUSER   := (others => '-');
                tran_info.VALID   := '1';
                tran_info.TIMEOUT := DEFAULT_WAIT_TIMEOUT;
                read_transaction_info(proc_name, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                TRAN_O <= tran_info;
                out_signals.AW.ADDR(AWADDR_O'range) := tran_info.ADDR (AWADDR_O'range);
                out_signals.AW.USER(AWUSER_O'range) := tran_info.AUSER(AWUSER_O'range);
                out_signals.AW.ID  (AWID_O  'range) := tran_info.ID   (AWID_O  'range);
                out_signals.AW.WRITE                := '1';
                out_signals.AW.LEN (AWLEN_O 'range) := tran_info.LEN  (AWLEN_O 'range);
                out_signals.AW.SIZE                 := tran_info.SIZE;
                out_signals.AW.BURST                := tran_info.BURST;
                out_signals.AW.LOCK(AWLOCK_O'range) := tran_info.LOCK (AWLOCK_O'range);
                out_signals.AW.CACHE                := tran_info.CACHE;
                out_signals.AW.PROT                 := tran_info.PROT;
                out_signals.AW.QOS                  := tran_info.QOS;
                out_signals.AW.REGION               := tran_info.REGION;
                out_signals.AW.VALID                := '1';
                execute_output(out_signals);
                wait until (ACLK'event and ACLK = '0');
                TRAN_O.VALID <= '0';
                wait_until_xfer_aw(core, proc_name, tran_info.TIMEOUT);
                out_signals.AW                      := AXI4_A_CHANNEL_SIGNAL_NULL;
                execute_output(out_signals);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief スレーブリードトランザクション(アドレスチャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_slave_read_addr is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_SLAVE_READ_ADDR";
                variable  match      : boolean;
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                tran_info         := AXI4_TRANSACTION_SIGNAL_DONTCARE;
                tran_info.SIZE    := AXI4_ARSIZE_DEFAULT;
                tran_info.BURST   := AXI4_ABURST_INCR;
                tran_info.VALID   := '1';
                tran_info.TIMEOUT := DEFAULT_WAIT_TIMEOUT;
                read_transaction_info(proc_name, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                TRAN_O       <= tran_info;
                ARREADY_O    <= '1';
                wait until (ACLK'event and ACLK = '0');
                TRAN_O.VALID <= '0';
                wait_until_xfer_ar(core, proc_name, tran_info.TIMEOUT);
                ARREADY_O    <= '0';
                chk_a_signals.ADDR(ARADDR_I'range) := tran_info.ADDR (ARADDR_I'range);
                chk_a_signals.USER(ARUSER_I'range) := tran_info.AUSER(ARUSER_I'range);
                chk_a_signals.ID  (ARID_I  'range) := tran_info.ID   (ARID_I  'range);
                chk_a_signals.WRITE                := tran_info.WRITE;
                chk_a_signals.LEN (ARLEN_I 'range) := tran_info.LEN  (ARLEN_I 'range);
                chk_a_signals.SIZE                 := tran_info.SIZE;
                chk_a_signals.BURST                := tran_info.BURST;
                chk_a_signals.LOCK(ARLOCK_I'range) := tran_info.LOCK (ARLOCK_I'range);
                chk_a_signals.CACHE                := tran_info.CACHE;
                chk_a_signals.PROT                 := tran_info.PROT;
                chk_a_signals.QOS                  := tran_info.QOS;
                chk_a_signals.REGION               := tran_info.REGION;
                chk_a_signals.VALID                := '1';
                chk_a_signals.READY                := '1';
                match_axi4_ar_channel(core, chk_a_signals, match);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief スレーブライトトランザクション(アドレスチャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_slave_write_addr is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_SLAVE_WRITE_ADDR";
                variable  match      : boolean;
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                tran_info         := AXI4_TRANSACTION_SIGNAL_DONTCARE;
                tran_info.SIZE    := AXI4_AWSIZE_DEFAULT;
                tran_info.BURST   := AXI4_ABURST_INCR;
                tran_info.BUSER   := (others => '0');
                tran_info.VALID   := '1';
                tran_info.TIMEOUT := DEFAULT_WAIT_TIMEOUT;
                read_transaction_info(proc_name, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                TRAN_O       <= tran_info;
                AWREADY_O    <= '1';
                wait until (ACLK'event and ACLK = '0');
                TRAN_O.VALID <= '0';
                wait_until_xfer_aw(core, proc_name, tran_info.TIMEOUT);
                AWREADY_O    <= '0';
                chk_a_signals.ADDR(AWADDR_I'range) := tran_info.ADDR (AWADDR_I'range);
                chk_a_signals.USER(AWUSER_I'range) := tran_info.AUSER(AWUSER_I'range);
                chk_a_signals.ID  (AWID_I  'range) := tran_info.ID   (AWID_I  'range);
                chk_a_signals.WRITE                := tran_info.WRITE;
                chk_a_signals.LEN (AWLEN_I 'range) := tran_info.LEN  (AWLEN_I 'range);
                chk_a_signals.SIZE                 := tran_info.SIZE;
                chk_a_signals.BURST                := tran_info.BURST;
                chk_a_signals.LOCK(AWLOCK_I'range) := tran_info.LOCK (AWLOCK_I'range);
                chk_a_signals.CACHE                := tran_info.CACHE;
                chk_a_signals.PROT                 := tran_info.PROT;
                chk_a_signals.QOS                  := tran_info.QOS;
                chk_a_signals.REGION               := tran_info.REGION;
                chk_a_signals.VALID                := '1';
                chk_a_signals.READY                := '1';
                match_axi4_aw_channel(core, chk_a_signals, match);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief 関係無いトランザクションを実行するサブプログラム.
            -----------------------------------------------------------------------
            procedure execute_dummy_operation is
                variable  sync_io    : boolean;
            begin
                execute_skip_sync_io(core, stream, sync_io);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
            end procedure;
            -----------------------------------------------------------------------
            --! @brief チャネルオペレーション(SCALAR)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_channel_scalar_operation is
            begin 
                SKIP_EVENT(core, stream, EVENT_SCALAR);
            end procedure;
            -----------------------------------------------------------------------
            --! @brief チャネルオペレーション(MAP)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_channel_map_operation is
                constant  proc_name  : string := "EXECUTE_CHANNEL_MAP_OPERATION";
                variable  next_event : EVENT_TYPE;
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                READ_EVENT(core, stream, EVENT_MAP_BEGIN);
                MAP_READ_LOOP: loop
                    MAP_READ_PREPARE_FOR_NEXT(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    map_read_axi4_channel(
                        core       => core            ,  -- In :
                        stream     => stream          ,  -- I/O:
                        channel    => CHANNEL         ,  -- In :
                        read       => READ_ENABLE     ,  -- In :
                        write      => WRITE_ENABLE    ,  -- In :
                        width      => WIDTH           ,  -- In :
                        signals    => out_signals     ,  -- I/O:
                        event      => next_event         -- Out:
                    );
                    execute_output(out_signals);
                    case next_event is
                        when EVENT_SCALAR  =>
                            COPY_KEY_WORD(core, keyword);
                            case keyword is
                                when KEY_DEBUG  => EXECUTE_DEBUG (core, stream);
                                when KEY_REPORT => EXECUTE_REPORT(core, stream);
                                when KEY_SAY    => EXECUTE_SAY   (core, stream);
                                when KEY_WAIT   => execute_wait  (core, stream, sync_io);
                                when KEY_CHECK  => execute_check (core, stream);
                                when others     => EXECUTE_UNDEFINED_MAP_KEY(core, stream, keyword);
                            end case;
                        when EVENT_MAP_END =>
                            exit MAP_READ_LOOP;
                        when others        =>
                            READ_ERROR(core, proc_name, "need EVENT_MAP_END but " &
                                       EVENT_TO_STRING(next_event));
                    end case;
                end loop;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief チャネルオペレーションループ
            -----------------------------------------------------------------------
            procedure execute_channel_operation is
                constant  proc_name  : string := "EXECUTE_CHANNEL_OPERATION";
                variable  next_event : EVENT_TYPE;
                variable  seq_level  : integer;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                seq_level := 0;
                SEQ_LOOP: loop
                    SEEK_EVENT(core, stream, next_event);
                    case next_event is
                        when EVENT_SEQ_BEGIN =>
                            READ_EVENT(core, stream, EVENT_SEQ_BEGIN);
                            seq_level := seq_level + 1;
                        when EVENT_SEQ_END   =>
                            READ_EVENT(core, stream, EVENT_SEQ_END  );
                            seq_level := seq_level - 1;
                        when EVENT_MAP_BEGIN =>
                            execute_channel_map_operation;
                        when EVENT_SCALAR    =>
                            execute_channel_scalar_operation;
                        when EVENT_ERROR     =>
                            READ_ERROR(core, proc_name, "SEEK_EVENT NG");
                        when others          =>
                            SKIP_EVENT(core, stream, next_event);
                            -- ERROR
                    end case;
                    exit when (seq_level <= 0);
                end loop;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
        begin
            -----------------------------------------------------------------------
            -- ダミープラグコアの初期化.
            -----------------------------------------------------------------------
            CORE_INIT(
                SELF        => core,          -- 初期化するコア変数.
                NAME        => NAME,          -- コアの名前.
                VOCAL_NAME  => FULL_NAME,     -- メッセージ出力用の名前.
                STREAM      => stream,        -- シナリオのストリーム.
                STREAM_NAME => SCENARIO_FILE, -- シナリオのストリーム名.
                OPERATION   => operation      -- コアのオペレーション.
            );
            -----------------------------------------------------------------------
            -- 変数の初期化.
            -----------------------------------------------------------------------
            out_signals := INIT_SIGNALS;
            -----------------------------------------------------------------------
            -- 信号の初期化
            -----------------------------------------------------------------------
            SYNC_LOCAL_REQ <= (others => 0);
            SYNC_TRANS_REQ <= (others => 0);
            FINISH         <= '0';
            REPORT_STATUS  <= core.report_status;
            execute_output(out_signals);
            core.debug := 0;
            -----------------------------------------------------------------------
            -- メインオペレーションループ
            -----------------------------------------------------------------------
            while (operation /= OP_FINISH) loop
                REPORT_STATUS <= core.report_status;
                READ_OPERATION(core, stream, operation, keyword);
                case operation is
                    when OP_DOC_BEGIN   => local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                    when OP_MAP         =>
                        REPORT_DEBUG(core, string'("MAIN_LOOP:OP_MAP(") & keyword & ")");
                        if    (keyword = KEY_CHANNEL) then
                            execute_channel_operation;
                        elsif (keyword = KEY_REPORT ) then
                            EXECUTE_REPORT(core, stream);
                        elsif (keyword = KEY_SYNC   ) then
                            local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                            EXECUTE_SKIP(core, stream);
                        elsif (keyword = KEY_WAIT   ) or
                              (CHANNEL = AXI4_CHANNEL_AR and MASTER and WRITE_ENABLE and keyword = KEY_WRITE) or
                              (CHANNEL = AXI4_CHANNEL_AR and SLAVE  and WRITE_ENABLE and keyword = KEY_WRITE) or
                              (CHANNEL = AXI4_CHANNEL_AW and MASTER and READ_ENABLE  and keyword = KEY_READ ) or
                              (CHANNEL = AXI4_CHANNEL_AW and SLAVE  and READ_ENABLE  and keyword = KEY_READ ) then
                            execute_dummy_operation;
                        elsif (CHANNEL = AXI4_CHANNEL_AR and MASTER and READ_ENABLE  and keyword = KEY_READ ) then
                            execute_transaction_master_read_addr;
                        elsif (CHANNEL = AXI4_CHANNEL_AR and SLAVE  and READ_ENABLE  and keyword = KEY_READ ) then
                            execute_transaction_slave_read_addr;
                        elsif (CHANNEL = AXI4_CHANNEL_AW and MASTER and WRITE_ENABLE and keyword = KEY_WRITE) then
                            execute_transaction_master_write_addr;
                        elsif (CHANNEL = AXI4_CHANNEL_AW and SLAVE  and WRITE_ENABLE and keyword = KEY_WRITE) then
                            execute_transaction_slave_write_addr;
                        else
                            REPORT_DEBUG(core, string'("MAIN_LOOP:OP_MAP:SKIP BEGIN"));
                            EXECUTE_SKIP(core, stream);
                            REPORT_DEBUG(core, string'("MAIN_LOOP:OP_MAP:SKIP END"));
                        end if;
                    when OP_SCALAR      =>
                        if (keyword = KEY_SYNC) then
                            local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                        else
                            EXECUTE_UNDEFINED_SCALAR(core, stream, keyword);
                        end if;
                    when OP_FINISH      => exit;
                    when others         => null;
                end case;
            end loop;
            REPORT_STATUS <= core.report_status;
            FINISH        <= '1';
            if (FINISH_ABORT) then
                assert FALSE report "Simulation complete." severity FAILURE;
            end if;
            wait;
        end process;
    end generate;
    -------------------------------------------------------------------------------
    -- データチャネル
    -------------------------------------------------------------------------------
    CHANNEL_D:if (CHANNEL = AXI4_CHANNEL_W  or CHANNEL = AXI4_CHANNEL_B  or CHANNEL = AXI4_CHANNEL_R) generate
        PROCESS_D: process
            ---------------------------------------------------------------------------
            -- 各種変数の定義.
            ---------------------------------------------------------------------------
            file      stream        : TEXT;
            variable  core          : CORE_TYPE;
            variable  keyword       : KEY_TYPE;
            variable  operation     : OPERATION_TYPE;
            variable  out_signals   : AXI4_CHANNEL_SIGNAL_TYPE;
            variable  chk_r_signals : AXI4_R_CHANNEL_SIGNAL_TYPE;
            variable  chk_w_signals : AXI4_W_CHANNEL_SIGNAL_TYPE;
            variable  chk_b_signals : AXI4_B_CHANNEL_SIGNAL_TYPE;
            variable  tran_info     : AXI4_TRANSACTION_SIGNAL_TYPE;
            variable  aligned_addr  : integer;
            variable  number_bytes  : integer;
            variable  lower_lane    : integer;
            variable  upper_lane    : integer;
            variable  burst_len     : integer;
            variable  data_pos      : integer;
            variable  data_bits     : integer;
            variable  data_bytes    : integer;
            variable  match         : boolean;
            -----------------------------------------------------------------------
            --! @brief 信号変数(signals)の値をポートに出力するサブプログラム.
            --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            --! @param    signals    出力する信号の値を指定する変数.
            -----------------------------------------------------------------------
            procedure execute_output(
                          signals  : in AXI4_CHANNEL_SIGNAL_TYPE
            ) is
            begin 
                if (MASTER and WRITE_ENABLE and CHANNEL = AXI4_CHANNEL_W) then
                    WDATA_O   <= signals.W.DATA(WDATA_O'range)  after OUTPUT_DELAY;
                    WLAST_O   <= signals.W.LAST                 after OUTPUT_DELAY;
                    WSTRB_O   <= signals.W.STRB(WSTRB_O'range)  after OUTPUT_DELAY;
                    WUSER_O   <= signals.W.USER(WUSER_O'range)  after OUTPUT_DELAY;
                    WID_O     <= signals.W.ID(WID_O'range)      after OUTPUT_DELAY;
                    WVALID_O  <= signals.W.VALID                after OUTPUT_DELAY;
                end if;
                if (MASTER and WRITE_ENABLE and CHANNEL = AXI4_CHANNEL_B) then
                    BREADY_O  <= signals.B.READY                after OUTPUT_DELAY;
                end if;
                if (MASTER and READ_ENABLE  and CHANNEL = AXI4_CHANNEL_R) then
                    RREADY_O  <= signals.R.READY                after OUTPUT_DELAY;
                end if;
                if (SLAVE  and WRITE_ENABLE and CHANNEL = AXI4_CHANNEL_W) then
                    WREADY_O  <= signals.W.READY                after OUTPUT_DELAY;
                end if;
                if (SLAVE  and WRITE_ENABLE and CHANNEL = AXI4_CHANNEL_B) then
                    BRESP_O   <= signals.B.RESP                 after OUTPUT_DELAY;
                    BUSER_O   <= signals.B.USER(BUSER_O'range)  after OUTPUT_DELAY;
                    BID_O     <= signals.B.ID(BID_O'range)      after OUTPUT_DELAY;
                    BVALID_O  <= signals.B.VALID                after OUTPUT_DELAY;
                end if;
                if (SLAVE  and READ_ENABLE  and CHANNEL = AXI4_CHANNEL_R) then
                    RDATA_O   <= signals.R.DATA(RDATA_O'range)  after OUTPUT_DELAY;
                    RRESP_O   <= signals.R.RESP                 after OUTPUT_DELAY;
                    RLAST_O   <= signals.R.LAST                 after OUTPUT_DELAY;
                    RUSER_O   <= signals.R.USER(RUSER_O'range)  after OUTPUT_DELAY;
                    RID_O     <= signals.R.ID(RID_O'range)      after OUTPUT_DELAY;
                    RVALID_O  <= signals.R.VALID                after OUTPUT_DELAY;
                end if;
            end procedure;
            -----------------------------------------------------------------------
            --! @brief アドレスチャネルからのトランザクション情報をTRAN_I信号から
            --!        取り込んで内部変数にセットするサブプログラム.
            --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            --! @param    proc_name  プロシージャの名前.
            --! @param    DATA_WIDTH データのビット幅.
            -----------------------------------------------------------------------
            procedure get_transaction_info(
                          proc_name   : in string;
                          DATA_WIDTH  : in integer
            ) is
            begin
                REPORT_DEBUG(core, proc_name, "GET_TRANSACTION_INFO BEGIN");
                wait until (TRAN_I.VALID'event and TRAN_I.VALID = '1');
                tran_info := TRAN_I;
                transaction_to_addr_and_bytes(tran_info, aligned_addr, number_bytes);
                case DATA_WIDTH is
                    when   16   => lower_lane := TO_INTEGER(unsigned(tran_info.ADDR(0 downto 0)));
                    when   32   => lower_lane := TO_INTEGER(unsigned(tran_info.ADDR(1 downto 0)));
                    when   64   => lower_lane := TO_INTEGER(unsigned(tran_info.ADDR(2 downto 0)));
                    when  128   => lower_lane := TO_INTEGER(unsigned(tran_info.ADDR(3 downto 0)));
                    when  256   => lower_lane := TO_INTEGER(unsigned(tran_info.ADDR(4 downto 0)));
                    when  512   => lower_lane := TO_INTEGER(unsigned(tran_info.ADDR(5 downto 0)));
                    when 1024   => lower_lane := TO_INTEGER(unsigned(tran_info.ADDR(6 downto 0)));
                    when others => lower_lane := 0;
                end case;
                burst_len  := TO_INTEGER(unsigned(tran_info.LEN))+1;
                data_pos   := 0;
                data_bits  := tran_info.DATA_LEN;
                data_bytes := (data_bits+7)/8;
                if (number_bytes - aligned_addr > data_bytes) then
                    upper_lane := lower_lane + data_bytes - 1;
                else
                    upper_lane := lower_lane + number_bytes - aligned_addr - 1;
                end if;
                REPORT_DEBUG(core, proc_name, "GET_TRANSACTION_INFO END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief get_transaction_info で取り込んだトランザクション情報から
            --!        ワード毎のリードデータチャネル信号の値を生成するサブプログラム.
            --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            --! @param    proc_name  プロシージャの名前.
            --! @param    last       最後のワードであることを指定する.
            --! @param    default    指定の無いstd_logicの値.
            --! @param    signals    生成されたワード毎の信号を出力する.
            -----------------------------------------------------------------------
            procedure generate_r_channel_signals(
                          proc_name   : in  string;
                          last        : in  boolean;
                          default     : in  std_logic;
                          signals     : out AXI4_R_CHANNEL_SIGNAL_TYPE
            ) is
                constant  word_bytes  :     integer := WIDTH.RDATA/8;
            begin 
                signals.USER  := tran_info.DUSER;
                signals.ID    := tran_info.ID;
                signals.VALID := '1';
                signals.READY := '1';
                if (last) then
                    signals.RESP := tran_info.RESP;
                    signals.LAST := '1';
                else
                    signals.RESP := (others => default);
                    signals.LAST := '0';
                end if;
                for lane in 0 to word_bytes-1 loop
                    if (lower_lane <= lane and lane <= upper_lane) then
                        for bit in 0 to 7 loop
                            if (data_pos < data_bits) then
                                signals.DATA(lane*8+bit) := tran_info.DATA(data_pos);
                                data_pos := data_pos + 1;
                            else
                                signals.DATA(lane*8+bit) := default;
                            end if;
                        end loop;
                    else
                        signals.DATA(lane*8+7 downto lane*8) := (lane*8+7 downto lane*8 => default);
                    end if;
                end loop;
                lower_lane := (upper_lane + 1)  mod word_bytes;
                upper_lane := lower_lane + number_bytes - 1;
                if (upper_lane >= word_bytes) then
                    upper_lane := word_bytes - 1;
                end if;
            end procedure;
            -----------------------------------------------------------------------
            --! @brief get_transaction_info で取り込んだトランザクション情報から
            --!        ワード毎のライトデータチャネル信号の値を生成するサブプログラム.
            --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            --! @param    proc_name  プロシージャの名前.
            --! @param    last       最後のワードであることを指定する.
            --! @param    default    指定の無いstd_logicの値.
            --! @param    signals    生成されたワード毎の信号を出力する.
            -----------------------------------------------------------------------
            procedure generate_w_channel_signals(
                          proc_name   : in  string;
                          last        : in  boolean;
                          default     : in  std_logic;
                          signals     : out AXI4_W_CHANNEL_SIGNAL_TYPE
            ) is
                constant  word_bytes  :     integer := WIDTH.WDATA/8;
            begin
                signals.USER  := tran_info.DUSER;
                signals.VALID := '1';
                signals.READY := '1';
                if (last) then
                    signals.LAST := '1';
                else
                    signals.LAST := '0';
                end if;                
                for lane in 0 to word_bytes-1 loop
                    signals.STRB(lane) := '0';
                    if (lower_lane <= lane and lane <= upper_lane) then
                        for bit in 0 to 7 loop
                            if (data_pos < data_bits) then
                                signals.DATA(lane*8+bit) := tran_info.DATA(data_pos);
                                data_pos := data_pos + 1;
                                signals.STRB(lane) := '1';
                            else
                                signals.DATA(lane*8+bit) := default;
                            end if;
                        end loop;
                    else
                        signals.DATA(lane*8+7 downto lane*8) := (lane*8+7 downto lane*8 => default);
                    end if;
                end loop;
                lower_lane := (upper_lane + 1)  mod word_bytes;
                upper_lane := lower_lane + number_bytes - 1;
                if (upper_lane >= word_bytes) then
                    upper_lane := word_bytes - 1;
                end if;
            end procedure;
            -----------------------------------------------------------------------
            --! @brief get_transaction_info で取り込んだトランザクション情報から
            --!        ワード毎のライト応答チャネル信号の値を生成するサブプログラム.
            --! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            --! @param    proc_name  プロシージャの名前.
            --! @param    signals    生成されたワード毎の信号を出力する.
            -----------------------------------------------------------------------
            procedure generate_b_channel_signals(
                          proc_name   : in  string;
                          signals     : out AXI4_B_CHANNEL_SIGNAL_TYPE
            ) is
            begin
                signals.USER  := tran_info.BUSER;
                signals.ID    := tran_info.ID;
                signals.RESP  := tran_info.RESP;
                signals.VALID := '1';
                signals.READY := '1';
            end procedure;
            -----------------------------------------------------------------------
            --! @brief マスターリードトランザクション(データチャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_master_read_data is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_MASTER_READ_DATA";
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                execute_skip_sync_io(core, stream, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                get_transaction_info(proc_name, WIDTH.RDATA);
                for i in 1 to burst_len loop
                    RREADY_O <= '1' after OUTPUT_DELAY;
                    generate_r_channel_signals(
                        proc_name => proc_name,
                        last      => (i = burst_len),
                        default   => '-',
                        signals   => chk_r_signals
                    );
                    wait_until_xfer_r(core, proc_name, tran_info.TIMEOUT, '0');
                    match_axi4_r_channel(core, chk_r_signals, match);
                end loop;
                RREADY_O <= '0' after OUTPUT_DELAY;
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief スレーブリードトランザクション(データチャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_slave_read_data is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_SLAVE_READ_DATA";
                variable  arid       : std_logic_vector(ARID_I'range);
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                execute_skip_sync_io(core, stream, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                get_transaction_info(proc_name, WIDTH.RDATA);
                wait_until_xfer_ar(core, proc_name, tran_info.TIMEOUT);
                arid := ARID_I;
                for i in 1 to burst_len loop
                    generate_r_channel_signals(
                        proc_name => proc_name, 
                        last      => (i = burst_len),
                        default   => '0',
                        signals   => out_signals.R
                    );
                    if (out_signals.R.ID(arid'range) = AXI4_TRANSACTION_SIGNAL_DONTCARE.ID(arid'range)) then
                        out_signals.R.ID(arid'range) := arid;
                    end if;
                    execute_output(out_signals);
                    wait_until_xfer_r(core, proc_name, tran_info.TIMEOUT, '0');
                end loop;
                out_signals.R := AXI4_R_CHANNEL_SIGNAL_NULL;
                execute_output(out_signals);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief マスターライトトランザクション(データチャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_master_write_data is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_MASTER_WRITE_DATA";
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                execute_skip_sync_io(core, stream, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                get_transaction_info(proc_name, WIDTH.WDATA);
                for i in 1 to burst_len loop
                    generate_w_channel_signals(
                        proc_name => proc_name, 
                        last      => (i = burst_len),
                        default   => '0',
                        signals   => out_signals.W
                    );
                    execute_output(out_signals);
                    wait_until_xfer_w(core, proc_name, tran_info.TIMEOUT, '0');
                end loop;
                out_signals.W := AXI4_W_CHANNEL_SIGNAL_NULL;
                execute_output(out_signals);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief スレーブライトトランザクション(データチャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_slave_write_data is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_SLAVE_WRITE_DATA";
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                execute_skip_sync_io(core, stream, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                get_transaction_info(proc_name, WIDTH.WDATA);
                for i in 1 to burst_len loop
                    WREADY_O <= '1' after OUTPUT_DELAY;
                    generate_w_channel_signals(
                        proc_name => proc_name,
                        last      => (i = burst_len),
                        default   => '-',
                        signals   => chk_w_signals
                    );
                    chk_w_signals.ID := (others => '-');
                    wait_until_xfer_w(core, proc_name, tran_info.TIMEOUT, '0');
                    match_axi4_w_channel(core, chk_w_signals, match);
                end loop;
                WREADY_O <= '0' after OUTPUT_DELAY;
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief マスターライトトランザクション(応答チャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_master_write_resp is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_MASTER_WRITE_RESP";
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                execute_skip_sync_io(core, stream, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                get_transaction_info(proc_name, WIDTH.WDATA);
                wait_until_xfer_aw(core, proc_name, tran_info.TIMEOUT);
                generate_b_channel_signals(
                    proc_name => proc_name, 
                    signals   => chk_b_signals
                );
                BREADY_O <= '1' after OUTPUT_DELAY;
                wait_until_xfer_b (core, proc_name, tran_info.TIMEOUT);
                BREADY_O <= '0' after OUTPUT_DELAY;
                match_axi4_b_channel(core, chk_b_signals, match);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief スレーブライトトランザクション(応答チャネル)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_transaction_slave_write_resp is
                constant  proc_name  : string := "EXECUTE_TRANSACTION_SLAVE_WRITE_RESP";
                variable  awid       : std_logic_vector(AWID_I'range);
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                execute_skip_sync_io(core, stream, sync_io);
                local_sync(core, SYNC_TRANS_REQ, SYNC_TRANS_ACK);
                get_transaction_info(proc_name, WIDTH.WDATA);
                wait_until_xfer_aw(core, proc_name, tran_info.TIMEOUT);
                awid := AWID_I;
                generate_b_channel_signals(
                    proc_name => proc_name, 
                    signals   => out_signals.B
                );
                if (out_signals.B.ID(awid'range) = AXI4_TRANSACTION_SIGNAL_DONTCARE.ID(awid'range)) then
                    out_signals.B.ID(awid'range) := awid;
                end if;
                if (not (WVALID_I = '1' and WREADY_I = '1' and WLAST_I = '1')) then
                    wait_until_xfer_w (core, proc_name, tran_info.TIMEOUT, '1');
                end if;
                execute_output(out_signals);
                wait_until_xfer_b (core, proc_name, tran_info.TIMEOUT);
                out_signals.B := AXI4_B_CHANNEL_SIGNAL_NULL;
                execute_output(out_signals);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief 関係無いトランザクションを実行するサブプログラム.
            -----------------------------------------------------------------------
            procedure execute_dummy_operation is
                variable  sync_io    : boolean;
            begin
                execute_skip_sync_io(core, stream, sync_io);
                if (sync_io) then
                    local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                end if;
            end procedure;
            -----------------------------------------------------------------------
            --! @brief チャネルオペレーション(SCALAR)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_channel_scalar_operation is
            begin 
                SKIP_EVENT(core, stream, EVENT_SCALAR);
            end procedure;
            -----------------------------------------------------------------------
            --! @brief チャネルオペレーション(MAP)実行サブプログラム.
            -----------------------------------------------------------------------
            procedure execute_channel_map_operation is
                constant  proc_name  : string := "EXECUTE_CHANNEL_MAP_OPERATION";
                variable  next_event : EVENT_TYPE;
                variable  sync_io    : boolean;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                READ_EVENT(core, stream, EVENT_MAP_BEGIN);
                MAP_READ_LOOP: loop
                    MAP_READ_PREPARE_FOR_NEXT(
                        SELF       => core            ,  -- I/O:
                        STREAM     => stream          ,  -- I/O:
                        EVENT      => next_event         -- I/O:
                    );
                    map_read_axi4_channel(
                        core       => core            ,  -- In :
                        stream     => stream          ,  -- I/O:
                        channel    => CHANNEL         ,  -- In :
                        read       => READ_ENABLE     ,  -- In :
                        write      => WRITE_ENABLE    ,  -- In :
                        width      => WIDTH           ,  -- In :
                        signals    => out_signals     ,  -- I/O:
                        event      => next_event         -- Out:
                    );
                    execute_output(out_signals);
                    case next_event is
                        when EVENT_SCALAR  =>
                            COPY_KEY_WORD(core, keyword);
                            case keyword is
                                when KEY_DEBUG  => EXECUTE_DEBUG (core, stream);
                                when KEY_REPORT => EXECUTE_REPORT(core, stream);
                                when KEY_SAY    => EXECUTE_SAY   (core, stream);
                                when KEY_WAIT   => execute_wait  (core, stream, sync_io);
                                when KEY_CHECK  => execute_check (core, stream);
                                when others     => EXECUTE_UNDEFINED_MAP_KEY(core, stream, keyword);
                            end case;
                        when EVENT_MAP_END =>
                            exit MAP_READ_LOOP;
                        when others        =>
                            READ_ERROR(core, proc_name, "need EVENT_MAP_END but " &
                                       EVENT_TO_STRING(next_event));
                    end case;
                end loop;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
            -----------------------------------------------------------------------
            --! @brief チャネルオペレーションループ
            -----------------------------------------------------------------------
            procedure execute_channel_operation is
                constant  proc_name  : string := "EXECUTE_CHANNEL_OPERATION";
                variable  next_event : EVENT_TYPE;
                variable  seq_level  : integer;
            begin
                REPORT_DEBUG(core, proc_name, "BEGIN");
                seq_level := 0;
                SEQ_LOOP: loop
                    SEEK_EVENT(core, stream, next_event);
                    case next_event is
                        when EVENT_SEQ_BEGIN =>
                            READ_EVENT(core, stream, EVENT_SEQ_BEGIN);
                            seq_level := seq_level + 1;
                        when EVENT_SEQ_END   =>
                            READ_EVENT(core, stream, EVENT_SEQ_END  );
                            seq_level := seq_level - 1;
                        when EVENT_MAP_BEGIN =>
                            execute_channel_map_operation;
                        when EVENT_SCALAR    =>
                            execute_channel_scalar_operation;
                        when EVENT_ERROR     =>
                            READ_ERROR(core, proc_name, "SEEK_EVENT NG");
                        when others          =>
                            SKIP_EVENT(core, stream, next_event);
                            -- ERROR
                    end case;
                    exit when (seq_level <= 0);
                end loop;
                REPORT_DEBUG(core, proc_name, "END");
            end procedure;
        begin
            -----------------------------------------------------------------------
            -- ダミープラグコアの初期化.
            -----------------------------------------------------------------------
            CORE_INIT(
                SELF        => core,          -- 初期化するコア変数.
                NAME        => NAME,          -- コアの名前.
                VOCAL_NAME  => FULL_NAME,     -- メッセージ出力用の名前.
                STREAM      => stream,        -- シナリオのストリーム.
                STREAM_NAME => SCENARIO_FILE, -- シナリオのストリーム名.
                OPERATION   => operation      -- コアのオペレーション.
            );
            -----------------------------------------------------------------------
            -- 変数の初期化.
            -----------------------------------------------------------------------
            out_signals := INIT_SIGNALS;
            -----------------------------------------------------------------------
            -- 信号の初期化
            -----------------------------------------------------------------------
            SYNC_LOCAL_REQ <= (others => 0);
            SYNC_TRANS_REQ <= (others => 0);
            FINISH         <= '0';
            REPORT_STATUS  <= core.report_status;
            execute_output(out_signals);
            core.debug := 0;
            -----------------------------------------------------------------------
            -- メインオペレーションループ
            -----------------------------------------------------------------------
            while (operation /= OP_FINISH) loop
                REPORT_STATUS <= core.report_status;
                READ_OPERATION(core, stream, operation, keyword);
                case operation is
                    when OP_DOC_BEGIN   => local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                    when OP_MAP         =>
                        REPORT_DEBUG(core, string'("MAIN_LOOP:OP_MAP(") & keyword & ")");
                        if    (keyword = KEY_CHANNEL) then
                            execute_channel_operation;
                        elsif (keyword = KEY_REPORT ) then
                            EXECUTE_REPORT(core, stream);
                        elsif (keyword = KEY_SYNC   ) then
                            local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                            EXECUTE_SKIP(core, stream);
                        elsif (keyword = KEY_WAIT   ) or
                              (CHANNEL = AXI4_CHANNEL_R and MASTER and WRITE_ENABLE and keyword = KEY_WRITE) or
                              (CHANNEL = AXI4_CHANNEL_R and SLAVE  and WRITE_ENABLE and keyword = KEY_WRITE) or
                              (CHANNEL = AXI4_CHANNEL_W and MASTER and READ_ENABLE  and keyword = KEY_READ ) or
                              (CHANNEL = AXI4_CHANNEL_W and SLAVE  and READ_ENABLE  and keyword = KEY_READ ) or
                              (CHANNEL = AXI4_CHANNEL_B and MASTER and READ_ENABLE  and keyword = KEY_READ ) or
                              (CHANNEL = AXI4_CHANNEL_B and SLAVE  and READ_ENABLE  and keyword = KEY_READ ) then
                            execute_dummy_operation;
                        elsif (CHANNEL = AXI4_CHANNEL_R and MASTER and READ_ENABLE  and keyword = KEY_READ ) then
                            execute_transaction_master_read_data;
                        elsif (CHANNEL = AXI4_CHANNEL_R and SLAVE  and READ_ENABLE  and keyword = KEY_READ ) then
                            execute_transaction_slave_read_data;
                        elsif (CHANNEL = AXI4_CHANNEL_W and MASTER and WRITE_ENABLE and keyword = KEY_WRITE) then
                            execute_transaction_master_write_data;
                        elsif (CHANNEL = AXI4_CHANNEL_W and SLAVE  and WRITE_ENABLE and keyword = KEY_WRITE) then
                            execute_transaction_slave_write_data;
                        elsif (CHANNEL = AXI4_CHANNEL_B and MASTER and WRITE_ENABLE and keyword = KEY_WRITE) then
                            execute_transaction_master_write_resp;
                        elsif (CHANNEL = AXI4_CHANNEL_B and SLAVE  and WRITE_ENABLE and keyword = KEY_WRITE) then
                            execute_transaction_slave_write_resp;
                        else
                            REPORT_DEBUG(core, string'("MAIN_LOOP:OP_MAP:SKIP BEGIN"));
                            EXECUTE_SKIP(core, stream);
                            REPORT_DEBUG(core, string'("MAIN_LOOP:OP_MAP:SKIP END"));
                        end if;
                    when OP_SCALAR      =>
                        if (keyword = KEY_SYNC) then
                            local_sync(core, SYNC_LOCAL_REQ, SYNC_LOCAL_ACK);
                        else
                            EXECUTE_UNDEFINED_SCALAR(core, stream, keyword);
                        end if;
                    when OP_FINISH      => exit;
                    when others         => null;
                end case;
            end loop;
            REPORT_STATUS <= core.report_status;
            FINISH        <= '1';
            if (FINISH_ABORT) then
                assert FALSE report "Simulation complete." severity FAILURE;
            end if;
            wait;
        end process;
    end generate;
end MODEL;
-----------------------------------------------------------------------------------
--!     @file    axi4_master_player.vhd
--!     @brief   AXI4 Master Dummy Plug Player.
--!     @version 1.6.1
--!     @date    2016/3/15
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.CORE.REPORT_STATUS_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_PLUG_NUM_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_SIG_VECTOR;
-----------------------------------------------------------------------------------
--! @brief   AXI4 Master Dummy Plug Player.
-----------------------------------------------------------------------------------
entity  AXI4_MASTER_PLAYER is
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING;
        NAME            : --! @brief 固有名詞.
                          STRING;
        READ_ENABLE     : --! @brief リードトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        WRITE_ENABLE    : --! @brief ライトトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                          time    := 0 ns;
        WIDTH           : --! @brief AXI4 チャネルの可変長信号のビット幅.
                          AXI4_SIGNAL_WIDTH_TYPE;
        SYNC_PLUG_NUM   : --! @brief シンクロ用信号のプラグ番号.
                          SYNC_PLUG_NUM_TYPE := 1;
        SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                          integer :=  1;
        DEFAULT_SYNC_IO : --! @brief リードトランザクション/ライトトランザクション
                          --         ウェイト時に完了を待ってから次のコマンドを実行
                          --         するか否かを指定する.
                          boolean := true;
        GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                          integer := 8;
        GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                          integer := 8;
        FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                          --!        アボートするかどうかを指定するフラグ.
                          boolean := true
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        --------------------------------------------------------------------------
        -- グローバルシグナル.
        --------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        --------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        ARADDR          : inout std_logic_vector(WIDTH.ARADDR -1 downto 0);
        ARLEN           : inout std_logic_vector(WIDTH.ALEN   -1 downto 0);
        ARSIZE          : inout AXI4_ASIZE_TYPE;
        ARBURST         : inout AXI4_ABURST_TYPE;
        ARLOCK          : inout std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        ARCACHE         : inout AXI4_ACACHE_TYPE;
        ARPROT          : inout AXI4_APROT_TYPE;
        ARQOS           : inout AXI4_AQOS_TYPE;
        ARREGION        : inout AXI4_AREGION_TYPE;
        ARUSER          : inout std_logic_vector(WIDTH.ARUSER -1 downto 0);
        ARID            : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        ARVALID         : inout std_logic;
        ARREADY         : in    std_logic;
        --------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        --------------------------------------------------------------------------
        RLAST           : in    std_logic;
        RDATA           : in    std_logic_vector(WIDTH.RDATA  -1 downto 0);
        RRESP           : in    AXI4_RESP_TYPE;
        RUSER           : in    std_logic_vector(WIDTH.RUSER  -1 downto 0);
        RID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        RVALID          : in    std_logic;
        RREADY          : inout std_logic;
        --------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        AWADDR          : inout std_logic_vector(WIDTH.AWADDR -1 downto 0);
        AWLEN           : inout std_logic_vector(WIDTH.ALEN   -1 downto 0);
        AWSIZE          : inout AXI4_ASIZE_TYPE;
        AWBURST         : inout AXI4_ABURST_TYPE;
        AWLOCK          : inout std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        AWCACHE         : inout AXI4_ACACHE_TYPE;
        AWPROT          : inout AXI4_APROT_TYPE;
        AWQOS           : inout AXI4_AQOS_TYPE;
        AWREGION        : inout AXI4_AREGION_TYPE;
        AWUSER          : inout std_logic_vector(WIDTH.AWUSER -1 downto 0);
        AWID            : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        AWVALID         : inout std_logic;
        AWREADY         : in    std_logic;
        --------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        --------------------------------------------------------------------------
        WLAST           : inout std_logic;
        WDATA           : inout std_logic_vector(WIDTH.WDATA  -1 downto 0);
        WSTRB           : inout std_logic_vector(WIDTH.WDATA/8-1 downto 0);
        WUSER           : inout std_logic_vector(WIDTH.WUSER  -1 downto 0);
        WID             : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        WVALID          : inout std_logic;
        WREADY          : in    std_logic;
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
        BRESP           : in    AXI4_RESP_TYPE;
        BUSER           : in    std_logic_vector(WIDTH.BUSER  -1 downto 0);
        BID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        BVALID          : in    std_logic;
        BREADY          : inout std_logic;
        --------------------------------------------------------------------------
        -- シンクロ用信号
        --------------------------------------------------------------------------
        SYNC            : inout SYNC_SIG_VECTOR (SYNC_WIDTH   -1 downto 0);
        --------------------------------------------------------------------------
        -- General Purpose Input 信号
        --------------------------------------------------------------------------
        GPI             : in    std_logic_vector(GPI_WIDTH    -1 downto 0) := (others => '0');
        --------------------------------------------------------------------------
        -- General Purpose Output 信号
        --------------------------------------------------------------------------
        GPO             : out   std_logic_vector(GPO_WIDTH    -1 downto 0);
        --------------------------------------------------------------------------
        -- レポートステータス出力.
        --------------------------------------------------------------------------
        REPORT_STATUS   : out   REPORT_STATUS_TYPE;
        --------------------------------------------------------------------------
        -- シミュレーション終了通知信号.
        --------------------------------------------------------------------------
        FINISH          : out   std_logic
    );
end AXI4_MASTER_PLAYER;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.AXI4_CORE.all;
use     DUMMY_PLUG.CORE.all;
use     DUMMY_PLUG.SYNC.all;
-----------------------------------------------------------------------------------
--! @brief   AXI4 Master Dummy Plug Player.
-----------------------------------------------------------------------------------
architecture MODEL of AXI4_MASTER_PLAYER is
    -------------------------------------------------------------------------------
    --! SYNC 制御信号
    -------------------------------------------------------------------------------
    signal    sync_rst          : std_logic := '0';
    signal    sync_clr          : std_logic := '0';
    signal    sync_req          : SYNC_REQ_VECTOR(SYNC'range);
    signal    sync_ack          : SYNC_ACK_VECTOR(SYNC'range);
    signal    sync_debug        : boolean   := FALSE;
    -------------------------------------------------------------------------------
    --! ローカル同期制御信号
    -------------------------------------------------------------------------------
    constant  SYNC_LOCAL_WAIT   : integer := 2;
    signal    sync_local_signal : SYNC_SIG_TYPE;
    signal    sync_local_debug  : boolean := FALSE;
    signal    sync_local_m_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_m_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_ar_req : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_ar_ack : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_r_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_r_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_aw_req : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_aw_ack : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_w_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_w_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_b_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_b_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_dummy_req    : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_dummy_ack    : SYNC_ACK_VECTOR(0 downto 0) := (others => '0');
    signal    sync_read_signal  : SYNC_SIG_TYPE;
    signal    sync_read_a_req   : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_read_a_ack   : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_read_d_req   : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_read_d_ack   : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_write_signal : SYNC_SIG_TYPE;
    signal    sync_write_a_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_write_a_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_write_d_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_write_d_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_write_b_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_write_b_ack  : SYNC_ACK_VECTOR(0 downto 0);
    -------------------------------------------------------------------------------
    --! トランザクション用信号.
    -------------------------------------------------------------------------------
    signal    tran_read         : AXI4_TRANSACTION_SIGNAL_TYPE;
    signal    tran_write        : AXI4_TRANSACTION_SIGNAL_TYPE;
    constant  tran_dummy        : AXI4_TRANSACTION_SIGNAL_TYPE := AXI4_TRANSACTION_SIGNAL_NULL;
    -------------------------------------------------------------------------------
    --! 各チャネルの状態出力.
    -------------------------------------------------------------------------------
    signal    reports           : REPORT_STATUS_VECTOR(1 to 6) := (1 to 6 => REPORT_STATUS_NULL);
begin
    -------------------------------------------------------------------------------
    -- メイン用のプレイヤー
    -------------------------------------------------------------------------------
    M: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME             ,
            CHANNEL             => AXI4_CHANNEL_M   ,
            MASTER              => FALSE            ,
            SLAVE               => FALSE            ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => sync_req         , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_m_req , -- Out:
            SYNC_LOCAL_ACK      => sync_local_m_ack , -- In :
            SYNC_TRANS_REQ      => sync_dummy_req   , -- Out:
            SYNC_TRANS_ACK      => sync_dummy_ack   , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_dummy       , -- In :
            TRAN_O              => open             , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => GPO              , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(1)       , -- Out:
            FINISH              => FINISH             -- Out:
        );
    -------------------------------------------------------------------------------
    -- リードアドレスチャネルプレイヤー
    -------------------------------------------------------------------------------
    AR: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".AR"     ,
            CHANNEL             => AXI4_CHANNEL_AR  ,
            MASTER              => TRUE             ,
            SLAVE               => FALSE            ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => ARADDR           , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => ARLEN            , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => ARSIZE           , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => ARBURST          , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => ARLOCK           , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => ARCACHE          , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => ARPROT           , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => ARQOS            , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => ARREGION         , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => ARUSER           , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => ARID             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => ARVALID          , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_ar_req, -- Out:
            SYNC_LOCAL_ACK      => sync_local_ar_ack, -- In :
            SYNC_TRANS_REQ      => sync_read_a_req  , -- Out:
            SYNC_TRANS_ACK      => sync_read_a_ack  , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_read        , -- In :
            TRAN_O              => tran_read        , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(2)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- リードデータチャネルプレイヤー
    -------------------------------------------------------------------------------
    R: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".R"      ,
            CHANNEL             => AXI4_CHANNEL_R   ,
            MASTER              => TRUE             ,
            SLAVE               => FALSE            ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => RREADY           , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_r_req , -- Out:
            SYNC_LOCAL_ACK      => sync_local_r_ack , -- In :
            SYNC_TRANS_REQ      => sync_read_d_req  , -- Out:
            SYNC_TRANS_ACK      => sync_read_d_ack  , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_read        , -- In :
            TRAN_O              => open             , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(3)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- ライトアドレスチャネルプレイヤー
    -------------------------------------------------------------------------------
    AW: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".AW"     ,
            CHANNEL             => AXI4_CHANNEL_AW  ,
            MASTER              => TRUE             ,
            SLAVE               => FALSE            ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => AWADDR           , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => AWLEN            , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => AWSIZE           , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => AWBURST          , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => AWLOCK           , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => AWCACHE          , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => AWPROT           , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => AWQOS            , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => AWREGION         , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => AWUSER           , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => AWID             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => AWVALID          , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_aw_req, -- Out:
            SYNC_LOCAL_ACK      => sync_local_aw_ack, -- In :
            SYNC_TRANS_REQ      => sync_write_a_req , -- Out:
            SYNC_TRANS_ACK      => sync_write_a_ack , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_write       , -- In :
            TRAN_O              => tran_write       , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(4)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- ライトデータチャネルプレイヤー
    -------------------------------------------------------------------------------
    W: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".W"      ,
            CHANNEL             => AXI4_CHANNEL_W   ,
            MASTER              => TRUE             ,
            SLAVE               => FALSE            ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => WVALID           , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => WLAST            , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => WDATA            , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => WSTRB            , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => WUSER            , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => WID              , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_w_req , -- Out:
            SYNC_LOCAL_ACK      => sync_local_w_ack , -- In :
            SYNC_TRANS_REQ      => sync_write_d_req , -- Out:
            SYNC_TRANS_ACK      => sync_write_d_ack , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_write       , -- In :
            TRAN_O              => open             , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(5)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- ライト応答チャネルプレイヤー
    -------------------------------------------------------------------------------
    B: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".B"      ,
            CHANNEL             => AXI4_CHANNEL_B   ,
            MASTER              => TRUE             ,
            SLAVE               => FALSE            ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => BREADY           , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_b_req , -- Out:
            SYNC_LOCAL_ACK      => sync_local_b_ack , -- In :
            SYNC_TRANS_REQ      => sync_write_b_req , -- Out:
            SYNC_TRANS_ACK      => sync_write_b_ack , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_write       , -- In :
            TRAN_O              => open             , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(6)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- レポートの集計.
    -------------------------------------------------------------------------------
    REPORT_STATUS <= MARGE_REPORT_STATUS(reports);
    -------------------------------------------------------------------------------
    -- このコア用の同期回路
    -------------------------------------------------------------------------------
    SYNC_DRIVER: for i in SYNC'range generate
        UNIT: SYNC_SIG_DRIVER
            generic map (
                NAME     => string'("MASTER:SYNC"),
                PLUG_NUM => SYNC_PLUG_NUM
            )
            port map (
                CLK      => ACLK                ,  -- In :
                RST      => sync_rst            ,  -- In :
                CLR      => sync_clr            ,  -- In :
                DEBUG    => sync_debug          ,  -- In :
                SYNC     => SYNC(i)             ,  -- I/O:
                REQ      => sync_req(i)         ,  -- In :
                ACK      => sync_ack(i)            -- Out:
            );
    end generate;
    sync_rst <= '0' when (ARESETn = '1') else '1';
    sync_clr <= '0';
    -------------------------------------------------------------------------------
    -- このコア内部のローカルな同期回路
    -------------------------------------------------------------------------------
    SYNC_LOCAL : SYNC_LOCAL_HUB
        generic map (
            NAME     => string'("MASTER:SYNC_LOCAL_HUB"),
            PLUG_SIZE=> 6
        )
        port map (
            CLK      => ACLK                    ,  -- In :
            RST      => sync_rst                ,  -- In :
            CLR      => sync_clr                ,  -- In :
            DEBUG    => sync_local_debug        ,  -- In :
            SYNC     => sync_local_signal       ,  -- I/O:
            REQ(1)   => sync_local_m_req (0)    ,  -- In :
            REQ(2)   => sync_local_ar_req(0)    ,  -- In :
            REQ(3)   => sync_local_r_req (0)    ,  -- In :
            REQ(4)   => sync_local_aw_req(0)    ,  -- In :
            REQ(5)   => sync_local_w_req (0)    ,  -- In :
            REQ(6)   => sync_local_b_req (0)    ,  -- In :
            ACK(1)   => sync_local_m_ack (0)    ,  -- Out:
            ACK(2)   => sync_local_ar_ack(0)    ,  -- Out:
            ACK(3)   => sync_local_r_ack (0)    ,  -- Out:
            ACK(4)   => sync_local_aw_ack(0)    ,  -- Out:
            ACK(5)   => sync_local_w_ack (0)    ,  -- Out:
            ACK(6)   => sync_local_b_ack (0)       -- Out:
        );
    -- U_SYNC_PRINT : SYNC_PRINT generic map (NAME => NAME) port map (SYNC => sync_local_signal);
    -------------------------------------------------------------------------------
    -- このコア内部のローカルな同期回路
    -------------------------------------------------------------------------------
    SYNC_TRANSACTION_WRITE : SYNC_LOCAL_HUB
        generic map (
            NAME     => string'("MASTER:SYNC_TRANSACTION_WRITE_HUB"),
            PLUG_SIZE=> 3
        )
        port map (
            CLK      => ACLK                    ,  -- In :
            RST      => sync_rst                ,  -- In :
            CLR      => sync_clr                ,  -- In :
            DEBUG    => sync_local_debug        ,  -- In :
            SYNC     => sync_write_signal       ,  -- I/O:
            REQ(1)   => sync_write_a_req(0)     ,  -- In :
            REQ(2)   => sync_write_d_req(0)     ,  -- In :
            REQ(3)   => sync_write_b_req(0)     ,  -- In :
            ACK(1)   => sync_write_a_ack(0)     ,  -- Out:
            ACK(2)   => sync_write_d_ack(0)     ,  -- Out:
            ACK(3)   => sync_write_b_ack(0)        -- Out:
        );
    -------------------------------------------------------------------------------
    -- このコア内部のローカルな同期回路
    -------------------------------------------------------------------------------
    SYNC_TRANSACTION_READ : SYNC_LOCAL_HUB
        generic map (
            NAME     => string'("MASTER:SYNC_TRANSACTION_READ_HUB"),
            PLUG_SIZE=> 2
        )
        port map (
            CLK      => ACLK                    ,  -- In :
            RST      => sync_rst                ,  -- In :
            CLR      => sync_clr                ,  -- In :
            DEBUG    => sync_local_debug        ,  -- In :
            SYNC     => sync_read_signal        ,  -- I/O:
            REQ(1)   => sync_read_a_req(0)      ,  -- In :
            REQ(2)   => sync_read_d_req(0)      ,  -- In :
            ACK(1)   => sync_read_a_ack(0)      ,  -- Out:
            ACK(2)   => sync_read_d_ack(0)         -- Out:
        );
end MODEL;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--!     @file    axi4_models.vhd                                                 --
--!     @brief   AXI4 Dummy Plug Component Package                               --
--!     @version 1.6.1                                                           --
--!     @date    2016/03/15                                                      --
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>                     --
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--                                                                               --
--      Copyright (C) 2016 Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>           --
--      All rights reserved.                                                     --
--                                                                               --
--      Redistribution and use in source and binary forms, with or without       --
--      modification, are permitted provided that the following conditions       --
--      are met:                                                                 --
--                                                                               --
--        1. Redistributions of source code must retain the above copyright      --
--           notice, this list of conditions and the following disclaimer.       --
--                                                                               --
--        2. Redistributions in binary form must reproduce the above copyright   --
--           notice, this list of conditions and the following disclaimer in     --
--           the documentation and/or other materials provided with the          --
--           distribution.                                                       --
--                                                                               --
--      THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
--      "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
--      LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
--      A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    --
--      OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    --
--      SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT         --
--      LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    --
--      DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    --
--      THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT      --
--      (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    --
--      OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     --
--                                                                               --
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.CORE.REPORT_STATUS_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_PLUG_NUM_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_SIG_VECTOR;
-----------------------------------------------------------------------------------
--! @brief AXI4 Dummy Plug Component Package                                     --
-----------------------------------------------------------------------------------
package AXI4_MODELS is
-----------------------------------------------------------------------------------
--! @brief AXI4_MASTER_PLAYER                                                    --
-----------------------------------------------------------------------------------
component AXI4_MASTER_PLAYER
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING;
        NAME            : --! @brief 固有名詞.
                          STRING;
        READ_ENABLE     : --! @brief リードトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        WRITE_ENABLE    : --! @brief ライトトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                          time    := 0 ns;
        WIDTH           : --! @brief AXI4 チャネルの可変長信号のビット幅.
                          AXI4_SIGNAL_WIDTH_TYPE;
        SYNC_PLUG_NUM   : --! @brief シンクロ用信号のプラグ番号.
                          SYNC_PLUG_NUM_TYPE := 1;
        SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                          integer :=  1;
        DEFAULT_SYNC_IO : --! @brief リードトランザクション/ライトトランザクション
                          --         ウェイト時に完了を待ってから次のコマンドを実行
                          --         するか否かを指定する.
                          boolean := true;
        GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                          integer := 8;
        GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                          integer := 8;
        FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                          --!        アボートするかどうかを指定するフラグ.
                          boolean := true
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        --------------------------------------------------------------------------
        -- グローバルシグナル.
        --------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        --------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        ARADDR          : inout std_logic_vector(WIDTH.ARADDR -1 downto 0);
        ARLEN           : inout std_logic_vector(WIDTH.ALEN   -1 downto 0);
        ARSIZE          : inout AXI4_ASIZE_TYPE;
        ARBURST         : inout AXI4_ABURST_TYPE;
        ARLOCK          : inout std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        ARCACHE         : inout AXI4_ACACHE_TYPE;
        ARPROT          : inout AXI4_APROT_TYPE;
        ARQOS           : inout AXI4_AQOS_TYPE;
        ARREGION        : inout AXI4_AREGION_TYPE;
        ARUSER          : inout std_logic_vector(WIDTH.ARUSER -1 downto 0);
        ARID            : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        ARVALID         : inout std_logic;
        ARREADY         : in    std_logic;
        --------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        --------------------------------------------------------------------------
        RLAST           : in    std_logic;
        RDATA           : in    std_logic_vector(WIDTH.RDATA  -1 downto 0);
        RRESP           : in    AXI4_RESP_TYPE;
        RUSER           : in    std_logic_vector(WIDTH.RUSER  -1 downto 0);
        RID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        RVALID          : in    std_logic;
        RREADY          : inout std_logic;
        --------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        AWADDR          : inout std_logic_vector(WIDTH.AWADDR -1 downto 0);
        AWLEN           : inout std_logic_vector(WIDTH.ALEN   -1 downto 0);
        AWSIZE          : inout AXI4_ASIZE_TYPE;
        AWBURST         : inout AXI4_ABURST_TYPE;
        AWLOCK          : inout std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        AWCACHE         : inout AXI4_ACACHE_TYPE;
        AWPROT          : inout AXI4_APROT_TYPE;
        AWQOS           : inout AXI4_AQOS_TYPE;
        AWREGION        : inout AXI4_AREGION_TYPE;
        AWUSER          : inout std_logic_vector(WIDTH.AWUSER -1 downto 0);
        AWID            : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        AWVALID         : inout std_logic;
        AWREADY         : in    std_logic;
        --------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        --------------------------------------------------------------------------
        WLAST           : inout std_logic;
        WDATA           : inout std_logic_vector(WIDTH.WDATA  -1 downto 0);
        WSTRB           : inout std_logic_vector(WIDTH.WDATA/8-1 downto 0);
        WUSER           : inout std_logic_vector(WIDTH.WUSER  -1 downto 0);
        WID             : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        WVALID          : inout std_logic;
        WREADY          : in    std_logic;
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
        BRESP           : in    AXI4_RESP_TYPE;
        BUSER           : in    std_logic_vector(WIDTH.BUSER  -1 downto 0);
        BID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        BVALID          : in    std_logic;
        BREADY          : inout std_logic;
        --------------------------------------------------------------------------
        -- シンクロ用信号
        --------------------------------------------------------------------------
        SYNC            : inout SYNC_SIG_VECTOR (SYNC_WIDTH   -1 downto 0);
        --------------------------------------------------------------------------
        -- General Purpose Input 信号
        --------------------------------------------------------------------------
        GPI             : in    std_logic_vector(GPI_WIDTH    -1 downto 0) := (others => '0');
        --------------------------------------------------------------------------
        -- General Purpose Output 信号
        --------------------------------------------------------------------------
        GPO             : out   std_logic_vector(GPO_WIDTH    -1 downto 0);
        --------------------------------------------------------------------------
        -- レポートステータス出力.
        --------------------------------------------------------------------------
        REPORT_STATUS   : out   REPORT_STATUS_TYPE;
        --------------------------------------------------------------------------
        -- シミュレーション終了通知信号.
        --------------------------------------------------------------------------
        FINISH          : out   std_logic
    );
end component;
-----------------------------------------------------------------------------------
--! @brief AXI4_SLAVE_PLAYER                                                     --
-----------------------------------------------------------------------------------
component AXI4_SLAVE_PLAYER
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING;
        NAME            : --! @brief 固有名詞.
                          STRING;
        READ_ENABLE     : --! @brief リードトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        WRITE_ENABLE    : --! @brief ライトトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                          time    := 0 ns;
        WIDTH           : --! @brief AXI4 チャネルの可変長信号のビット幅.
                          AXI4_SIGNAL_WIDTH_TYPE;
        SYNC_PLUG_NUM   : --! @brief シンクロ用信号のプラグ番号.
                          SYNC_PLUG_NUM_TYPE := 1;
        SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                          integer :=  1;
        DEFAULT_SYNC_IO : --! @brief リードトランザクション/ライトトランザクション
                          --         ウェイト時に完了を待ってから次のコマンドを実行
                          --         するか否かを指定する.
                          boolean := true;
        GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                          integer := 8;
        GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                          integer := 8;
        FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                          --!        アボートするかどうかを指定するフラグ.
                          boolean := true
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        --------------------------------------------------------------------------
        -- グローバルシグナル.
        --------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        --------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        ARADDR          : in    std_logic_vector(WIDTH.ARADDR -1 downto 0);
        ARLEN           : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
        ARSIZE          : in    AXI4_ASIZE_TYPE;
        ARBURST         : in    AXI4_ABURST_TYPE;
        ARLOCK          : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        ARCACHE         : in    AXI4_ACACHE_TYPE;
        ARPROT          : in    AXI4_APROT_TYPE;
        ARQOS           : in    AXI4_AQOS_TYPE;
        ARREGION        : in    AXI4_AREGION_TYPE;
        ARUSER          : in    std_logic_vector(WIDTH.ARUSER -1 downto 0);
        ARID            : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        ARVALID         : in    std_logic;
        ARREADY         : inout std_logic;
        --------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        --------------------------------------------------------------------------
        RLAST           : inout std_logic;
        RDATA           : inout std_logic_vector(WIDTH.RDATA  -1 downto 0);
        RRESP           : inout AXI4_RESP_TYPE;
        RUSER           : inout std_logic_vector(WIDTH.RUSER  -1 downto 0);
        RID             : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        RVALID          : inout std_logic;
        RREADY          : in    std_logic;
        --------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        AWADDR          : in    std_logic_vector(WIDTH.AWADDR -1 downto 0);
        AWLEN           : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
        AWSIZE          : in    AXI4_ASIZE_TYPE;
        AWBURST         : in    AXI4_ABURST_TYPE;
        AWLOCK          : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        AWCACHE         : in    AXI4_ACACHE_TYPE;
        AWPROT          : in    AXI4_APROT_TYPE;
        AWQOS           : in    AXI4_AQOS_TYPE;
        AWREGION        : in    AXI4_AREGION_TYPE;
        AWUSER          : in    std_logic_vector(WIDTH.AWUSER -1 downto 0);
        AWID            : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        AWVALID         : in    std_logic;
        AWREADY         : inout std_logic;
        --------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        --------------------------------------------------------------------------
        WLAST           : in    std_logic;
        WDATA           : in    std_logic_vector(WIDTH.WDATA  -1 downto 0);
        WSTRB           : in    std_logic_vector(WIDTH.WDATA/8-1 downto 0);
        WUSER           : in    std_logic_vector(WIDTH.WUSER  -1 downto 0);
        WID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        WVALID          : in    std_logic;
        WREADY          : inout std_logic;
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
        BRESP           : inout AXI4_RESP_TYPE;
        BUSER           : inout std_logic_vector(WIDTH.BUSER  -1 downto 0);
        BID             : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        BVALID          : inout std_logic;
        BREADY          : in    std_logic;
        --------------------------------------------------------------------------
        -- シンクロ用信号
        --------------------------------------------------------------------------
        SYNC            : inout SYNC_SIG_VECTOR (SYNC_WIDTH   -1 downto 0);
        --------------------------------------------------------------------------
        -- General Purpose Input 信号
        --------------------------------------------------------------------------
        GPI             : in    std_logic_vector(GPI_WIDTH    -1 downto 0) := (others => '0');
        --------------------------------------------------------------------------
        -- General Purpose Output 信号
        --------------------------------------------------------------------------
        GPO             : out   std_logic_vector(GPO_WIDTH    -1 downto 0);
        --------------------------------------------------------------------------
        -- レポートステータス出力.
        --------------------------------------------------------------------------
        REPORT_STATUS   : out   REPORT_STATUS_TYPE;
        --------------------------------------------------------------------------
        -- シミュレーション終了通知信号.
        --------------------------------------------------------------------------
        FINISH          : out   std_logic
    );
end component;
-----------------------------------------------------------------------------------
--! @brief AXI4_STREAM_MASTER_PLAYER                                             --
-----------------------------------------------------------------------------------
component AXI4_STREAM_MASTER_PLAYER
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING;
        NAME            : --! @brief 固有名詞.
                          STRING;
        OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                          time;
        SYNC_PLUG_NUM   : --! @brief シンクロ用信号のプラグ番号.
                          SYNC_PLUG_NUM_TYPE := 1;
        WIDTH           : --! @brief AXI4 IS WIDTH :
                          AXI4_STREAM_SIGNAL_WIDTH_TYPE;
        SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                          integer :=  1;
        GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                          integer := 8;
        GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                          integer := 8;
        FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                          --!        アボートするかどうかを指定するフラグ.
                          boolean := true
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        ---------------------------------------------------------------------------
        -- グローバルシグナル.
        ---------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        ---------------------------------------------------------------------------
        -- AXI4-Streamシグナル.
        ---------------------------------------------------------------------------
        TDATA           : inout std_logic_vector(WIDTH.DATA  -1 downto 0);
        TSTRB           : inout std_logic_vector(WIDTH.DATA/8-1 downto 0);
        TKEEP           : inout std_logic_vector(WIDTH.DATA/8-1 downto 0);
        TUSER           : inout std_logic_vector(WIDTH.USER  -1 downto 0);
        TDEST           : inout std_logic_vector(WIDTH.DEST  -1 downto 0);
        TID             : inout std_logic_vector(WIDTH.ID    -1 downto 0);
        TLAST           : inout std_logic;
        TVALID          : inout std_logic;
        TREADY          : in    std_logic;
        ---------------------------------------------------------------------------
        -- シンクロ用信号.
        ---------------------------------------------------------------------------
        SYNC            : inout SYNC_SIG_VECTOR (SYNC_WIDTH   -1 downto 0);
        --------------------------------------------------------------------------
        -- General Purpose Input 信号
        --------------------------------------------------------------------------
        GPI             : in    std_logic_vector(GPI_WIDTH-1 downto 0) := (others => '0');
        --------------------------------------------------------------------------
        -- General Purpose Output 信号
        --------------------------------------------------------------------------
        GPO             : out   std_logic_vector(GPO_WIDTH-1 downto 0);
        --------------------------------------------------------------------------
        -- レポートステータス出力.
        --------------------------------------------------------------------------
        REPORT_STATUS   : out   REPORT_STATUS_TYPE;
        --------------------------------------------------------------------------
        -- シミュレーション終了通知信号.
        --------------------------------------------------------------------------
        FINISH          : out   std_logic
    );
end component;
-----------------------------------------------------------------------------------
--! @brief AXI4_STREAM_SLAVE_PLAYER                                              --
-----------------------------------------------------------------------------------
component AXI4_STREAM_SLAVE_PLAYER
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING;
        NAME            : --! @brief 固有名詞.
                          STRING;
        OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                          time;
        SYNC_PLUG_NUM   : --! @brief シンクロ用信号のプラグ番号.
                          SYNC_PLUG_NUM_TYPE := 1;
        WIDTH           : --! @brief AXI4 IS WIDTH :
                          AXI4_STREAM_SIGNAL_WIDTH_TYPE;
        SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                          integer :=  1;
        GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                          integer := 8;
        GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                          integer := 8;
        FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                          --!        アボートするかどうかを指定するフラグ.
                          boolean := true
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        ---------------------------------------------------------------------------
        -- グローバルシグナル.
        ---------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        ---------------------------------------------------------------------------
        -- AXI4-Streamシグナル.
        ---------------------------------------------------------------------------
        TDATA           : in    std_logic_vector(WIDTH.DATA  -1 downto 0);
        TSTRB           : in    std_logic_vector(WIDTH.DATA/8-1 downto 0);
        TKEEP           : in    std_logic_vector(WIDTH.DATA/8-1 downto 0);
        TUSER           : in    std_logic_vector(WIDTH.USER  -1 downto 0);
        TDEST           : in    std_logic_vector(WIDTH.DEST  -1 downto 0);
        TID             : in    std_logic_vector(WIDTH.ID    -1 downto 0);
        TLAST           : in    std_logic;
        TVALID          : in    std_logic;
        TREADY          : inout std_logic;
        ---------------------------------------------------------------------------
        -- シンクロ用信号.
        ---------------------------------------------------------------------------
        SYNC            : inout SYNC_SIG_VECTOR (SYNC_WIDTH   -1 downto 0);
        --------------------------------------------------------------------------
        -- General Purpose Input 信号
        --------------------------------------------------------------------------
        GPI             : in    std_logic_vector(GPI_WIDTH-1 downto 0) := (others => '0');
        --------------------------------------------------------------------------
        -- General Purpose Output 信号
        --------------------------------------------------------------------------
        GPO             : out   std_logic_vector(GPO_WIDTH-1 downto 0);
        --------------------------------------------------------------------------
        -- レポートステータス出力.
        --------------------------------------------------------------------------
        REPORT_STATUS   : out   REPORT_STATUS_TYPE;
        --------------------------------------------------------------------------
        -- シミュレーション終了通知信号.
        --------------------------------------------------------------------------
        FINISH          : out   std_logic
    );
end component;
-----------------------------------------------------------------------------------
--! @brief AXI4_SIGNAL_PRINTER                                                   --
-----------------------------------------------------------------------------------
component AXI4_SIGNAL_PRINTER
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        NAME            : --! @brief 固有名詞.
                          STRING;
        TAG             : --! @brief タグ.
                          STRING;
        READ_ENABLE     : --! @brief リードチャネルを出力するか否かを指定する.
                          boolean   := TRUE;
        WRITE_ENABLE    : --! @brief ライトチャネルを出力するか否かを指定する.
                          boolean   := TRUE;
        TAG_WIDTH       : --! @brief タグを出力する際の文字幅.
                          --!      * TAG_WIDTH>0 =>  TAG_WIDTH幅の右詰.
                          --!      * TAG_WIDTH<0 => -TAG_WIDTH幅の左詰.
                          --!      * TAG_WIDTH=0 => 出力しない.
                          integer := 13;
        TIME_WIDTH      : --! @brief 時間を出力する際の文字幅.
                          --!      * TIME_WIDTH>0 =>  TAG_WIDTH幅の右詰.
                          --!      * TIME_WIDTH<0 => -TAG_WIDTH幅の左詰.
                          --!      * TIEM_WIDTH=0 => 出力しない.
                          integer := 13;
        WIDTH           : --! @brief AXI4 チャネルの可変長信号のビット幅.
                          AXI4_SIGNAL_WIDTH_TYPE
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        --------------------------------------------------------------------------
        -- グローバルシグナル.
        --------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        --------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        ARADDR          : in    std_logic_vector(WIDTH.ARADDR -1 downto 0);
        ARLEN           : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
        ARSIZE          : in    AXI4_ASIZE_TYPE;
        ARBURST         : in    AXI4_ABURST_TYPE;
        ARLOCK          : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        ARCACHE         : in    AXI4_ACACHE_TYPE;
        ARPROT          : in    AXI4_APROT_TYPE;
        ARQOS           : in    AXI4_AQOS_TYPE;
        ARREGION        : in    AXI4_AREGION_TYPE;
        ARUSER          : in    std_logic_vector(WIDTH.ARUSER -1 downto 0);
        ARID            : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        ARVALID         : in    std_logic;
        ARREADY         : in    std_logic;
        --------------------------------------------------------------------------
        -- リードチャネルシグナル.
        --------------------------------------------------------------------------
        RLAST           : in    std_logic;
        RDATA           : in    std_logic_vector(WIDTH.RDATA  -1 downto 0);
        RRESP           : in    AXI4_RESP_TYPE;
        RUSER           : in    std_logic_vector(WIDTH.RUSER  -1 downto 0);
        RID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        RVALID          : in    std_logic;
        RREADY          : in    std_logic;
        --------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        AWADDR          : in    std_logic_vector(WIDTH.AWADDR -1 downto 0);
        AWLEN           : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
        AWSIZE          : in    AXI4_ASIZE_TYPE;
        AWBURST         : in    AXI4_ABURST_TYPE;
        AWLOCK          : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        AWCACHE         : in    AXI4_ACACHE_TYPE;
        AWPROT          : in    AXI4_APROT_TYPE;
        AWQOS           : in    AXI4_AQOS_TYPE;
        AWREGION        : in    AXI4_AREGION_TYPE;
        AWUSER          : in    std_logic_vector(WIDTH.AWUSER -1 downto 0);
        AWID            : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        AWVALID         : in    std_logic;
        AWREADY         : in    std_logic;
        --------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        --------------------------------------------------------------------------
        WLAST           : in    std_logic;
        WDATA           : in    std_logic_vector(WIDTH.WDATA  -1 downto 0);
        WSTRB           : in    std_logic_vector(WIDTH.WDATA/8-1 downto 0);
        WUSER           : in    std_logic_vector(WIDTH.WUSER  -1 downto 0);
        WID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        WVALID          : in    std_logic;
        WREADY          : in    std_logic;
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
        BRESP           : in    AXI4_RESP_TYPE;
        BUSER           : in    std_logic_vector(WIDTH.BUSER  -1 downto 0);
        BID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        BVALID          : in    std_logic;
        BREADY          : in    std_logic
    );
end component;
-----------------------------------------------------------------------------------
--! @brief AXI4_STREAM_SIGNAL_PRINTER                                            --
-----------------------------------------------------------------------------------
component AXI4_STREAM_SIGNAL_PRINTER
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        NAME            : --! @brief 固有名詞.
                          STRING;
        TAG             : --! @brief タグ.
                          STRING;
        TAG_WIDTH       : --! @brief タグを出力する際の文字幅.
                          --!      * TAG_WIDTH>0 =>  TAG_WIDTH幅の右詰.
                          --!      * TAG_WIDTH<0 => -TAG_WIDTH幅の左詰.
                          --!      * TAG_WIDTH=0 => 出力しない.
                          integer := 13;
        TIME_WIDTH      : --! @brief 時間を出力する際の文字幅.
                          --!      * TIME_WIDTH>0 =>  TAG_WIDTH幅の右詰.
                          --!      * TIME_WIDTH<0 => -TAG_WIDTH幅の左詰.
                          --!      * TIEM_WIDTH=0 => 出力しない.
                          integer := 13;
        WIDTH           : --! @brief AXI4 チャネルの可変長信号のビット幅.
                          AXI4_STREAM_SIGNAL_WIDTH_TYPE
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        --------------------------------------------------------------------------
        -- グローバルシグナル.
        --------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        ---------------------------------------------------------------------------
        -- AXI4-Streamシグナル.
        ---------------------------------------------------------------------------
        TDATA           : in    std_logic_vector(WIDTH.DATA  -1 downto 0);
        TSTRB           : in    std_logic_vector(WIDTH.DATA/8-1 downto 0);
        TKEEP           : in    std_logic_vector(WIDTH.DATA/8-1 downto 0);
        TUSER           : in    std_logic_vector(WIDTH.USER  -1 downto 0);
        TDEST           : in    std_logic_vector(WIDTH.DEST  -1 downto 0);
        TID             : in    std_logic_vector(WIDTH.ID    -1 downto 0);
        TLAST           : in    std_logic;
        TVALID          : in    std_logic;
        TREADY          : in    std_logic
    );
end component;
end AXI4_MODELS;
-----------------------------------------------------------------------------------
--!     @file    axi4_slave_player.vhd
--!     @brief   AXI4 Slave Dummy Plug Player.
--!     @version 1.6.1
--!     @date    2016/3/15
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.CORE.REPORT_STATUS_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_PLUG_NUM_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_SIG_VECTOR;
-----------------------------------------------------------------------------------
--! @brief   AXI4 Slave Dummy Plug Player.
-----------------------------------------------------------------------------------
entity  AXI4_SLAVE_PLAYER is
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING;
        NAME            : --! @brief 固有名詞.
                          STRING;
        READ_ENABLE     : --! @brief リードトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        WRITE_ENABLE    : --! @brief ライトトランザクションの可/不可を指定する.
                          boolean   := TRUE;
        OUTPUT_DELAY    : --! @brief 出力信号遅延時間
                          time    := 0 ns;
        WIDTH           : --! @brief AXI4 チャネルの可変長信号のビット幅.
                          AXI4_SIGNAL_WIDTH_TYPE;
        SYNC_PLUG_NUM   : --! @brief シンクロ用信号のプラグ番号.
                          SYNC_PLUG_NUM_TYPE := 1;
        SYNC_WIDTH      : --! @brief シンクロ用信号の本数.
                          integer :=  1;
        DEFAULT_SYNC_IO : --! @brief リードトランザクション/ライトトランザクション
                          --         ウェイト時に完了を待ってから次のコマンドを実行
                          --         するか否かを指定する.
                          boolean := true;
        GPI_WIDTH       : --! @brief GPI(General Purpose Input)信号のビット幅.
                          integer := 8;
        GPO_WIDTH       : --! @brief GPO(General Purpose Output)信号のビット幅.
                          integer := 8;
        FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                          --!        アボートするかどうかを指定するフラグ.
                          boolean := true
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        --------------------------------------------------------------------------
        -- グローバルシグナル.
        --------------------------------------------------------------------------
        ACLK            : in    std_logic;
        ARESETn         : in    std_logic;
        --------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        ARADDR          : in    std_logic_vector(WIDTH.ARADDR -1 downto 0);
        ARLEN           : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
        ARSIZE          : in    AXI4_ASIZE_TYPE;
        ARBURST         : in    AXI4_ABURST_TYPE;
        ARLOCK          : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        ARCACHE         : in    AXI4_ACACHE_TYPE;
        ARPROT          : in    AXI4_APROT_TYPE;
        ARQOS           : in    AXI4_AQOS_TYPE;
        ARREGION        : in    AXI4_AREGION_TYPE;
        ARUSER          : in    std_logic_vector(WIDTH.ARUSER -1 downto 0);
        ARID            : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        ARVALID         : in    std_logic;
        ARREADY         : inout std_logic;
        --------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        --------------------------------------------------------------------------
        RLAST           : inout std_logic;
        RDATA           : inout std_logic_vector(WIDTH.RDATA  -1 downto 0);
        RRESP           : inout AXI4_RESP_TYPE;
        RUSER           : inout std_logic_vector(WIDTH.RUSER  -1 downto 0);
        RID             : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        RVALID          : inout std_logic;
        RREADY          : in    std_logic;
        --------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        --------------------------------------------------------------------------
        AWADDR          : in    std_logic_vector(WIDTH.AWADDR -1 downto 0);
        AWLEN           : in    std_logic_vector(WIDTH.ALEN   -1 downto 0);
        AWSIZE          : in    AXI4_ASIZE_TYPE;
        AWBURST         : in    AXI4_ABURST_TYPE;
        AWLOCK          : in    std_logic_vector(WIDTH.ALOCK  -1 downto 0);
        AWCACHE         : in    AXI4_ACACHE_TYPE;
        AWPROT          : in    AXI4_APROT_TYPE;
        AWQOS           : in    AXI4_AQOS_TYPE;
        AWREGION        : in    AXI4_AREGION_TYPE;
        AWUSER          : in    std_logic_vector(WIDTH.AWUSER -1 downto 0);
        AWID            : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        AWVALID         : in    std_logic;
        AWREADY         : inout std_logic;
        --------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        --------------------------------------------------------------------------
        WLAST           : in    std_logic;
        WDATA           : in    std_logic_vector(WIDTH.WDATA  -1 downto 0);
        WSTRB           : in    std_logic_vector(WIDTH.WDATA/8-1 downto 0);
        WUSER           : in    std_logic_vector(WIDTH.WUSER  -1 downto 0);
        WID             : in    std_logic_vector(WIDTH.ID     -1 downto 0);
        WVALID          : in    std_logic;
        WREADY          : inout std_logic;
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
        BRESP           : inout AXI4_RESP_TYPE;
        BUSER           : inout std_logic_vector(WIDTH.BUSER  -1 downto 0);
        BID             : inout std_logic_vector(WIDTH.ID     -1 downto 0);
        BVALID          : inout std_logic;
        BREADY          : in    std_logic;
        --------------------------------------------------------------------------
        -- シンクロ用信号
        --------------------------------------------------------------------------
        SYNC            : inout SYNC_SIG_VECTOR (SYNC_WIDTH   -1 downto 0);
        --------------------------------------------------------------------------
        -- General Purpose Input 信号
        --------------------------------------------------------------------------
        GPI             : in    std_logic_vector(GPI_WIDTH    -1 downto 0) := (others => '0');
        --------------------------------------------------------------------------
        -- General Purpose Output 信号
        --------------------------------------------------------------------------
        GPO             : out   std_logic_vector(GPO_WIDTH    -1 downto 0);
        --------------------------------------------------------------------------
        -- レポートステータス出力.
        --------------------------------------------------------------------------
        REPORT_STATUS   : out   REPORT_STATUS_TYPE;
        --------------------------------------------------------------------------
        -- シミュレーション終了通知信号.
        --------------------------------------------------------------------------
        FINISH          : out   std_logic
    );
end AXI4_SLAVE_PLAYER;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.AXI4_CORE.all;
use     DUMMY_PLUG.CORE.all;
use     DUMMY_PLUG.SYNC.all;
-----------------------------------------------------------------------------------
--! @brief   AXI4 Slave Dummy Plug Player.
-----------------------------------------------------------------------------------
architecture MODEL of AXI4_SLAVE_PLAYER is
    -------------------------------------------------------------------------------
    --! SYNC 制御信号
    -------------------------------------------------------------------------------
    signal    sync_rst          : std_logic := '0';
    signal    sync_clr          : std_logic := '0';
    signal    sync_req          : SYNC_REQ_VECTOR(SYNC'range);
    signal    sync_ack          : SYNC_ACK_VECTOR(SYNC'range);
    signal    sync_debug        : boolean   := FALSE;
    -------------------------------------------------------------------------------
    --! ローカル同期制御信号
    -------------------------------------------------------------------------------
    constant  SYNC_LOCAL_WAIT   : integer := 2;
    signal    sync_local_signal : SYNC_SIG_TYPE;
    signal    sync_local_debug  : boolean := FALSE;
    signal    sync_local_m_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_m_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_ar_req : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_ar_ack : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_r_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_r_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_aw_req : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_aw_ack : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_w_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_w_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_local_b_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_local_b_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_dummy_req    : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_dummy_ack    : SYNC_ACK_VECTOR(0 downto 0) := (others => '0');
    signal    sync_read_signal  : SYNC_SIG_TYPE;
    signal    sync_read_a_req   : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_read_a_ack   : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_read_d_req   : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_read_d_ack   : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_write_signal : SYNC_SIG_TYPE;
    signal    sync_write_a_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_write_a_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_write_d_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_write_d_ack  : SYNC_ACK_VECTOR(0 downto 0);
    signal    sync_write_b_req  : SYNC_REQ_VECTOR(0 downto 0) := (others => 0);
    signal    sync_write_b_ack  : SYNC_ACK_VECTOR(0 downto 0);
    -------------------------------------------------------------------------------
    --! トランザクション用信号.
    -------------------------------------------------------------------------------
    signal    tran_read         : AXI4_TRANSACTION_SIGNAL_TYPE;
    signal    tran_write        : AXI4_TRANSACTION_SIGNAL_TYPE;
    constant  tran_dummy        : AXI4_TRANSACTION_SIGNAL_TYPE := AXI4_TRANSACTION_SIGNAL_NULL;
    -------------------------------------------------------------------------------
    --! 各チャネルの状態出力.
    -------------------------------------------------------------------------------
    signal    reports           : REPORT_STATUS_VECTOR(1 to 6) := (1 to 6 => REPORT_STATUS_NULL);
begin
    -------------------------------------------------------------------------------
    -- メイン用のプレイヤー
    -------------------------------------------------------------------------------
    M: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME             ,
            CHANNEL             => AXI4_CHANNEL_M   ,
            MASTER              => FALSE            ,
            SLAVE               => FALSE            ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => sync_req         , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_m_req , -- Out:
            SYNC_LOCAL_ACK      => sync_local_m_ack , -- In :
            SYNC_TRANS_REQ      => sync_dummy_req   , -- Out:
            SYNC_TRANS_ACK      => sync_dummy_ack   , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_dummy       , -- In :
            TRAN_O              => open             , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => GPO              , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(1)       , -- Out:
            FINISH              => FINISH             -- Out:
        );
    -------------------------------------------------------------------------------
    -- リードアドレスチャネルプレイヤー
    -------------------------------------------------------------------------------
    AR: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".AR"     ,
            CHANNEL             => AXI4_CHANNEL_AR  ,
            MASTER              => FALSE            ,
            SLAVE               => TRUE             ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => ARREADY          , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_ar_req, -- Out:
            SYNC_LOCAL_ACK      => sync_local_ar_ack, -- In :
            SYNC_TRANS_REQ      => sync_read_a_req  , -- Out:
            SYNC_TRANS_ACK      => sync_read_a_ack  , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_read        , -- In :
            TRAN_O              => tran_read        , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(2)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- リードデータチャネルプレイヤー
    -------------------------------------------------------------------------------
    R: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".R"      ,
            CHANNEL             => AXI4_CHANNEL_R   ,
            MASTER              => FALSE            ,
            SLAVE               => TRUE             ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => RVALID           , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => RLAST            , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => RDATA            , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => RRESP            , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => RUSER            , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => RID              , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_r_req , -- Out:
            SYNC_LOCAL_ACK      => sync_local_r_ack , -- In :
            SYNC_TRANS_REQ      => sync_read_d_req  , -- Out:
            SYNC_TRANS_ACK      => sync_read_d_ack  , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_read        , -- In :
            TRAN_O              => open             , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(3)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- ライトアドレスチャネルプレイヤー
    -------------------------------------------------------------------------------
    AW: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".AW"     ,
            CHANNEL             => AXI4_CHANNEL_AW  ,
            MASTER              => FALSE            ,
            SLAVE               => TRUE             ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => AWREADY          , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_aw_req, -- Out:
            SYNC_LOCAL_ACK      => sync_local_aw_ack, -- In :
            SYNC_TRANS_REQ      => sync_write_a_req , -- Out:
            SYNC_TRANS_ACK      => sync_write_a_ack , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_write       , -- In :
            TRAN_O              => tran_write       , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(4)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- ライトデータチャネルプレイヤー
    -------------------------------------------------------------------------------
    W: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".W"      ,
            CHANNEL             => AXI4_CHANNEL_W   ,
            MASTER              => FALSE            ,
            SLAVE               => TRUE             ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => WREADY           , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => open             , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => open             , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => open             , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => open             , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_w_req , -- Out:
            SYNC_LOCAL_ACK      => sync_local_w_ack , -- In :
            SYNC_TRANS_REQ      => sync_write_d_req , -- Out:
            SYNC_TRANS_ACK      => sync_write_d_ack , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_write       , -- In :
            TRAN_O              => open             , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(5)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- ライト応答チャネルプレイヤー
    -------------------------------------------------------------------------------
    B: AXI4_CHANNEL_PLAYER 
        generic map (
            SCENARIO_FILE       => SCENARIO_FILE    ,
            NAME                => NAME             ,
            FULL_NAME           => NAME & ".B"      ,
            CHANNEL             => AXI4_CHANNEL_B   ,
            MASTER              => FALSE            ,
            SLAVE               => TRUE             ,
            READ_ENABLE         => READ_ENABLE      ,
            WRITE_ENABLE        => WRITE_ENABLE     ,
            OUTPUT_DELAY        => OUTPUT_DELAY     ,
            WIDTH               => WIDTH            ,
            SYNC_WIDTH          => SYNC_WIDTH       ,
            SYNC_LOCAL_WAIT     => SYNC_LOCAL_WAIT  ,
            DEFAULT_SYNC_IO     => DEFAULT_SYNC_IO  ,
            GPI_WIDTH           => GPI_WIDTH        ,
            GPO_WIDTH           => GPO_WIDTH        ,
            FINISH_ABORT        => FINISH_ABORT
        )
        port map(
            -----------------------------------------------------------------------
            -- グローバルシグナル.
            -----------------------------------------------------------------------
            ACLK                => ACLK             , -- In :
            ARESETn             => ARESETn          , -- In :
            -----------------------------------------------------------------------
            -- リードアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            ARADDR_I            => ARADDR           , -- In :
            ARADDR_O            => open             , -- Out:
            ARLEN_I             => ARLEN            , -- In :
            ARLEN_O             => open             , -- Out:
            ARSIZE_I            => ARSIZE           , -- In :
            ARSIZE_O            => open             , -- Out:
            ARBURST_I           => ARBURST          , -- In :
            ARBURST_O           => open             , -- Out:
            ARLOCK_I            => ARLOCK           , -- In :
            ARLOCK_O            => open             , -- Out:
            ARCACHE_I           => ARCACHE          , -- In :
            ARCACHE_O           => open             , -- Out:
            ARPROT_I            => ARPROT           , -- In :
            ARPROT_O            => open             , -- Out:
            ARQOS_I             => ARQOS            , -- In :
            ARQOS_O             => open             , -- Out:
            ARREGION_I          => ARREGION         , -- In :
            ARREGION_O          => open             , -- Out:
            ARUSER_I            => ARUSER           , -- In :
            ARUSER_O            => open             , -- Out:
            ARID_I              => ARID             , -- In :
            ARID_O              => open             , -- Out:
            ARVALID_I           => ARVALID          , -- In :
            ARVALID_O           => open             , -- Out:
            ARREADY_I           => ARREADY          , -- In :
            ARREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- リードデータチャネルシグナル.
            -----------------------------------------------------------------------
            RVALID_I            => RVALID           , -- In :
            RVALID_O            => open             , -- Out:
            RLAST_I             => RLAST            , -- In :
            RLAST_O             => open             , -- Out:
            RDATA_I             => RDATA            , -- In :
            RDATA_O             => open             , -- Out:
            RRESP_I             => RRESP            , -- In :
            RRESP_O             => open             , -- Out:
            RUSER_I             => RUSER            , -- In :
            RUSER_O             => open             , -- Out:
            RID_I               => RID              , -- In :
            RID_O               => open             , -- Out:
            RREADY_I            => RREADY           , -- In :
            RREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトアドレスチャネルシグナル.
            -----------------------------------------------------------------------
            AWADDR_I            => AWADDR           , -- In :
            AWADDR_O            => open             , -- Out:
            AWLEN_I             => AWLEN            , -- In :
            AWLEN_O             => open             , -- Out:
            AWSIZE_I            => AWSIZE           , -- In :
            AWSIZE_O            => open             , -- Out:
            AWBURST_I           => AWBURST          , -- In :
            AWBURST_O           => open             , -- Out:
            AWLOCK_I            => AWLOCK           , -- In :
            AWLOCK_O            => open             , -- Out:
            AWCACHE_I           => AWCACHE          , -- In :
            AWCACHE_O           => open             , -- Out:
            AWPROT_I            => AWPROT           , -- In :
            AWPROT_O            => open             , -- Out:
            AWQOS_I             => AWQOS            , -- In :
            AWQOS_O             => open             , -- Out:
            AWREGION_I          => AWREGION         , -- In :
            AWREGION_O          => open             , -- Out:
            AWUSER_I            => AWUSER           , -- In :
            AWUSER_O            => open             , -- Out:
            AWID_I              => AWID             , -- In :
            AWID_O              => open             , -- Out:
            AWVALID_I           => AWVALID          , -- In :
            AWVALID_O           => open             , -- Out:
            AWREADY_I           => AWREADY          , -- In :
            AWREADY_O           => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライトデータチャネルシグナル.
            -----------------------------------------------------------------------
            WVALID_I            => WVALID           , -- In :
            WVALID_O            => open             , -- Out:
            WLAST_I             => WLAST            , -- In :
            WLAST_O             => open             , -- Out:
            WDATA_I             => WDATA            , -- In :
            WDATA_O             => open             , -- Out:
            WSTRB_I             => WSTRB            , -- In :
            WSTRB_O             => open             , -- Out:
            WUSER_I             => WUSER            , -- In :
            WUSER_O             => open             , -- Out:
            WID_I               => WID              , -- In :
            WID_O               => open             , -- Out:
            WREADY_I            => WREADY           , -- In :
            WREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- ライト応答チャネルシグナル.
            -----------------------------------------------------------------------
            BVALID_I            => BVALID           , -- In :
            BVALID_O            => BVALID           , -- Out:
            BRESP_I             => BRESP            , -- In :
            BRESP_O             => BRESP            , -- Out:
            BUSER_I             => BUSER            , -- In :
            BUSER_O             => BUSER            , -- Out:
            BID_I               => BID              , -- In :
            BID_O               => BID              , -- Out:
            BREADY_I            => BREADY           , -- In :
            BREADY_O            => open             , -- Out:
            -----------------------------------------------------------------------
            -- シンクロ用信号
            -----------------------------------------------------------------------
            SYNC_REQ            => open             , -- Out:
            SYNC_ACK            => sync_ack         , -- In :
            SYNC_LOCAL_REQ      => sync_local_b_req , -- Out:
            SYNC_LOCAL_ACK      => sync_local_b_ack , -- In :
            SYNC_TRANS_REQ      => sync_write_b_req , -- Out:
            SYNC_TRANS_ACK      => sync_write_b_ack , -- In :
            -----------------------------------------------------------------------
            -- トランザクション用信号.
            -----------------------------------------------------------------------
            TRAN_I              => tran_write       , -- In :
            TRAN_O              => open             , -- Out:
            ----------------------------------------------------------------------
            -- GPIO
            ----------------------------------------------------------------------
            GPI                 => GPI              , -- In :
            GPO                 => open             , -- Out:
            -----------------------------------------------------------------------
            -- 各種状態出力.
            -----------------------------------------------------------------------
            REPORT_STATUS       => reports(6)       , -- Out:
            FINISH              => open               -- Out:
        );
    -------------------------------------------------------------------------------
    -- レポートの集計.
    -------------------------------------------------------------------------------
    REPORT_STATUS <= MARGE_REPORT_STATUS(reports);
    -------------------------------------------------------------------------------
    -- このコア用の同期回路
    -------------------------------------------------------------------------------
    SYNC_DRIVER: for i in SYNC'range generate
        UNIT: SYNC_SIG_DRIVER
            generic map (
                NAME     => string'("SLAVE:SYNC"),
                PLUG_NUM => SYNC_PLUG_NUM
            )
            port map (
                CLK      => ACLK                ,  -- In :
                RST      => sync_rst            ,  -- In :
                CLR      => sync_clr            ,  -- In :
                DEBUG    => sync_debug          ,  -- In :
                SYNC     => SYNC(i)             ,  -- I/O:
                REQ      => sync_req(i)         ,  -- In :
                ACK      => sync_ack(i)            -- Out:
            );
    end generate;
    sync_rst <= '0' when (ARESETn = '1') else '1';
    sync_clr <= '0';
    -------------------------------------------------------------------------------
    -- このコア内部のローカルな同期回路
    -------------------------------------------------------------------------------
    SYNC_LOCAL : SYNC_LOCAL_HUB 
        generic map (
            NAME     => string'("SLAVE:SYNC_LOCAL_HUB"),
            PLUG_SIZE=> 6
        )
        port map (
            CLK      => ACLK                    ,  -- In :
            RST      => sync_rst                ,  -- In :
            CLR      => sync_clr                ,  -- In :
            DEBUG    => sync_local_debug        ,  -- In :
            SYNC     => sync_local_signal       ,  -- I/O:
            REQ(1)   => sync_local_m_req (0)    ,  -- In :
            REQ(2)   => sync_local_ar_req(0)    ,  -- In :
            REQ(3)   => sync_local_r_req (0)    ,  -- In :
            REQ(4)   => sync_local_aw_req(0)    ,  -- In :
            REQ(5)   => sync_local_w_req (0)    ,  -- In :
            REQ(6)   => sync_local_b_req (0)    ,  -- In :
            ACK(1)   => sync_local_m_ack (0)    ,  -- Out:
            ACK(2)   => sync_local_ar_ack(0)    ,  -- Out:
            ACK(3)   => sync_local_r_ack (0)    ,  -- Out:
            ACK(4)   => sync_local_aw_ack(0)    ,  -- Out:
            ACK(5)   => sync_local_w_ack (0)    ,  -- Out:
            ACK(6)   => sync_local_b_ack (0)       -- Out:
        );
    -- U_SYNC_PRINT : SYNC_PRINT generic map (NAME => NAME) port map (SYNC => sync_local_signal);
    -------------------------------------------------------------------------------
    -- このコア内部のローカルな同期回路
    -------------------------------------------------------------------------------
    SYNC_TRANSACTION_WRITE : SYNC_LOCAL_HUB
        generic map (
            NAME     => string'("SLAVE:SYNC_TRANSACTION_WRITE_HUB"),
            PLUG_SIZE=> 3
        )
        port map (
            CLK      => ACLK                    ,  -- In :
            RST      => sync_rst                ,  -- In :
            CLR      => sync_clr                ,  -- In :
            DEBUG    => sync_local_debug        ,  -- In :
            SYNC     => sync_write_signal       ,  -- I/O:
            REQ(1)   => sync_write_a_req(0)     ,  -- In :
            REQ(2)   => sync_write_d_req(0)     ,  -- In :
            REQ(3)   => sync_write_b_req(0)     ,  -- In :
            ACK(1)   => sync_write_a_ack(0)     ,  -- Out:
            ACK(2)   => sync_write_d_ack(0)     ,  -- Out:
            ACK(3)   => sync_write_b_ack(0)        -- Out:
        );
    -------------------------------------------------------------------------------
    -- このコア内部のローカルな同期回路
    -------------------------------------------------------------------------------
    SYNC_TRANSACTION_READ : SYNC_LOCAL_HUB
        generic map (
            NAME     => string'("SLAVE:SYNC_TRANSACTION_READ_HUB"),
            PLUG_SIZE=> 2
        )
        port map (
            CLK      => ACLK                    ,  -- In :
            RST      => sync_rst                ,  -- In :
            CLR      => sync_clr                ,  -- In :
            DEBUG    => sync_local_debug        ,  -- In :
            SYNC     => sync_read_signal        ,  -- I/O:
            REQ(1)   => sync_read_a_req(0)      ,  -- In :
            REQ(2)   => sync_read_d_req(0)      ,  -- In :
            ACK(1)   => sync_read_a_ack(0)      ,  -- Out:
            ACK(2)   => sync_read_d_ack(0)         -- Out:
        );
end MODEL;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--!     @file    marchal.vhd
--!     @brief   Marchal Dummy Plug Player.
--!     @version 1.6.1
--!     @date    2016/3/15
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012-2016 Ichiro Kawazome
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
library ieee;
use     ieee.std_logic_1164.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.CORE.REPORT_STATUS_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_PLUG_NUM_TYPE;
use     DUMMY_PLUG.SYNC.SYNC_SIG_VECTOR;
-----------------------------------------------------------------------------------
--! @brief   MARCHAL
-----------------------------------------------------------------------------------
entity  MARCHAL is
    -------------------------------------------------------------------------------
    -- ジェネリック変数.
    -------------------------------------------------------------------------------
    generic (
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING;
        NAME            : --! @brief 固有名詞.
                          STRING;
        SYNC_PLUG_NUM   : --! @brief シンクロ用信号のプラグ番号.
                          SYNC_PLUG_NUM_TYPE := 1;
        SYNC_WIDTH      : --! @brief シンクロ用信号のビット幅.
                          integer :=  1;
        FINISH_ABORT    : --! @brief FINISH コマンド実行時にシミュレーションを
                          --!        アボートするかどうかを指定するフラグ.
                          boolean := true
    );
    -------------------------------------------------------------------------------
    -- 入出力ポートの定義.
    -------------------------------------------------------------------------------
    port(
        --------------------------------------------------------------------------
        --! グローバルシグナル.
        --------------------------------------------------------------------------
        CLK             : in    std_logic;
        --------------------------------------------------------------------------
        --! グローバルシグナル.
        --------------------------------------------------------------------------
        RESET           : out   std_logic;
        --------------------------------------------------------------------------
        --! シンクロ用信号
        --------------------------------------------------------------------------
        SYNC            : inout SYNC_SIG_VECTOR(SYNC_WIDTH-1 downto 0);
        --------------------------------------------------------------------------
        --! レポートステータス出力.
        --------------------------------------------------------------------------
        REPORT_STATUS   : out   REPORT_STATUS_TYPE;
        --------------------------------------------------------------------------
        --! シミュレーション終了通知信号.
        --------------------------------------------------------------------------
        FINISH          : out   std_logic
    );
end MARCHAL;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.CORE.all;
use     DUMMY_PLUG.SYNC.all;
use     DUMMY_PLUG.UTIL.all;
use     DUMMY_PLUG.VOCAL.all;
use     DUMMY_PLUG.READER.all;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
architecture MODEL of MARCHAL is
    -------------------------------------------------------------------------------
    --! SYNC 制御信号
    -------------------------------------------------------------------------------
    signal    sync_req          : SYNC_REQ_VECTOR(SYNC'range);
    signal    sync_ack          : SYNC_ACK_VECTOR(SYNC'range);
    signal    sync_rst          : std_logic := '0';
    signal    sync_clr          : std_logic := '0';
    signal    sync_debug        : boolean   := FALSE;
    -------------------------------------------------------------------------------
    --! TIME_KEEPER
    -------------------------------------------------------------------------------
    subtype   TIMER_TIME_TYPE   is unsigned(63 downto 0);
    constant  DEFAULT_TIMEOUT   : TIMER_TIME_TYPE := (others => '1');
    signal    timer_reset       : boolean := TRUE;
    signal    timer_valid       : boolean := TRUE;
    signal    timer             : TIMER_TIME_TYPE := DEFAULT_TIMEOUT;
    signal    timeout_time      : TIMER_TIME_TYPE := DEFAULT_TIMEOUT;
begin
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
    MAIN: process
        file      stream        : TEXT;
        variable  core          : CORE_TYPE;
        variable  operation     : OPERATION_TYPE;
        variable  keyword       : STRING(1 to 3);
        constant  KEY_SAY       : STRING(1 to 3) := "SAY";
        constant  KEY_DEBUG     : STRING(1 to 3) := "DEB";
        constant  KEY_REPORT    : STRING(1 to 3) := "REP";
        constant  KEY_SYNC      : STRING(1 to 3) := "SYN";
        constant  KEY_WAIT      : STRING(1 to 3) := "WAI";
        constant  KEY_TIMEOUT   : STRING(1 to 3) := "TIM";
        ---------------------------------------------------------------------------
        --! @brief  TIMEOUTオペレーション.タイムアウトの設定を行う.
        ---------------------------------------------------------------------------
        procedure EXECUTE_TIMEOUT is
            constant PROC_NAME  : string := "EXECUTE_TIMEOUT";
            variable next_event : EVENT_TYPE;
            variable valid      : boolean;
            variable count      : std_logic_vector(TIMER_TIME_TYPE'range);
            variable valid_len  : integer;
            variable count_len  : integer;
        begin
            REPORT_DEBUG(core, PROC_NAME, "BEGIN");
            SEEK_EVENT(core, stream, next_event);
            case next_event is
                when EVENT_SCALAR =>
                    READ_EVENT(core, stream, EVENT_SCALAR);
                    STRING_TO_STD_LOGIC_VECTOR(core.str_buf(1 to core.str_len), count, count_len);
                    if (count_len > 0) then
                        timeout_time <= unsigned(count);
                    else
                        STRING_TO_BOOLEAN     (core.str_buf(1 to core.str_len), valid, valid_len);
                        if (valid_len > 0) then
                            timer_valid <= valid;
                        else
                            READ_ERROR(core, PROC_NAME, "Invalid Parameter(" &
                                       core.str_buf(1 to core.str_len) & ")");
                        end if;
                    end if;
                when others =>
                    READ_ERROR(core, PROC_NAME, "SEEK_EVENT NG");
            end case;
            REPORT_DEBUG(core, PROC_NAME, "END");
        end procedure;
        ---------------------------------------------------------------------------
        --! @brief  WAITオペレーション. 指定された条件まで待機.
        ---------------------------------------------------------------------------
        procedure EXECUTE_WAIT is
            constant PROC_NAME  : string := "EXECUTE_WAIT";
            variable next_event : EVENT_TYPE;
            variable wait_count : integer;
            variable scan_len   : integer;
         begin
            REPORT_DEBUG(core, PROC_NAME, "BEGIN");
            SEEK_EVENT(core, stream, next_event);
            case next_event is
                when EVENT_SCALAR =>
                    READ_EVENT(core, stream, EVENT_SCALAR);
                    STRING_TO_INTEGER(core.str_buf(1 to core.str_len), wait_count, scan_len);
                    if (scan_len = 0) then
                        wait_count := 1;
                    end if;
                    if (wait_count > 0) then
                        for i in 1 to wait_count loop
                            wait until (CLK'event and CLK = '1');
                        end loop;
                    end if;
                    wait_count := 0;
                when others =>
                    READ_ERROR(core, PROC_NAME, "SEEK_EVENT NG");
            end case;
            REPORT_DEBUG(core, PROC_NAME, "END");
        end procedure;
        ---------------------------------------------------------------------------
        --! @brief  SYNCオペレーション. 
        ---------------------------------------------------------------------------
        procedure EXECUTE_SYNC(operation: in OPERATION_TYPE) is
            constant PROC_NAME  : string := "EXECUTE_SYNC";
            variable port_num   : integer;
            variable wait_num   : integer;
        begin
            REPORT_DEBUG  (core, PROC_NAME, "BEGIN");
            READ_SYNC_ARGS(core, stream, operation, port_num, wait_num);
            REPORT_DEBUG  (core, PROC_NAME, "PORT=" & INTEGER_TO_STRING(port_num) &
                                           " WAIT=" & INTEGER_TO_STRING(wait_num));
            if (SYNC_REQ'low <= port_num and port_num <= SYNC_REQ'high) then
                CORE_SYNC(core, port_num, wait_num, SYNC_REQ, SYNC_ACK);
            end if;
            REPORT_DEBUG  (core, PROC_NAME, "END");
        end procedure;
    begin
        ---------------------------------------------------------------------------
        --! ダミープラグコアの初期化.
        ---------------------------------------------------------------------------
        CORE_INIT(
            SELF        => core,          --! 初期化するコア変数.
            NAME        => NAME,          --! コアの名前.
            STREAM      => stream,        --! シナリオのストリーム.
            STREAM_NAME => SCENARIO_FILE, --! シナリオのストリーム名.
            OPERATION   => operation      --! コアのオペレーション.
        );
        ---------------------------------------------------------------------------
        --! リセット信号の生成.
        ---------------------------------------------------------------------------
        REPORT_STATUS <= core.report_status;
        sync_req <= (0 => 0, others => -1);
        FINISH   <= '0';
        sync_rst <= '1';
        sync_clr <= '0';
        RESET    <= '1';
        wait until(CLK'event and CLK = '1');
        sync_rst <= '0';
        RESET    <= '0';
        wait until(CLK'event and CLK = '1');
        ---------------------------------------------------------------------------
        --! ダミーコアメインループ
        ---------------------------------------------------------------------------
        core.debug := 0;
        MAIN_LOOP: while (operation /= OP_FINISH) loop
            REPORT_STATUS <= core.report_status;
            READ_OPERATION(core, stream, operation, keyword);
            case operation is
                when OP_DOC_BEGIN =>
                    timer_reset  <= TRUE, FALSE after 1 ns;
                    CORE_SYNC(core, 0, 2, sync_req, sync_ack);
                when OP_MAP    =>
                    case keyword is
                        when KEY_SYNC   => EXECUTE_SYNC  (operation);
                        when KEY_WAIT   => EXECUTE_WAIT;
                        when KEY_TIMEOUT=> EXECUTE_TIMEOUT;
                        when KEY_SAY    => EXECUTE_SAY   (core, stream);
                        when KEY_DEBUG  => EXECUTE_DEBUG (core, stream);
                        when KEY_REPORT => EXECUTE_REPORT(core, stream);
                        when others     => EXECUTE_SKIP  (core, stream);
                    end case;
                when OP_SCALAR =>
                    case keyword is
                        when KEY_SYNC   => EXECUTE_SYNC  (operation);
                        when others     => null;
                    end case;
                when OP_FINISH => exit;
                when others    => null;
            end case;
        end loop;
        REPORT_STATUS <= core.report_status;
        FINISH <= '1';
        if (FINISH_ABORT) then
            assert FALSE report "Simulation complete." severity FAILURE;
        end if;
        wait;
    end process;
    -------------------------------------------------------------------------------
    --! @brief タイムキーパー
    -------------------------------------------------------------------------------
    TIME_KEEPER: process(timer_reset, CLK)
        variable vocal : VOCAL_TYPE := NEW_VOCAL(NAME);
    begin
        if (timer_reset) then
            timer <= (others => '0');
        elsif (CLK'event and CLK = '1') then
            if (timer_valid) then
                if (timer < timeout_time) then
                    timer <= timer + 1;
                else
                    REPORT_FAILURE(vocal, string'("Time Out!"));
                    assert FALSE report "Time Out!" severity FAILURE;
                end if;
            end if;
        end if;
    end process;
    -------------------------------------------------------------------------------
    --! @ SYNC制御
    -------------------------------------------------------------------------------
    SYNC_DRIVER: for i in SYNC'range generate
        UNIT: SYNC_SIG_DRIVER
            generic map (
                NAME     => string'("MARCHAL:SYNC"),
                PLUG_NUM => SYNC_PLUG_NUM
            )
            port map (
                CLK      => CLK ,                -- In :
                RST      => sync_rst,            -- In :
                CLR      => sync_clr,            -- In :
                DEBUG    => sync_debug,          -- In :
                SYNC     => SYNC(i),             -- I/O:
                REQ      => sync_req(i),         -- In :
                ACK      => sync_ack(i)          -- Out:
            );
    end generate;
end MODEL;
-----------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------------
