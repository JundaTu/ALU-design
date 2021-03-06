library ieee;
library work;
use ieee.std_logic_1164.all;
use work.alu_1bit;

entity alu_1bit_test is
end alu_1bit_test;

architecture behavior of alu_1bit_test is
signal a,b,invert,result,cin : std_logic;
signal sel : std_logic_vector(1 downto 0);
signal cout : std_logic;

component alu_1bit is
  port(
    a : in std_logic;
    b : in std_logic;
    cin : in std_logic;
    sel : in std_logic_vector(1 downto 0);
    invert : in std_logic;
    cout   : out std_logic;
    result : out std_logic
  );
end component alu_1bit;
begin 
  test_comp : alu_1bit
  port map(
  a=>a,
  b=>b,
  cin=>cin,
  sel=>sel,
  invert=>invert,
  cout => cout,
  result=>result
  );
  testbench : process
  begin
    invert<='0';
    a <= '1';
    b <= '1';
    cin <= '0';
    sel <= "00";
    wait for 100 ns;
    a <= '0';
    b <= '1';
    wait for 100ns;
    a <= '1';
    b <= '0';
    wait for 100ns;
    a <= '0';
    b <= '0';
    wait for 100ns;
    sel <="01";
    wait for 100ns;
    a <= '0';
    b <= '0';
    wait for 100ns;
    a <= '0';
    b <= '1';
    wait for 100ns;
    a <= '1';
    b <= '0';
    wait for 100ns;
    a <= '1';
    b <= '1';
    wait for 100ns;
    sel <="10";
    a <= '0';
    b <= '0';
    wait for 100ns;
    a <= '0';
    b <= '1';
    wait for 100ns;
    a <= '1';
    b <= '0';
    wait for 100ns;
    a <= '1';
    b <= '1';
    wait for 100ns;
    wait for 30ns;
    sel <="11";
    a <= '0';
    b <= '0';
    wait for 100ns;
    a <= '0';
    b <= '1';
    wait for 100ns;
    a <= '1';
    b <= '0';
    wait for 100ns;
    a <= '1';
    b <= '1';
    wait for 100ns;
    invert<='1';
    sel <="11";
    cin <='1';
    a <= '0';
    b <= '0';
    wait for 100ns;
    a <= '0';
    b <= '1';
    wait for 100ns;
    a <= '1';
    b <= '0';
    wait for 100ns;
    a <= '1';
    b <= '1';
    wait for 100ns;
    wait;
  end process;
end architecture behavior;
  
