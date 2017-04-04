----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:04 03/30/2017 
-- Design Name: 
-- Module Name:    SEU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity SEU is
    Port ( instruccion : in  STD_LOGIC_VECTOR (12 DOWNTO 0);
           imm : out  STD_LOGIC_VECTOR (31 DOWNTO 0));
end SEU;

architecture Behavioral of SEU is

   signal aux1 : STD_LOGIC_VECTOR (18 DOWNTO 0) := (OTHERS => '0');
   signal aux2 : STD_LOGIC_VECTOR (18 DOWNTO 0) := (OTHERS => '1');

begin

 process (instruccion)
 
begin


		if(instruccion(12)='0') then
			imm <= aux1 & instruccion;
		elsif (instruccion(12)='1') then
			imm <= aux2 & instruccion;
		end if;

end process;
end Behavioral;

