library ieee;
library work;
use ieee.std_logic_1164.all;
use work.adder_8;

entity add8_test is
  
end add8_test;

architecture behavior of add8_test is
signal a,b,sum : std_logic_vector(7 downto 0);
signal cout, cin : std_logic;

component adder_8 is
  port(
    a : in std_logic_vector(7 downto 0);
    b : in std_logic_vector(7 downto 0);
    cin : in std_logic;
    cout : out std_logic;
    sum : out std_logic_vector(7 downto 0)
  );
end component adder_8;

begin
  test_comp : adder_8
  port map(
  a=>a,
  b=>b,
  cin=>cin,
  cout=>cout,
  sum=>sum
  );
  testbench : process
  begin
    a<="00000000";
    b<="00000000";
    cin<='0';
    wait for 50 ns;
    a<="00000001";
    b<="00000000";
    wait for 50ns;
    wait for 50 ns;
    a<="00000001";
    b<="00000001";
    wait for 50 ns;
    a<="00000001";
    b<="00000010";
    wait for 50 ns;
    a<="00000001";
    b<="01111111";
    
    wait;
  end process;
end architecture behavior;




