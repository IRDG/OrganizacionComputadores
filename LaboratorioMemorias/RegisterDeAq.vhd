
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

ENTITY RegisterDeAq IS
	
	GENERIC(
				Control: INTEGER := 7
			 );
	PORT	 (
				BitX1_In : IN  STD_LOGIC;
				BitY1_In : IN  STD_LOGIC;
				BitZ1_In : IN  STD_LOGIC;
				SP1_Out  : OUT STD_LOGIC
			 );
	
END ENTITY RegisterDeAq;

ARCHITECTURE RegisterDeAqArch OF RegisterDeAq IS

BEGIN

--******************************************************--
-- 
-- 
-- 
--******************************************************--



--******************************************************--
-- 
-- Summon This Block:
-- 
--******************************************************--
--BlockN: ENTITY WORK.RegisterDeAq 
--GENERIC MAP(GenericVar => #
--			  )
--PORT MAP	  (Sig => SLV,
--				Sig => SLV,
--				Sig => SLV,
--				Sig => SLV
--			  );
--******************************************************--

END RegisterDeAqArch;