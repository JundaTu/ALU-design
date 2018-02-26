library ieee;
library work;
use ieee.std_logic_1164.all;
use work.con_and_shift;

entity con_and_shift_test is
  
end con_and_shift_test;

architecture behavior of con_and_shift_test is
signal a :  std_logic_vector(31 downto 0);
signal b :  std_logic_vector(31 downto 0);
signal sel :  std_logic_vector(1 downto 0);
signal n_bit :  std_logic_vector(4 downto 0);
signal z :  std_logic_vector(31 downto 0);

component con_and_shift is
  port(
    a : in std_logic_vector(31 downto 0);
    b : in std_logic_vector(31 downto 0);
    sel : in std_logic_vector(1 downto 0);
    n_bit : in std_logic_vector(4 downto 0);
    z : out std_logic_vector(31 downto 0)
  );
end component con_and_shift;

begin
  test_comp : con_and_shift
  port map(
  a=>a,
  b=>b,
  sel=>sel,
  n_bit=>n_bit,
  z=>z
  );
  testbench : process
  begin
    sel<= "00";
    a <= "00000000001100000000000000000000";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000000";
    b <= "00000110000000000000000000000001";
    wait for 100 ns;
    sel<="01";
    a <= "00000000000011110000000000000001";
    b <= "00000000000000011100000000000000";
    wait for 100 ns;
    a <= "00001111100000000000000000000001";
    b <= "00111100000000000000000000000001";
    wait for 100 ns;
    sel <="10";
    n_bit<="00010";
    a <= "00000000000000000000000000011111";
    
    wait for 100 ns;
    n_bit<="00110";
    a <= "00000000000000000000000000000001";
    wait for 100 ns;
    n_bit<="01110";
    a <= "00000000000000000000000000000001";
    wait for 100 ns;
    n_bit<="10110";
    a <= "00000000000000000000000000000001";
    wait for 30ns;
    sel <="11";
    n_bit<="00001";
    a <= "10000000000000000000000000000000";
    --b <= "00000000000000000000000000000000";
    wait for 100 ns;
    n_bit<="00011";
    a <= "10000000000000000000000000000000";
    wait for 100 ns;
    n_bit<="00111";
    a <= "10000000000000000000000000000000";
    wait for 100 ns;
    n_bit<="01111";
    a <= "10000000000000000000000000000000";
    wait for 30ns;
    --add
    n_bit<="11111";
    a <= "10000000000000000000000000000000";
    
    wait;
  end process;
end architecture behavior;











