library ieee;
library work;
use ieee.std_logic_1164.all;
use work.mux_4_1_32;
use work.slt_sltu;
use work.l_shift;
use work.r_shift;

entity con_and_shift is
  port(
    a,b : in std_logic_vector(31 downto 0);
    sel : in std_logic_vector(1 downto 0);
    n_bit : in std_logic_vector(4 downto 0);
    z : out std_logic_vector(31 downto 0)
  );

end con_and_shift;

architecture behavior of con_and_shift is
  signal slt,sltu : std_logic_vector(31 downto 0);
  signal l_sh, r_sh : std_logic_vector(31 downto 0);
  begin
    u0: entity slt_sltu(behavior)
      port map(a,b,slt,sltu);
    u1: entity l_shift(behavior)
      port map(a,n_bit,l_sh);
    u2: entity r_shift(behavior)
      port map(a,n_bit,r_sh);
    u3: entity mux_4_1_32(structural)
      port map(slt,sltu,l_sh,r_sh,sel,z);
end behavior;