public final class epz {
  private final int a;
  
  private final int b;
  
  public epz(int paramInt1, int paramInt2) {
    if (paramInt1 < 0 || paramInt2 < 0)
      throw new IllegalArgumentException(); 
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public int a() {
    return this.a;
  }
  
  public int b() {
    return this.b;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject instanceof epz) {
      paramObject = paramObject;
      bool1 = bool2;
      if (this.a == ((epz)paramObject).a) {
        bool1 = bool2;
        if (this.b == ((epz)paramObject).b)
          bool1 = true; 
      } 
    } 
    return bool1;
  }
  
  public int hashCode() {
    return this.a * 32713 + this.b;
  }
  
  public String toString() {
    return this.a + "x" + this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */