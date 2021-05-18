package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import duv;
import java.util.Collections;
import java.util.List;

public final class LocationSettingsRequest extends zza {
  public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = (Parcelable.Creator<LocationSettingsRequest>)new duv();
  
  private final List<LocationRequest> a;
  
  private final boolean b;
  
  private final boolean c;
  
  private zzo d;
  
  public LocationSettingsRequest(List<LocationRequest> paramList, boolean paramBoolean1, boolean paramBoolean2, zzo paramzzo) {
    this.a = paramList;
    this.b = paramBoolean1;
    this.c = paramBoolean2;
    this.d = paramzzo;
  }
  
  public List<LocationRequest> a() {
    return Collections.unmodifiableList(this.a);
  }
  
  public boolean b() {
    return this.b;
  }
  
  public boolean c() {
    return this.c;
  }
  
  @Nullable
  public zzo d() {
    return this.d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    duv.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\LocationSettingsRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */