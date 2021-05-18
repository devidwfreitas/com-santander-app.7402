package com.facebook;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import bgm;
import bgn;
import bgo;
import bgp;
import bgs;
import bgy;
import bhp;
import bhv;
import bja;
import bjb;
import bqq;
import bqt;
import bqx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class AccessToken implements Parcelable {
  public static final Parcelable.Creator<AccessToken> CREATOR;
  
  public static final String a = "access_token";
  
  public static final String b = "expires_in";
  
  public static final String c = "user_id";
  
  private static final Date d = new Date(Long.MAX_VALUE);
  
  private static final Date e = d;
  
  private static final Date f = new Date();
  
  private static final bgy g = bgy.FACEBOOK_APPLICATION_WEB;
  
  private static final int h = 1;
  
  private static final String i = "version";
  
  private static final String j = "expires_at";
  
  private static final String k = "permissions";
  
  private static final String l = "declined_permissions";
  
  private static final String m = "token";
  
  private static final String n = "source";
  
  private static final String o = "last_refresh";
  
  private static final String p = "application_id";
  
  private final Date q;
  
  private final Set<String> r;
  
  private final Set<String> s;
  
  private final String t;
  
  private final bgy u;
  
  private final Date v;
  
  private final String w;
  
  private final String x;
  
  static {
    CREATOR = (Parcelable.Creator<AccessToken>)new bgn();
  }
  
  public AccessToken(Parcel paramParcel) {
    this.q = new Date(paramParcel.readLong());
    ArrayList<? extends String> arrayList = new ArrayList();
    paramParcel.readStringList(arrayList);
    this.r = Collections.unmodifiableSet(new HashSet<String>(arrayList));
    arrayList.clear();
    paramParcel.readStringList(arrayList);
    this.s = Collections.unmodifiableSet(new HashSet<String>(arrayList));
    this.t = paramParcel.readString();
    this.u = bgy.valueOf(paramParcel.readString());
    this.v = new Date(paramParcel.readLong());
    this.w = paramParcel.readString();
    this.x = paramParcel.readString();
  }
  
  public AccessToken(String paramString1, String paramString2, String paramString3, @Nullable Collection<String> paramCollection1, @Nullable Collection<String> paramCollection2, @Nullable bgy parambgy, @Nullable Date paramDate1, @Nullable Date paramDate2) {
    bqx.a(paramString1, "accessToken");
    bqx.a(paramString2, "applicationId");
    bqx.a(paramString3, "userId");
    if (paramDate1 == null)
      paramDate1 = e; 
    this.q = paramDate1;
    if (paramCollection1 != null) {
      paramCollection1 = new HashSet<String>(paramCollection1);
    } else {
      paramCollection1 = new HashSet<String>();
    } 
    this.r = Collections.unmodifiableSet((Set<? extends String>)paramCollection1);
    if (paramCollection2 != null) {
      paramCollection1 = new HashSet<String>(paramCollection2);
    } else {
      paramCollection1 = new HashSet<String>();
    } 
    this.s = Collections.unmodifiableSet((Set<? extends String>)paramCollection1);
    this.t = paramString1;
    if (parambgy == null)
      parambgy = g; 
    this.u = parambgy;
    if (paramDate2 == null)
      paramDate2 = f; 
    this.v = paramDate2;
    this.w = paramString2;
    this.x = paramString3;
  }
  
  public static AccessToken a() {
    return bgs.a().b();
  }
  
  public static AccessToken a(Bundle paramBundle) {
    List<String> list1 = a(paramBundle, "com.facebook.TokenCachingStrategy.Permissions");
    List<String> list2 = a(paramBundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
    String str2 = bja.j(paramBundle);
    String str1 = str2;
    if (bqq.a(str2))
      str1 = bhv.l(); 
    str2 = bja.c(paramBundle);
    JSONObject jSONObject = bqq.e(str2);
    try {
      String str = jSONObject.getString("id");
      return new AccessToken(str2, str1, str, list1, list2, bja.g(paramBundle), bja.c(paramBundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), bja.c(paramBundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
    } catch (JSONException jSONException) {
      return null;
    } 
  }
  
  @SuppressLint({"FieldGetter"})
  static AccessToken a(AccessToken paramAccessToken, Bundle paramBundle) {
    if (paramAccessToken.u != bgy.FACEBOOK_APPLICATION_WEB && paramAccessToken.u != bgy.FACEBOOK_APPLICATION_NATIVE && paramAccessToken.u != bgy.FACEBOOK_APPLICATION_SERVICE)
      throw new bhp("Invalid token source: " + paramAccessToken.u); 
    Date date = bqq.a(paramBundle, "expires_in", new Date(0L));
    String str = paramBundle.getString("access_token");
    return bqq.a(str) ? null : new AccessToken(str, paramAccessToken.w, paramAccessToken.j(), paramAccessToken.e(), paramAccessToken.f(), paramAccessToken.u, date, new Date());
  }
  
  public static AccessToken a(JSONObject paramJSONObject) {
    if (paramJSONObject.getInt("version") > 1)
      throw new bhp("Unknown AccessToken serialization format."); 
    String str = paramJSONObject.getString("token");
    Date date1 = new Date(paramJSONObject.getLong("expires_at"));
    JSONArray jSONArray1 = paramJSONObject.getJSONArray("permissions");
    JSONArray jSONArray2 = paramJSONObject.getJSONArray("declined_permissions");
    Date date2 = new Date(paramJSONObject.getLong("last_refresh"));
    bgy bgy1 = bgy.valueOf(paramJSONObject.getString("source"));
    return new AccessToken(str, paramJSONObject.getString("application_id"), paramJSONObject.getString("user_id"), bqq.a(jSONArray1), bqq.a(jSONArray2), bgy1, date1, date2);
  }
  
  static List<String> a(Bundle paramBundle, String paramString) {
    ArrayList<? extends String> arrayList = paramBundle.getStringArrayList(paramString);
    return (arrayList == null) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList<String>(arrayList));
  }
  
  public static void a(Intent paramIntent, String paramString, bgo parambgo) {
    bqx.a(paramIntent, "intent");
    if (paramIntent.getExtras() == null) {
      parambgo.a(new bhp("No extras found on intent"));
      return;
    } 
    Bundle bundle = new Bundle(paramIntent.getExtras());
    String str1 = bundle.getString("access_token");
    if (str1 == null || str1.isEmpty()) {
      parambgo.a(new bhp("No access token found on intent"));
      return;
    } 
    String str2 = bundle.getString("user_id");
    if (str2 == null || str2.isEmpty()) {
      bqq.a(str1, (bqt)new bgm(bundle, parambgo, paramString));
      return;
    } 
    parambgo.a(b(null, bundle, bgy.FACEBOOK_APPLICATION_WEB, new Date(), paramString));
  }
  
  public static void a(bgp parambgp) {
    bgs.a().a(parambgp);
  }
  
  public static void a(AccessToken paramAccessToken) {
    bgs.a().a(paramAccessToken);
  }
  
  private void a(StringBuilder paramStringBuilder) {
    paramStringBuilder.append(" permissions:");
    if (this.r == null) {
      paramStringBuilder.append("null");
      return;
    } 
    paramStringBuilder.append("[");
    paramStringBuilder.append(TextUtils.join(", ", this.r));
    paramStringBuilder.append("]");
  }
  
  private static AccessToken b(List<String> paramList, Bundle paramBundle, bgy parambgy, Date paramDate, String paramString) {
    String str2 = paramBundle.getString("access_token");
    paramDate = bqq.a(paramBundle, "expires_in", paramDate);
    String str1 = paramBundle.getString("user_id");
    return (bqq.a(str2) || paramDate == null) ? null : new AccessToken(str2, paramString, str1, paramList, null, parambgy, paramDate, new Date());
  }
  
  public static void b() {
    bgs.a().a(null);
  }
  
  private String m() {
    return (this.t == null) ? "null" : (bhv.c(bjb.INCLUDE_ACCESS_TOKENS) ? this.t : "ACCESS_TOKEN_REMOVED");
  }
  
  public String c() {
    return this.t;
  }
  
  public Date d() {
    return this.q;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public Set<String> e() {
    return this.r;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof AccessToken))
        return false; 
      paramObject = paramObject;
      if (!this.q.equals(((AccessToken)paramObject).q) || !this.r.equals(((AccessToken)paramObject).r) || !this.s.equals(((AccessToken)paramObject).s) || !this.t.equals(((AccessToken)paramObject).t) || this.u != ((AccessToken)paramObject).u || !this.v.equals(((AccessToken)paramObject).v) || ((this.w == null) ? (((AccessToken)paramObject).w == null) : this.w.equals(((AccessToken)paramObject).w)) || !this.x.equals(((AccessToken)paramObject).x))
        return false; 
    } 
    return true;
  }
  
  public Set<String> f() {
    return this.s;
  }
  
  public bgy g() {
    return this.u;
  }
  
  public Date h() {
    return this.v;
  }
  
  public int hashCode() {
    int j = this.q.hashCode();
    int k = this.r.hashCode();
    int m = this.s.hashCode();
    int n = this.t.hashCode();
    int i1 = this.u.hashCode();
    int i2 = this.v.hashCode();
    if (this.w == null) {
      byte b = 0;
      return (b + ((((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31) * 31 + this.x.hashCode();
    } 
    int i = this.w.hashCode();
    return (i + ((((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31) * 31 + this.x.hashCode();
  }
  
  public String i() {
    return this.w;
  }
  
  public String j() {
    return this.x;
  }
  
  public boolean k() {
    return (new Date()).after(this.q);
  }
  
  public JSONObject l() {
    JSONObject jSONObject = new JSONObject();
    jSONObject.put("version", 1);
    jSONObject.put("token", this.t);
    jSONObject.put("expires_at", this.q.getTime());
    jSONObject.put("permissions", new JSONArray(this.r));
    jSONObject.put("declined_permissions", new JSONArray(this.s));
    jSONObject.put("last_refresh", this.v.getTime());
    jSONObject.put("source", this.u.name());
    jSONObject.put("application_id", this.w);
    jSONObject.put("user_id", this.x);
    return jSONObject;
  }
  
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("{AccessToken");
    stringBuilder.append(" token:").append(m());
    a(stringBuilder);
    stringBuilder.append("}");
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeLong(this.q.getTime());
    paramParcel.writeStringList(new ArrayList<String>(this.r));
    paramParcel.writeStringList(new ArrayList<String>(this.s));
    paramParcel.writeString(this.t);
    paramParcel.writeString(this.u.name());
    paramParcel.writeLong(this.v.getTime());
    paramParcel.writeString(this.w);
    paramParcel.writeString(this.x);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\AccessToken.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */