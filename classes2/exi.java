public final class exi {
  private final int a;
  
  private final int[] b;
  
  private final eqo[] c;
  
  public exi(int paramInt1, int[] paramArrayOfint, int paramInt2, int paramInt3, int paramInt4) {
    this.a = paramInt1;
    this.b = paramArrayOfint;
    this.c = new eqo[] { new eqo(paramInt2, paramInt4), new eqo(paramInt3, paramInt4) };
  }
  
  public int a() {
    return this.a;
  }
  
  public int[] b() {
    return this.b;
  }
  
  public eqo[] c() {
    return this.c;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof exi) {
      paramObject = paramObject;
      if (this.a == ((exi)paramObject).a)
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */