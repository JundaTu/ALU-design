library ieee;
library work;
use ieee.std_logic_1164.all;
use work.adder_8;
entity adder_32 is
  port (
    a   : in  std_logic_vector(31 downto 0);
    b   : in  std_logic_vector(31 downto 0);
    cin : in  std_logic;
    cout: out std_logic;
    sum : out std_logic_vector(31 downto 0)
  );
end adder_32;
architecture plus of adder_32 is
  signal cout0,cout1,cout2,cout3 : std_logic;

begin 
  add1: entity adder_8(plus)
    port map(a(7 downto 0),b(7 downto 0),cin,cout0,sum(7 downto 0));
  add2: entity adder_8(plus)
    port map(a(15 downto 8),b(15 downto 8),cout0,cout1,sum(15 downto 8));
  add3: entity adder_8(plus)
    port map(a(23 downto 16),b(23 downto 16),cout1,cout2,sum(23 downto 16));
  add4: entity adder_8(plus)
    port map(a(31 downto 24),b(31 downto 24),cout2,cout,sum(31 downto 24));
end plus;






