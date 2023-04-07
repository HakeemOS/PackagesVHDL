----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2023 10:45:43 AM
-- Design Name: 
-- Module Name: arithFx_p - Behavioral
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

package arithFx_p is
    function log2n (
        nIn : in integer 
    )  
    return integer;  
    
end package ;

package body arithFx_p is 

    function log2n (
        nIn : in integer 
    )
    return integer is variable nOut, temp : integer; 

    begin
        temp := nIn; 
        nOut := 0; 
        logLoop : while ( temp > 1 ) loop
            temp := temp / 2; 
            nOut := nOut + 1; 
        end loop ; -- logLoop
        if ( nIn > 2**nOut) then
            nOut := nOut + 1; 
        end if ;
        return nOut; 
    end; 

end package body arithFx_p; 
