----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/01/2022 10:02:07 AM
-- Design Name: 
-- Module Name: servo_pwm_with_frequency_divider - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity servo_pwm_with_frequency_divider is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           pos : in STD_LOGIC_VECTOR(6 downto 0);
           servo : out STD_LOGIC);
end servo_pwm_with_frequency_divider;

architecture Behavioral of servo_pwm_with_frequency_divider is

Component frequency_divider is 
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           output_clk : out STD_LOGIC);
 end component;
 
Component pwm_servo is 
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           pos : in STD_LOGIC_VECTOR (6 downto 0);
           servo : out STD_LOGIC);
end component;
 
signal clk_out : STD_LOGIC := '0';

begin

fd_64: frequency_divider Port Map(clk=> clk,reset => reset,output_clk => clk_out);


servo_pwm_module: pwm_servo Port Map( clk=> clk_out, reset => reset,pos => pos, servo => servo);



end Behavioral;
