```vhdl
ENTITY my_entity IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF my_entity IS
  SIGNAL internal_reg : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
BEGIN
  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF reset = '1' THEN
        internal_reg <= "00000000";
      ELSE
        internal_reg <= data_in;
      END IF;
    END IF;
  END PROCESS;

  data_out <= internal_reg;
END ARCHITECTURE;
```