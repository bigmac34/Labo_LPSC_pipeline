-------------------------------------------------------------------------------
-- Title       : Architecture calcul fractal de mandelbrot
-- Project     : Labo LPSC fractal
-------------------------------------------------------------------------------
-- File        : GestionBouton.vhd
-- Authors     : Jérémie Macchi
-- Company     : HES-SO Master
-- Created     : 26.03.2018
-- Last update : 07.03.2018
-- Platform    : Vivado (synthesis)
-- Standard    : VHDL'08
-------------------------------------------------------------------------------
-- Description: Architecture pour le calcul de fractal pour le Labo de LPSC
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 08.05.2018   1.0		 JMI 	 Created
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

-----------------------------
-- D�claration de l'entit� --
-----------------------------
entity mandelbrot_calculator is
generic (comma	: integer := 12;	-- nombres de bits après la virgule
	max_iter	: integer := 100;
	SIZE		: integer := 16;
	SCREEN_RES 	: integer := 10;
	SIZE_INTER  : integer := 7);
port (
	clk 		: in 	std_logic;
	rst 		: in 	std_logic;
	ready		: out	std_logic;
	start		: in 	std_logic;
	finished	: out	std_logic;
	c_real		: in	std_logic_vector(SIZE-1 downto 0);
	c_imaginary	: in 	std_logic_vector(SIZE-1 downto 0);
	z_real		: out 	std_logic_vector(SIZE-1 downto 0);
	z_imaginary	: out 	std_logic_vector(SIZE-1 downto 0);
	iterations	: out 	std_logic_vector(SIZE_INTER-1 downto 0);

	x_screen_i  : in	std_logic_vector (SCREEN_RES-1 downto 0);
	y_screen_i  : in 	std_logic_vector (SCREEN_RES-1 downto 0);
	x_screen_o  : out 	std_logic_vector (SCREEN_RES-1 downto 0);
	y_screen_o  : out 	std_logic_vector (SCREEN_RES-1 downto 0)
);
end mandelbrot_calculator;

--------------------
--	Architecture  --
--------------------
architecture calculator of mandelbrot_calculator is

	type tab_complexe is array (0 to 2) of std_logic_vector(SIZE-1 downto 0);
	type tab_screen is array (0 to 2) of std_logic_vector(SCREEN_RES-1 downto 0);

	------------------
	--  Constantes  --
	------------------
	-- Etat de la machine d'état
	constant S_READY	: std_logic := '0';
	constant S_PROCESS	: std_logic := '1';

	-- Etat pour la machine d'�tat compteur
	constant S0	: std_logic_vector (1 downto 0) := "00";
	constant S1	: std_logic_vector (1 downto 0) := "01";
	constant S2	: std_logic_vector (1 downto 0) := "10";
	constant S_FAILURE	: std_logic_vector (1 downto 0) := "11";

	constant DOUBLE_SIZE : integer := 2*SIZE;
	-- Valeur limite pour la comparaison (2^2 = 4)
	constant val_limite : std_logic_vector(DOUBLE_SIZE-1 downto 0) := "00000100" & "000000000000000000000000";

	---------------
	--  Signaux  --
	---------------
	signal ready_s			: std_logic;
	signal start_s			: std_logic;
	signal finished_s		: std_logic;
	signal z_real_s			: std_logic_vector(SIZE-1 downto 0);
	signal z_imaginary_s	: std_logic_vector(SIZE-1 downto 0);
	signal iterations_s		: std_logic_vector(SIZE_INTER-1 downto 0);
	signal c_real_s			: std_logic_vector(SIZE-1 downto 0);
	signal c_imaginary_s	: std_logic_vector(SIZE-1 downto 0);
	signal x_screen_s		: std_logic_vector(SCREEN_RES-1 downto 0);
	signal y_screen_s		: std_logic_vector(SCREEN_RES-1 downto 0);

	-- buffer pour les entrees
	signal c_buf_real_s			: std_logic_vector(SIZE-1 downto 0);
	signal c_buf_imaginary_s	: std_logic_vector(SIZE-1 downto 0);
	signal x_buf_screen_s		: std_logic_vector(SCREEN_RES-1 downto 0);
	signal y_buf_screen_s		: std_logic_vector(SCREEN_RES-1 downto 0);

	-- Tableau pour la gestion du pipeline
	signal c_tab_real_s 		: tab_complexe;
	signal c_tab_imaginary_s 	: tab_complexe;
	signal x_tab_screen_s 		: tab_screen;
	signal y_tab_screen_s 		: tab_screen;

	-- Signaux intermediaires pour les calculs
	signal z_real2_s				: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_imaginary2_s			: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_real_x_imaginary_s		: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_2_real_x_imaginary_s	: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_real2_sub_imaginary2_s	: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_real2_add_imaginary2_s	: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_real_fut_s				: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_imaginary_fut_s		: std_logic_vector(DOUBLE_SIZE-1 downto 0);

	-- Signaux pour de sorties des bascules
	signal z_new_real_s				: std_logic_vector(SIZE-1 downto 0);
	signal z_new_imaginary_s		: std_logic_vector(SIZE-1 downto 0);
	signal new_iterations_s			: std_logic_vector(SIZE_INTER-1 downto 0);
	signal new_iterations2_s			: std_logic_vector(SIZE_INTER-1 downto 0);
	signal new_iterations3_s			: std_logic_vector(SIZE_INTER-1 downto 0);

	signal z_new_real2_s				: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_new_imaginary2_s			: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_new_real_x_imaginary_s		: std_logic_vector(DOUBLE_SIZE-1 downto 0);

	signal z_new_2_real_x_imaginary_s	: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_new_real2_sub_imaginary2_s	: std_logic_vector(DOUBLE_SIZE-1 downto 0);
	signal z_new_real2_add_imaginary2_s	: std_logic_vector(DOUBLE_SIZE-1 downto 0);

	-- Signaux de controle
	signal enable_calcul: std_logic;
	signal rst_calcul: std_logic;

	-- Signaux pour la machine d'etat
	signal EtatPresent: std_logic;
	signal EtatFutur: std_logic;

	-- Signaux pour la machine d'�tat compteur
	signal EtatPresentCompt: std_logic_vector(1 downto 0);
	signal EtatFuturCompt: std_logic_vector(1 downto 0);
	signal compteur: integer;

-------------
--	Begin  --
-------------
begin
	-------------------------------
	--  Assignation des signaux  --
	-------------------------------
	z_real 		<= z_real_s;
	z_imaginary <= z_imaginary_s;
	iterations 	<= iterations_s;
	finished	<= finished_s;
	--c_real_s	<= c_real;
	--c_imaginary_s	<= c_imaginary;
	c_buf_real_s		<= c_real;
	c_buf_imaginary_s	<= c_imaginary;
	x_buf_screen_s		<= x_screen_i;
	y_buf_screen_s		<= y_screen_i;

	--------------------
	--  Combinatoire  --
	--------------------
	combinatoire : process(ready_s, c_real, c_imaginary, z_new_real_s, z_new_imaginary_s, z_real_s, z_imaginary_s, z_real_x_imaginary_s, z_real2_s, z_imaginary2_s, z_2_real_x_imaginary_s, z_real2_add_imaginary2_s, iterations_s, enable_calcul, z_real2_sub_imaginary2_s,
							z_new_real_x_imaginary_s,z_new_real2_s,z_new_imaginary2_s, z_new_real2_sub_imaginary2_s, c_real_s, z_new_2_real_x_imaginary_s, c_imaginary_s)
	begin
		--  Multiplexeur  --
		z_real_s 		<= z_new_real_s;
		z_imaginary_s 	<= z_new_imaginary_s;

		--  Multiplicateurs  --
		z_real2_s				<= std_logic_vector(signed(z_real_s) * signed(z_real_s));				-- ZR^2
		z_imaginary2_s			<= std_logic_vector(signed(z_imaginary_s) * signed(z_imaginary_s));		-- ZI^2
		z_real_x_imaginary_s	<= std_logic_vector(signed(z_real_s) * signed(z_imaginary_s));			-- ZR*ZI

		z_2_real_x_imaginary_s	<= std_logic_vector(z_new_real_x_imaginary_s(DOUBLE_SIZE-2 downto 0) & '0');-- 2*ZR*ZI

		--  Additionneurs - Soustracteurs  --
		z_real2_sub_imaginary2_s 	<= std_logic_vector(signed(z_new_real2_s) - signed(z_new_imaginary2_s));	-- ZR^2-ZI^2
		z_real2_add_imaginary2_s 	<= std_logic_vector(signed(z_new_real2_s) + signed(z_new_imaginary2_s));	-- ZR^2+ZI^2

		z_real_fut_s				<= std_logic_vector(signed(z_new_real2_sub_imaginary2_s) + signed(std_logic_vector'(c_real_s & "000000000000")));
		z_imaginary_fut_s			<= std_logic_vector(signed(z_new_2_real_x_imaginary_s) + signed(std_logic_vector'(c_imaginary_s & "000000000000")));

--		if(enable_calcul = '1') then
--			new_iterations_s			<= std_logic_vector(signed(iterations_s) + 1);
--		else
			new_iterations_s			<= std_logic_vector(signed(iterations_s));
--		end if;

		--  Comparateurs  --
		-- Valeurs plus grande que 2^2
		if(unsigned(z_new_real2_add_imaginary2_s) > unsigned(val_limite)) then
			finished_s 	<= '1';
		-- Fin des iterations
		elsif(unsigned(iterations_s) >= max_iter) then
			finished_s 	<= '1';
		else
			finished_s	<= '0';
		end if;
	end process;

	-----------------------------------------------
	--  Reset, Bascules et incrément iterations  --
	-----------------------------------------------
	bascules: process(clk, rst, rst_calcul, x_screen_s, y_screen_s)
	begin
		-- Reset asynchrone --
		if rst = '1' then
			z_new_real_s					<= (others => '0');
			z_new_imaginary_s				<= (others => '0');
			iterations_s					<= (others => '0');

			z_new_real2_s					<= (others => '0');
			z_new_imaginary2_s				<= (others => '0');

			z_new_2_real_x_imaginary_s		<= (others => '0');
			z_new_real2_sub_imaginary2_s	<= (others => '0');
			z_new_real2_add_imaginary2_s	<= (others => '0');

			 -- new_iterations_s				<= (others => '0');
			new_iterations2_s				<= (others => '0');
			new_iterations3_s				<= (others => '0');

			--z_real_fut_s					<= (others => '0');
			--z_imaginary_fut_s				<= (others => '0');

			c_tab_real_s 					<= (others => (others => '0'));
			c_tab_imaginary_s 				<= (others => (others => '0'));
			x_tab_screen_s 					<= (others => (others => '0'));
			y_tab_screen_s					<= (others => (others => '0'));

		elsif rising_edge(clk) then
			x_screen_o <= x_screen_s;
			y_screen_o <= y_screen_s;

			-- Multiplexeurs --
			if rst_calcul = '1' then
				--z_new_real_s					<= (others => '0');
				--z_new_imaginary_s				<= (others => '0');
				iterations_s					<= (others => '0');

				c_tab_real_s(compteur)			<= (c_buf_real_s);
				c_tab_imaginary_s(compteur) 	<= (c_buf_imaginary_s);
				x_tab_screen_s(compteur) 		<= (x_buf_screen_s);
				y_tab_screen_s(compteur) 		<= (y_buf_screen_s);

				  z_new_real2_add_imaginary2_s	<= (others => '0');
				  z_new_2_real_x_imaginary_s		<= (others => '0');
				  z_new_real2_sub_imaginary2_s		<= (others => '0');
				   --z_new_real2_add_imaginary2_s		<= (others => '0');
				   --new_iterations2_s				<= (others => '0');

				  -- z_new_real2_s					<= (others => '0');
				  -- z_new_imaginary2_s				<= (others => '0');
				  -- z_new_real_x_imaginary_s			<= (others => '0');

			elsif (enable_calcul = '1') then
				-- 1er etage de bascule
				z_new_real2_s					<= z_real2_s;
				z_new_imaginary2_s				<= z_imaginary2_s;
				z_new_real_x_imaginary_s		<= z_real_x_imaginary_s;

				-- 2e etage de bascule
				z_new_2_real_x_imaginary_s		<= z_2_real_x_imaginary_s;
				z_new_real2_sub_imaginary2_s	<= z_real2_sub_imaginary2_s;
				z_new_real2_add_imaginary2_s	<= z_real2_add_imaginary2_s;

				-- 3e etage de bascule
				--  Caster au bon endroit pour la gestion de la virgule
				z_new_real_s	 	<= z_real_fut_s((SIZE+comma-1) downto comma);
				z_new_imaginary_s	<= z_imaginary_fut_s((SIZE+comma-1) downto comma);

					--new_iterations_s			<= std_logic_vector(signed(iterations_s) + 1);

				new_iterations2_s	<= new_iterations_s;
				new_iterations3_s	<= new_iterations2_s;
				iterations_s	    <= std_logic_vector(signed(new_iterations3_s) + 1);-- new_iterations3_s;
			end if;
		end if;
	end process;

	----------------------
	--  Machine d'etat  --
	----------------------
	machine_etat: process(EtatPresent, start, finished_s)
	begin
		-- Valeurs par defaut
		EtatFutur 		<= S_READY;
		enable_calcul 	<= '0';
		ready 			<= '0';
		rst_calcul 		<= '0';

		case EtatPresent is
			-- Pret a lancer un nouveau calcul --
			when S_READY  =>
				ready <= '1';
				if (start = '1') then
					-- Mise à zero avant nouveau calcul
					rst_calcul <= '1';
					   --enable_calcul <= '1';
					EtatFutur <= S_PROCESS;
				else
					EtatFutur <= S_READY;
				end if;

			-- Calcul et cours --
			when S_PROCESS  =>
				if (finished_s = '1') then
					EtatFutur 	<= S_READY;
				else
					enable_calcul <= '1';
					EtatFutur <= S_PROCESS;
				end if;

			when others => null;
		end case;
	end process;

	----------------------
	--  Machine d'etat  --
	----------------------
	machine_etat_compt: process(EtatPresentCompt)
	begin
		-- Valeurs par defaut
		EtatFuturCompt 	<= S0;
		c_real_s 		<= c_tab_real_s(0);
		c_imaginary_s 	<= c_tab_imaginary_s(0);
		x_screen_s 		<= x_tab_screen_s(0);
		y_screen_s 		<= y_tab_screen_s(0);

		compteur <= 0;

		case EtatPresentCompt is
			-- Prêt �  lancer un nouveau calcul --
			when S0  =>
				c_real_s		<= c_tab_real_s(0);
				c_imaginary_s 	<= c_tab_imaginary_s(0);
				x_screen_s 		<= x_tab_screen_s(0);
				y_screen_s 		<= y_tab_screen_s(0);

				compteur <= 0;
				EtatFuturCompt <= S1;

			-- Calcul et cours --
			when S1  =>
				c_real_s 		<= c_tab_real_s(1);
				c_imaginary_s	<= c_tab_imaginary_s(1);
				x_screen_s 		<= x_tab_screen_s(1);
				y_screen_s 		<= y_tab_screen_s(1);

				compteur <= 1;
				EtatFuturCompt <= S2;

			when S2  =>
				c_real_s 		<= c_tab_real_s(2);
				c_imaginary_s 	<= c_tab_imaginary_s(2);
				x_screen_s 		<= x_tab_screen_s(2);
				y_screen_s 		<= y_tab_screen_s(2);

				compteur <=2;
				EtatFuturCompt <= S0;

			when others => null;
		end case;
	end process;

	------------------------------------
	--  Gestion des machine d'etat  --
	------------------------------------
	process (clk, rst, enable_calcul)
	begin
		if (rst = '1') then
			EtatPresent <= S_READY;
			EtatPresentCompt <= S0;

		elsif Rising_Edge(clk) then
			EtatPresent <= EtatFutur;
			if (enable_calcul = '1') then
				EtatPresentCompt <= EtatFuturCompt;
			end if;
		end if;
	end process;

end calculator;
