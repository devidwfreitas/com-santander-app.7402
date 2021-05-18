package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import dtm;
import duj;
import java.util.Comparator;

public class DetectedActivity extends zza {
  public static final Parcelable.Creator<DetectedActivity> CREATOR;
  
  public static final Comparator<DetectedActivity> a = (Comparator<DetectedActivity>)new dtm();
  
  public static final int b = 0;
  
  public static final int c = 1;
  
  public static final int d = 2;
  
  public static final int e = 3;
  
  public static final int f = 4;
  
  public static final int g = 5;
  
  public static final int h = 7;
  
  public static final int i = 8;
  
  public static final int[] j = new int[] { 9, 10 };
  
  public static final int[] k = new int[] { 
      0, 1, 2, 4, 5, 6, 7, 8, 10, 11, 
      12, 13, 14 };
  
  public int l;
  
  public int m;
  
  static {
    CREATOR = (Parcelable.Creator<DetectedActivity>)new duj();
  }
  
  public DetectedActivity(int paramInt1, int paramInt2) {
    this.l = paramInt1;
    this.m = paramInt2;
  }
  
  public static String a(int paramInt) {
    switch (paramInt) {
      default:
        return Integer.toString(paramInt);
      case 0:
        return "IN_VEHICLE";
      case 1:
        return "ON_BICYCLE";
      case 2:
        return "ON_FOOT";
      case 3:
        return "STILL";
      case 4:
        return "UNKNOWN";
      case 5:
        return "TILTING";
      case 7:
        return "WALKING";
      case 8:
        break;
    } 
    return "RUNNING";
  }
  
  private int b(int paramInt) {
    int i = paramInt;
    if (paramInt > 15)
      i = 4; 
    return i;
  }
  
  public int a() {
    return b(this.l);
  }
  
  public int b() {
    return this.m;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.l != ((DetectedActivity)paramObject).l || this.m != ((DetectedActivity)paramObject).m)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.l), Integer.valueOf(this.m) });
  }
  
  public String toString() {
    String str = String.valueOf(a(a()));
    int i = this.m;
    return (new StringBuilder(String.valueOf(str).length() + 48)).append("DetectedActivity [type=").append(str).append(", confidence=").append(i).append("]").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    duj.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\DetectedActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */