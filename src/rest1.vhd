library IEEE;
use IEEE.std_logic_1164.all;
entity rest1 is
	port(cnt:in integer range 0 to 501;
	c:in std_logic;
	clock:in std_logic;
	cola:out std_logic;
	rest:out integer range 0 to 501);
end entity;

architecture rest1 of rest1 is
begin 
	process(clock)
	begin
		if(clock'EVENT and clock='1') then
			if(c='1' and cnt>=100) then
				rest<=cnt-100;
				cola<='1';
			else 
				cola<='0';
			end if;
		end if;
	end process;
end architecture;