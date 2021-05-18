import android.support.annotation.Nullable;

public class bqg {
  private bqf a;
  
  private int b;
  
  public static bqg a() {
    bqg bqg1 = new bqg();
    bqg1.b = -1;
    return bqg1;
  }
  
  public static bqg a(bqf parambqf, int paramInt) {
    bqg bqg1 = new bqg();
    bqg1.a = parambqf;
    bqg1.b = paramInt;
    return bqg1;
  }
  
  @Nullable
  public bqf b() {
    return this.a;
  }
  
  public int c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */