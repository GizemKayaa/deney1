Library Ieee;
Use Ieee.std_logic_1164.all;

Entity e24decoder is
 Port (input :in std_logic_vector(1 downto 0);
   output : out std_logic_vector(3 downto 0));
   
 end e24decoder;
 
 Architecture Behv of e24decoder is
   Begin
     
     output(0) <= (not input(1)) and (not input(0));
     output(1) <= (not input(1)) and  input(0);
     output(2) <=  input(1) and (not input(0));
     output(3) <=  input(1) and  input(0);
   
 end Behv;