package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import cah;
import cai;
import caj;
import cak;
import java.io.Serializable;
import java.util.List;

public final class GameRequestContent implements ShareModel {
  public static final Parcelable.Creator<GameRequestContent> CREATOR = (Parcelable.Creator<GameRequestContent>)new cah();
  
  private final String a;
  
  private final List<String> b;
  
  private final String c;
  
  private final String d;
  
  private final cai e;
  
  private final String f;
  
  private final cak g;
  
  private final List<String> h;
  
  public GameRequestContent(Parcel paramParcel) {
    this.a = paramParcel.readString();
    this.b = paramParcel.createStringArrayList();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = (cai)paramParcel.readSerializable();
    this.f = paramParcel.readString();
    this.g = (cak)paramParcel.readSerializable();
    this.h = paramParcel.createStringArrayList();
    paramParcel.readStringList(this.h);
  }
  
  private GameRequestContent(caj paramcaj) {
    this.a = caj.a(paramcaj);
    this.b = caj.b(paramcaj);
    this.c = caj.c(paramcaj);
    this.d = caj.d(paramcaj);
    this.e = caj.e(paramcaj);
    this.f = caj.f(paramcaj);
    this.g = caj.g(paramcaj);
    this.h = caj.h(paramcaj);
  }
  
  public String a() {
    return this.a;
  }
  
  public String b() {
    return (c() != null) ? TextUtils.join(",", c()) : null;
  }
  
  public List<String> c() {
    return this.b;
  }
  
  public String d() {
    return this.c;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public String e() {
    return this.d;
  }
  
  public cai f() {
    return this.e;
  }
  
  public String g() {
    return this.f;
  }
  
  public cak h() {
    return this.g;
  }
  
  public List<String> i() {
    return this.h;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeString(this.a);
    paramParcel.writeStringList(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeSerializable((Serializable)this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeSerializable((Serializable)this.g);
    paramParcel.writeStringList(this.h);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\GameRequestContent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */