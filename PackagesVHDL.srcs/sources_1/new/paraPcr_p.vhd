----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2023 08:13:43 AM
-- Design Name: 
-- Module Name: paraPcr_p - Behavioral
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

package paraPcr_p is
    procedure nBitReg ( signal en : in std_logic; 
                        signal sclr : in std_logic;
                        signal aclr : in std_logic;
                        signal clk : in std_logic;
                        signal a : in std_logic_vector; 
                        signal q : out std_logic_vector
    ); 


end package;

package body paraPcr_p is
    procedure nBitReg ( signal en : in std_logic; 
                        signal sclr : in std_logic;
                        signal aclr : in std_logic;
                        signal clk : in std_logic;
                        signal a : in std_logic_vector; 
                        signal q : out std_logic_vector 
                        
    ) is
    begin
        if (aclr = '1') then
            q <= (others => '0'); 
        elsif (rising_edge(clk)) then
            if (sclr = '1') then
                q <= (others => '0'); 
            elsif (sclr = '0') then
                if (en = '1') then
                    q <= a; 
                end if ;
            end if ;    
        end if ;
    end procedure; 
    
end package body;

