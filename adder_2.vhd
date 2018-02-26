library ieee;
library work;
use ieee.std_logic_1164.all;
use work.adder;
entity adder_2 is
  port (
    a   : in  std_logic_vector(1 downto 0);
    b   : in  std_logic_vector(1 downto 0);
    cin : in  std_logic;
    cout: out std_logic;
    sum : out std_logic_vector(1 downto 0)
  );
end adder_2;
architecture plus of adder_2 is
  signal cout1 : std_logic;
--  component adder
--    port (
--     a   : in  std_logic;
--     b   : in  std_logic;
--     cin : in  std_logic;
--     cout: out std_logic;
--     sum : out std_logic
--    );
--end component;
begin 
  add1: entity adder(plus)
    port map(a(0),b(0),cin,cout1,sum(0));
  add2: entity adder(plus)
    port map(a(1),b(1),cout1,cout,sum(1));
end plus;


