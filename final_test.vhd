library ieee;
library work;
use ieee.std_logic_1164.all;
use work.fina_conbination;

entity final_test is
  
end final_test;

architecture behavior of final_test is
signal a,b : std_logic_vector(31 downto 0);
signal invert,cin : std_logic;
signal n_bit : std_logic_vector(4 downto 0);
signal sel : std_logic_vector(2 downto 0);
signal z : std_logic_vector(31 downto 0);
signal cout,overflow,zero_d : std_logic;

component fina_conbination is
  port(
    a,b : in std_logic_vector(31 downto 0);
    invert,cin : in std_logic;
    n_bit : in std_logic_vector(4 downto 0);
    sel : in std_logic_vector(2 downto 0);
    z : out std_logic_vector(31 downto 0);
    cout,overflow,zero_d : out std_logic
  );
end component fina_conbination;

begin
  test_comp : fina_conbination
  port map(
  a=>a,
  b=>b,
  invert=>invert,
  cin=>cin,
  n_bit=>n_bit,
  sel=>sel,
  z=>z,
  cout=>cout,
  overflow=>overflow,
  zero_d=>zero_d
  );
  testbench : process
  begin
    invert<='0';
    sel<="000";--and
    a<="00000000000111111000000000000000";
    b<="00000000000000011111111000000000";
    wait for 100 ns;
    sel<="001";--or
    wait for 50 ns;
    sel<="010";--xor
    wait for 50 ns;
    sel<="011";--add
    wait for 50 ns;
    sel<="011";--sub
    invert<='1';
    wait for 50 ns;
    sel<="100";--slt
    wait for 50 ns;
    sel<="101";--sltu
    wait for 50 ns;
    sel<="110";--sll
    n_bit<="00010";
    wait for 50 ns;
    sel<="111";--sl
    n_bit<="00010";
    wait for 50 ns;
    wait;
    
  end process;
end architecture behavior;











