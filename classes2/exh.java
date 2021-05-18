public class exh {
  private final int a;
  
  private final int b;
  
  public exh(int paramInt1, int paramInt2) {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public final int a() {
    return this.a;
  }
  
  public final int b() {
    return this.b;
  }
  
  public final boolean equals(Object paramObject) {
    if (paramObject instanceof exh) {
      paramObject = paramObject;
      if (this.a == ((exh)paramObject).a && this.b == ((exh)paramObject).b)
        return true; 
    } 
    return false;
  }
  
  public final int hashCode() {
    return this.a ^ this.b;
  }
  
  public final String toString() {
    return this.a + "(" + this.b + ')';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */