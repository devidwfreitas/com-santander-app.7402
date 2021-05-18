final class eva {
  private final eqo a;
  
  private final eqo b;
  
  private final int c;
  
  private eva(eqo parameqo1, eqo parameqo2, int paramInt) {
    this.a = parameqo1;
    this.b = parameqo2;
    this.c = paramInt;
  }
  
  eqo a() {
    return this.a;
  }
  
  eqo b() {
    return this.b;
  }
  
  public int c() {
    return this.c;
  }
  
  public String toString() {
    return this.a + "/" + this.b + '/' + this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eva.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */