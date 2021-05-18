package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.util.AttributeSet;
import cgb;
import cgc;
import cgo;
import chb;
import chx;
import cia;
import cit;
import cjt;
import ckd;
import cki;
import ckl;
import clg;

public class RadarChart extends PieRadarChartBase<chb> {
  protected ckl a;
  
  protected cki b;
  
  private float e = 2.5F;
  
  private float f = 1.5F;
  
  private int g = Color.rgb(122, 122, 122);
  
  private int h = Color.rgb(122, 122, 122);
  
  private int i = 150;
  
  private boolean j = true;
  
  private int k = 0;
  
  private cgb l;
  
  public RadarChart(Context paramContext) {
    super(paramContext);
  }
  
  public RadarChart(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public RadarChart(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public float N() {
    return this.l.s;
  }
  
  public float O() {
    return this.l.t;
  }
  
  public int a(float paramFloat) {
    paramFloat = clg.d(paramFloat - z());
    float f = d();
    int j = ((cit)this.D.o()).I();
    for (int i = 0; i < j; i++) {
      if ((i + 1) * f - f / 2.0F > paramFloat)
        return i; 
    } 
    return 0;
  }
  
  protected void a() {
    super.a();
    this.l = new cgb(cgc.LEFT);
    this.e = clg.a(1.5F);
    this.f = clg.a(0.75F);
    this.P = (cjt)new ckd(this, this.S, this.R);
    this.a = new ckl(this.R, this.l, this);
    this.b = new cki(this.R, this.I, this);
    this.Q = (chx)new cia(this);
  }
  
  protected void b() {
    super.b();
    this.l.a(this.D.a(cgc.LEFT), this.D.b(cgc.LEFT));
    this.I.a(0.0F, ((cit)this.D.o()).I());
  }
  
  public float c() {
    RectF rectF = this.R.l();
    return Math.min(rectF.width() / 2.0F, rectF.height() / 2.0F) / this.l.u;
  }
  
  public float d() {
    return 360.0F / ((cit)this.D.o()).I();
  }
  
  public cgb e() {
    return this.l;
  }
  
  public float f() {
    return this.e;
  }
  
  public float g() {
    return this.f;
  }
  
  public int h() {
    return this.i;
  }
  
  protected float i() {
    return this.O.a().getTextSize() * 4.0F;
  }
  
  public void j() {
    if (this.D == null)
      return; 
    b();
    this.a.a(this.l.t, this.l.s, this.l.R());
    this.b.a(this.I.t, this.I.s, false);
    if (this.L != null && !this.L.h())
      this.O.a((cgo)this.D); 
    l();
  }
  
  protected float k() {
    return (this.I.K() && this.I.h()) ? this.I.D : clg.a(10.0F);
  }
  
  public float m() {
    RectF rectF = this.R.l();
    return Math.min(rectF.width() / 2.0F, rectF.height() / 2.0F);
  }
  
  public int n() {
    return this.g;
  }
  
  public int o() {
    return this.h;
  }
  
  protected void onDraw(Canvas paramCanvas) {
    super.onDraw(paramCanvas);
    if (this.D == null)
      return; 
    if (this.I.K())
      this.b.a(this.I.t, this.I.s, false); 
    this.b.a(paramCanvas);
    if (this.j)
      this.P.c(paramCanvas); 
    this.a.d(paramCanvas);
    this.P.a(paramCanvas);
    if (Y())
      this.P.a(paramCanvas, this.T); 
    this.a.a(paramCanvas);
    this.P.b(paramCanvas);
    this.O.a(paramCanvas);
    b(paramCanvas);
    c(paramCanvas);
  }
  
  public int p() {
    return this.k;
  }
  
  public float q() {
    return this.l.u;
  }
  
  public void setDrawWeb(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public void setSkipWebLineCount(int paramInt) {
    this.k = Math.max(0, paramInt);
  }
  
  public void setWebAlpha(int paramInt) {
    this.i = paramInt;
  }
  
  public void setWebColor(int paramInt) {
    this.g = paramInt;
  }
  
  public void setWebColorInner(int paramInt) {
    this.h = paramInt;
  }
  
  public void setWebLineWidth(float paramFloat) {
    this.e = clg.a(paramFloat);
  }
  
  public void setWebLineWidthInner(float paramFloat) {
    this.f = clg.a(paramFloat);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\charts\RadarChart.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */