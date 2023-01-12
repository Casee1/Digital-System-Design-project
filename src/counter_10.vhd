library IEEE;
use IEEE.std_logic_1164.all;
entity counter_10 is
	port(enable:in std_logic;
	rez:out integer range 0 to 10);
end entity;

architecture counter_10 of counter_10 is
begin
	process(enable)
	variable cnt:integer range 0 to 10;
	begin
	if enable='1' then
		cnt:=10;
	else
		cnt:=0;
	end if;
	rez<=cnt;
	end process;
end architecture;