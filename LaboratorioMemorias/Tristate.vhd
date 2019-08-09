
--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--                Disegno Digital                       --
--          Seccion de Tecnicas Digitales               --
-- 													              --
-- Titulo :                                             --
-- Fecha  :  	D:XX M:XX Y:2019                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:
-- 
-- 
--******************************************************--

ENTITY Tristate IS
	
	GENERIC(
				DataLength: INTEGER := 7
			 );
	PORT	 (
				MyIn  : IN  STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0);
				Sel   : IN  STD_LOGIC;
				MyOut : OUT STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0)
			 );
	
END ENTITY Tristate;

ARCHITECTURE TristateArch OF Tristate IS

SIGNAL HighZ : STD_LOGIC_VECTOR(Control-1 DOWNTO 0);

BEGIN

--******************************************************--
-- 
-- 
-- 
--******************************************************--

MyOut <= HighZ WHEN (Sel = '1')
					ELSE  MyIn;

--******************************************************--
-- 
-- Summon This Block:
-- 
--******************************************************--
--BlockN: ENTITY WORK.Tristate 
--GENERIC MAP(DataLength => #
--			  )
--PORT MAP	  (MyIn => SLV,
--				Sel  => SLV,
--				MyOut => SLV
--			  );
--******************************************************--

END TristateArch;