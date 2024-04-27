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
  -- Inputs
  constant WIDTH : integer := 8;
  signal in0, in1 : std_logic_vector(WIDTH-1 downto 0);
  signal sel : std_logic_vector(1 downto 0);

  -- Outputs
  signal output : std_logic_vector(WIDTH-1 downto 0);
  signal neg : std_logic;
  signal zero : std_logic;
  signal posi : std_logic;


  -- ALU instance
  component alu is 
    port(
      in0, in1 : in std_logic_vector(WIDTH-1 downto 0);
      sel : in std_logic_vector(1 downto 0);
      output : out std_logic_vector(WIDTH-1 downto 0);
      neg, zero, posi : out std_logic
    );

  end component;

  -- OSVVM Random and Coverage
  signal Rand0, Rand1 :
  signal RandSel : std_logic_vector(1 downto 0);
  signal ALU_Coverage : coverage_result;
begin 

end tb;
