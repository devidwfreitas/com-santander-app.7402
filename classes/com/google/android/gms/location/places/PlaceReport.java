package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import csi;
import csp;
import dud;

public class PlaceReport extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<PlaceReport> CREATOR = (Parcelable.Creator<PlaceReport>)new dud();
  
  public final int a;
  
  private final String b;
  
  private final String c;
  
  private final String d;
  
  public PlaceReport(int paramInt, String paramString1, String paramString2, String paramString3) {
    this.a = paramInt;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramString3;
  }
  
  public static PlaceReport a(String paramString1, String paramString2) {
    return a(paramString1, paramString2, "unknown");
  }
  
  public static PlaceReport a(String paramString1, String paramString2, String paramString3) {
    csp.a(paramString1);
    csp.a(paramString2);
    csp.a(paramString3);
    csp.b(a(paramString3), "Invalid source");
    return new PlaceReport(1, paramString1, paramString2, paramString3);
  }
  
  private static boolean a(String paramString) {
    boolean bool = true;
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            bool = false;
            break;
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
            break;
        } 
        return bool;
      case -284840886:
        if (paramString.equals("unknown"))
          b = 0; 
      case -1194968642:
        if (paramString.equals("userReported"))
          b = 1; 
      case -1436706272:
        if (paramString.equals("inferredGeofencing"))
          b = 2; 
      case 1287171955:
        if (paramString.equals("inferredRadioSignals"))
          b = 3; 
      case -262743844:
        if (paramString.equals("inferredReverseGeocoding"))
          b = 4; 
      case 1164924125:
        break;
    } 
    if (paramString.equals("inferredSnappedToRoad"))
      b = 5; 
  }
  
  public String a() {
    return this.b;
  }
  
  public String b() {
    return this.c;
  }
  
  public String c() {
    return this.d;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof PlaceReport) {
      paramObject = paramObject;
      if (csg.a(this.b, ((PlaceReport)paramObject).b) && csg.a(this.c, ((PlaceReport)paramObject).c) && csg.a(this.d, ((PlaceReport)paramObject).d))
        return true; 
    } 
    return false;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { this.b, this.c, this.d });
  }
  
  public String toString() {
    csi csi = csg.a(this);
    csi.a("placeId", this.b);
    csi.a("tag", this.c);
    if (!"unknown".equals(this.d))
      csi.a("source", this.d); 
    return csi.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dud.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\places\PlaceReport.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */