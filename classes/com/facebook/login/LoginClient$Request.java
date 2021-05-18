package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import bqx;
import brn;
import bse;
import bsf;
import bsi;
import bsp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class LoginClient$Request implements Parcelable {
  public static final Parcelable.Creator<LoginClient$Request> CREATOR = (Parcelable.Creator<LoginClient$Request>)new bsi();
  
  private final bse a;
  
  private Set<String> b;
  
  private final brn c;
  
  private final String d;
  
  private final String e;
  
  private boolean f;
  
  private String g;
  
  private LoginClient$Request(Parcel paramParcel) {
    boolean bool;
    brn brn1;
    this.f = false;
    String str1 = paramParcel.readString();
    if (str1 != null) {
      bse bse1 = bse.valueOf(str1);
    } else {
      str1 = null;
    } 
    this.a = (bse)str1;
    ArrayList<? extends String> arrayList = new ArrayList();
    paramParcel.readStringList(arrayList);
    this.b = new HashSet<String>(arrayList);
    String str2 = paramParcel.readString();
    arrayList = arrayList1;
    if (str2 != null)
      brn1 = brn.valueOf(str2); 
    this.c = brn1;
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    if (paramParcel.readByte() != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.f = bool;
    this.g = paramParcel.readString();
  }
  
  public LoginClient$Request(bse parambse, Set<String> paramSet, brn parambrn, String paramString1, String paramString2) {
    this.f = false;
    this.a = parambse;
    if (paramSet == null)
      paramSet = new HashSet<String>(); 
    this.b = paramSet;
    this.c = parambrn;
    this.d = paramString1;
    this.e = paramString2;
  }
  
  public Set<String> a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.g = paramString;
  }
  
  void a(Set<String> paramSet) {
    bqx.a(paramSet, "permissions");
    this.b = paramSet;
  }
  
  public void a(boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public bse b() {
    return this.a;
  }
  
  public brn c() {
    return this.c;
  }
  
  String d() {
    return this.d;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public String e() {
    return this.e;
  }
  
  public boolean f() {
    return this.f;
  }
  
  String g() {
    return this.g;
  }
  
  boolean h() {
    Iterator<String> iterator = this.b.iterator();
    while (iterator.hasNext()) {
      if (bsp.a(iterator.next()))
        return true; 
    } 
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    String str2 = null;
    if (this.a != null) {
      str1 = this.a.name();
    } else {
      str1 = null;
    } 
    paramParcel.writeString(str1);
    paramParcel.writeStringList(new ArrayList<String>(this.b));
    String str1 = str2;
    if (this.c != null)
      str1 = this.c.name(); 
    paramParcel.writeString(str1);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    if (this.f) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeByte((byte)paramInt);
    paramParcel.writeString(this.g);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\LoginClient$Request.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */