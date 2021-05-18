package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import cga;
import cgc;
import cht;
import chv;
import chw;
import cik;
import cjt;
import cju;
import ckg;
import ckh;
import ckj;
import ckk;
import cky;
import cla;
import cle;
import clf;
import clg;
import clh;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;

public class HorizontalBarChart extends BarChart {
  protected float[] ah = new float[2];
  
  private RectF ai = new RectF();
  
  public HorizontalBarChart(Context paramContext) {
    super(paramContext);
  }
  
  public HorizontalBarChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public HorizontalBarChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public float C() {
    a(cgc.LEFT).a(this.R.g(), this.R.i(), this.y);
    return (float)Math.max(this.I.t, this.y.b);
  }
  
  public float D() {
    a(cgc.LEFT).a(this.R.g(), this.R.f(), this.z);
    return (float)Math.min(this.I.s, this.z.b);
  }
  
  public chv a(float paramFloat1, float paramFloat2) {
    if (this.D == null) {
      if (this.C)
        Log.e("MPAndroidChart", "Can't select by touch. No data set."); 
      return null;
    } 
    return aF().a(paramFloat2, paramFloat1);
  }
  
  public cla a(Entry paramEntry, cgc paramcgc) {
    if (paramEntry == null)
      return null; 
    float[] arrayOfFloat = this.ah;
    arrayOfFloat[0] = paramEntry.c();
    arrayOfFloat[1] = paramEntry.k();
    a(paramcgc).a(arrayOfFloat);
    return cla.a(arrayOfFloat[0], arrayOfFloat[1]);
  }
  
  protected void a() {
    this.R = (clh)new cky();
    super.a();
    this.s = (cle)new clf(this.R);
    this.t = (cle)new clf(this.R);
    this.P = (cjt)new cju(this, this.S, this.R);
    setHighlighter((cht)new chw(this));
    this.q = (ckj)new ckk(this.R, this.o, this.s);
    this.r = (ckj)new ckk(this.R, this.p, this.t);
    this.u = (ckg)new ckh(this.R, this.I, this.s, this);
  }
  
  public void a(BarEntry paramBarEntry, RectF paramRectF) {
    cik cik = (cik)this.D.a((Entry)paramBarEntry);
    if (cik == null) {
      paramRectF.set(Float.MIN_VALUE, Float.MIN_VALUE, Float.MIN_VALUE, Float.MIN_VALUE);
      return;
    } 
    float f1 = paramBarEntry.c();
    float f3 = paramBarEntry.k();
    float f2 = this.D.a();
    float f4 = f2 / 2.0F;
    float f5 = f2 / 2.0F;
    if (f1 >= 0.0F) {
      f2 = f1;
    } else {
      f2 = 0.0F;
    } 
    if (f1 > 0.0F)
      f1 = 0.0F; 
    paramRectF.set(f2, f3 - f4, f1, f3 + f5);
    a(cik.C()).a(paramRectF);
  }
  
  protected float[] b(chv paramchv) {
    return new float[] { paramchv.k(), paramchv.j() };
  }
  
  protected void h() {
    this.t.a(this.p.t, this.p.u, this.I.u, this.I.t);
    this.s.a(this.o.t, this.o.u, this.I.u, this.I.t);
  }
  
  public void l() {
    a(this.ai);
    float f6 = 0.0F + this.ai.left;
    float f2 = this.ai.top + 0.0F;
    float f5 = 0.0F + this.ai.right;
    float f1 = this.ai.bottom + 0.0F;
    float f3 = f2;
    if (this.o.X())
      f3 = f2 + this.o.b(this.q.a()); 
    float f4 = f1;
    if (this.p.X())
      f4 = f1 + this.p.b(this.r.a()); 
    float f7 = this.I.D;
    f2 = f5;
    f1 = f6;
    if (this.I.K())
      if (this.I.L() == cga.BOTTOM) {
        f1 = f6 + f7;
        f2 = f5;
      } else if (this.I.L() == cga.TOP) {
        f2 = f5 + f7;
        f1 = f6;
      } else {
        f2 = f5;
        f1 = f6;
        if (this.I.L() == cga.BOTH_SIDED) {
          f1 = f6 + f7;
          f2 = f5 + f7;
        } 
      }  
    f3 += an();
    f2 += ao();
    f4 += ap();
    f1 += aq();
    f5 = clg.a(this.l);
    this.R.a(Math.max(f5, f1), Math.max(f5, f3), Math.max(f5, f2), Math.max(f5, f4));
    if (this.C) {
      Log.i("MPAndroidChart", "offsetLeft: " + f1 + ", offsetTop: " + f3 + ", offsetRight: " + f2 + ", offsetBottom: " + f4);
      Log.i("MPAndroidChart", "Content: " + this.R.l().toString());
    } 
    i();
    h();
  }
  
  public void setVisibleXRange(float paramFloat1, float paramFloat2) {
    paramFloat1 = this.I.u / paramFloat1;
    paramFloat2 = this.I.u / paramFloat2;
    this.R.g(paramFloat1, paramFloat2);
  }
  
  public void setVisibleXRangeMaximum(float paramFloat) {
    paramFloat = this.I.u / paramFloat;
    this.R.c(paramFloat);
  }
  
  public void setVisibleXRangeMinimum(float paramFloat) {
    paramFloat = this.I.u / paramFloat;
    this.R.d(paramFloat);
  }
  
  public void setVisibleYRange(float paramFloat1, float paramFloat2, cgc paramcgc) {
    paramFloat1 = b(paramcgc) / paramFloat1;
    paramFloat2 = b(paramcgc) / paramFloat2;
    this.R.f(paramFloat1, paramFloat2);
  }
  
  public void setVisibleYRangeMaximum(float paramFloat, cgc paramcgc) {
    paramFloat = b(paramcgc) / paramFloat;
    this.R.a(paramFloat);
  }
  
  public void setVisibleYRangeMinimum(float paramFloat, cgc paramcgc) {
    paramFloat = b(paramcgc) / paramFloat;
    this.R.b(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\HorizontalBarChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */