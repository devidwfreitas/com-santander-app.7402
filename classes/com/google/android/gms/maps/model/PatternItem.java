package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import csp;
import efs;
import java.util.ArrayList;
import java.util.List;

public class PatternItem extends zza {
  public static final Parcelable.Creator<PatternItem> CREATOR;
  
  private static final String a = PatternItem.class.getSimpleName();
  
  private final int b;
  
  @Nullable
  private final Float c;
  
  static {
    CREATOR = (Parcelable.Creator<PatternItem>)new efs();
  }
  
  public PatternItem(int paramInt, @Nullable Float paramFloat) {
    boolean bool1 = bool2;
    if (paramInt != 1)
      if (paramFloat != null && paramFloat.floatValue() >= 0.0F) {
        bool1 = bool2;
      } else {
        bool1 = false;
      }  
    String str = String.valueOf(paramFloat);
    csp.b(bool1, (new StringBuilder(String.valueOf(str).length() + 45)).append("Invalid PatternItem: type=").append(paramInt).append(" length=").append(str).toString());
    this.b = paramInt;
    this.c = paramFloat;
  }
  
  @Nullable
  public static List<PatternItem> a(@Nullable List<PatternItem> paramList) {
    if (paramList == null)
      return null; 
    ArrayList<PatternItem> arrayList = new ArrayList(paramList.size());
    for (PatternItem patternItem : paramList) {
      if (patternItem == null) {
        patternItem = null;
      } else {
        patternItem = patternItem.c();
      } 
      arrayList.add(patternItem);
    } 
    return arrayList;
  }
  
  private PatternItem c() {
    int i;
    String str;
    switch (this.b) {
      default:
        str = a;
        i = this.b;
        Log.w(str, (new StringBuilder(37)).append("Unknown PatternItem type: ").append(i).toString());
        return this;
      case 0:
        return new Dash(this.c.floatValue());
      case 1:
        return new Dot();
      case 2:
        break;
    } 
    return new Gap(this.c.floatValue());
  }
  
  public int a() {
    return this.b;
  }
  
  @Nullable
  public Float b() {
    return this.c;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof PatternItem))
        return false; 
      paramObject = paramObject;
      if (this.b != ((PatternItem)paramObject).b || !csg.a(this.c, ((PatternItem)paramObject).c))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.b), this.c });
  }
  
  public String toString() {
    int i = this.b;
    String str = String.valueOf(this.c);
    return (new StringBuilder(String.valueOf(str).length() + 39)).append("[PatternItem: type=").append(i).append(" length=").append(str).append("]").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efs.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\PatternItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */