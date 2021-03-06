library ieee;
library work;
use ieee.std_logic_1164.all;
use work.alu_32bit;
use work.con_and_shift;
use work.mux_32;

entity fina_conbination is
  port(
    a,b : in std_logic_vector(31 downto 0);
    invert,cin : in std_logic;
    n_bit : in std_logic_vector(4 downto 0);
    sel : in std_logic_vector(2 downto 0);
    z : out std_logic_vector(31 downto 0);
    cout,overflow,zero_d : out std_logic
  );

end fina_conbination;

architecture behavior of fina_conbination is
  --signal sum : std_logic_vector(31 downto 0);
  --signal cout, zero_d,overflow : std_logic;
  signal z0,z1 : std_logic_vector(31 downto 0);
  begin
    u0: entity alu_32bit(behavior)
      port map(a,b,invert,sel(1 downto 0),cin,z0,cout,zero_d,overflow);
    u1: entity con_and_shift(behavior)
      port map(a,b,sel(1 downto 0),n_bit,z1);
    u2: entity mux_32(structural)
      port map(sel(2),z0,z1,z);
end behavior;
