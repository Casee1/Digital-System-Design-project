library IEEE;
use IEEE.std_logic_1164.all;
entity counter_5 is
	port(enable:in std_logic; 
	rez:out integer range 0 to 5);
end entity;

architecture counter_5 of counter_5 is 
begin 
	process(enable)
	variable cnt:integer range 0 to 5;
	begin
	if enable='1' then
		cnt:=5;
	else
		cnt:=0;
	end if;
	rez<=cnt;
	end process;
end architecture;