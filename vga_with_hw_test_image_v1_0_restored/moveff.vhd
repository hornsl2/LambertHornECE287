library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;

entity moveff is
   port
   (
      clk : in std_logic;

      rst : in std_logic;
      pre : in std_logic;
      ce  : in std_logic;
      
      d : in std_logic_vector(5 downto 0);

      q : out std_logic_vector(5 downto 0)
   );
end moveff;
 
architecture Behavioral of moveff is
begin
   process (clk) is
   begin
      if rising_edge(clk) then  
         if (rst='1') then   
            q <= "000000";
--         elsif (pre='1') then
--            q <= "000001";
         elsif (ce= '1') then
            q <= d;
         end if;
      end if;
   end process;
end architecture Behavioral;