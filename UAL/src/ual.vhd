Library IEEE ;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ual is
	port (
		a : in std_logic_vector (5 downto 0) ;
		b : in std_logic_vector (5 downto 0) ; 
		c : in std_logic_vector (1 downto 0) ;
		clk : in std_logic ;
		s_addition : out std_logic_vector (4 downto 0);
		s_multiplication : out std_logic_vector (7 downto 0)
		);
	END ual ;
ARCHITECTURE Description OF ual is 
begin
process(clk) 
begin
    if c="00" then
        s_addition<=("0"&a)+("0"&b) ;
    elsif c="01" then
        s_addition<=("0"&a)-("0"&b) ;
    elsif c="10" then
        s_multiplication<=a*b ;
    end if;
end process;
END Description ;