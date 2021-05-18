package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;

@SuppressLint({"ParcelCreator"})
public class CandleEntry extends Entry {
  private float a = 0.0F;
  
  private float b = 0.0F;
  
  private float c = 0.0F;
  
  private float d = 0.0F;
  
  public CandleEntry(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5) {
    super(paramFloat1, (paramFloat2 + paramFloat3) / 2.0F);
    this.a = paramFloat2;
    this.b = paramFloat3;
    this.d = paramFloat4;
    this.c = paramFloat5;
  }
  
  public CandleEntry(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, Object paramObject) {
    super(paramFloat1, (paramFloat2 + paramFloat3) / 2.0F, paramObject);
    this.a = paramFloat2;
    this.b = paramFloat3;
    this.d = paramFloat4;
    this.c = paramFloat5;
  }
  
  public float a() {
    return Math.abs(this.a - this.b);
  }
  
  public float b() {
    return Math.abs(this.d - this.c);
  }
  
  public void b(float paramFloat) {
    this.a = paramFloat;
  }
  
  public float c() {
    return super.c();
  }
  
  public void c(float paramFloat) {
    this.b = paramFloat;
  }
  
  public CandleEntry d() {
    return new CandleEntry(k(), this.a, this.b, this.d, this.c, j());
  }
  
  public void d(float paramFloat) {
    this.c = paramFloat;
  }
  
  public float e() {
    return this.a;
  }
  
  public void e(float paramFloat) {
    this.d = paramFloat;
  }
  
  public float f() {
    return this.b;
  }
  
  public float g() {
    return this.c;
  }
  
  public float h() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\data\CandleEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */