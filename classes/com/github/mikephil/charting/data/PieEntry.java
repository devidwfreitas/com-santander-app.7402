package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;
import android.util.Log;

@SuppressLint({"ParcelCreator"})
public class PieEntry extends Entry {
  private String a;
  
  public PieEntry(float paramFloat) {
    super(0.0F, paramFloat);
  }
  
  public PieEntry(float paramFloat, Object paramObject) {
    super(0.0F, paramFloat, paramObject);
  }
  
  public PieEntry(float paramFloat, String paramString) {
    super(0.0F, paramFloat);
    this.a = paramString;
  }
  
  public PieEntry(float paramFloat, String paramString, Object paramObject) {
    super(0.0F, paramFloat, paramObject);
    this.a = paramString;
  }
  
  public float a() {
    return c();
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.a;
  }
  
  public PieEntry d() {
    return new PieEntry(c(), this.a, j());
  }
  
  @Deprecated
  public void f(float paramFloat) {
    super.f(paramFloat);
    Log.i("DEPRECATED", "Pie entries do not have x values");
  }
  
  @Deprecated
  public float k() {
    Log.i("DEPRECATED", "Pie entries do not have x values");
    return super.k();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\data\PieEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */