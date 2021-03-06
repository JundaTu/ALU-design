library ieee;
library work;
use ieee.std_logic_1164.all;
use work.slt_sltu;

entity slt_sltu_test is
  
end slt_sltu_test;

architecture behavior of slt_sltu_test is
signal a,b: std_logic_vector(31 downto 0);
signal slt: std_logic_vector(31 downto 0);
signal sltu: std_logic_vector(31 downto 0);

component slt_sltu is
  port(
    a : in std_logic_vector(31 downto 0);
    b : in std_logic_vector(31 downto 0);
    slt : out std_logic_vector(31 downto 0);
    sltu : out std_logic_vector(31 downto 0)
  );
end component slt_sltu;

begin
  test_comp : slt_sltu
  port map(
  a=>a,
  b=>b,
  slt=>slt,
  sltu=>sltu
  );
  testbench : process
  begin
    
    a<="00000000000000000000000000000000";
    b<="00000000000000000000000000000000";
    
    wait for 50 ns;
    a<="00000001100000000000000000000001";
    b<="00000000000000000000000000000000";
    wait for 50ns;
    wait for 50 ns;
    a<="00011100000000000000000000000001";
    b<="00000000000011000000000000000001";
    wait for 50 ns;
    a<="00000011000000000000000000000001";
    b<="00110000000000000000000000000010";
    wait for 50 ns;
    a<="00000000000000000000000000000001";
    b<="01111111111111111111111111111111";
    wait for 50 ns;
    a<="00011000000000000000000000000001";
    b<="11111111111111111111111111111111";
    wait for 50 ns;
    a<="11111111111111111111111111111111";
    b<="00000000000000000000000000000111";
    wait;
    
  end process;
end architecture behavior;









