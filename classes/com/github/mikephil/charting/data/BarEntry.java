package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;
import cib;

@SuppressLint({"ParcelCreator"})
public class BarEntry extends Entry {
  private float[] a;
  
  private cib[] b;
  
  private float c;
  
  private float d;
  
  public BarEntry(float paramFloat1, float paramFloat2) {
    super(paramFloat1, paramFloat2);
  }
  
  public BarEntry(float paramFloat1, float paramFloat2, Object paramObject) {
    super(paramFloat1, paramFloat2, paramObject);
  }
  
  public BarEntry(float paramFloat, float[] paramArrayOffloat) {
    super(paramFloat, b(paramArrayOffloat));
    this.a = paramArrayOffloat;
    l();
    h();
  }
  
  public BarEntry(float paramFloat, float[] paramArrayOffloat, String paramString) {
    super(paramFloat, b(paramArrayOffloat), paramString);
    this.a = paramArrayOffloat;
    l();
    h();
  }
  
  private static float b(float[] paramArrayOffloat) {
    float f1 = 0.0F;
    float f2 = 0.0F;
    if (paramArrayOffloat != null) {
      int j = paramArrayOffloat.length;
      int i = 0;
      while (true) {
        f2 = f1;
        if (i < j) {
          f2 = paramArrayOffloat[i];
          i++;
          f1 = f2 + f1;
          continue;
        } 
        return f2;
      } 
    } 
    return f2;
  }
  
  private void l() {
    if (this.a == null) {
      this.c = 0.0F;
      this.d = 0.0F;
      return;
    } 
    float[] arrayOfFloat = this.a;
    int j = arrayOfFloat.length;
    int i = 0;
    float f1 = 0.0F;
    float f2 = 0.0F;
    while (i < j) {
      float f = arrayOfFloat[i];
      if (f <= 0.0F) {
        f1 += Math.abs(f);
      } else {
        f2 += f;
      } 
      i++;
    } 
    this.c = f1;
    this.d = f2;
  }
  
  @Deprecated
  public float a(int paramInt) {
    return b(paramInt);
  }
  
  public BarEntry a() {
    BarEntry barEntry = new BarEntry(k(), c(), j());
    barEntry.a(this.a);
    return barEntry;
  }
  
  public void a(float[] paramArrayOffloat) {
    a(b(paramArrayOffloat));
    this.a = paramArrayOffloat;
    l();
    h();
  }
  
  public float b(int paramInt) {
    float f1 = 0.0F;
    float f2 = 0.0F;
    if (this.a != null) {
      int i = this.a.length - 1;
      while (true) {
        f2 = f1;
        if (i > paramInt) {
          f2 = f1;
          if (i >= 0) {
            f2 = this.a[i];
            i--;
            f1 = f2 + f1;
            continue;
          } 
        } 
        return f2;
      } 
    } 
    return f2;
  }
  
  public float[] b() {
    return this.a;
  }
  
  public float c() {
    return super.c();
  }
  
  public cib[] d() {
    return this.b;
  }
  
  public boolean e() {
    return (this.a != null);
  }
  
  public float f() {
    return this.d;
  }
  
  public float g() {
    return this.c;
  }
  
  protected void h() {
    float[] arrayOfFloat = b();
    if (arrayOfFloat != null && arrayOfFloat.length != 0) {
      this.b = new cib[arrayOfFloat.length];
      float f1 = -g();
      int i = 0;
      float f2 = 0.0F;
      while (true) {
        if (i < this.b.length) {
          float f = arrayOfFloat[i];
          if (f < 0.0F) {
            this.b[i] = new cib(f1, f1 - f);
            f1 -= f;
          } else {
            this.b[i] = new cib(f2, f2 + f);
            f2 += f;
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\data\BarEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */