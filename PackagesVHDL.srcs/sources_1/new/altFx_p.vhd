----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2023 08:44:35 AM
-- Design Name: 
-- Module Name: altFx_p - Behavioral
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

package altFx_p is
    function BtoSevSeg (
        bIn : in std_logic_vector (3 downto 0)
    )  
    return std_logic_vector;  
    
end package ;

package body altFx_p is 

function BtoSevSeg (
    bIn : in std_logic_vector (3 downto 0)
)  
return std_logic_vector is variable sevSegOut : std_logic_vector (6 downto 0);  

    begin
        case( bIn ) is
            when "0001" => sevSegOut := "1111001"; 
            when "0010" => sevSegOut := "0100100";
            when "0011" => sevSegOut := "0110000"; 
            when "0100" => sevSegOut := "0011001"; 
            when "0101" => sevSegOut := "0010010";    
            when "0110" => sevSegOut := "0000010"; 
            when "0111" => sevSegOut := "1111000"; 
            when "1000" => sevSegOut := "0000000"; 
            when "1001" => sevSegOut := "0010000"; 
            when others => sevSegOut := "1000000"; 
        end case ;
        return sevSegOut; 
    end; 

end package body altFx_p; 

