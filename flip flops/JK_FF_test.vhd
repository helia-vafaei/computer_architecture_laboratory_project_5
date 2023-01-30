--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:53:01 12/12/2022
-- Design Name:   
-- Module Name:   E:/AzMemari/JK_FF_test.vhd
-- Project Name:  HW1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JK_FF
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY JK_FF_test IS
END JK_FF_test;
 
ARCHITECTURE behavior OF JK_FF_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_FF
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         Q : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal Q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_FF PORT MAP (
          J => J,
          K => K,
          reset => reset,
          clk => clk,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		J <= '0';
		K <= '0';
		reset <= '1';
		clk <= '0';	
		wait for clk_period/2;
		reset <= '0';
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		J <= '1';
		K <= '1';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		J <= '0';
		K <= '1';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		J <= '0';
		K <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		J <= '1';
		K <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		J <= '0';
		K <= '1';
		wait for clk_period/2;
		
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
