import android.graphics.DashPathEffect;
import android.graphics.Paint;
import java.util.ArrayList;
import java.util.List;

public class cfn extends cfk {
  private boolean B = false;
  
  private List<ckw> C = new ArrayList<ckw>(16);
  
  private List<Boolean> D = new ArrayList<Boolean>(16);
  
  private List<ckw> E = new ArrayList<ckw>(16);
  
  public float a = 0.0F;
  
  public float b = 0.0F;
  
  public float c = 0.0F;
  
  public float d = 0.0F;
  
  private cfv[] e = new cfv[0];
  
  private cfv[] f;
  
  private boolean g = false;
  
  private cfr h = cfr.LEFT;
  
  private cfu i = cfu.BOTTOM;
  
  private cfs j = cfs.HORIZONTAL;
  
  private boolean k = false;
  
  private cfp l = cfp.LEFT_TO_RIGHT;
  
  private cfq m = cfq.SQUARE;
  
  private float n = 8.0F;
  
  private float o = 3.0F;
  
  private DashPathEffect p = null;
  
  private float q = 6.0F;
  
  private float r = 0.0F;
  
  private float s = 5.0F;
  
  private float t = 3.0F;
  
  private float u = 0.95F;
  
  public cfn() {}
  
  @Deprecated
  public cfn(List<Integer> paramList, List<String> paramList1) {
    this(clg.a(paramList), clg.b(paramList1));
  }
  
  @Deprecated
  public cfn(int[] paramArrayOfint, String[] paramArrayOfString) {
    this();
    if (paramArrayOfint == null || paramArrayOfString == null)
      throw new IllegalArgumentException("colors array or labels array is NULL"); 
    if (paramArrayOfint.length != paramArrayOfString.length)
      throw new IllegalArgumentException("colors array and labels array need to be of same size"); 
    ArrayList<cfv> arrayList = new ArrayList();
    for (int i = 0; i < Math.min(paramArrayOfint.length, paramArrayOfString.length); i++) {
      cfv cfv1 = new cfv();
      cfv1.f = paramArrayOfint[i];
      cfv1.a = paramArrayOfString[i];
      if (cfv1.f == 1122868) {
        cfv1.b = cfq.NONE;
      } else if (cfv1.f == 1122867 || cfv1.f == 0) {
        cfv1.b = cfq.EMPTY;
      } 
      arrayList.add(cfv1);
    } 
    this.e = arrayList.<cfv>toArray(new cfv[arrayList.size()]);
  }
  
  public cfn(cfv[] paramArrayOfcfv) {
    this();
    if (paramArrayOfcfv == null)
      throw new IllegalArgumentException("entries array is NULL"); 
    this.e = paramArrayOfcfv;
  }
  
  public List<ckw> A() {
    return this.E;
  }
  
  public float a(Paint paramPaint) {
    float f2 = 0.0F;
    float f3 = clg.a(this.s);
    cfv[] arrayOfCfv = this.e;
    int j = arrayOfCfv.length;
    int i = 0;
    float f1 = 0.0F;
    while (true) {
      if (i < j) {
        cfv cfv1 = arrayOfCfv[i];
        if (Float.isNaN(cfv1.c)) {
          f = this.n;
        } else {
          f = cfv1.c;
        } 
        float f = clg.a(f);
        if (f <= f2)
          f = f2; 
        String str = cfv1.a;
        if (str == null) {
          f2 = f1;
        } else {
          float f4 = clg.a(paramPaint, str);
          f2 = f4;
          if (f4 <= f1)
            f2 = f1; 
        } 
        i++;
        f1 = f2;
        f2 = f;
        continue;
      } 
      return f1 + f2 + f3;
    } 
  }
  
  public void a(float paramFloat) {
    this.n = paramFloat;
  }
  
  public void a(DashPathEffect paramDashPathEffect) {
    this.p = paramDashPathEffect;
  }
  
  public void a(Paint paramPaint, clh paramclh) {
    String str;
    float f5 = clg.a(this.n);
    float f8 = clg.a(this.t);
    float f9 = clg.a(this.s);
    float f6 = clg.a(this.q);
    float f7 = clg.a(this.r);
    boolean bool = this.B;
    cfv[] arrayOfCfv = this.e;
    int k = arrayOfCfv.length;
    this.d = a(paramPaint);
    this.c = b(paramPaint);
    switch (cfo.b[this.j.ordinal()]) {
      default:
        this.b += this.x;
        this.a += this.w;
        return;
      case 1:
        f1 = 0.0F;
        f2 = 0.0F;
        f3 = 0.0F;
        f6 = clg.a(paramPaint);
        i = 0;
        j = 0;
        while (true) {
          if (j < k) {
            float f15;
            boolean bool1;
            cfv cfv1 = arrayOfCfv[j];
            if (cfv1.b != cfq.NONE) {
              bool1 = true;
            } else {
              bool1 = false;
            } 
            if (Float.isNaN(cfv1.c)) {
              f15 = f5;
            } else {
              f15 = clg.a(cfv1.c);
            } 
            str = cfv1.a;
            if (!i)
              f3 = 0.0F; 
            float f14 = f3;
            if (bool1) {
              f14 = f3;
              if (i)
                f14 = f3 + f8; 
              f14 += f15;
            } 
            if (str != null) {
              if (bool1 && !i) {
                f3 = f14 + f9;
              } else if (i) {
                f1 = Math.max(f1, f14);
                f2 += f6 + f7;
                f3 = 0.0F;
                i = 0;
              } else {
                f3 = f14;
              } 
              f3 += clg.a(paramPaint, str);
              if (j < k - 1)
                f2 = f6 + f7 + f2; 
            } else {
              i = 1;
              f3 = f15 + f14;
              if (j < k - 1)
                f3 += f8; 
            } 
            f1 = Math.max(f1, f3);
            j++;
            continue;
          } 
          this.a = f1;
          this.b = f2;
        } 
      case 2:
        break;
    } 
    float f10 = clg.a(paramPaint);
    float f11 = clg.b(paramPaint);
    float f12 = str.j();
    float f13 = this.u;
    float f2 = 0.0F;
    float f3 = 0.0F;
    int i = -1;
    this.D.clear();
    this.C.clear();
    this.E.clear();
    int j = 0;
    for (float f4 = 0.0F; j < k; f4 = f1) {
      int m;
      cfv cfv1 = arrayOfCfv[j];
      if (cfv1.b != cfq.NONE) {
        m = 1;
      } else {
        m = 0;
      } 
      if (Float.isNaN(cfv1.c)) {
        f1 = f5;
      } else {
        f1 = clg.a(cfv1.c);
      } 
      String str1 = cfv1.a;
      this.D.add(Boolean.valueOf(false));
      if (i == -1) {
        f4 = 0.0F;
      } else {
        f4 += f8;
      } 
      if (str1 != null) {
        this.C.add(clg.c(paramPaint, str1));
        if (m) {
          f1 = f9 + f1;
        } else {
          f1 = 0.0F;
        } 
        float f = ((ckw)this.C.get(j)).a;
        f1 = f + f4 + f1;
      } else {
        this.C.add(ckw.a(0.0F, 0.0F));
        if (!m)
          f1 = 0.0F; 
        f1 = f4 + f1;
        if (i == -1)
          i = j; 
      } 
      if (str1 != null || j == k - 1) {
        float f;
        if (f3 == 0.0F) {
          f4 = 0.0F;
        } else {
          f4 = f6;
        } 
        if (!bool || f3 == 0.0F || f12 * f13 - f3 >= f4 + f1) {
          f4 = f4 + f1 + f3;
          f = f2;
        } else {
          this.E.add(ckw.a(f3, f10));
          f = Math.max(f2, f3);
          List<Boolean> list = this.D;
          if (i > -1) {
            m = i;
          } else {
            m = j;
          } 
          list.set(m, Boolean.valueOf(true));
          f4 = f1;
        } 
        f3 = f4;
        f2 = f;
        if (j == k - 1) {
          this.E.add(ckw.a(f4, f10));
          f2 = Math.max(f, f4);
          f3 = f4;
        } 
      } 
      if (str1 != null)
        i = -1; 
      j++;
    } 
    this.a = f2;
    float f1 = this.E.size();
    if (this.E.size() == 0) {
      i = 0;
    } else {
      i = this.E.size() - 1;
    } 
    this.b = i * (f11 + f7) + f10 * f1;
  }
  
  public void a(cfp paramcfp) {
    this.l = paramcfp;
  }
  
  public void a(cfq paramcfq) {
    this.m = paramcfq;
  }
  
  public void a(cfr paramcfr) {
    this.h = paramcfr;
  }
  
  public void a(cfs paramcfs) {
    this.j = paramcfs;
  }
  
  @Deprecated
  public void a(cft paramcft) {
    cfu cfu1;
    cfr cfr1;
    switch (cfo.a[paramcft.ordinal()]) {
      default:
        if (paramcft == cft.LEFT_OF_CHART_INSIDE || paramcft == cft.RIGHT_OF_CHART_INSIDE) {
          bool = true;
        } else {
          break;
        } 
        this.k = bool;
        return;
      case 1:
      case 2:
      case 3:
        this.h = cfr.LEFT;
        if (paramcft == cft.LEFT_OF_CHART_CENTER) {
          cfu1 = cfu.CENTER;
        } else {
          cfu1 = cfu.TOP;
        } 
        this.i = cfu1;
        this.j = cfs.VERTICAL;
      case 4:
      case 5:
      case 6:
        this.h = cfr.RIGHT;
        if (paramcft == cft.RIGHT_OF_CHART_CENTER) {
          cfu1 = cfu.CENTER;
        } else {
          cfu1 = cfu.TOP;
        } 
        this.i = cfu1;
        this.j = cfs.VERTICAL;
      case 7:
      case 8:
      case 9:
        if (paramcft == cft.ABOVE_CHART_LEFT) {
          cfr1 = cfr.LEFT;
        } else if (paramcft == cft.ABOVE_CHART_RIGHT) {
          cfr1 = cfr.RIGHT;
        } else {
          cfr1 = cfr.CENTER;
        } 
        this.h = cfr1;
        this.i = cfu.TOP;
        this.j = cfs.HORIZONTAL;
      case 10:
      case 11:
      case 12:
        if (paramcft == cft.BELOW_CHART_LEFT) {
          cfr1 = cfr.LEFT;
        } else if (paramcft == cft.BELOW_CHART_RIGHT) {
          cfr1 = cfr.RIGHT;
        } else {
          cfr1 = cfr.CENTER;
        } 
        this.h = cfr1;
        this.i = cfu.BOTTOM;
        this.j = cfs.HORIZONTAL;
      case 13:
        this.h = cfr.CENTER;
        this.i = cfu.CENTER;
        this.j = cfs.VERTICAL;
    } 
    boolean bool = false;
    this.k = bool;
  }
  
  public void a(cfu paramcfu) {
    this.i = paramcfu;
  }
  
  public void a(List<cfv> paramList) {
    this.e = paramList.<cfv>toArray(new cfv[paramList.size()]);
  }
  
  @Deprecated
  public void a(List<Integer> paramList, List<String> paramList1) {
    a(clg.a(paramList), clg.b(paramList1));
  }
  
  public void a(boolean paramBoolean) {
    this.k = paramBoolean;
  }
  
  public void a(int[] paramArrayOfint, String[] paramArrayOfString) {
    ArrayList<cfv> arrayList = new ArrayList();
    for (int i = 0; i < Math.min(paramArrayOfint.length, paramArrayOfString.length); i++) {
      cfv cfv1 = new cfv();
      cfv1.f = paramArrayOfint[i];
      cfv1.a = paramArrayOfString[i];
      if (cfv1.f == 1122868 || cfv1.f == 0) {
        cfv1.b = cfq.NONE;
      } else if (cfv1.f == 1122867) {
        cfv1.b = cfq.EMPTY;
      } 
      arrayList.add(cfv1);
    } 
    this.f = arrayList.<cfv>toArray(new cfv[arrayList.size()]);
  }
  
  public void a(cfv[] paramArrayOfcfv) {
    cfv[] arrayOfCfv = paramArrayOfcfv;
    if (paramArrayOfcfv == null)
      arrayOfCfv = new cfv[0]; 
    this.f = arrayOfCfv;
  }
  
  public cfv[] a() {
    return this.e;
  }
  
  public float b(Paint paramPaint) {
    cfv[] arrayOfCfv = this.e;
    int j = arrayOfCfv.length;
    int i = 0;
    float f;
    for (f = 0.0F; i < j; f = f1) {
      float f1;
      String str = (arrayOfCfv[i]).a;
      if (str == null) {
        f1 = f;
      } else {
        float f2 = clg.b(paramPaint, str);
        f1 = f;
        if (f2 > f)
          f1 = f2; 
      } 
      i++;
    } 
    return f;
  }
  
  public void b(float paramFloat) {
    this.o = paramFloat;
  }
  
  public void b(List<cfv> paramList) {
    this.f = paramList.<cfv>toArray(new cfv[paramList.size()]);
  }
  
  public void b(boolean paramBoolean) {
    this.B = paramBoolean;
  }
  
  public void b(cfv[] paramArrayOfcfv) {
    this.e = paramArrayOfcfv;
    this.g = true;
  }
  
  @Deprecated
  public int[] b() {
    int[] arrayOfInt = new int[this.e.length];
    for (int i = 0; i < this.e.length; i++) {
      int j;
      if ((this.e[i]).b == cfq.NONE) {
        j = 1122868;
      } else if ((this.e[i]).b == cfq.EMPTY) {
        j = 1122867;
      } else {
        j = (this.e[i]).f;
      } 
      arrayOfInt[i] = j;
    } 
    return arrayOfInt;
  }
  
  public void c(float paramFloat) {
    this.q = paramFloat;
  }
  
  public void c(List<cfv> paramList) {
    this.e = paramList.<cfv>toArray(new cfv[paramList.size()]);
    this.g = true;
  }
  
  @Deprecated
  public String[] c() {
    String[] arrayOfString = new String[this.e.length];
    for (int i = 0; i < this.e.length; i++)
      arrayOfString[i] = (this.e[i]).a; 
    return arrayOfString;
  }
  
  public void d(float paramFloat) {
    this.r = paramFloat;
  }
  
  @Deprecated
  public int[] d() {
    int[] arrayOfInt = new int[this.f.length];
    for (int i = 0; i < this.f.length; i++) {
      int j;
      if ((this.f[i]).b == cfq.NONE) {
        j = 1122868;
      } else if ((this.f[i]).b == cfq.EMPTY) {
        j = 1122867;
      } else {
        j = (this.f[i]).f;
      } 
      arrayOfInt[i] = j;
    } 
    return arrayOfInt;
  }
  
  public void e(float paramFloat) {
    this.s = paramFloat;
  }
  
  @Deprecated
  public String[] e() {
    String[] arrayOfString = new String[this.f.length];
    for (int i = 0; i < this.f.length; i++)
      arrayOfString[i] = (this.f[i]).a; 
    return arrayOfString;
  }
  
  public void f(float paramFloat) {
    this.t = paramFloat;
  }
  
  public cfv[] f() {
    return this.f;
  }
  
  public void g() {
    this.g = false;
  }
  
  public void g(float paramFloat) {
    this.u = paramFloat;
  }
  
  public boolean h() {
    return this.g;
  }
  
  @Deprecated
  public cft i() {
    return (this.j == cfs.VERTICAL && this.h == cfr.CENTER && this.i == cfu.CENTER) ? cft.PIECHART_CENTER : ((this.j == cfs.HORIZONTAL) ? ((this.i == cfu.TOP) ? ((this.h == cfr.LEFT) ? cft.ABOVE_CHART_LEFT : ((this.h == cfr.RIGHT) ? cft.ABOVE_CHART_RIGHT : cft.ABOVE_CHART_CENTER)) : ((this.h == cfr.LEFT) ? cft.BELOW_CHART_LEFT : ((this.h == cfr.RIGHT) ? cft.BELOW_CHART_RIGHT : cft.BELOW_CHART_CENTER))) : ((this.h == cfr.LEFT) ? ((this.i == cfu.TOP && this.k) ? cft.LEFT_OF_CHART_INSIDE : ((this.i == cfu.CENTER) ? cft.LEFT_OF_CHART_CENTER : cft.LEFT_OF_CHART)) : ((this.i == cfu.TOP && this.k) ? cft.RIGHT_OF_CHART_INSIDE : ((this.i == cfu.CENTER) ? cft.RIGHT_OF_CHART_CENTER : cft.RIGHT_OF_CHART))));
  }
  
  public cfr j() {
    return this.h;
  }
  
  public cfu k() {
    return this.i;
  }
  
  public cfs l() {
    return this.j;
  }
  
  public boolean m() {
    return this.k;
  }
  
  public cfp n() {
    return this.l;
  }
  
  public cfq o() {
    return this.m;
  }
  
  public float p() {
    return this.n;
  }
  
  public float q() {
    return this.o;
  }
  
  public DashPathEffect r() {
    return this.p;
  }
  
  public float s() {
    return this.q;
  }
  
  public float t() {
    return this.r;
  }
  
  public float u() {
    return this.s;
  }
  
  public float v() {
    return this.t;
  }
  
  public boolean w() {
    return this.B;
  }
  
  public float x() {
    return this.u;
  }
  
  public List<ckw> y() {
    return this.C;
  }
  
  public List<Boolean> z() {
    return this.D;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */