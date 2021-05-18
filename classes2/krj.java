public enum krj {
  CESTA_BASICA, DEFAULT, FUNERAL, HELPER, HELP_DESK, MEDIC, SORTEIOS_MENSAIS, TRIP;
  
  static {
    MEDIC = new krj("MEDIC", 1);
    HELPER = new krj("HELPER", 2);
    FUNERAL = new krj("FUNERAL", 3);
    SORTEIOS_MENSAIS = new krj("SORTEIOS_MENSAIS", 4);
    CESTA_BASICA = new krj("CESTA_BASICA", 5);
    HELP_DESK = new krj("HELP_DESK", 6);
    DEFAULT = new krj("DEFAULT", 7);
    $VALUES = new krj[] { TRIP, MEDIC, HELPER, FUNERAL, SORTEIOS_MENSAIS, CESTA_BASICA, HELP_DESK, DEFAULT };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\krj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */