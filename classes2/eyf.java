final class eyf extends eyh {
  private final String a;
  
  private final int b;
  
  private final boolean c;
  
  eyf(int paramInt, String paramString) {
    super(paramInt);
    this.a = paramString;
    this.c = false;
    this.b = 0;
  }
  
  eyf(int paramInt1, String paramString, int paramInt2) {
    super(paramInt1);
    this.c = true;
    this.b = paramInt2;
    this.a = paramString;
  }
  
  String a() {
    return this.a;
  }
  
  boolean b() {
    return this.c;
  }
  
  int c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */