import java.util.EnumSet;
import java.util.Map;

public final class boj {
  private boolean a;
  
  private String b;
  
  private boolean c;
  
  private boolean d;
  
  private int e;
  
  private EnumSet<bqo> f;
  
  private Map<String, Map<String, bok>> g;
  
  private boolean h;
  
  private bod i;
  
  private String j;
  
  private String k;
  
  public boj(boolean paramBoolean1, String paramString1, boolean paramBoolean2, boolean paramBoolean3, int paramInt, EnumSet<bqo> paramEnumSet, Map<String, Map<String, bok>> paramMap, boolean paramBoolean4, bod parambod, String paramString2, String paramString3) {
    this.a = paramBoolean1;
    this.b = paramString1;
    this.c = paramBoolean2;
    this.d = paramBoolean3;
    this.g = paramMap;
    this.i = parambod;
    this.e = paramInt;
    this.h = paramBoolean4;
    this.f = paramEnumSet;
    this.j = paramString2;
    this.k = paramString3;
  }
  
  public static bok a(String paramString1, String paramString2, String paramString3) {
    if (bqq.a(paramString2) || bqq.a(paramString3))
      return null; 
    boj boj1 = bol.a(paramString1);
    if (boj1 != null) {
      Map map = boj1.h().get(paramString2);
      if (map != null)
        return (bok)map.get(paramString3); 
    } 
    return null;
  }
  
  public boolean a() {
    return this.a;
  }
  
  public String b() {
    return this.b;
  }
  
  public boolean c() {
    return this.c;
  }
  
  public boolean d() {
    return this.d;
  }
  
  public int e() {
    return this.e;
  }
  
  public boolean f() {
    return this.h;
  }
  
  public EnumSet<bqo> g() {
    return this.f;
  }
  
  public Map<String, Map<String, bok>> h() {
    return this.g;
  }
  
  public bod i() {
    return this.i;
  }
  
  public String j() {
    return this.j;
  }
  
  public String k() {
    return this.k;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\boj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */