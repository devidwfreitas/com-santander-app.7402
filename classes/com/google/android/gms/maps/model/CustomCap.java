package com.google.android.gms.maps.model;

import android.support.annotation.NonNull;
import csp;
import edm;

public final class CustomCap extends Cap {
  public final edm a;
  
  public final float b;
  
  public CustomCap(@NonNull edm paramedm) {
    this(paramedm, 10.0F);
  }
  
  public CustomCap(@NonNull edm paramedm, float paramFloat) {
    super((edm)csp.a(paramedm, "bitmapDescriptor must not be null"), a(paramFloat, "refWidth must be positive"));
    this.a = paramedm;
    this.b = paramFloat;
  }
  
  private static float a(float paramFloat, String paramString) {
    if (paramFloat <= 0.0F)
      throw new IllegalArgumentException(paramString); 
    return paramFloat;
  }
  
  public String toString() {
    String str = String.valueOf(this.a);
    float f = this.b;
    return (new StringBuilder(String.valueOf(str).length() + 55)).append("[CustomCap: bitmapDescriptor=").append(str).append(" refWidth=").append(f).append("]").toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\CustomCap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */