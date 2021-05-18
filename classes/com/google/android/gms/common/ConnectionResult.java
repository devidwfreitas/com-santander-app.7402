package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import cwl;

public final class ConnectionResult extends zza {
  public static final Parcelable.Creator<ConnectionResult> CREATOR;
  
  public static final int SUCCESS = 0;
  
  public static final int a = 1;
  
  public static final int b = 2;
  
  public static final int c = 3;
  
  public static final int d = 4;
  
  public static final int e = 5;
  
  public static final int f = 6;
  
  public static final int g = 7;
  
  public static final int h = 8;
  
  public static final int i = 9;
  
  public static final int j = 10;
  
  public static final int k = 11;
  
  public static final int l = 13;
  
  public static final int m = 14;
  
  public static final int n = 15;
  
  public static final int o = 16;
  
  public static final int p = 17;
  
  public static final int q = 18;
  
  public static final int r = 19;
  
  public static final int s = 20;
  
  @Deprecated
  public static final int t = 1500;
  
  public static final ConnectionResult u = new ConnectionResult(0);
  
  public final int v;
  
  private final int w;
  
  private final PendingIntent x;
  
  private final String y;
  
  static {
    CREATOR = (Parcelable.Creator<ConnectionResult>)new cwl();
  }
  
  public ConnectionResult(int paramInt) {
    this(paramInt, null, null);
  }
  
  public ConnectionResult(int paramInt1, int paramInt2, PendingIntent paramPendingIntent, String paramString) {
    this.v = paramInt1;
    this.w = paramInt2;
    this.x = paramPendingIntent;
    this.y = paramString;
  }
  
  public ConnectionResult(int paramInt, PendingIntent paramPendingIntent) {
    this(paramInt, paramPendingIntent, null);
  }
  
  public ConnectionResult(int paramInt, PendingIntent paramPendingIntent, String paramString) {
    this(1, paramInt, paramPendingIntent, paramString);
  }
  
  public static String a(int paramInt) {
    switch (paramInt) {
      default:
        return (new StringBuilder(31)).append("UNKNOWN_ERROR_CODE(").append(paramInt).append(")").toString();
      case 0:
        return "SUCCESS";
      case 1:
        return "SERVICE_MISSING";
      case 2:
        return "SERVICE_VERSION_UPDATE_REQUIRED";
      case 3:
        return "SERVICE_DISABLED";
      case 4:
        return "SIGN_IN_REQUIRED";
      case 5:
        return "INVALID_ACCOUNT";
      case 6:
        return "RESOLUTION_REQUIRED";
      case 7:
        return "NETWORK_ERROR";
      case 8:
        return "INTERNAL_ERROR";
      case 9:
        return "SERVICE_INVALID";
      case 10:
        return "DEVELOPER_ERROR";
      case 11:
        return "LICENSE_CHECK_FAILED";
      case 13:
        return "CANCELED";
      case 14:
        return "TIMEOUT";
      case 15:
        return "INTERRUPTED";
      case 16:
        return "API_UNAVAILABLE";
      case 17:
        return "SIGN_IN_FAILED";
      case 18:
        return "SERVICE_UPDATING";
      case 19:
        return "SERVICE_MISSING_PERMISSION";
      case 20:
        return "RESTRICTED_PROFILE";
      case 21:
        return "API_VERSION_UPDATE_REQUIRED";
      case 1500:
        return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
      case 99:
        return "UNFINISHED";
      case -1:
        break;
    } 
    return "UNKNOWN";
  }
  
  public void a(Activity paramActivity, int paramInt) {
    if (!a())
      return; 
    paramActivity.startIntentSenderForResult(this.x.getIntentSender(), paramInt, null, 0, 0, 0);
  }
  
  public boolean a() {
    return (this.w != 0 && this.x != null);
  }
  
  public boolean b() {
    return (this.w == 0);
  }
  
  public int c() {
    return this.w;
  }
  
  @Nullable
  public PendingIntent d() {
    return this.x;
  }
  
  @Nullable
  public String e() {
    return this.y;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != this) {
      if (!(paramObject instanceof ConnectionResult))
        return false; 
      paramObject = paramObject;
      if (this.w != ((ConnectionResult)paramObject).w || !csg.a(this.x, ((ConnectionResult)paramObject).x) || !csg.a(this.y, ((ConnectionResult)paramObject).y))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.w), this.x, this.y });
  }
  
  public String toString() {
    return csg.a(this).a("statusCode", a(this.w)).a("resolution", this.x).a("message", this.y).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cwl.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\ConnectionResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */