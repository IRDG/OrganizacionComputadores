
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

ENTITY RomTest IS

	-- Descripcion de I/O del bloque RomTest
	
	PORT	 (
				Start   : IN  STD_LOGIC;                      -- Segnal de inicio de la memoria ROM (Rden)
				Clk     : IN  STD_LOGIC;                      -- Segnal de reloj
				Address : IN  STD_LOGIC_VECTOR(10 DOWNTO 0);  -- Direccion de la memoria en dato a leer (11 bits (2048 posiciones))
																			 -- Address inicia desde 0
				Data    : OUT STD_LOGIC_VECTOR( 7 DOWNTO 0)   -- Informacion a recibir de la memoria -- segnal de salida = Valor recibido de memoria
			 );
	
END ENTITY RomTest;

ARCHITECTURE RomTestArch OF RomTest IS

BEGIN

--******************************************************--
-- 
-- 
-- 
--******************************************************--

-- Llamado a la IC de memria ROM
-- Entity puede ser cambiado cpor component?
-- X1 : nombre de la entidad

X1: ENTITY WORK.Memory
PORT MAP	  (Address => Address,
				Clock   => Clk,
				Rden    => Start,
				Q       => Data
			  );

--******************************************************--
-- 
-- Summon This Block:
-- 
--******************************************************--
--BlockN: ENTITY WORK.RomTest 
--PORT MAP	  (Start   => SLV,
--				Clk     => SLV,
--				Address => SLV,
--				Data    => SLV
--			  );
--******************************************************--

END RomTestArch;