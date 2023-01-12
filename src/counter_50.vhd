library IEEE;
use IEEE.std_logic_1164.all;
entity counter_50 is
	port(enable:in std_logic;
	rez:out integer range 0 to 50);
end entity;

architecture counter_50 of counter_50 is
begin
	process(enable)
	variable cnt:integer range 0 to 50;
	begin
	if enable='1' then
		cnt:=50;
	else
		cnt:=0;
	end if;
	rez<=cnt;
    end process;
end architecture;