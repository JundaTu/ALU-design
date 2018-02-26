library ieee;
library work;
use ieee.std_logic_1164.all;
use work.adder_2;
entity adder_8 is
  port (
    a   : in  std_logic_vector(7 downto 0);
    b   : in  std_logic_vector(7 downto 0);
    cin : in  std_logic;
    cout: out std_logic;
    sum : out std_logic_vector(7 downto 0)
  );
end adder_8;
architecture plus of adder_8 is
  signal cout0,cout1,cout2,cout3 : std_logic;

begin 
  add1: entity adder_2(plus)
    port map(a(1 downto 0),b(1 downto 0),cin,cout0,sum(1 downto 0));
  add2: entity adder_2(plus)
    port map(a(3 downto 2),b(3 downto 2),cout0,cout1,sum(3 downto 2));
  add3: entity adder_2(plus)
    port map(a(5 downto 4),b(5 downto 4),cout1,cout2,sum(5 downto 4));
  add4: entity adder_2(plus)
    port map(a(7 downto 6),b(7 downto 6),cout2,cout,sum(7 downto 6));
end plus;




