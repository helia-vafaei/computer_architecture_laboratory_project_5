library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ascending_counter is
	port(
	  Tin: in std_logic;
	  clock: in std_logic;
	  rst: in std_logic;
	  output: out std_logic_vector(3 downto 0)
	);
end ascending_counter;


architecture Behavioral of ascending_counter is

component T_DD is
  port(
		T, reset, clk: in std_logic; 
		 Q: inout std_logic
  );
end component T_DD;

signal Q0, Q1, Q2, Q3: std_logic;				 

signal not_clk, not_Q0, not_Q1, not_Q2, not_Q3 : std_logic;

begin 
	T0: T_DD port map(T => Tin, reset => rst, clk => clock, Q => Q0);
	not_Q0 <= not Q0;
	T1: T_DD port map(T => Tin, reset => rst, clk => not_Q0, Q => Q1);
	not_Q1 <= not Q1;
	T2: T_DD port map(T => Tin, reset => rst, clk => not_Q1, Q => Q2);
	not_Q2 <= not Q2;
	T3: T_DD port map(T => Tin, reset => rst, clk => not_Q2, Q => Q3);
	not_Q3 <= not Q3;
	output(0) <= Q0;
	output(1) <= Q1;
	output(2) <= Q2;
	output(3) <= Q3;
 
end Behavioral;

