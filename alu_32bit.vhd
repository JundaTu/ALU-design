library ieee;
library work;
use ieee.std_logic_1164.all;
use work.and_gate;
use work.or_gate;
use work.adder;
use work.mux;
use work.xor_gate;
use work.mux_4_1;
use work.alu_1bit;


entity alu_32bit is 
port(
 a,b : in std_logic_vector(31 downto 0);
 invert : in std_logic;
 sel : in std_logic_vector(1 downto 0);
 cin : in std_logic;
 sum : out std_logic_vector(31 downto 0);
 cout : out std_logic;
 zero_d : out std_logic;
 overflow : out std_logic
);
end alu_32bit;

architecture behavior of alu_32bit is
  signal t_cin : std_logic_vector(31 downto 0);
  signal data_layer1  : std_logic_vector(15 downto 0);
  signal data_layer2  : std_logic_vector(7 downto 0);
  signal data_layer3  : std_logic_vector(3 downto 0);
  signal data_layer4  : std_logic_vector(1 downto 0);
  signal data_layer5,overflow_t  : std_logic;
  signal sum_t : std_logic_vector(31 downto 0);

  
begin
  --and/or/xor/add/sub
  u0: entity alu_1bit(dataflow)
    port map(a(0),b(0),invert,sel,invert,sum_t(0),t_cin(0));
  u1: entity alu_1bit(dataflow)
    port map(a(1),b(1),t_cin(0),sel,invert,sum_t(1),t_cin(1));
  u2: entity alu_1bit(dataflow)
    port map(a(2),b(2),t_cin(1),sel,invert,sum_t(2),t_cin(2));
  u3: entity alu_1bit(dataflow)
    port map(a(3),b(3),t_cin(2),sel,invert,sum_t(3),t_cin(3));
  u4: entity alu_1bit(dataflow)
    port map(a(4),b(4),t_cin(3),sel,invert,sum_t(4),t_cin(4));
  u5: entity alu_1bit(dataflow)
    port map(a(5),b(5),t_cin(4),sel,invert,sum_t(5),t_cin(5));
  u6: entity alu_1bit(dataflow)
    port map(a(6),b(6),t_cin(5),sel,invert,sum_t(6),t_cin(6));
  u7: entity alu_1bit(dataflow)
    port map(a(7),b(7),t_cin(6),sel,invert,sum_t(7),t_cin(7));
  u8: entity alu_1bit(dataflow)
    port map(a(8),b(8),t_cin(7),sel,invert,sum_t(8),t_cin(8));
  u9: entity alu_1bit(dataflow)
    port map(a(9),b(9),t_cin(8),sel,invert,sum_t(9),t_cin(9));
  u10: entity alu_1bit(dataflow)
    port map(a(10),b(10),t_cin(9),sel,invert,sum_t(10),t_cin(10));
  u11: entity alu_1bit(dataflow)
    port map(a(11),b(11),t_cin(10),sel,invert,sum_t(11),t_cin(11));
  u12: entity alu_1bit(dataflow)
    port map(a(12),b(12),t_cin(11),sel,invert,sum_t(12),t_cin(12));
  u13: entity alu_1bit(dataflow)
    port map(a(13),b(13),t_cin(12),sel,invert,sum_t(13),t_cin(13));
  u14: entity alu_1bit(dataflow)
    port map(a(14),b(14),t_cin(13),sel,invert,sum_t(14),t_cin(14));
  u15: entity alu_1bit(dataflow)
    port map(a(15),b(15),t_cin(14),sel,invert,sum_t(15),t_cin(15));
  u16: entity alu_1bit(dataflow)
    port map(a(16),b(16),t_cin(15),sel,invert,sum_t(16),t_cin(16));
  u17: entity alu_1bit(dataflow)
    port map(a(17),b(17),t_cin(16),sel,invert,sum_t(17),t_cin(17));
  u18: entity alu_1bit(dataflow)
    port map(a(18),b(18),t_cin(17),sel,invert,sum_t(18),t_cin(18));
  u19: entity alu_1bit(dataflow)
    port map(a(19),b(19),t_cin(18),sel,invert,sum_t(19),t_cin(19));
  u20: entity alu_1bit(dataflow)
    port map(a(20),b(20),t_cin(19),sel,invert,sum_t(20),t_cin(20));
  u21: entity alu_1bit(dataflow)
    port map(a(21),b(21),t_cin(20),sel,invert,sum_t(21),t_cin(21));
  u22: entity alu_1bit(dataflow)
    port map(a(22),b(22),t_cin(21),sel,invert,sum_t(22),t_cin(22));
  u23: entity alu_1bit(dataflow)
    port map(a(23),b(23),t_cin(22),sel,invert,sum_t(23),t_cin(23));
  u24: entity alu_1bit(dataflow)
    port map(a(24),b(24),t_cin(23),sel,invert,sum_t(24),t_cin(24));
  u25: entity alu_1bit(dataflow)
    port map(a(25),b(25),t_cin(24),sel,invert,sum_t(25),t_cin(25));
  u26: entity alu_1bit(dataflow)
    port map(a(26),b(26),t_cin(25),sel,invert,sum_t(26),t_cin(26));
  u27: entity alu_1bit(dataflow)
    port map(a(27),b(27),t_cin(26),sel,invert,sum_t(27),t_cin(27));
  u28: entity alu_1bit(dataflow)
    port map(a(28),b(28),t_cin(27),sel,invert,sum_t(28),t_cin(28));
  u29: entity alu_1bit(dataflow)
    port map(a(29),b(29),t_cin(28),sel,invert,sum_t(29),t_cin(29));
  u30: entity alu_1bit(dataflow)
    port map(a(30),b(30),t_cin(29),sel,invert,sum_t(30),t_cin(30));
  u31: entity alu_1bit(dataflow)
    port map(a(31),b(31),t_cin(30),sel,invert,sum_t(31),t_cin(31));
  --u32_over: entity xor_gate(dataflow)
  xor_over : entity xor_gate(dataflow)
    port map(t_cin(30),t_cin(31),overflow_t);
  ---32-16 zero detect
  --layer1
  z0: entity and_gate(dataflow)
    port map(sum_t(0),sum_t(1),data_layer1(0)); 
  z1: entity and_gate(dataflow)
    port map(sum_t(2),sum_t(3),data_layer1(1));
  z2: entity and_gate(dataflow)
    port map(sum_t(4),sum_t(5),data_layer1(2)); 
  z3: entity and_gate(dataflow)
    port map(sum_t(6),sum_t(7),data_layer1(3)); 
  z4: entity and_gate(dataflow)
    port map(sum_t(8),sum_t(9),data_layer1(4)); 
  z5: entity and_gate(dataflow)
    port map(sum_t(10),sum_t(11),data_layer1(5));
  z6: entity and_gate(dataflow)
    port map(sum_t(12),sum_t(13),data_layer1(6)); 
  z7: entity and_gate(dataflow)
    port map(sum_t(14),sum_t(15),data_layer1(7)); 
  z8: entity and_gate(dataflow)
    port map(sum_t(16),sum_t(17),data_layer1(8)); 
  z9: entity and_gate(dataflow)
    port map(sum_t(18),sum_t(19),data_layer1(9));
  z10: entity and_gate(dataflow)
    port map(sum_t(20),sum_t(21),data_layer1(10)); 
  z11: entity and_gate(dataflow)
    port map(sum_t(22),sum_t(23),data_layer1(11)); 
  z12: entity and_gate(dataflow)
    port map(sum_t(24),sum_t(25),data_layer1(12)); 
  z13: entity and_gate(dataflow)
    port map(sum_t(26),sum_t(27),data_layer1(13));
  z14: entity and_gate(dataflow)
    port map(sum_t(28),sum_t(29),data_layer1(14)); 
  z15: entity and_gate(dataflow)
    port map(sum_t(30),sum_t(31),data_layer1(15)); 
    
  --layer2
  z16: entity and_gate(dataflow)
    port map(data_layer1(0),data_layer1(1),data_layer2(0)); 
  z17: entity and_gate(dataflow)
    port map(data_layer1(2),data_layer1(3),data_layer2(1));
  z18: entity and_gate(dataflow)
    port map(data_layer1(4),data_layer1(5),data_layer2(2)); 
  z19: entity and_gate(dataflow)
    port map(data_layer1(6),data_layer1(7),data_layer2(3)); 
  z20: entity and_gate(dataflow)
    port map(data_layer1(8),data_layer1(9),data_layer2(4)); 
  z21: entity and_gate(dataflow)
    port map(data_layer1(10),data_layer1(11),data_layer2(5));
  z22: entity and_gate(dataflow)
    port map(data_layer1(12),data_layer1(13),data_layer2(6)); 
  z23: entity and_gate(dataflow)
    port map(data_layer1(14),data_layer1(15),data_layer2(7)); 
    
  --layer3
  z24: entity and_gate(dataflow)
    port map(data_layer2(0),data_layer2(1),data_layer3(0)); 
  z25: entity and_gate(dataflow)
    port map(data_layer2(2),data_layer2(3),data_layer3(1));
  z26: entity and_gate(dataflow)
    port map(data_layer2(4),data_layer2(5),data_layer3(2)); 
  z27: entity and_gate(dataflow)
    port map(data_layer2(6),data_layer2(7),data_layer3(3));  
      
  --layer4
  z28: entity and_gate(dataflow)
    port map(data_layer3(0),data_layer3(1),data_layer4(0)); 
  z29: entity and_gate(dataflow)
    port map(data_layer3(2),data_layer3(3),data_layer4(1));
  --layer5
  z30: entity and_gate(dataflow)
    port map(data_layer4(0),data_layer4(1),data_layer5); 
  out_sum : sum<=sum_t;
  --mux_4_1 to show zero detect,overflow and cout
  --cout1   : cout<=t_cin(31);
  --zero_det: zero_d<=data_layer5;
  ex0_over: entity mux_4_1(structural)
    port map('0','0','0',overflow_t,sel,overflow);
  ex1_cout: entity mux_4_1(structural)
    port map('0','0','0',t_cin(31),sel,cout);
  ex2_zero: entity mux_4_1(structural)
    port map('0','0','0',data_layer5,sel,zero_d);
end behavior;
