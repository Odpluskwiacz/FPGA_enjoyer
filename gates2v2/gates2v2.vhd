library IEEE;
use IEEE.std_logic_1164.all;

entity gates2v2 is
    port(
        button : in STD_LOGIC_VECTOR(1 downto 0);
        led : out STD_LOGIC_VECTOR(5 downto 0)
    );
end gates2v2;

architecture RTL of gates2v2 is

component gates2
    port (
    a : in std_logic;
    b : in std_logic;
    and_gate : out std_logic;
    nand_gate : out std_logic;
    nor_gate : out std_logic;
    or_gate : out std_logic;
    xnor_gate : out std_logic;
    xor_gate : out std_logic
    );
end component;

begin
U1 : gates2
    port map(
        a => button(1),
        b => button(0),
        and_gate => led(5),
        nand_gate => led(4),
        nor_gate => led(3),
        or_gate => led(2),
        xnor_gate => led(1),
        xor_gate => led(0)
    );
end RTL;