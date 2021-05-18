final class eux {
  private final int a;
  
  private final euw[] b;
  
  private eux(int paramInt, euw parameuw) {
    this.a = paramInt;
    this.b = new euw[] { parameuw };
  }
  
  private eux(int paramInt, euw parameuw1, euw parameuw2) {
    this.a = paramInt;
    this.b = new euw[] { parameuw1, parameuw2 };
  }
  
  int a() {
    return this.a;
  }
  
  euw[] b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eux.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */