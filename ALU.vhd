----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:16:24 03/27/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( ALUop : in  STD_LOGIC_VECTOR(5 downto 0);
           Dato1 : in  STD_LOGIC_VECTOR(31 downto 0);
           Dato2 : in  STD_LOGIC_VECTOR(31 downto 0);
           ALUresult : out  STD_LOGIC_VECTOR(31 downto 0));
end ALU;

architecture Behavioral of ALU is

	signal ALUresult_aux : STD_LOGIC_VECTOR(31 downto 0);

begin

	process(ALUop,Dato1,Dato2)
	
	begin
		
		if(ALUop = "000000")then --add
			ALUresult_aux <= Dato1+Dato2;
		end if;
		
		if(ALUop = "000100")then --sub
			ALUresult_aux <= Dato1-Dato2;
		end if;
		
		if(ALUop = "000001")then --and
			ALUresult_aux <= (Dato1 and Dato2);
		end if;
		
		if(ALUop = "000101")then --andn
			ALUresult_aux <= (Dato1 and not(Dato2));
		end if;		

		if(ALUop = "000010")then --or
			ALUresult_aux <= (Dato1 or Dato2);
		end if;
		
		if(ALUop = "000110")then --orn
			ALUresult_aux <= (Dato1 or not(Dato2));
		end if;
		
		if(ALUop = "00011")then --xor 
			ALUresult_aux <= (Dato1 xor Dato2);
		end if;

		if(ALUop = "000111")then --xnor 
			ALUresult_aux <= (Dato1 xnor Dato2);
		end if;		
		
	end process;

	ALUresult <= ALUresult_aux;


end Behavioral;

