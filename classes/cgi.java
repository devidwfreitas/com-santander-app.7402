import android.content.Context;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Typeface;
import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;

public abstract class cgi<T extends Entry> implements cio<T> {
  private String a = "DataSet";
  
  protected List<Integer> b = null;
  
  protected List<Integer> c = null;
  
  protected cgc d = cgc.LEFT;
  
  protected boolean e = true;
  
  protected transient chn f;
  
  protected Typeface g;
  
  protected boolean h = true;
  
  protected float i = 17.0F;
  
  protected boolean j = true;
  
  private cfq k = cfq.DEFAULT;
  
  private float l = Float.NaN;
  
  private float m = Float.NaN;
  
  private DashPathEffect n = null;
  
  public cgi() {
    this.b = new ArrayList<Integer>();
    this.c = new ArrayList<Integer>();
    this.b.add(Integer.valueOf(Color.rgb(140, 234, 255)));
    this.c.add(Integer.valueOf(-16777216));
  }
  
  public cgi(String paramString) {
    this();
    this.a = paramString;
  }
  
  public boolean A() {
    return this.h;
  }
  
  public boolean B() {
    return this.j;
  }
  
  public cgc C() {
    return this.d;
  }
  
  public boolean D() {
    boolean bool = false;
    if (I() > 0)
      bool = g(m(0)); 
    return bool;
  }
  
  public boolean E() {
    return (I() > 0) ? g(m(I() - 1)) : false;
  }
  
  public void a(int paramInt1, int paramInt2) {
    g(Color.argb(paramInt2, Color.red(paramInt1), Color.green(paramInt1), Color.blue(paramInt1)));
  }
  
  public void a(DashPathEffect paramDashPathEffect) {
    this.n = paramDashPathEffect;
  }
  
  public void a(Typeface paramTypeface) {
    this.g = paramTypeface;
  }
  
  public void a(cfq paramcfq) {
    this.k = paramcfq;
  }
  
  public void a(cgc paramcgc) {
    this.d = paramcgc;
  }
  
  public void a(chn paramchn) {
    if (paramchn == null)
      return; 
    this.f = paramchn;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<Integer> paramList) {
    this.b = paramList;
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public void a(int... paramVarArgs) {
    this.b = cku.a(paramVarArgs);
  }
  
  public void a(int[] paramArrayOfint, int paramInt) {
    o();
    int j = paramArrayOfint.length;
    for (int i = 0; i < j; i++) {
      int k = paramArrayOfint[i];
      f(Color.argb(paramInt, Color.red(k), Color.green(k), Color.blue(k)));
    } 
  }
  
  public void a(int[] paramArrayOfint, Context paramContext) {
    if (this.b == null)
      this.b = new ArrayList<Integer>(); 
    this.b.clear();
    int j = paramArrayOfint.length;
    for (int i = 0; i < j; i++) {
      int k = paramArrayOfint[i];
      this.b.add(Integer.valueOf(paramContext.getResources().getColor(k)));
    } 
  }
  
  public void b(float paramFloat) {
    this.i = clg.a(paramFloat);
  }
  
  public void b(List<Integer> paramList) {
    this.c = paramList;
  }
  
  public void b(boolean paramBoolean) {
    this.h = paramBoolean;
  }
  
  public boolean b(T paramT) {
    boolean bool = false;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < I()) {
        if (m(i).equals(paramT))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public void c(float paramFloat) {
    this.l = paramFloat;
  }
  
  public void c(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public void d(float paramFloat) {
    this.m = paramFloat;
  }
  
  public int e(int paramInt) {
    return ((Integer)this.b.get(paramInt % this.b.size())).intValue();
  }
  
  public boolean e(float paramFloat) {
    return g(b(paramFloat, Float.NaN));
  }
  
  public void f(int paramInt) {
    if (this.b == null)
      this.b = new ArrayList<Integer>(); 
    this.b.add(Integer.valueOf(paramInt));
  }
  
  public void g(int paramInt) {
    o();
    this.b.add(Integer.valueOf(paramInt));
  }
  
  public void h(int paramInt) {
    this.c.clear();
    this.c.add(Integer.valueOf(paramInt));
  }
  
  public int i(int paramInt) {
    return ((Integer)this.c.get(paramInt % this.c.size())).intValue();
  }
  
  public int j(int paramInt) {
    for (int i = 0; i < I(); i++) {
      if (paramInt == m(i).k())
        return i; 
    } 
    return -1;
  }
  
  public void k() {
    H();
  }
  
  public boolean k(int paramInt) {
    return g(m(paramInt));
  }
  
  public List<Integer> l() {
    return this.b;
  }
  
  public List<Integer> m() {
    return this.c;
  }
  
  public int n() {
    return ((Integer)this.b.get(0)).intValue();
  }
  
  public void o() {
    if (this.b == null)
      this.b = new ArrayList<Integer>(); 
    this.b.clear();
  }
  
  public String p() {
    return this.a;
  }
  
  public boolean q() {
    return this.e;
  }
  
  public chn r() {
    return s() ? clg.a() : this.f;
  }
  
  public boolean s() {
    return (this.f == null);
  }
  
  public int t() {
    return ((Integer)this.c.get(0)).intValue();
  }
  
  public Typeface u() {
    return this.g;
  }
  
  public float v() {
    return this.i;
  }
  
  public cfq w() {
    return this.k;
  }
  
  public float x() {
    return this.l;
  }
  
  public float y() {
    return this.m;
  }
  
  public DashPathEffect z() {
    return this.n;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */