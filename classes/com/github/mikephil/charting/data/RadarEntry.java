package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;

@SuppressLint({"ParcelCreator"})
public class RadarEntry extends Entry {
  public RadarEntry(float paramFloat) {
    super(0.0F, paramFloat);
  }
  
  public RadarEntry(float paramFloat, Object paramObject) {
    super(0.0F, paramFloat, paramObject);
  }
  
  public float a() {
    return c();
  }
  
  public RadarEntry b() {
    return new RadarEntry(c(), j());
  }
  
  @Deprecated
  public void f(float paramFloat) {
    super.f(paramFloat);
  }
  
  @Deprecated
  public float k() {
    return super.k();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\data\RadarEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */