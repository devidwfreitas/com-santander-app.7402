import android.graphics.Rect;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class awr {
  private final Map<String, List<bee>> a = new HashMap<String, List<bee>>();
  
  private final Map<String, axd> b = new HashMap<String, axd>();
  
  private final Map<String, bac> c = new HashMap<String, bac>();
  
  private final SparseArrayCompat<bae> d = new SparseArrayCompat();
  
  private final LongSparseArray<bee> e = new LongSparseArray();
  
  private final List<bee> f = new ArrayList<bee>();
  
  private final HashSet<String> g = new HashSet<String>();
  
  private final axh h = new axh();
  
  private final Rect i;
  
  private final long j;
  
  private final long k;
  
  private final float l;
  
  private final float m;
  
  private final int n;
  
  private final int o;
  
  private final int p;
  
  private awr(Rect paramRect, long paramLong1, long paramLong2, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3) {
    this.i = paramRect;
    this.j = paramLong1;
    this.k = paramLong2;
    this.l = paramFloat1;
    this.m = paramFloat2;
    this.n = paramInt1;
    this.o = paramInt2;
    this.p = paramInt3;
    if (!bey.a(this, 4, 5, 0))
      a("Lottie only supports bodymovin >= 4.5.0"); 
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY})
  public bee a(long paramLong) {
    return (bee)this.e.get(paramLong);
  }
  
  public ArrayList<String> a() {
    return new ArrayList<String>(Arrays.asList(this.g.toArray(new String[this.g.size()])));
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY})
  public void a(String paramString) {
    Log.w("LOTTIE", paramString);
    this.g.add(paramString);
  }
  
  public void a(boolean paramBoolean) {
    this.h.a(paramBoolean);
  }
  
  public axh b() {
    return this.h;
  }
  
  @Nullable
  @RestrictTo({RestrictTo.Scope.LIBRARY})
  public List<bee> b(String paramString) {
    return this.a.get(paramString);
  }
  
  public Rect c() {
    return this.i;
  }
  
  public long d() {
    return (long)((float)(this.k - this.j) / this.l * 1000.0F);
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY})
  public int e() {
    return this.n;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY})
  public int f() {
    return this.o;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY})
  public int g() {
    return this.p;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY})
  public long h() {
    return this.j;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY})
  public long i() {
    return this.k;
  }
  
  public List<bee> j() {
    return this.f;
  }
  
  public SparseArrayCompat<bae> k() {
    return this.d;
  }
  
  public Map<String, bac> l() {
    return this.c;
  }
  
  public boolean m() {
    return !this.b.isEmpty();
  }
  
  Map<String, axd> n() {
    return this.b;
  }
  
  public float o() {
    return (float)d() * this.l / 1000.0F;
  }
  
  public float p() {
    return this.m;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder("LottieComposition:\n");
    Iterator<bee> iterator = this.f.iterator();
    while (iterator.hasNext())
      stringBuilder.append(((bee)iterator.next()).a("\t")); 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */