import android.support.annotation.Nullable;
import java.util.List;
import java.util.Locale;

public class bee {
  private static final String a = bee.class.getSimpleName();
  
  private final List<bcd> b;
  
  private final awr c;
  
  private final String d;
  
  private final long e;
  
  private final beh f;
  
  private final long g;
  
  @Nullable
  private final String h;
  
  private final List<bcm> i;
  
  private final bbr j;
  
  private final int k;
  
  private final int l;
  
  private final int m;
  
  private final float n;
  
  private final float o;
  
  private final int p;
  
  private final int q;
  
  @Nullable
  private final bbm r;
  
  @Nullable
  private final bbp s;
  
  @Nullable
  private final bao t;
  
  private final List<axz<Float>> u;
  
  private final bei v;
  
  private bee(List<bcd> paramList, awr paramawr, String paramString1, long paramLong1, beh parambeh, long paramLong2, @Nullable String paramString2, List<bcm> paramList1, bbr parambbr, int paramInt1, int paramInt2, int paramInt3, float paramFloat1, float paramFloat2, int paramInt4, int paramInt5, @Nullable bbm parambbm, @Nullable bbp parambbp, List<axz<Float>> paramList2, bei parambei, @Nullable bao parambao) {
    this.b = paramList;
    this.c = paramawr;
    this.d = paramString1;
    this.e = paramLong1;
    this.f = parambeh;
    this.g = paramLong2;
    this.h = paramString2;
    this.i = paramList1;
    this.j = parambbr;
    this.k = paramInt1;
    this.l = paramInt2;
    this.m = paramInt3;
    this.n = paramFloat1;
    this.o = paramFloat2;
    this.p = paramInt4;
    this.q = paramInt5;
    this.r = parambbm;
    this.s = parambbp;
    this.u = paramList2;
    this.v = parambei;
    this.t = parambao;
  }
  
  awr a() {
    return this.c;
  }
  
  public String a(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramString).append(f()).append("\n");
    bee bee1 = this.c.a(m());
    if (bee1 != null) {
      stringBuilder.append("\t\tParents: ").append(bee1.f());
      for (bee1 = this.c.a(bee1.m()); bee1 != null; bee1 = this.c.a(bee1.m()))
        stringBuilder.append("->").append(bee1.f()); 
      stringBuilder.append(paramString).append("\n");
    } 
    if (!j().isEmpty())
      stringBuilder.append(paramString).append("\tMasks: ").append(j().size()).append("\n"); 
    if (r() != 0 && q() != 0)
      stringBuilder.append(paramString).append("\tBackground: ").append(String.format(Locale.US, "%dx%d %X\n", new Object[] { Integer.valueOf(r()), Integer.valueOf(q()), Integer.valueOf(p()) })); 
    if (!this.b.isEmpty()) {
      stringBuilder.append(paramString).append("\tShapes:\n");
      for (bcd bcd : this.b)
        stringBuilder.append(paramString).append("\t\t").append(bcd).append("\n"); 
    } 
    return stringBuilder.toString();
  }
  
  float b() {
    return this.n;
  }
  
  float c() {
    return this.o;
  }
  
  List<axz<Float>> d() {
    return this.u;
  }
  
  public long e() {
    return this.e;
  }
  
  String f() {
    return this.d;
  }
  
  @Nullable
  String g() {
    return this.h;
  }
  
  int h() {
    return this.p;
  }
  
  int i() {
    return this.q;
  }
  
  List<bcm> j() {
    return this.i;
  }
  
  public beh k() {
    return this.f;
  }
  
  bei l() {
    return this.v;
  }
  
  long m() {
    return this.g;
  }
  
  List<bcd> n() {
    return this.b;
  }
  
  bbr o() {
    return this.j;
  }
  
  int p() {
    return this.m;
  }
  
  int q() {
    return this.l;
  }
  
  int r() {
    return this.k;
  }
  
  @Nullable
  bbm s() {
    return this.r;
  }
  
  @Nullable
  bbp t() {
    return this.s;
  }
  
  public String toString() {
    return a("");
  }
  
  @Nullable
  bao u() {
    return this.t;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */