library ieee;
library work;
use ieee.std_logic_1164.all;
use work.and_gate;
use work.or_gate;
use work.adder;
use work.mux;
use work.xor_gate;
use work.mux_4_1;

entity alu_1bit is
  port(
  a : in std_logic;
  b : in std_logic;
  cin : in std_logic;
  sel : in std_logic_vector(1 downto 0);
  invert : in std_logic;
  result : out std_logic;
  cout   : out std_logic
  );
end alu_1bit;

architecture dataflow of alu_1bit is
  signal and_1,or_1,add_1,xor_1,m_cout,out_invert,cout1 : std_logic;
  
begin
    u0 : entity xor_gate(dataflow)
      port map(invert,b,out_invert);
    u1 : entity xor_gate(dataflow)
      port map(out_invert,a,xor_1);
    u2 : entity and_gate(dataflow)
      port map(a,out_invert,and_1);
    u3 : entity or_gate(dataflow)
      port map(a,out_invert,or_1);
    u4 : entity adder(plus)
      port map(a,out_invert,cin,cout1,add_1);
    u5 : entity mux_4_1(structural)
      port map(and_1,or_1,xor_1,add_1,sel,result);
    u6 : entity mux_4_1(structural)
      port map('0','0','0',cout1,sel,cout);

end architecture dataflow;