package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import cfz;
import cgy;
import chv;
import chx;
import chy;
import cis;
import cjt;
import ckc;
import cla;
import clg;
import java.util.List;

public class PieChart extends PieRadarChartBase<cgy> {
  protected float a = 55.0F;
  
  protected float b = 360.0F;
  
  private RectF e = new RectF();
  
  private boolean f = true;
  
  private float[] g = new float[1];
  
  private float[] h = new float[1];
  
  private boolean i = true;
  
  private boolean j = false;
  
  private boolean k = false;
  
  private boolean l = false;
  
  private CharSequence m = "";
  
  private cla n = cla.a(0.0F, 0.0F);
  
  private float o = 50.0F;
  
  private boolean p = true;
  
  private float q = 100.0F;
  
  public PieChart(Context paramContext) {
    super(paramContext);
  }
  
  public PieChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public PieChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void D() {
    // Byte code:
    //   0: aload_0
    //   1: getfield D : Lcgo;
    //   4: checkcast cgy
    //   7: invokevirtual n : ()I
    //   10: istore_3
    //   11: aload_0
    //   12: getfield g : [F
    //   15: arraylength
    //   16: iload_3
    //   17: if_icmpeq -> 170
    //   20: aload_0
    //   21: iload_3
    //   22: newarray float
    //   24: putfield g : [F
    //   27: aload_0
    //   28: getfield h : [F
    //   31: arraylength
    //   32: iload_3
    //   33: if_icmpeq -> 191
    //   36: aload_0
    //   37: iload_3
    //   38: newarray float
    //   40: putfield h : [F
    //   43: aload_0
    //   44: getfield D : Lcgo;
    //   47: checkcast cgy
    //   50: invokevirtual p : ()F
    //   53: fstore_1
    //   54: aload_0
    //   55: getfield D : Lcgo;
    //   58: checkcast cgy
    //   61: invokevirtual i : ()Ljava/util/List;
    //   64: astore #5
    //   66: iconst_0
    //   67: istore_3
    //   68: iconst_0
    //   69: istore_2
    //   70: iload_3
    //   71: aload_0
    //   72: getfield D : Lcgo;
    //   75: checkcast cgy
    //   78: invokevirtual d : ()I
    //   81: if_icmpge -> 243
    //   84: aload #5
    //   86: iload_3
    //   87: invokeinterface get : (I)Ljava/lang/Object;
    //   92: checkcast cis
    //   95: astore #6
    //   97: iconst_0
    //   98: istore #4
    //   100: iload #4
    //   102: aload #6
    //   104: invokeinterface I : ()I
    //   109: if_icmpge -> 236
    //   112: aload_0
    //   113: getfield g : [F
    //   116: iload_2
    //   117: aload_0
    //   118: aload #6
    //   120: iload #4
    //   122: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   127: checkcast com/github/mikephil/charting/data/PieEntry
    //   130: invokevirtual c : ()F
    //   133: invokestatic abs : (F)F
    //   136: fload_1
    //   137: invokespecial d : (FF)F
    //   140: fastore
    //   141: iload_2
    //   142: ifne -> 212
    //   145: aload_0
    //   146: getfield h : [F
    //   149: iload_2
    //   150: aload_0
    //   151: getfield g : [F
    //   154: iload_2
    //   155: faload
    //   156: fastore
    //   157: iload_2
    //   158: iconst_1
    //   159: iadd
    //   160: istore_2
    //   161: iload #4
    //   163: iconst_1
    //   164: iadd
    //   165: istore #4
    //   167: goto -> 100
    //   170: iconst_0
    //   171: istore_2
    //   172: iload_2
    //   173: iload_3
    //   174: if_icmpge -> 27
    //   177: aload_0
    //   178: getfield g : [F
    //   181: iload_2
    //   182: fconst_0
    //   183: fastore
    //   184: iload_2
    //   185: iconst_1
    //   186: iadd
    //   187: istore_2
    //   188: goto -> 172
    //   191: iconst_0
    //   192: istore_2
    //   193: iload_2
    //   194: iload_3
    //   195: if_icmpge -> 43
    //   198: aload_0
    //   199: getfield h : [F
    //   202: iload_2
    //   203: fconst_0
    //   204: fastore
    //   205: iload_2
    //   206: iconst_1
    //   207: iadd
    //   208: istore_2
    //   209: goto -> 193
    //   212: aload_0
    //   213: getfield h : [F
    //   216: iload_2
    //   217: aload_0
    //   218: getfield h : [F
    //   221: iload_2
    //   222: iconst_1
    //   223: isub
    //   224: faload
    //   225: aload_0
    //   226: getfield g : [F
    //   229: iload_2
    //   230: faload
    //   231: fadd
    //   232: fastore
    //   233: goto -> 157
    //   236: iload_3
    //   237: iconst_1
    //   238: iadd
    //   239: istore_3
    //   240: goto -> 70
    //   243: return
  }
  
  private float b(float paramFloat) {
    return d(paramFloat, this.D.p());
  }
  
  private float d(float paramFloat1, float paramFloat2) {
    return paramFloat1 / paramFloat2 * this.b;
  }
  
  public int a(float paramFloat) {
    paramFloat = clg.d(paramFloat - z());
    for (int i = 0; i < this.h.length; i++) {
      if (this.h[i] > paramFloat)
        return i; 
    } 
    return -1;
  }
  
  protected void a() {
    super.a();
    this.P = (cjt)new ckc(this, this.S, this.R);
    this.I = null;
    this.Q = (chx)new chy(this);
  }
  
  @Deprecated
  public cfz ad() {
    throw new RuntimeException("PieChart has no XAxis");
  }
  
  protected void b() {
    D();
  }
  
  protected float[] b(chv paramchv) {
    cla cla1 = o();
    float f2 = m();
    float f1 = f2 / 10.0F * 3.6F;
    if (f())
      f1 = (f2 - f2 / 100.0F * q()) / 2.0F; 
    f2 -= f1;
    float f3 = z();
    int i = (int)paramchv.a();
    float f4 = this.g[i] / 2.0F;
    f1 = (float)(f2 * Math.cos(Math.toRadians(((this.h[i] + f3 - f4 / 2.0F) * this.S.a()))) + cla1.a);
    double d = f2;
    f2 = (float)(Math.sin(Math.toRadians(((this.h[i] + f3 - f4 / 2.0F) * this.S.a()))) * d + cla1.b);
    cla.a(cla1);
    return new float[] { f1, f2 };
  }
  
  public float[] c() {
    return this.g;
  }
  
  public boolean d(int paramInt) {
    if (Y()) {
      int i = 0;
      while (true) {
        if (i < this.T.length) {
          if ((int)this.T[i].a() == paramInt)
            return true; 
          i++;
          continue;
        } 
        return false;
      } 
    } 
    return false;
  }
  
  public float[] d() {
    return this.h;
  }
  
  public int e(int paramInt) {
    List<cis> list = this.D.i();
    for (int i = 0; i < list.size(); i++) {
      if (((cis)list.get(i)).b(paramInt, Float.NaN) != null)
        return i; 
    } 
    return -1;
  }
  
  public boolean e() {
    return this.j;
  }
  
  public boolean f() {
    return this.i;
  }
  
  public CharSequence g() {
    return this.m;
  }
  
  public boolean h() {
    return this.p;
  }
  
  protected float i() {
    return this.O.a().getTextSize() * 2.0F;
  }
  
  protected float k() {
    return 0.0F;
  }
  
  public void l() {
    super.l();
    if (this.D == null)
      return; 
    float f1 = 0.4F * C();
    cla cla1 = am();
    float f2 = this.D.a().d();
    this.e.set(cla1.a - f1 + f2, cla1.b - f1 + f2, cla1.a + f1 - f2, f1 + cla1.b - f2);
    cla.a(cla1);
  }
  
  public float m() {
    return (this.e == null) ? 0.0F : Math.min(this.e.width() / 2.0F, this.e.height() / 2.0F);
  }
  
  public RectF n() {
    return this.e;
  }
  
  public cla o() {
    return cla.a(this.e.centerX(), this.e.centerY());
  }
  
  protected void onDetachedFromWindow() {
    if (this.P != null && this.P instanceof ckc)
      ((ckc)this.P).i(); 
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    if (this.D == null)
      return; 
    this.P.a(paramCanvas);
    if (Y())
      this.P.a(paramCanvas, this.T); 
    this.P.c(paramCanvas);
    this.P.b(paramCanvas);
    this.O.a(paramCanvas);
    b(paramCanvas);
    c(paramCanvas);
  }
  
  public cla p() {
    return cla.a(this.n.a, this.n.b);
  }
  
  public float q() {
    return this.o;
  }
  
  public float r() {
    return this.a;
  }
  
  public void setCenterText(CharSequence paramCharSequence) {
    if (paramCharSequence == null) {
      this.m = "";
      return;
    } 
    this.m = paramCharSequence;
  }
  
  public void setCenterTextColor(int paramInt) {
    ((ckc)this.P).g().setColor(paramInt);
  }
  
  public void setCenterTextOffset(float paramFloat1, float paramFloat2) {
    this.n.a = clg.a(paramFloat1);
    this.n.b = clg.a(paramFloat2);
  }
  
  public void setCenterTextRadiusPercent(float paramFloat) {
    this.q = paramFloat;
  }
  
  public void setCenterTextSize(float paramFloat) {
    ((ckc)this.P).g().setTextSize(clg.a(paramFloat));
  }
  
  public void setCenterTextSizePixels(float paramFloat) {
    ((ckc)this.P).g().setTextSize(paramFloat);
  }
  
  public void setCenterTextTypeface(Typeface paramTypeface) {
    ((ckc)this.P).g().setTypeface(paramTypeface);
  }
  
  public void setDrawCenterText(boolean paramBoolean) {
    this.p = paramBoolean;
  }
  
  public void setDrawEntryLabels(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public void setDrawHoleEnabled(boolean paramBoolean) {
    this.i = paramBoolean;
  }
  
  @Deprecated
  public void setDrawSliceText(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public void setDrawSlicesUnderHole(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public void setEntryLabelColor(int paramInt) {
    ((ckc)this.P).h().setColor(paramInt);
  }
  
  public void setEntryLabelTextSize(float paramFloat) {
    ((ckc)this.P).h().setTextSize(clg.a(paramFloat));
  }
  
  public void setEntryLabelTypeface(Typeface paramTypeface) {
    ((ckc)this.P).h().setTypeface(paramTypeface);
  }
  
  public void setHoleColor(int paramInt) {
    ((ckc)this.P).b().setColor(paramInt);
  }
  
  public void setHoleRadius(float paramFloat) {
    this.o = paramFloat;
  }
  
  public void setMaxAngle(float paramFloat) {
    float f2 = 360.0F;
    float f1 = 90.0F;
    if (paramFloat > 360.0F)
      paramFloat = f2; 
    if (paramFloat < 90.0F)
      paramFloat = f1; 
    this.b = paramFloat;
  }
  
  public void setTransparentCircleAlpha(int paramInt) {
    ((ckc)this.P).c().setAlpha(paramInt);
  }
  
  public void setTransparentCircleColor(int paramInt) {
    Paint paint = ((ckc)this.P).c();
    int i = paint.getAlpha();
    paint.setColor(paramInt);
    paint.setAlpha(i);
  }
  
  public void setTransparentCircleRadius(float paramFloat) {
    this.a = paramFloat;
  }
  
  public void setUsePercentValues(boolean paramBoolean) {
    this.k = paramBoolean;
  }
  
  public boolean t() {
    return this.f;
  }
  
  public boolean u() {
    return this.l;
  }
  
  public boolean v() {
    return this.k;
  }
  
  public float w() {
    return this.q;
  }
  
  public float x() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\PieChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */