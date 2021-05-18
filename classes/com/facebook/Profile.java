package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import bjd;
import bje;
import bjg;
import bpi;
import bqq;
import bqt;
import bqx;
import org.json.JSONException;
import org.json.JSONObject;

public final class Profile implements Parcelable {
  public static final Parcelable.Creator<Profile> CREATOR = (Parcelable.Creator<Profile>)new bje();
  
  private static final String a = "id";
  
  private static final String b = "first_name";
  
  private static final String c = "middle_name";
  
  private static final String d = "last_name";
  
  private static final String e = "name";
  
  private static final String f = "link_uri";
  
  private final String g;
  
  private final String h;
  
  private final String i;
  
  private final String j;
  
  private final String k;
  
  private final Uri l;
  
  private Profile(Parcel paramParcel) {
    Uri uri;
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readString();
    this.j = paramParcel.readString();
    this.k = paramParcel.readString();
    String str = paramParcel.readString();
    if (str == null) {
      str = null;
    } else {
      uri = Uri.parse(str);
    } 
    this.l = uri;
  }
  
  public Profile(String paramString1, @Nullable String paramString2, @Nullable String paramString3, @Nullable String paramString4, @Nullable String paramString5, @Nullable Uri paramUri) {
    bqx.a(paramString1, "id");
    this.g = paramString1;
    this.h = paramString2;
    this.i = paramString3;
    this.j = paramString4;
    this.k = paramString5;
    this.l = paramUri;
  }
  
  public Profile(JSONObject paramJSONObject) {
    Uri uri;
    this.g = paramJSONObject.optString("id", null);
    this.h = paramJSONObject.optString("first_name", null);
    this.i = paramJSONObject.optString("middle_name", null);
    this.j = paramJSONObject.optString("last_name", null);
    this.k = paramJSONObject.optString("name", null);
    String str1 = paramJSONObject.optString("link_uri", null);
    if (str1 == null) {
      str1 = str2;
    } else {
      uri = Uri.parse(str1);
    } 
    this.l = uri;
  }
  
  public static Profile a() {
    return bjg.a().b();
  }
  
  public static void a(Profile paramProfile) {
    bjg.a().a(paramProfile);
  }
  
  public static void b() {
    AccessToken accessToken = AccessToken.a();
    if (accessToken == null) {
      a(null);
      return;
    } 
    bqq.a(accessToken.c(), (bqt)new bjd());
  }
  
  public Uri a(int paramInt1, int paramInt2) {
    return bpi.a(this.g, paramInt1, paramInt2);
  }
  
  public String c() {
    return this.g;
  }
  
  public String d() {
    return this.h;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public String e() {
    return this.i;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof Profile))
        return false; 
      paramObject = paramObject;
      return (this.g.equals(((Profile)paramObject).g) && this.h == null) ? (!(((Profile)paramObject).h != null)) : ((this.h.equals(((Profile)paramObject).h) && this.i == null) ? (!(((Profile)paramObject).i != null)) : ((this.i.equals(((Profile)paramObject).i) && this.j == null) ? (!(((Profile)paramObject).j != null)) : ((this.j.equals(((Profile)paramObject).j) && this.k == null) ? (!(((Profile)paramObject).k != null)) : ((this.k.equals(((Profile)paramObject).k) && this.l == null) ? (!(((Profile)paramObject).l != null)) : this.l.equals(((Profile)paramObject).l)))));
    } 
    return true;
  }
  
  public String f() {
    return this.j;
  }
  
  public String g() {
    return this.k;
  }
  
  public Uri h() {
    return this.l;
  }
  
  public int hashCode() {
    int j = this.g.hashCode() + 527;
    int i = j;
    if (this.h != null)
      i = j * 31 + this.h.hashCode(); 
    j = i;
    if (this.i != null)
      j = i * 31 + this.i.hashCode(); 
    i = j;
    if (this.j != null)
      i = j * 31 + this.j.hashCode(); 
    j = i;
    if (this.k != null)
      j = i * 31 + this.k.hashCode(); 
    i = j;
    if (this.l != null)
      i = j * 31 + this.l.hashCode(); 
    return i;
  }
  
  public JSONObject i() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("id", this.g);
      jSONObject.put("first_name", this.h);
      jSONObject.put("middle_name", this.i);
      jSONObject.put("last_name", this.j);
      jSONObject.put("name", this.k);
      if (this.l != null)
        jSONObject.put("link_uri", this.l.toString()); 
      return jSONObject;
    } catch (JSONException jSONException) {
      return null;
    } 
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    String str;
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.j);
    paramParcel.writeString(this.k);
    if (this.l == null) {
      str = null;
    } else {
      str = this.l.toString();
    } 
    paramParcel.writeString(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\Profile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */