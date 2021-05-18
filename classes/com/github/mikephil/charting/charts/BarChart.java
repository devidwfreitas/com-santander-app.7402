package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import cfz;
import cgc;
import cge;
import chs;
import cht;
import chv;
import cic;
import cik;
import cjm;
import cjt;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;

public class BarChart extends BarLineChartBase<cge> implements cic {
  protected boolean a = false;
  
  private boolean ah = true;
  
  private boolean ai = false;
  
  private boolean aj = false;
  
  public BarChart(Context paramContext) {
    super(paramContext);
  }
  
  public BarChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public BarChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public RectF a(BarEntry paramBarEntry) {
    RectF rectF = new RectF();
    a(paramBarEntry, rectF);
    return rectF;
  }
  
  public chv a(float paramFloat1, float paramFloat2) {
    if (this.D == null) {
      Log.e("MPAndroidChart", "Can't select by touch. No data set.");
      return null;
    } 
    chv chv = aF().a(paramFloat1, paramFloat2);
    return (chv == null || !e()) ? chv : new chv(chv.a(), chv.b(), chv.c(), chv.d(), chv.f(), -1, chv.i());
  }
  
  protected void a() {
    super.a();
    this.P = (cjt)new cjm(this, this.S, this.R);
    setHighlighter((cht)new chs(this));
    ad().h(0.5F);
    ad().i(0.5F);
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3) {
    if (f() == null)
      throw new RuntimeException("You need to set data for the chart before grouping bars."); 
    f().a(paramFloat1, paramFloat2, paramFloat3);
    j();
  }
  
  public void a(float paramFloat, int paramInt1, int paramInt2) {
    a(new chv(paramFloat, paramInt1, paramInt2), false);
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
    paramRectF.set(f3 - f4, f2, f3 + f5, f1);
    a(cik.C()).a(paramRectF);
  }
  
  protected void b() {
    if (this.aj) {
      cfz cfz = this.I;
      float f1 = this.D.g();
      float f2 = this.D.a() / 2.0F;
      float f3 = this.D.h();
      cfz.a(f1 - f2, this.D.a() / 2.0F + f3);
    } else {
      this.I.a(this.D.g(), this.D.h());
    } 
    this.o.a(this.D.a(cgc.LEFT), this.D.b(cgc.LEFT));
    this.p.a(this.D.a(cgc.RIGHT), this.D.b(cgc.RIGHT));
  }
  
  public boolean d() {
    return this.ai;
  }
  
  public boolean e() {
    return this.a;
  }
  
  public cge f() {
    return this.D;
  }
  
  public boolean f_() {
    return this.ah;
  }
  
  public void setDrawBarShadow(boolean paramBoolean) {
    this.ai = paramBoolean;
  }
  
  public void setDrawValueAboveBar(boolean paramBoolean) {
    this.ah = paramBoolean;
  }
  
  public void setFitBars(boolean paramBoolean) {
    this.aj = paramBoolean;
  }
  
  public void setHighlightFullBarEnabled(boolean paramBoolean) {
    this.a = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\BarChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */