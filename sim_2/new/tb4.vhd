library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb4 is
--  Port ( );
end tb4;

architecture Behavioral of tb4 is

Component servo_pwm_with_frequency_divider is 
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           pos : in STD_LOGIC_VECTOR(6 downto 0);
           servo : out STD_LOGIC);
end Component;


--inputs
signal clk: std_logic := '0';
signal reset: std_logic := '0';
signal pos: std_logic_vector(6 downto 0) := (others => '0');

-- outputs 
signal servo: std_logic ;
constant clk_period : time := 10 ns;

begin
uut: servo_pwm_with_frequency_divider Port Map(clk => clk,
        reset => reset,
        pos => pos,
        servo => servo);

clk_process :process begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
   end process;
 
    -- Stimuli process.
    stimuli: process begin
        reset <= '1';
        wait for 50 ns;
        reset <= '0';
        wait for 50 ns;
        pos <= "0000000";
        wait for 20 ms;
        pos <= "0101000";
        wait for 20 ms;
        pos <= "1010000";
        wait for 20 ms;
        pos <= "1111000";
        wait for 20 ms;
        pos <= "1111111";
        wait;
    end process;

end Behavioral;