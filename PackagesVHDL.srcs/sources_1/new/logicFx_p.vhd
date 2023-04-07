----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2023 10:45:11 AM
-- Design Name: 
-- Module Name: logicFx_p - Behavioral
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

package logicFx_p is
    function and2Bit (
        iVect1 : in std_logic_vector (1 downto 0);   
        iVect2 : in std_logic_vector (1 downto 0) 
    )  
    return std_logic_vector;  
    
end package ;

package body logicFx_p is 

    function and2Bit (
        iVect1 : in std_logic_vector (1 downto 0);   
        iVect2 : in std_logic_vector (1 downto 0)  
    )
    return std_logic_vector is variable vectOut : std_logic_vector (1 downto 0); 

    begin
        vectOut(0) := iVect1(0) and iVect2(0); 
        vectOut(1) := iVect1(1) and iVect2(1);
        return vectOut; 
    end; 

end package body; 
