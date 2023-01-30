----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:36:27 12/12/2022 
-- Design Name: 
-- Module Name:    JK_FF - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity JK_FF is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end JK_FF;

architecture Behavioral of JK_FF is

begin
	process (reset, clk) is
	begin
		if reset = '1' then 
			Q <= '0';
		elsif(rising_edge(clk)) then
			if (J='0' and K='0') then
				Q <= Q;
			elsif (J='0' and K='1') then
				Q <= '0';
			elsif (J='1' and K='0') then
				Q <= '1';
			elsif (J='1' and K='1') then
				Q <= not (Q);
			end if;
		end if;
			
	end process;



end Behavioral;

