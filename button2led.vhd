library IEEE;
use IEEE.std_logic_1164.all;

entity button2led is
    port(
        button : in STD_LOGIC;
        led : out STD_LOGIC
);
end button2led;

architecture RegisterTransferLevel of button2led is
begin
    led <= button;
end RegisterTransferLevel;