library ieee;
library work;
use ieee.std_logic_1164.all;
use work.adder_32;
use work.xor_gate;

entity add_sub_32 is 
  port(
  a,b    : in std_logic_vector(31 downto 0);
  invert : in std_logic;
  sum    : out std_logic_vector(31 downto 0);
  cout   : out std_logic
  );
end add_sub_32;

architecture behavior of add_sub_32 is
  signal out_xor: std_logic_vector(31 downto 0);
  begin
    -- get -b
    xor_0: entity xor_gate(dataflow)
      port map(b(0),invert,out_xor(0));
    xor_1: entity xor_gate(dataflow)
      port map(b(1),invert,out_xor(1));
    xor_2: entity xor_gate(dataflow)
      port map(b(2),invert,out_xor(2));
    xor_3: entity xor_gate(dataflow)
      port map(b(3),invert,out_xor(3));
    xor_4: entity xor_gate(dataflow)
      port map(b(4),invert,out_xor(4));
    xor_5: entity xor_gate(dataflow)
      port map(b(5),invert,out_xor(5));
    xor_6: entity xor_gate(dataflow)
      port map(b(6),invert,out_xor(6));
    xor_7: entity xor_gate(dataflow)
      port map(b(7),invert,out_xor(7));
    xor_8: entity xor_gate(dataflow)
      port map(b(8),invert,out_xor(8));
    xor_9: entity xor_gate(dataflow)
      port map(b(9),invert,out_xor(9));
    xor_10: entity xor_gate(dataflow)
      port map(b(10),invert,out_xor(10));
    xor_11: entity xor_gate(dataflow)
      port map(b(11),invert,out_xor(11));
    xor_12: entity xor_gate(dataflow)
      port map(b(12),invert,out_xor(12));
    xor_13: entity xor_gate(dataflow)
      port map(b(13),invert,out_xor(13));
    xor_14: entity xor_gate(dataflow)
      port map(b(14),invert,out_xor(14));
    xor_15: entity xor_gate(dataflow)
      port map(b(15),invert,out_xor(15));
    xor_16: entity xor_gate(dataflow)
      port map(b(16),invert,out_xor(16));
    xor_17: entity xor_gate(dataflow)
      port map(b(17),invert,out_xor(17));
    xor_18: entity xor_gate(dataflow)
      port map(b(18),invert,out_xor(18));
    xor_19: entity xor_gate(dataflow)
      port map(b(19),invert,out_xor(19));
    xor_20: entity xor_gate(dataflow)
      port map(b(20),invert,out_xor(20));
    xor_21: entity xor_gate(dataflow)
      port map(b(21),invert,out_xor(21));
    xor_22: entity xor_gate(dataflow)
      port map(b(22),invert,out_xor(22));
    xor_23: entity xor_gate(dataflow)
      port map(b(23),invert,out_xor(23));
    xor_24: entity xor_gate(dataflow)
      port map(b(24),invert,out_xor(24));
    xor_25: entity xor_gate(dataflow)
      port map(b(25),invert,out_xor(25));
    xor_26: entity xor_gate(dataflow)
      port map(b(26),invert,out_xor(26));
    xor_27: entity xor_gate(dataflow)
      port map(b(27),invert,out_xor(27));
    xor_28: entity xor_gate(dataflow)
      port map(b(28),invert,out_xor(28));
    xor_29: entity xor_gate(dataflow)
      port map(b(29),invert,out_xor(29));
    xor_30: entity xor_gate(dataflow)
      port map(b(30),invert,out_xor(30));
    xor_31: entity xor_gate(dataflow)
      port map(b(31),invert,out_xor(31));
    cum: entity adder_32(plus)
      port map(a,out_xor,invert,cout,sum);
end behavior;