library ieee;
library work;
use ieee.std_logic_1164.all;
use work.mux;

entity r_shift is
port(
  a: in std_logic_vector(31 downto 0);
  oprand_sh : in std_logic_vector(4 downto 0);
  shi_out : out std_logic_vector(31 downto 0)
);
end r_shift;

architecture behavior of r_shift is
  signal layer1,layer2,layer3,layer4,layer5 : std_logic_vector(31 downto 0);
  
begin
  --input-layer1
  first0: entity mux(structural)
    port map(oprand_sh(0),a(31),'0',layer1(31));
  first1: entity mux(structural)
    port map(oprand_sh(0),a(30),a(31),layer1(30));
  first2: entity mux(structural)
    port map(oprand_sh(0),a(29),a(30),layer1(29));
  first3: entity mux(structural)
    port map(oprand_sh(0),a(28),a(29),layer1(28));
  first4: entity mux(structural)
    port map(oprand_sh(0),a(27),a(28),layer1(27));
  first5: entity mux(structural)
    port map(oprand_sh(0),a(26),a(27),layer1(26));
  first6: entity mux(structural)
    port map(oprand_sh(0),a(25),a(26),layer1(25));
  first7: entity mux(structural)
    port map(oprand_sh(0),a(24),a(25),layer1(24));
  first8: entity mux(structural)
    port map(oprand_sh(0),a(23),a(24),layer1(23));
  first9: entity mux(structural)
    port map(oprand_sh(0),a(22),a(23),layer1(22));
  first10: entity mux(structural)
    port map(oprand_sh(0),a(21),a(22),layer1(21));
  first11: entity mux(structural)
    port map(oprand_sh(0),a(20),a(21),layer1(20));
  first12: entity mux(structural)
    port map(oprand_sh(0),a(19),a(20),layer1(19));
  first13: entity mux(structural)
    port map(oprand_sh(0),a(18),a(19),layer1(18));
  first14: entity mux(structural)
    port map(oprand_sh(0),a(17),a(18),layer1(17));
  first15: entity mux(structural)
    port map(oprand_sh(0),a(16),a(17),layer1(16));
  first16: entity mux(structural)
    port map(oprand_sh(0),a(15),a(16),layer1(15));
  first17: entity mux(structural)
    port map(oprand_sh(0),a(14),a(15),layer1(14));
  first18: entity mux(structural)
    port map(oprand_sh(0),a(13),a(14),layer1(13));
  first19: entity mux(structural)
    port map(oprand_sh(0),a(12),a(13),layer1(12));
  first20: entity mux(structural)
    port map(oprand_sh(0),a(11),a(12),layer1(11));
  first21: entity mux(structural)
    port map(oprand_sh(0),a(10),a(11),layer1(10));
  first22: entity mux(structural)
    port map(oprand_sh(0),a(9),a(10),layer1(9));
  first23: entity mux(structural)
    port map(oprand_sh(0),a(8),a(9),layer1(8));
  first24: entity mux(structural)
    port map(oprand_sh(0),a(7),a(8),layer1(7));
  first25: entity mux(structural)
    port map(oprand_sh(0),a(6),a(7),layer1(6));
  first26: entity mux(structural)
    port map(oprand_sh(0),a(5),a(6),layer1(5));
  first27: entity mux(structural)
    port map(oprand_sh(0),a(4),a(5),layer1(4));
  first28: entity mux(structural)
    port map(oprand_sh(0),a(3),a(4),layer1(3));
  first29: entity mux(structural)
    port map(oprand_sh(0),a(2),a(3),layer1(2));
  first30: entity mux(structural)
    port map(oprand_sh(0),a(1),a(2),layer1(1));
  first31: entity mux(structural)
    port map(oprand_sh(0),a(0),a(1),layer1(0));
  --layer1 t0 layer2
  second0: entity mux(structural)
    port map(oprand_sh(1),layer1(31),'0',layer2(31));
  second1: entity mux(structural)
    port map(oprand_sh(1),layer1(30),'0',layer2(30));
  second2: entity mux(structural)
    port map(oprand_sh(1),layer1(29),layer1(31),layer2(29));
  second3: entity mux(structural)
    port map(oprand_sh(1),layer1(28),layer1(30),layer2(28));
  second4: entity mux(structural)
    port map(oprand_sh(1),layer1(27),layer1(29),layer2(27));
  second5: entity mux(structural)
    port map(oprand_sh(1),layer1(26),layer1(28),layer2(26));
  second6: entity mux(structural)
    port map(oprand_sh(1),layer1(25),layer1(27),layer2(25));
  second7: entity mux(structural)
    port map(oprand_sh(1),layer1(24),layer1(26),layer2(24));
  second8: entity mux(structural)
    port map(oprand_sh(1),layer1(23),layer1(25),layer2(23));
  second9: entity mux(structural)
    port map(oprand_sh(1),layer1(22),layer1(24),layer2(22));
  second10: entity mux(structural)
    port map(oprand_sh(1),layer1(21),layer1(23),layer2(21));
  second11: entity mux(structural)
    port map(oprand_sh(1),layer1(20),layer1(22),layer2(20));
  second12: entity mux(structural)
    port map(oprand_sh(1),layer1(19),layer1(21),layer2(19));
  second13: entity mux(structural)
    port map(oprand_sh(1),layer1(18),layer1(20),layer2(18));
  second14: entity mux(structural)
    port map(oprand_sh(1),layer1(17),layer1(19),layer2(17));
  second15: entity mux(structural)
    port map(oprand_sh(1),layer1(16),layer1(18),layer2(16));
  second16: entity mux(structural)
    port map(oprand_sh(1),layer1(15),layer1(17),layer2(15));
  second17: entity mux(structural)
    port map(oprand_sh(1),layer1(14),layer1(16),layer2(14));
  second18: entity mux(structural)
    port map(oprand_sh(1),layer1(13),layer1(15),layer2(13));
  second19: entity mux(structural)
    port map(oprand_sh(1),layer1(12),layer1(14),layer2(12));
  second20: entity mux(structural)
    port map(oprand_sh(1),layer1(11),layer1(13),layer2(11));
  second21: entity mux(structural)
    port map(oprand_sh(1),layer1(10),layer1(12),layer2(10));
  second22: entity mux(structural)
    port map(oprand_sh(1),layer1(9),layer1(11),layer2(9));
  second23: entity mux(structural)
    port map(oprand_sh(1),layer1(8),layer1(10),layer2(8));
  second24: entity mux(structural)
    port map(oprand_sh(1),layer1(7),layer1(9),layer2(7));
  second25: entity mux(structural)
    port map(oprand_sh(1),layer1(6),layer1(8),layer2(6));
  second26: entity mux(structural)
    port map(oprand_sh(1),layer1(5),layer1(7),layer2(5));
  second27: entity mux(structural)
    port map(oprand_sh(1),layer1(4),layer1(6),layer2(4));
  second28: entity mux(structural)
    port map(oprand_sh(1),layer1(3),layer1(5),layer2(3));
  second29: entity mux(structural)
    port map(oprand_sh(1),layer1(2),layer1(4),layer2(2));
  second30: entity mux(structural)
    port map(oprand_sh(1),layer1(1),layer1(3),layer2(1));
  second31: entity mux(structural)
    port map(oprand_sh(1),layer1(0),layer1(2),layer2(0));
  --layer2 t0 layer3
    third0: entity mux(structural)
    port map(oprand_sh(2),layer2(31),'0',layer3(31));
  third1: entity mux(structural)
    port map(oprand_sh(2),layer2(30),'0',layer3(30));
  third2: entity mux(structural)
    port map(oprand_sh(2),layer2(29),'0',layer3(29));
  third3: entity mux(structural)
    port map(oprand_sh(2),layer2(28),'0',layer3(28));
  third4: entity mux(structural)
    port map(oprand_sh(2),layer2(27),layer2(31),layer3(27));
  third5: entity mux(structural)
    port map(oprand_sh(2),layer2(26),layer2(30),layer3(26));
  third6: entity mux(structural)
    port map(oprand_sh(2),layer2(25),layer2(29),layer3(25));
  third7: entity mux(structural)
    port map(oprand_sh(2),layer2(24),layer2(28),layer3(24));
  third8: entity mux(structural)
    port map(oprand_sh(2),layer2(23),layer2(27),layer3(23));
  third9: entity mux(structural)
    port map(oprand_sh(2),layer2(22),layer2(26),layer3(22));
  third10: entity mux(structural)
    port map(oprand_sh(2),layer2(21),layer2(25),layer3(21));
  third11: entity mux(structural)
    port map(oprand_sh(2),layer2(20),layer2(24),layer3(20));
  third12: entity mux(structural)
    port map(oprand_sh(2),layer2(19),layer2(23),layer3(19));
  third13: entity mux(structural)
    port map(oprand_sh(2),layer2(18),layer2(22),layer3(18));
  third14: entity mux(structural)
    port map(oprand_sh(2),layer2(17),layer2(21),layer3(17));
  third15: entity mux(structural)
    port map(oprand_sh(2),layer2(16),layer2(20),layer3(16));
  third16: entity mux(structural)
    port map(oprand_sh(2),layer2(15),layer2(19),layer3(15));
  third17: entity mux(structural)
    port map(oprand_sh(2),layer2(14),layer2(18),layer3(14));
  third18: entity mux(structural)
    port map(oprand_sh(2),layer2(13),layer2(17),layer3(13));
  third19: entity mux(structural)
    port map(oprand_sh(2),layer2(12),layer2(16),layer3(12));
  third20: entity mux(structural)
    port map(oprand_sh(2),layer2(11),layer2(15),layer3(11));
  third21: entity mux(structural)
    port map(oprand_sh(2),layer2(10),layer2(14),layer3(10));
  third22: entity mux(structural)
    port map(oprand_sh(2),layer2(9),layer2(13),layer3(9));
  third23: entity mux(structural)
    port map(oprand_sh(2),layer2(8),layer2(12),layer3(8));
  third24: entity mux(structural)
    port map(oprand_sh(2),layer2(7),layer2(11),layer3(7));
  third25: entity mux(structural)
    port map(oprand_sh(2),layer2(6),layer2(10),layer3(6));
  third26: entity mux(structural)
    port map(oprand_sh(2),layer2(5),layer2(9),layer3(5));
  third27: entity mux(structural)
    port map(oprand_sh(2),layer2(4),layer2(8),layer3(4));
  third28: entity mux(structural)
    port map(oprand_sh(2),layer2(3),layer2(7),layer3(3));
  third29: entity mux(structural)
    port map(oprand_sh(2),layer2(2),layer2(6),layer3(2));
  third30: entity mux(structural)
    port map(oprand_sh(2),layer2(1),layer2(5),layer3(1));
  third31: entity mux(structural)
    port map(oprand_sh(2),layer2(0),layer2(4),layer3(0));
  --layer3 t0 layer4--waiting for being modified
  forth0: entity mux(structural)
    port map(oprand_sh(3),layer3(31),'0',layer4(31));
  forth1: entity mux(structural)
    port map(oprand_sh(3),layer3(30),'0',layer4(30));
  forth2: entity mux(structural)
    port map(oprand_sh(3),layer3(29),'0',layer4(29));
  forth3: entity mux(structural)
    port map(oprand_sh(3),layer3(28),'0',layer4(28));
  forth4: entity mux(structural)
    port map(oprand_sh(3),layer3(27),'0',layer4(27));
  forth5: entity mux(structural)
    port map(oprand_sh(3),layer3(26),'0',layer4(26));
  forth6: entity mux(structural)
    port map(oprand_sh(3),layer3(25),'0',layer4(25));
  forth7: entity mux(structural)
    port map(oprand_sh(3),layer3(24),'0',layer4(24));
  forth8: entity mux(structural)
    port map(oprand_sh(3),layer3(23),layer3(31),layer4(23));
  forth9: entity mux(structural)
    port map(oprand_sh(3),layer3(22),layer3(30),layer4(22));
  forth10: entity mux(structural)
    port map(oprand_sh(3),layer3(21),layer3(29),layer4(21));
  forth11: entity mux(structural)
    port map(oprand_sh(3),layer3(20),layer3(28),layer4(20));
  forth12: entity mux(structural)
    port map(oprand_sh(3),layer3(19),layer3(27),layer4(19));
  forth13: entity mux(structural)
    port map(oprand_sh(3),layer3(18),layer3(26),layer4(18));
  forth14: entity mux(structural)
    port map(oprand_sh(3),layer3(17),layer3(25),layer4(17));
  forth15: entity mux(structural)
    port map(oprand_sh(3),layer3(16),layer3(24),layer4(16));
  forth16: entity mux(structural)
    port map(oprand_sh(3),layer3(15),layer3(23),layer4(15));
  forth17: entity mux(structural)
    port map(oprand_sh(3),layer3(14),layer3(22),layer4(14));
  forth18: entity mux(structural)
    port map(oprand_sh(3),layer3(13),layer3(21),layer4(13));
  forth19: entity mux(structural)
    port map(oprand_sh(3),layer3(12),layer3(20),layer4(12));
  forth20: entity mux(structural)
    port map(oprand_sh(3),layer3(11),layer3(19),layer4(11));
  forth21: entity mux(structural)
    port map(oprand_sh(3),layer3(10),layer3(18),layer4(10));
  forth22: entity mux(structural)
    port map(oprand_sh(3),layer3(9),layer3(17),layer4(9));
  forth23: entity mux(structural)
    port map(oprand_sh(3),layer3(8),layer3(16),layer4(8));
  forth24: entity mux(structural)
    port map(oprand_sh(3),layer3(7),layer3(15),layer4(7));
  forth25: entity mux(structural)
    port map(oprand_sh(3),layer3(6),layer3(14),layer4(6));
  forth26: entity mux(structural)
    port map(oprand_sh(3),layer3(5),layer3(13),layer4(5));
  forth27: entity mux(structural)
    port map(oprand_sh(3),layer3(4),layer3(12),layer4(4));
  forth28: entity mux(structural)
    port map(oprand_sh(3),layer3(3),layer3(11),layer4(3));
  forth29: entity mux(structural)
    port map(oprand_sh(3),layer3(2),layer3(10),layer4(2));
  forth30: entity mux(structural)
    port map(oprand_sh(3),layer3(1),layer3(9),layer4(1));
  forth31: entity mux(structural)
    port map(oprand_sh(3),layer3(0),layer3(8),layer4(0));
  --layer4 t0 layer5
  fifth0: entity mux(structural)
    port map(oprand_sh(4),layer4(31),'0',layer5(31));
  fifth1: entity mux(structural)
    port map(oprand_sh(4),layer4(30),'0',layer5(30));
  fifth2: entity mux(structural)
    port map(oprand_sh(4),layer4(29),'0',layer5(29));
  fifth3: entity mux(structural)
    port map(oprand_sh(4),layer4(28),'0',layer5(28));
  fifth4: entity mux(structural)
    port map(oprand_sh(4),layer4(27),'0',layer5(27));
  fifth5: entity mux(structural)
    port map(oprand_sh(4),layer4(26),'0',layer5(26));
  fifth6: entity mux(structural)
    port map(oprand_sh(4),layer4(25),'0',layer5(25));
  fifth7: entity mux(structural)
    port map(oprand_sh(4),layer4(24),'0',layer5(24));
  fifth8: entity mux(structural)
    port map(oprand_sh(4),layer4(23),'0',layer5(23));
  fifth9: entity mux(structural)
    port map(oprand_sh(4),layer4(22),'0',layer5(22));
  fifth10: entity mux(structural)
    port map(oprand_sh(4),layer4(21),'0',layer5(21));
  fifth11: entity mux(structural)
    port map(oprand_sh(4),layer4(20),'0',layer5(20));
  fifth12: entity mux(structural)
    port map(oprand_sh(4),layer4(19),'0',layer5(19));
  fifth13: entity mux(structural)
    port map(oprand_sh(4),layer4(18),'0',layer5(18));
  fifth14: entity mux(structural)
    port map(oprand_sh(4),layer4(17),'0',layer5(17));
  fifth15: entity mux(structural)
    port map(oprand_sh(4),layer4(16),'0',layer5(16));
  fifth16: entity mux(structural)
    port map(oprand_sh(4),layer4(15),layer4(31),layer5(15));
  fifth17: entity mux(structural)
    port map(oprand_sh(4),layer4(14),layer4(30),layer5(14));
  fifth18: entity mux(structural)
    port map(oprand_sh(4),layer4(13),layer4(29),layer5(13));
  fifth19: entity mux(structural)
    port map(oprand_sh(4),layer4(12),layer4(28),layer5(12));
  fifth20: entity mux(structural)
    port map(oprand_sh(4),layer4(11),layer4(27),layer5(11));
  fifth21: entity mux(structural)
    port map(oprand_sh(4),layer4(10),layer4(26),layer5(10));
  fifth22: entity mux(structural)
    port map(oprand_sh(4),layer4(9),layer4(25),layer5(9));
  fifth23: entity mux(structural)
    port map(oprand_sh(4),layer4(8),layer4(24),layer5(8));
  fifth24: entity mux(structural)
    port map(oprand_sh(4),layer4(7),layer4(23),layer5(7));
  fifth25: entity mux(structural)
    port map(oprand_sh(4),layer4(6),layer4(22),layer5(6));
  fifth26: entity mux(structural)
    port map(oprand_sh(4),layer4(5),layer4(21),layer5(5));
  fifth27: entity mux(structural)
    port map(oprand_sh(4),layer4(4),layer4(20),layer5(4));
  fifth28: entity mux(structural)
    port map(oprand_sh(4),layer4(3),layer4(19),layer5(3));
  fifth29: entity mux(structural)
    port map(oprand_sh(4),layer4(2),layer4(18),layer5(2));
  fifth30: entity mux(structural)
    port map(oprand_sh(4),layer4(1),layer4(17),layer5(1));
  fifth31: entity mux(structural)
    port map(oprand_sh(4),layer4(0),layer4(16),layer5(0));
  shi_out<=layer5;
end behavior;

