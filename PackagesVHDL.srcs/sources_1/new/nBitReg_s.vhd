----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2023 02:48:49 PM
-- Design Name: 
-- Module Name: nBitReg_s - Behavioral
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

library myLib;
use myLib.paraPcr_p.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nBitReg_s is
    generic (N : integer  := 4); 
    port (  en : in std_logic;
            sclr : in std_logic;
            aclr : in std_logic; 
            clk : in std_logic;
            a : in std_logic_vector (N-1 downto 0);
            q : out std_logic_vector (N-1 downto 0);
            qPCR : out std_logic_vector (N-1 downto 0)
    );
end nBitReg_s;

architecture Behavioral of nBitReg_s is
signal qTemp : std_logic_vector (N-1 downto 0); 
begin
    proc1 : process( clk, en, sclr, aclr )
    begin
        if (aclr = '1') then
            qTemp <= (others => '0'); 
        elsif (rising_edge(clk)) then
            if (sclr = '1') then
                qTemp <= (others => '0'); 
            elsif (sclr = '0') then
                if (en = '1') then
                    qTemp <= a; 
                end if ;
            end if ;
        end if ;
    end process ; -- proc1

q <= qTemp; 
nBitReg(en, sclr, aclr, clk, a, qPCR); 


end Behavioral;
