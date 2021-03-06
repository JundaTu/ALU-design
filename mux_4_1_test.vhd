library ieee;
library work;
use ieee.std_logic_1164.all;
use work.mux_4_1;

entity mux_4_1_test is
end mux_4_1_test;

architecture behavior of mux_4_1_test is
signal a0,a1,b0,b1,z : std_logic;
signal sel : std_logic_vector(1 downto 0);

component mux_4_1 is
  port(
    a0,a1,b0,b1 : in std_logic;
    sel : in std_logic_vector(1 downto 0);
    z : out std_logic
  );
end component mux_4_1;
begin 
  test_comp : mux_4_1
  port map(
  a0 =>a0,
  a1 =>a1,
  b0 =>b0,
  b1 =>b1,
  sel=>sel,
  z=>z
  );
  testbench : process
  begin
    wait for 10ns;
    sel<= "00";
    a0 <= '1';
    a1 <= '1';
    b0 <= '0';
    b1 <= '0';
    wait for 100 ns;
    sel <="01";
    wait for 30ns;
    sel <="10";
    wait for 30ns;
    sel <="11";
    wait;
  end process;
end architecture behavior;
  

