library ieee;
use ieee.std_logic_1164.all;
use work.mux;

entity mux_4_1 is
  port(
  a0,a1,a2,a3 : in std_logic;
  sel : in std_logic_vector(1 downto 0);
  z   : out std_logic
  );
end mux_4_1;  
architecture structural of mux_4_1 is
  signal z0,z1 : std_logic;
begin
    u0: entity mux(structural)
      port map(sel(0),a2,a3,z0);
    u1: entity mux(structural)
      port map(sel(0),a0,a1,z1);
    u3: entity mux(structural)
      port map(sel(1),z1,z0,z);
end structural;