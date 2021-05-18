package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzarw;
import csg;
import csp;
import duh;
import dui;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

public class zzf extends zza {
  public static final Parcelable.Creator<zzf> CREATOR = (Parcelable.Creator<zzf>)new dui();
  
  public static final Comparator<zzd> a = (Comparator<zzd>)new duh();
  
  private final List<zzd> b;
  
  @Nullable
  private final String c;
  
  private final List<zzarw> d;
  
  public zzf(List<zzd> paramList, @Nullable String paramString, @Nullable List<zzarw> paramList1) {
    boolean bool;
    csp.a(paramList, "transitions can't be null");
    if (paramList.size() > 0) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "transitions can't be empty.");
    a(paramList);
    this.b = Collections.unmodifiableList(paramList);
    this.c = paramString;
    if (paramList1 == null) {
      paramList = Collections.emptyList();
    } else {
      paramList = Collections.unmodifiableList(paramList1);
    } 
    this.d = (List)paramList;
  }
  
  private static void a(List<zzd> paramList) {
    TreeSet<zzd> treeSet = new TreeSet<zzd>(a);
    for (zzd zzd : paramList) {
      csp.b(treeSet.add(zzd), String.format("Found duplicated transition: %s.", new Object[] { zzd }));
    } 
  }
  
  public List<zzd> a() {
    return this.b;
  }
  
  @Nullable
  public String b() {
    return this.c;
  }
  
  public List<zzarw> c() {
    return this.d;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (!csg.a(this.b, ((zzf)paramObject).b) || !csg.a(this.c, ((zzf)paramObject).c) || !csg.a(this.d, ((zzf)paramObject).d))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    byte b;
    int i = 0;
    int j = this.b.hashCode();
    if (this.c != null) {
      b = this.c.hashCode();
    } else {
      b = 0;
    } 
    if (this.d != null)
      i = this.d.hashCode(); 
    return (b + j * 31) * 31 + i;
  }
  
  public String toString() {
    String str1 = String.valueOf(this.b);
    String str2 = this.c;
    String str3 = String.valueOf(this.d);
    return (new StringBuilder(String.valueOf(str1).length() + 61 + String.valueOf(str2).length() + String.valueOf(str3).length())).append("ActivityTransitionRequest [mTransitions=").append(str1).append(", mTag='").append(str2).append("'").append(", mClients=").append(str3).append("]").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dui.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\zzf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */