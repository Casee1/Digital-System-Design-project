library IEEE;
use IEEE.std_logic_1164.all;
entity cocacola is
	port(
	F2:in std_logic;	 
	F1:in std_logic;	
	F0:in std_logic;	 
	clock:in std_logic;
	cola:in std_logic;
	F3:in std_logic;	    
	F4:in std_logic;
	memory:out integer range 0 to 500;		 
	rest_out:out integer range 0 to 500;	 
	cola_out:out std_logic		 
	);
end entity;

architecture cocacola of cocacola is 
component counter_50 is							
	port(
	enable:in std_logic;
	rez:out integer range 0 to 50);
end component;
component counter_10 is
	port(
	enable:in std_logic;
	rez:out integer range 0 to 10);
end component;																																				  
component counter_5 is
	port(
	enable:in std_logic;
	rez:out integer range 0 to 5);
end component;	
component sum is
	port(
	count5:in integer range 0 to 6;
	count10:in integer range 0 to 11;
	count50:in integer range 0 to 51;
	cola:in std_logic;
	clock:in std_logic;
	cnt:in integer range 0 to 501;
	cnt1:out integer range 0 to 501);
end component;
component rest1 is
	port(cnt:in integer range 0 to 501;
	c:in std_logic;
	clock:in std_logic;
	cola:out std_logic;
	rest:out integer range 0 to 501);
end component;

signal count_50: integer range 0 to 50;
signal count_10: integer range 0 to 10;
signal count_5: integer range 0 to 5;
signal verify_50:std_logic;
signal verify_10:std_logic;
signal verify_5:std_logic;
signal cnt:integer range 0 to 501;
signal cnt1:integer range 0 to 501;
begin 
	verify_50<=F4 and F2;
	verify_10<=F4 and F1;
	verify_5<=F4 and F0;
	C1:counter_50 port map(F2,count_50);
	C2:counter_10 port map(F1,count_10);
	C3:counter_5 port map(F0,count_5);
	C4:rest1 port map(cnt,cola,clock,cola_out,rest_out);
	C5:sum port map(count_5,count_10,count_50,cola,clock,cnt1,cnt);
	cnt1 <= cnt;
end architecture;