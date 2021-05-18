package com.google.android.gms.maps.model;

public final class Dash extends PatternItem {
  public final float a;
  
  public Dash(float paramFloat) {
    super(0, Float.valueOf(Math.max(paramFloat, 0.0F)));
    this.a = Math.max(paramFloat, 0.0F);
  }
  
  public String toString() {
    float f = this.a;
    return (new StringBuilder(30)).append("[Dash: length=").append(f).append("]").toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\Dash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */