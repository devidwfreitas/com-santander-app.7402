public enum ffo {
  BOOLEAN, FLOAT, INT, STRING;
  
  static {
    FLOAT = new ffo("FLOAT", 2);
    STRING = new ffo("STRING", 3);
    $VALUES = new ffo[] { BOOLEAN, INT, FLOAT, STRING };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */