library ieee;
library work;
use ieee.std_logic_1164.all;
use work.adder_32;

entity adder_32_test is
  
end adder_32_test;

architecture behavior of adder_32_test is
signal a,b,sum : std_logic_vector(31 downto 0);
signal cout, cin : std_logic;

component adder_32 is
  port(
    a : in std_logic_vector(31 downto 0);
    b : in std_logic_vector(31 downto 0);
    cin : in std_logic;
    cout : out std_logic;
    sum : out std_logic_vector(31 downto 0)
  );
end component adder_32;

begin
  test_comp : adder_32
  port map(
  a=>a,
  b=>b,
  cin=>cin,
  cout=>cout,
  sum=>sum
  );
  testbench : process
  begin
    a<="00000000000000000000000000000000";
    b<="00000000000000000000000000000000";
    cin<='0';
    wait for 50 ns;
    a<="00000000000000000000000000000001";
    b<="00000000000000000000000000000000";
    wait for 50ns;
    wait for 50 ns;
    a<="00000000000000000000000000000001";
    b<="00000000000000000000000000000001";
    wait for 50 ns;
    a<="00000000000000000000000000000001";
    b<="00000000000000000000000000000010";
    wait for 50 ns;
    a<="00000000000000000000000000000001";
    b<="01111111111111111111111111111111";
    wait for 50 ns;
    a<="00000000000000000000000000000001";
    b<="11111111111111111111111111111111";
    wait;
  end process;
end architecture behavior;






