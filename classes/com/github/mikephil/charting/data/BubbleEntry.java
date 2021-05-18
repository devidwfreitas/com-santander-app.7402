package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;

@SuppressLint({"ParcelCreator"})
public class BubbleEntry extends Entry {
  private float a = 0.0F;
  
  public BubbleEntry(float paramFloat1, float paramFloat2, float paramFloat3) {
    super(paramFloat1, paramFloat2);
    this.a = paramFloat3;
  }
  
  public BubbleEntry(float paramFloat1, float paramFloat2, float paramFloat3, Object paramObject) {
    super(paramFloat1, paramFloat2, paramObject);
    this.a = paramFloat3;
  }
  
  public BubbleEntry a() {
    return new BubbleEntry(k(), c(), this.a, j());
  }
  
  public float b() {
    return this.a;
  }
  
  public void b(float paramFloat) {
    this.a = paramFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\data\BubbleEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */