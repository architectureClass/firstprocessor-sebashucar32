----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:33:29 03/30/2017 
-- Design Name: 
-- Module Name:    MUX_PROCESADOR - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_PROCESADOR is
    Port ( CRs2 : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           imm : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           i : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(31 DOWNTO 0)
            );
end MUX_PROCESADOR;

architecture Behavioral of MUX_PROCESADOR is

begin
process (CRs2,imm,i)
begin

    if (i = '0') then
			S<=CRs2;
	 elsif (i = '1')then
			S<=imm;
	 end if;
	 
end process;

end Behavioral;

