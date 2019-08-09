
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

ENTITY LabMemorias IS
	
	GENERIC(
				DataLength : INTEGER :=  8;
				AddressBus : INTEGER := 12;  -- 4096 espacios de memoria
			 );
	PORT	 (
				Reset     : IN  STD_LOGIC;
				Clk       : IN  STD_LOGIC;
				WRN       : OUT STD_LOGIC;
				CSN       : OUT STD_LOGIC;
				OEN       : OUT STD_LOGIC;
				AddressRw : OUT STD_LOGIC_VECTOR(AddressBus-1 DOWNTO 0);
				DataIn    : OUT STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0);
				DataOut   : OUT STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0);
				SpyMemory : OUT STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0)
			 );
	
END ENTITY LabMemorias;

ARCHITECTURE LabMemoriasArch OF LabMemorias IS

SIGNAL DataBusRom    : STD_LOGIC_VECTOR( 7 DOWNTO 0);
SIGNAL AddressBusRom : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL EnableRom     : STD_LOGIC;

SIGNAL MaxCount   : STD_LOGIC;
SIGNAL ResetCount : STD_LOGIC;
SIGNAL Address    : STD_LOGIC_VECTOR(9 DOWNTO 0);

SIGNAL EnableReadRegister : STD_LOGIC;
SIGNAL ReadRegisterOut    : STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0);

SIGNAL InnerRegisterIn     : STD_LOGIC_VECTOR(DataLength-1 DOWNTO 0);
SIGNAL EnableInnerRegister : STD_LOGIC;

SIGNAL SelectMode : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN

--******************************************************--
-- 
-- 
-- 
--******************************************************--

AddressBusRom <= Address;
AddressRW     <= Address;

ROM: ENTITY WORK.RomMemory
PORT MAP	  (Address => AddressBusRom,
				Rden    => EnableRom,
				Clock   => Clk,
				Q       => DataBusRom
			  );

Control: ENTITY WORK.ControlUnit
PORT MAP	  (Reset               => Reset,
				MaxCount            => MaxCount,
				Clk                 => Clk,
				EnableCounter       => EnableCounter,
				ResetCount          => ResetCount,
				EnableRom           => EnableRom,
				CSN                 => CSN,
				OEN                 => OEN,
				WRN                 => WRN,
				EnableReadRegister  => EnableReadRegister,
				EnableInnerRegister => EnableInnerRegister	
			  );

AddressCounter: ENTITY WORK.Counter
PORT MAP	  (EnableCounter => EnableCounter,
				ResetCount    => ResetCount,
				Reset         => Reset,
				Clk           => Clk,
				Count         => Address
			  );


EndCount: ENTITY WORK.CounterEnd
PORT MAP	  (Count      => Address,
				MaxCount   => MaxCount
			  );


ReadRegister: ENTITY WORK.RegisterDeAq
GENERIC MAP(DataSize     => DataLength,
				NumberOfData => 1
			  )
PORT MAP	  (DataIn  => DataBusRom,
				Enable  => EnableReadRegister,
				Address => '0',
				Clk     => Clk,
				DataOut => ReadRegisterOut
			  );


BidirectionalStructure: ENTITY WORK.Bidirectional
GENERIC MAP(DataSize     => DataLength
			  )
PORT MAP	  (DataIn     => ReadRegisterOut,
				SelectMode => SelectMode,
				DataOut    => InnerRegisterIn,
				DataInOut  => DataInOut
			  );


InnerRegister: ENTITY WORK.RegisterDeAq
GENERIC MAP(DataSize     => DataLength,
				NumberOfData => 10
			  )
PORT MAP	  (DataIn  => InnerRegisterIn,
				Enable  => EnableInnerRegister,
				Address => Address,
				Clk     => Clk,
				DataOut => SpyMemory
			  );

--******************************************************--
-- 
-- Summon This Block:
-- 
--******************************************************--
--BlockN: ENTITY WORK.LabMemorias 
--GENERIC MAP(GenericVar => #
--			  )
--PORT MAP	  (Sig => SLV,
--				Sig => SLV,
--				Sig => SLV,
--				Sig => SLV
--			  );
--******************************************************--

END LabMemoriasArch;