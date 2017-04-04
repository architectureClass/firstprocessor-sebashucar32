----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:46 03/27/2017 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
    Port ( OP3 : in  STD_LOGIC_VECTOR(5 downto 0);
           OP : in  STD_LOGIC_VECTOR(1 downto 0);
           ALUop : out  STD_LOGIC_VECTOR(5 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is

	signal ALUop_aux : STD_LOGIC_VECTOR(5 downto 0);

begin
	
	process(OP3,OP)
	
	begin 
		if(op ="10")then
				if(OP3 = "000000")then --add
					ALUop_aux <= "000000";
				end if;	
				
				if(OP3 = "000100")then --sub
					ALUop_aux <= "000100";
				end if;
				
				if(OP3 = "000001")then --and
					ALUop_aux <= "000001";
				end if;
				
				if(OP3 = "000101")then --andn
					ALUop_aux <= "000101";
				end if;
				
				if(OP3 = "000010")then --or
					ALUop_aux <= "000010";
				end if;
				
				if(OP3 = "000110")then --orn
					ALUop_aux <= "000110";
				end if;
				
				if(OP3 = "000011")then --xor
					ALUop_aux <= "000011";
				end if;
				
				if(OP3 = "000111")then --xnor
					ALUop_aux <= "000111";
				end if;
		end if;
				


	
	end process;

	ALUop <= ALUop_aux;

end Behavioral;

