package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import cff;
import cge;
import cgk;
import cgm;
import cgo;
import cgp;
import cgt;
import chd;
import cht;
import chu;
import chv;
import cic;
import cih;
import cjr;
import cjt;

public class CombinedChart extends BarLineChartBase<cgp> implements cih {
  protected boolean a = false;
  
  protected cff[] ah;
  
  private boolean ai = true;
  
  private boolean aj = false;
  
  public CombinedChart(Context paramContext) {
    super(paramContext);
  }
  
  public CombinedChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public CombinedChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
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
    this.ah = new cff[] { cff.BAR, cff.BUBBLE, cff.LINE, cff.CANDLE, cff.SCATTER };
    setHighlighter((cht)new chu(this, (cic)this));
    setHighlightFullBarEnabled(true);
    this.P = (cjt)new cjr(this, this.S, this.R);
  }
  
  public cgp aK() {
    return this.D;
  }
  
  public cgt aL() {
    return (this.D == null) ? null : this.D.p();
  }
  
  public chd aM() {
    return (this.D == null) ? null : this.D.r();
  }
  
  public cff[] aN() {
    return this.ah;
  }
  
  public cgk c() {
    return (this.D == null) ? null : this.D.a();
  }
  
  public boolean d() {
    return this.aj;
  }
  
  public boolean e() {
    return this.a;
  }
  
  public cgm e_() {
    return (this.D == null) ? null : this.D.s();
  }
  
  public cge f() {
    return (this.D == null) ? null : this.D.q();
  }
  
  public boolean f_() {
    return this.ai;
  }
  
  public void setData(cgp paramcgp) {
    super.setData(paramcgp);
    setHighlighter((cht)new chu(this, (cic)this));
    ((cjr)this.P).b();
    this.P.a();
  }
  
  public void setDrawBarShadow(boolean paramBoolean) {
    this.aj = paramBoolean;
  }
  
  public void setDrawOrder(cff[] paramArrayOfcff) {
    if (paramArrayOfcff == null || paramArrayOfcff.length <= 0)
      return; 
    this.ah = paramArrayOfcff;
  }
  
  public void setDrawValueAboveBar(boolean paramBoolean) {
    this.ai = paramBoolean;
  }
  
  public void setHighlightFullBarEnabled(boolean paramBoolean) {
    this.a = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\CombinedChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */