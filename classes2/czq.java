import android.os.Bundle;

public class czq {
  public static final czq a = new czq(0, 30, 3600);
  
  public static final czq b = new czq(1, 30, 3600);
  
  private final int c;
  
  private final int d;
  
  private final int e;
  
  private czq(int paramInt1, int paramInt2, int paramInt3) {
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
  }
  
  public int a() {
    return this.c;
  }
  
  public Bundle a(Bundle paramBundle) {
    paramBundle.putInt("retry_policy", this.c);
    paramBundle.putInt("initial_backoff_seconds", this.d);
    paramBundle.putInt("maximum_backoff_seconds", this.e);
    return paramBundle;
  }
  
  public int b() {
    return this.d;
  }
  
  public int c() {
    return this.e;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (!(paramObject instanceof czq))
        return false; 
      paramObject = paramObject;
      if (((czq)paramObject).c != this.c || ((czq)paramObject).d != this.d || ((czq)paramObject).e != this.e)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return ((this.c + 1 ^ 0xF4243) * 1000003 ^ this.d) * 1000003 ^ this.e;
  }
  
  public String toString() {
    int i = this.c;
    int j = this.d;
    int k = this.e;
    return (new StringBuilder(74)).append("policy=").append(i).append(" initial_backoff=").append(j).append(" maximum_backoff=").append(k).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */