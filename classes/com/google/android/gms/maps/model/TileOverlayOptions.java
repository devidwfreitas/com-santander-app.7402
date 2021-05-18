package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import eec;
import eed;
import eee;
import efh;
import efi;
import egb;

public final class TileOverlayOptions extends zza {
  public static final Parcelable.Creator<TileOverlayOptions> CREATOR = (Parcelable.Creator<TileOverlayOptions>)new egb();
  
  private efh a;
  
  private eee b;
  
  private boolean c;
  
  private float d;
  
  private boolean e;
  
  private float f;
  
  public TileOverlayOptions() {
    this.c = true;
    this.e = true;
    this.f = 0.0F;
  }
  
  public TileOverlayOptions(IBinder paramIBinder, boolean paramBoolean1, float paramFloat1, boolean paramBoolean2, float paramFloat2) {
    eec eec;
    this.c = true;
    this.e = true;
    this.f = 0.0F;
    this.a = efi.a(paramIBinder);
    if (this.a == null) {
      paramIBinder = null;
    } else {
      eec = new eec(this);
    } 
    this.b = (eee)eec;
    this.c = paramBoolean1;
    this.d = paramFloat1;
    this.e = paramBoolean2;
    this.f = paramFloat2;
  }
  
  public IBinder a() {
    return this.a.asBinder();
  }
  
  public TileOverlayOptions a(float paramFloat) {
    this.d = paramFloat;
    return this;
  }
  
  public TileOverlayOptions a(eee parameee) {
    this.b = parameee;
    if (this.b == null) {
      parameee = null;
      this.a = (efh)parameee;
      return this;
    } 
    eed eed = new eed(this, parameee);
    this.a = (efh)eed;
    return this;
  }
  
  public TileOverlayOptions a(boolean paramBoolean) {
    this.c = paramBoolean;
    return this;
  }
  
  public TileOverlayOptions b(float paramFloat) {
    if (paramFloat >= 0.0F && paramFloat <= 1.0F) {
      boolean bool1 = true;
      csp.b(bool1, "Transparency must be in the range [0..1]");
      this.f = paramFloat;
      return this;
    } 
    boolean bool = false;
    csp.b(bool, "Transparency must be in the range [0..1]");
    this.f = paramFloat;
    return this;
  }
  
  public TileOverlayOptions b(boolean paramBoolean) {
    this.e = paramBoolean;
    return this;
  }
  
  public eee b() {
    return this.b;
  }
  
  public float c() {
    return this.d;
  }
  
  public boolean d() {
    return this.c;
  }
  
  public boolean e() {
    return this.e;
  }
  
  public float f() {
    return this.f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    egb.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\TileOverlayOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */