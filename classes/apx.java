public enum apx {
  HG, HI, HK, OCULTO, PI, PROD;
  
  static {
    PI = new apx("PI", 1);
    HK = new apx("HK", 2);
    HI = new apx("HI", 3);
    HG = new apx("HG", 4);
    OCULTO = new apx("OCULTO", 5);
    $VALUES = new apx[] { PROD, PI, HK, HI, HG, OCULTO };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\apx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */