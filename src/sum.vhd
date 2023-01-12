library IEEE;
use IEEE.std_logic_1164.all;

entity sum is
	port(
	count5:in integer range 0 to 6;
	count10:in integer range 0 to 11;
	count50:in integer range 0 to 51;
	cola:in std_logic;
	clock:in std_logic;
	cnt:in integer range 0 to 501;
	cnt1:out integer range 0 to 501);
end entity;

architecture sum of sum is
begin
	process(clock)
	begin
		if(clock'EVENT and clock='1') then
			if(cola='0') then
				cnt1 <= cnt + count5 + count10 + count50;
			else
				if(cnt>=100) then
					cnt1 <= 0;
				end if;
			end if;
		end if;
	end process;
end architecture;