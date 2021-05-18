package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cvz;
import efq;
import java.io.IOException;
import java.io.InputStream;

public final class MapStyleOptions extends zza {
  public static final Parcelable.Creator<MapStyleOptions> CREATOR;
  
  private static final String a = MapStyleOptions.class.getSimpleName();
  
  private String b;
  
  static {
    CREATOR = (Parcelable.Creator<MapStyleOptions>)new efq();
  }
  
  public MapStyleOptions(String paramString) {
    this.b = paramString;
  }
  
  public static MapStyleOptions a(Context paramContext, int paramInt) {
    InputStream inputStream = paramContext.getResources().openRawResource(paramInt);
    try {
      return new MapStyleOptions(new String(cvz.a(inputStream), "UTF-8"));
    } catch (IOException iOException) {
      String str = String.valueOf(iOException);
      throw new Resources.NotFoundException((new StringBuilder(String.valueOf(str).length() + 37)).append("Failed to read resource ").append(paramInt).append(": ").append(str).toString());
    } 
  }
  
  public String a() {
    return this.b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efq.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\MapStyleOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */