import java.security.InvalidParameterException;

public final class bow {
  private int a = 1048576;
  
  private int b = 1024;
  
  int a() {
    return this.a;
  }
  
  void a(int paramInt) {
    if (paramInt < 0)
      throw new InvalidParameterException("Cache byte-count limit must be >= 0"); 
    this.a = paramInt;
  }
  
  int b() {
    return this.b;
  }
  
  void b(int paramInt) {
    if (paramInt < 0)
      throw new InvalidParameterException("Cache file count limit must be >= 0"); 
    this.b = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */