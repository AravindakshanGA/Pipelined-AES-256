	component aes_enc_core is
		port (
			clk_clk           : in  std_logic                     := 'X'; -- clk
			reset_reset_n     : in  std_logic                     := 'X'; -- reset_n
			q_export_readdata : out std_logic_vector(63 downto 0)         -- readdata
		);
	end component aes_enc_core;

	u0 : component aes_enc_core
		port map (
			clk_clk           => CONNECTED_TO_clk_clk,           --      clk.clk
			reset_reset_n     => CONNECTED_TO_reset_reset_n,     --    reset.reset_n
			q_export_readdata => CONNECTED_TO_q_export_readdata  -- q_export.readdata
		);

