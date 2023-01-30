----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:40:43 12/12/2022 
-- Design Name: 
-- Module Name:    T_DD - Behavioral 
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

entity T_DD is
    Port ( T : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end T_DD;

architecture Behavioral of T_DD is

begin

	process (reset, clk) is
	begin
		if reset = '1' then 
			Q <= '0';
		elsif(rising_edge(clk)) then
			Q <= Q xor T; 
		else
			Q <= Q;
		end if;
			
	end process;

end Behavioral;

