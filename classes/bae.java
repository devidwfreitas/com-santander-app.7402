import java.util.List;

public class bae {
  private final List<bdj> a;
  
  private final char b;
  
  private final int c;
  
  private final double d;
  
  private final String e;
  
  private final String f;
  
  bae(List<bdj> paramList, char paramChar, int paramInt, double paramDouble, String paramString1, String paramString2) {
    this.a = paramList;
    this.b = paramChar;
    this.c = paramInt;
    this.d = paramDouble;
    this.e = paramString1;
    this.f = paramString2;
  }
  
  public static int a(char paramChar, String paramString1, String paramString2) {
    return ((paramChar + 0) * 31 + paramString1.hashCode()) * 31 + paramString2.hashCode();
  }
  
  public List<bdj> a() {
    return this.a;
  }
  
  int b() {
    return this.c;
  }
  
  public double c() {
    return this.d;
  }
  
  String d() {
    return this.e;
  }
  
  public int hashCode() {
    return a(this.b, this.f, this.e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */