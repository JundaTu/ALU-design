library ieee;
library work;
use ieee.std_logic_1164.all;
use work.alu_32bit;

entity alu_32_test is
end alu_32_test;

architecture behavior of alu_32_test is
signal  a,b :  std_logic_vector(31 downto 0);
signal invert :  std_logic;
signal sel :  std_logic_vector(1 downto 0);
signal cin :  std_logic;
signal sum :  std_logic_vector(31 downto 0);
signal cout :  std_logic;

component alu_32bit is
  port(
    a,b : in std_logic_vector(31 downto 0);
    invert : in std_logic;
    sel : in std_logic_vector(1 downto 0);
    cin : in std_logic;
    sum : out std_logic_vector(31 downto 0);
    cout : out std_logic
  );
end component alu_32bit;
begin 
  test_comp : alu_32bit
  port map(
  a=>a,
  b =>b,
  invert=>invert,
  sel=>sel,
  cin=>cin,
  sum=>sum,
  cout=>cout
  );
  testbench : process
  begin
    wait for 10ns;
    invert<='0';
    --cin<='0';
    sel<= "00";
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000001";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000001";
    wait for 100 ns;
    sel <="01";
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000001";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000001";
    wait for 30ns;
    sel <="10";
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000001";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000001";
    wait for 30ns;
    --add
    sel <="11";
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000001";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000001";
    wait for 30ns;
    --sub
    invert<='1';
    sel <="11";
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000000";
    b <= "00000000000000000000000000000001";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000000";
    wait for 100 ns;
    a <= "00000000000000000000000000000001";
    b <= "00000000000000000000000000000001";
    wait;
  end process;
end architecture behavior;

