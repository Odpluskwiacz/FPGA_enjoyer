library IEEE;
use IEEE.std_logic_1164.all;

entity gates2 is
    port(
        a : in STD_LOGIC;
        b : in STD_LOGIC;
        and_gate : out STD_LOGIC;
        nand_gate : out STD_LOGIC;
        nor_gate : out STD_LOGIC;
        or_gate : out STD_LOGIC;
        xnor_gate : out STD_LOGIC;
        xor_gate : out STD_LOGIC
    );
end gates2;

architecture rtl of gates2 is
begin
    and_gate <= a and b;
    nand_gate <= not(a and b);   -- b nand a
    nor_gate <= not (a or b);    -- a nor b
    or_gate <= a or b;
    xnor_gate <= a xnor b; --not(b xor a)
    xor_gate <= a xor b;
end rtl;