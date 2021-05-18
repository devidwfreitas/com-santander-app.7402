public enum il {
  DEV, HI, HK, MBBDEPLOY, MBBOCU, PI, PROD;
  
  static {
    HK = new il("HK", 2);
    HI = new il("HI", 3);
    MBBOCU = new il("MBBOCU", 4);
    MBBDEPLOY = new il("MBBDEPLOY", 5);
    PROD = new il("PROD", 6);
    $VALUES = new il[] { DEV, PI, HK, HI, MBBOCU, MBBDEPLOY, PROD };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\il.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */