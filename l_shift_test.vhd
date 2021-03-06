library ieee;
library work;
use ieee.std_logic_1164.all;
use work.l_shift;

entity l_shift_test is
end l_shift_test;

architecture behavior of l_shift_test is
  signal a,shi_out :std_logic_vector(31 downto 0);
  signal oprand_sh : std_logic_vector(4 downto 0);
component l_shift is
port(
  a: in std_logic_vector(31 downto 0);
  oprand_sh : in std_logic_vector(4 downto 0);
  shi_out : out std_logic_vector(31 downto 0)
  );
end component l_shift;

begin
  test_comp : l_shift
  port map(
    a=>a,
    oprand_sh=>oprand_sh,
    shi_out=>shi_out
  );
  testbench : process
  begin
    wait for 10ns;
    a<="00000000000000000000000011111111";
    oprand_sh<="00000";
    wait for 100ns;
    --oprand_sh<="00001";
    wait for 100ns;
    oprand_sh<="00001";
    wait for 100ns;
    oprand_sh<="00010";
    wait for 100ns;
    oprand_sh<="00011";
    wait for 100ns;
    oprand_sh<="00100";
    wait for 100ns;
    oprand_sh<="00101";
    wait for 100ns;
    oprand_sh<="00110";
    wait for 100ns;
    oprand_sh<="00111";
    wait for 100ns;
    oprand_sh<="01000";
    wait for 100ns;
    oprand_sh<="01001";
    wait for 100ns;
    oprand_sh<="01010";
    wait for 100ns;
    oprand_sh<="01011";
    wait for 100ns;
    oprand_sh<="01100";
    wait for 100ns;
    oprand_sh<="01101";
    wait for 100ns;
    oprand_sh<="01110";
    wait for 100ns;
    oprand_sh<="01111";
    wait for 100ns;
    oprand_sh<="10000";
    wait for 100ns;
    oprand_sh<="10001";
    wait for 100ns;
    oprand_sh<="10010";
    wait for 100ns;
    oprand_sh<="10011";
    wait for 100ns;
    oprand_sh<="10100";
    
    wait;
  end process;
end behavior;