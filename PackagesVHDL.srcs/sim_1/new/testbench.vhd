----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2023 08:32:49 AM
-- Design Name: 
-- Module Name: testbench - Behavioral
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

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

component nBitReg_s is 
    port (  en : in std_logic;
            sclr : in std_logic;
            aclr : in std_logic; 
            clk : in std_logic;
            a : in std_logic_vector (3 downto 0);
            q : out std_logic_vector (3 downto 0);
            qPCR : out std_logic_vector (3 downto 0)
    ); 
end component; 

signal en, sclr, aclr, clk : std_logic; 
signal a, q, qPCR : std_logic_vector (3 downto 0); 

constant clk_period : time := 20ns; 
signal clk_stop : boolean; 
begin

    dut : nBitReg_s 
    port map (
        en => en, 
        sclr => sclr, 
        aclr => aclr, 
        clk => clk, 
        a => a, 
        q => q, 
        qPCR => qPCR
    ); 

    clkproc : process 
    begin
        clk <= '1';  
        wait for clk_period/2; 
        clk <= '0'; 
        wait for clk_period/2; 
    end process ; -- clkproc

    stim : process
    begin
        en <= '1';
        sclr <= '1';
        aclr <= '0';
        a <= "0011"; 
        
        wait for 50ns; 
        
        sclr <= '0'; 

        wait for 50ns; 
        
        a <= "1101"; 

        wait for 50ns;

        aclr <= '1';

        wait for 51ns;

        aclr <= '0';

        wait; 
        
    end process ; -- stim


end Behavioral;