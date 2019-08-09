
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

ENTITY ControlUnit IS
	
	PORT	 (
				Reset               : IN  STD_LOGIC;
				MaxCount            : IN  STD_LOGIC;
				Clk                 : IN  STD_LOGIC;
				EnableCounter       : OUT STD_LOGIC;
				ResetCount          : OUT STD_LOGIC;
				EnableRom           : OUT STD_LOGIC;
				CSN                 : OUT STD_LOGIC;
				OEN                 : OUT STD_LOGIC;
				WRN                 : OUT STD_LOGIC;
				EnableReadRegister  : OUT STD_LOGIC;
				EnableInnerRegister : OUT STD_LOGIC
			 );
	
END ENTITY ControlUnit;

ARCHITECTURE ControlUnitArch OF ControlUnit IS

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
--BlockN: ENTITY WORK.ControlUnit
--PORT MAP	  (Reset               => SLV,
--				MaxCount            => SLV,
--				Clk                 => SLV,
--				EnableCounter       => SLV,
--				ResetCount          => SLV,
--				EnableRom           => SLV,
--				CSN                 => SLV,
--				OEN                 => SLV,
--				WRN                 => SLV,
--				EnableReadRegister  => SLV,
--				EnableInnerRegister => SLV	
--			  );
--******************************************************--

END ControlUnitArch;