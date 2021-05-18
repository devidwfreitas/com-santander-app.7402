import android.support.annotation.ColorInt;

public class azz {
  public String a;
  
  public String b;
  
  public int c;
  
  int d;
  
  public int e;
  
  double f;
  
  @ColorInt
  public int g;
  
  @ColorInt
  public int h;
  
  public int i;
  
  public boolean j;
  
  azz(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, double paramDouble, @ColorInt int paramInt4, @ColorInt int paramInt5, int paramInt6, boolean paramBoolean) {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
    this.f = paramDouble;
    this.g = paramInt4;
    this.h = paramInt5;
    this.i = paramInt6;
    this.j = paramBoolean;
  }
  
  void a(azz paramazz) {
    this.a = paramazz.a;
    this.b = paramazz.b;
    this.c = paramazz.c;
    this.d = paramazz.d;
    this.e = paramazz.e;
    this.f = paramazz.f;
    this.g = paramazz.g;
  }
  
  public int hashCode() {
    int i = this.a.hashCode();
    int j = this.b.hashCode();
    int k = this.c;
    int m = this.d;
    int n = this.e;
    long l = Double.doubleToLongBits(this.f);
    return (((((i * 31 + j) * 31 + k) * 31 + m) * 31 + n) * 31 + (int)(l ^ l >>> 32L)) * 31 + this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\azz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */