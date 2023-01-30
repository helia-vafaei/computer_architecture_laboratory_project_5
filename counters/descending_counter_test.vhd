--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:26:08 12/12/2022
-- Design Name:   
-- Module Name:   E:/AzMemari/descending_counter_test.vhd
-- Project Name:  HW1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: descending_counter
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
 
ENTITY descending_counter_test IS
END descending_counter_test;
 
ARCHITECTURE behavior OF descending_counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT descending_counter
    PORT(
         Tin : IN  std_logic;
         clock : IN  std_logic;
         rst : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Tin : std_logic := '0';
   signal clock : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_prd  : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: descending_counter PORT MAP (
          Tin => Tin,
          clock => clock,
          rst => rst,
          output => output
        );

   -- Clock process definitions
   clock_process :process
   begin
		Tin <= '1';	
		rst <= '1';
		clock <= '0';
		wait for clk_prd/2;
		rst <= '0';
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';	   
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2; 
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';	   
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_prd*10;

      -- insert stimulus here 

      wait;
   end process;

END;
