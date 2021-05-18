enum ffp {
  LooperCreated, LooperExist, LooperMissing;
  
  static {
    LooperCreated = new ffp("LooperCreated", 1);
    LooperMissing = new ffp("LooperMissing", 2);
    $VALUES = new ffp[] { LooperExist, LooperCreated, LooperMissing };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */