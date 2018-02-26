library ieee;
library work;
use ieee.std_logic_1164.all;
use work.alu_32bit;
use work.not_gate;

entity slt_sltu is
  port(
    a,b : in std_logic_vector(31 downto 0);
    slt : out std_logic_vector(31 downto 0);
    sltu : out std_logic_vector(31 downto 0)
  );

end slt_sltu;

architecture behavior of slt_sltu is
  signal sum : std_logic_vector(31 downto 0);
  signal cout, zero_d,overflow : std_logic;
  begin
    u0: entity alu_32bit(behavior)
      port map(a,b,'1',"11",'1',sum,cout,zero_d,overflow);
    u1: sltu(0)<= not cout;
      sltu(31 downto 1)<="0000000000000000000000000000000";
    u2: slt(31 downto 1)<=(sum(30 downto 0) and "0000000000000000000000000000000");
    slt(0)<=sum(31);
end behavior;