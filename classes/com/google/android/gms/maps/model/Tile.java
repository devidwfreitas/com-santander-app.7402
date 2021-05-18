package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import ega;

public final class Tile extends zza {
  public static final Parcelable.Creator<Tile> CREATOR = (Parcelable.Creator<Tile>)new ega();
  
  public final int a;
  
  public final int b;
  
  public final byte[] c;
  
  public Tile(int paramInt1, int paramInt2, byte[] paramArrayOfbyte) {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramArrayOfbyte;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    ega.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\Tile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */