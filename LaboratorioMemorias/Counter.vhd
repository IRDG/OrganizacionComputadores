
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

EnableCounter => SLV,
--				ResetCount    => SLV,
--				Reset         => SLV,
--				Clk           => SLV,
--				Count         => SLV

ENTITY Counter IS
	
	PORT	 (
				EnableCounter : IN  STD_LOGIC;
				ResetCount    : IN  STD_LOGIC;
				Reset         : IN  STD_LOGIC;
				Clk           : IN  STD_LOGIC;
				Count         : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
			 );
	
END ENTITY Counter;

ARCHITECTURE CounterArch OF Counter IS

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
--BlockN: ENTITY WORK.Counter
--PORT MAP	  (EnableCounter => SLV,
--				ResetCount    => SLV,
--				Reset         => SLV,
--				Clk           => SLV,
--				Count         => SLV
--			  );
--******************************************************--

END CounterArch;