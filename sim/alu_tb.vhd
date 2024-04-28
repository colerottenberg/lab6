library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.env.finish;

library osvvm;
use osvvm.RandomPkg.all;
use osvvm.CoveragePkg.all;

use work.DataStructures.all;

-- enter your code below
entity alu_tb is 
end alu_tb;

architecture tb of alu_tb is 
  -- ALU signals
  constant clock_period : time := 10 ns;
  signal clk : std_logic := '0';
  -- Inputs
  constant WIDTH : integer := 8;
  signal in0, in1 : std_logic_vector(WIDTH-1 downto 0);
  signal sel : std_logic_vector(1 downto 0);

  -- Outputs
  signal output : std_logic_vector(WIDTH-1 downto 0);
  signal neg : std_logic;
  signal zero : std_logic;
  signal posi : std_logic;

  -- OSVVM Shared Variables
  shared variable rv : RandomPType;
  shared variable bin1, bin2, bin3, bin4, bin5, bin6, bin7 : coverage_bin; -- 7 coverage bins
begin 
  -- ALU instance
  dut : entity work.alu 
    port map(
      in0 => in0,
      in1 => in1,
      sel => sel,
      output => output,
      neg => neg,
      zero => zero,
      posi => posi
    );

  -- clock generation
  clk <= not clk after clock_period/2;

-- Process sequencer

  PROC_SEQUENCER : process
  begin

    -- Set up coverage bins for the ALU
    bin1.AddBins("Addition", ONE_BIN);
    bin2.AddBins("Subtraction", ONE_BIN);
    bin3.AddBins("And", ONE_BIN);
    bin4.AddBins("Or", ONE_BIN);
    bin5.AddBins("Positive", ONE_BIN);
    bin6.AddBins("Negative", ONE_BIN);
    bin7.AddBins("Zero", ONE_BIN);

    wait until rising_edge(clk);

    loop
      wait until rising_edge(clk);

      -- Collect coverage data
      bin1.ICover(to_integer( = '1' and empty = '1'));
      bin2.ICover(to_integer(rd_en = '1' and full = '1'));
      bin3.ICover(to_integer(rd_en = '1' and wr_en = '1' and empty = '0' and empty_next = '1'));
      bin4.ICover(to_integer(rd_en = '1' and wr_en = '1' and full = '0' and full_next = '1'));
      bin5.ICover(to_integer(rd_en = '1' and wr_en = '0' and empty = '0' and empty_next = '1'));
      bin6.ICover(to_integer(rd_en = '0' and wr_en = '1' and full = '0' and full_next = '1'));

      -- Collect coverage data for the ALU
      bin1.ICover(to_integer(sel = "00"));
      bin2.ICover(to_integer(sel = "01"));
      bin3.ICover(to_integer(sel = "10"));
      bin4.ICover(to_integer(sel = "11"));
      bin5.ICover(to_integer(posi = '1'));
      bin6.ICover(to_integer(neg = '1'));
      bin7.ICover(to_integer(zero = '1'));

      -- Stop the test when all coverage goals have been met
      exit when
        bin1.IsCovered and
        bin2.IsCovered and
        bin3.IsCovered and
        bin4.IsCovered and
        bin5.IsCovered and
        bin6.IsCovered;
    end loop;
    
    report("Coverage goals met");

    -- Print coverage data
    bin1.WriteBin;
    bin2.WriteBin;
    bin3.WriteBin;
    bin4.WriteBin;
    bin5.WriteBin;
    bin6.WriteBin;
    
    finish;
  end process;

-- Generate Random Values for the ALU
  PROC_RANDOM : process
  begin
    in0 <= to_std_logic_vector(rv.Random(0, 128));
    in1 <= to_std_logic_vector(rv.Random(0, 128));
    -- All four possible ALU operations 00, 01, 10, 11
    sel <= to_std_logic_vector(rv.Random(0, 3));
    wait for 10 ns;
  end process;

  -- Emulate the ALU operation
  PROC_BEHAVIORAL_MODEL : process
  begin
    wait until rising_edge(clk);
    case sel is
      when "00" =>
        assert output = in0 + in1
          report "Addition failed"
          severity failure;
      when "01" =>
        assert output = in0 - in1
          report "Subtraction failed"
          severity failure;
      when "10" =>
        assert output = in0 and in1
          report "And failed"
          severity failure;
      when "11" =>
        assert output = in0 or in1
          report "Or failed"
          severity failure;
      when others =>
        report "Invalid operation"
          severity failure;
    end case;

    -- Check the ALU flags
    if output = 0 then
      assert zero = '1'
        report "Zero flag failed"
        severity failure;
    else
      assert zero = '0'
        report "Zero flag failed"
        severity failure;
    end if;

    if output > 0 then
      assert posi = '1'
        report "Positive flag failed"
        severity failure;
    else
      assert posi = '0'
        report "Positive flag failed"
        severity failure;
    end if;

    if output < 0 then
      assert neg = '1'
        report "Negative flag failed"
        severity failure;
    else
      assert neg = '0'
        report "Negative flag failed"
        severity failure;
    end if;
  end process;

end tb;
