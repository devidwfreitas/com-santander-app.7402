public class coh {
  static int a = 31;
  
  private int b = 1;
  
  public int a() {
    return this.b;
  }
  
  public coh a(Object paramObject) {
    int j = a;
    int k = this.b;
    if (paramObject == null) {
      byte b = 0;
      this.b = b + k * j;
      return this;
    } 
    int i = paramObject.hashCode();
    this.b = i + k * j;
    return this;
  }
  
  public coh a(boolean paramBoolean) {
    int i = a;
    int j = this.b;
    if (paramBoolean) {
      byte b1 = 1;
      this.b = b1 + j * i;
      return this;
    } 
    byte b = 0;
    this.b = b + j * i;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\coh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */