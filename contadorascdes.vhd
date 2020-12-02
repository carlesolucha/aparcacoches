library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contadorascdes is
	port(
	max : in std_logic_vector(7 downto 0);
	clk : in std_logic;
	reset_n : in std_logic;
	--eneable : in std_logic;
	a_d : in std_logic;
	s : out std_logic_vector(7 downto 0));
end contadorascdes;

architecture behavioral of contadorascdes is
	signal contador : unsigned(7 downto 0);
	
begin 
		process(clk,reset_n)
		begin
			if reset_n='0' then
				contador <= (others =>'0');
			else
				if rising_edge(clk) then
					--if eneable ='1' then
						if contador >= unsigned(max) then
							contador <= (others => '0');
						elsif a_d='0' then
						contador <= contador+1;
						elsif a_d='1' then
						contador <=contador-1;
						end if;
					--end if;
				end if;
			end if;
		end process;
		
		s<=std_logic_vector(contador);
end behavioral;
	