library ieee;
use ieee.std_logic_1164.all;
use work.mux_4_1;
use work.mux;

entity mux_8_1 is
  port(
  a0,a1,a2,a3,b0,b1,b2,b3 : in std_logic;
  sel : in std_logic_vector(2 downto 0);
  z   : out std_logic
  );
end mux_8_1;

architecture structural of mux_8_1 is
  signal z0,z1 : std_logic;
begin
    u0: entity mux_4_1(structural)
      port map(a0,a1,a2,a3,sel(1 downto 0),z0);
    u1: entity mux_4_1(structural)
      port map(b0,b1,b2,b3,sel(1 downto 0),z1);
    u2: entity mux(structural)
      port map(sel(2),z0,z1,z);
end structural;
