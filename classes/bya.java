class bya implements Runnable {
  private String a;
  
  private String b;
  
  bya(String paramString1, String paramString2) {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public void run() {
    bww.a(this.a, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bya.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */