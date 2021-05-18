public enum gzr {
  DEFAULT, QR, SMS;
  
  static {
    QR = new gzr("QR", 1);
    DEFAULT = new gzr("DEFAULT", 2);
    $VALUES = new gzr[] { SMS, QR, DEFAULT };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gzr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */