package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import coc;
import coj;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import csp;
import cvo;
import cvs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInAccount extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = (Parcelable.Creator<GoogleSignInAccount>)new coj();
  
  public static cvo a = cvs.d();
  
  private static Comparator<Scope> n = (Comparator<Scope>)new coc();
  
  public final int b;
  
  public List<Scope> c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private Uri h;
  
  private String i;
  
  private long j;
  
  private String k;
  
  private String l;
  
  private String m;
  
  public GoogleSignInAccount(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, Uri paramUri, String paramString5, long paramLong, String paramString6, List<Scope> paramList, String paramString7, String paramString8) {
    this.b = paramInt;
    this.d = paramString1;
    this.e = paramString2;
    this.f = paramString3;
    this.g = paramString4;
    this.h = paramUri;
    this.i = paramString5;
    this.j = paramLong;
    this.k = paramString6;
    this.c = paramList;
    this.l = paramString7;
    this.m = paramString8;
  }
  
  @Nullable
  public static GoogleSignInAccount a(@Nullable String paramString) {
    if (TextUtils.isEmpty(paramString))
      return null; 
    JSONObject jSONObject = new JSONObject(paramString);
    paramString = jSONObject.optString("photoUrl", null);
    if (!TextUtils.isEmpty(paramString)) {
      Uri uri = Uri.parse(paramString);
    } else {
      paramString = null;
    } 
    long l = Long.parseLong(jSONObject.getString("expirationTime"));
    HashSet<Scope> hashSet = new HashSet();
    JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
    int j = jSONArray.length();
    for (int i = 0; i < j; i++)
      hashSet.add(new Scope(jSONArray.getString(i))); 
    return a(jSONObject.optString("id"), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), (Uri)paramString, Long.valueOf(l), jSONObject.getString("obfuscatedIdentifier"), hashSet).b(jSONObject.optString("serverAuthCode", null));
  }
  
  public static GoogleSignInAccount a(@Nullable String paramString1, @Nullable String paramString2, @Nullable String paramString3, @Nullable String paramString4, @Nullable String paramString5, @Nullable String paramString6, @Nullable Uri paramUri, @Nullable Long paramLong, @NonNull String paramString7, @NonNull Set<Scope> paramSet) {
    Long long_ = paramLong;
    if (paramLong == null)
      long_ = Long.valueOf(a.a() / 1000L); 
    return new GoogleSignInAccount(3, paramString1, paramString2, paramString3, paramString4, paramUri, null, long_.longValue(), csp.a(paramString7), new ArrayList<Scope>((Collection<? extends Scope>)csp.a(paramSet)), paramString5, paramString6);
  }
  
  private JSONObject p() {
    JSONArray jSONArray;
    JSONObject jSONObject = new JSONObject();
    try {
      if (a() != null)
        jSONObject.put("id", a()); 
      if (b() != null)
        jSONObject.put("tokenId", b()); 
      if (c() != null)
        jSONObject.put("email", c()); 
      if (e() != null)
        jSONObject.put("displayName", e()); 
      if (f() != null)
        jSONObject.put("givenName", f()); 
      if (g() != null)
        jSONObject.put("familyName", g()); 
      if (h() != null)
        jSONObject.put("photoUrl", h().toString()); 
      if (i() != null)
        jSONObject.put("serverAuthCode", i()); 
      jSONObject.put("expirationTime", this.j);
      jSONObject.put("obfuscatedIdentifier", l());
      jSONArray = new JSONArray();
      Collections.sort(this.c, n);
      Iterator<Scope> iterator = this.c.iterator();
      while (iterator.hasNext())
        jSONArray.put(((Scope)iterator.next()).a()); 
    } catch (JSONException jSONException) {
      throw new RuntimeException(jSONException);
    } 
    jSONException.put("grantedScopes", jSONArray);
    return (JSONObject)jSONException;
  }
  
  @Nullable
  public String a() {
    return this.d;
  }
  
  public GoogleSignInAccount b(String paramString) {
    this.i = paramString;
    return this;
  }
  
  @Nullable
  public String b() {
    return this.e;
  }
  
  @Nullable
  public String c() {
    return this.f;
  }
  
  @Nullable
  public Account d() {
    return (this.f == null) ? null : new Account(this.f, "com.google");
  }
  
  @Nullable
  public String e() {
    return this.g;
  }
  
  public boolean equals(Object paramObject) {
    return !(paramObject instanceof GoogleSignInAccount) ? false : ((GoogleSignInAccount)paramObject).n().equals(n());
  }
  
  @Nullable
  public String f() {
    return this.l;
  }
  
  @Nullable
  public String g() {
    return this.m;
  }
  
  @Nullable
  public Uri h() {
    return this.h;
  }
  
  public int hashCode() {
    return n().hashCode();
  }
  
  @Nullable
  public String i() {
    return this.i;
  }
  
  public long j() {
    return this.j;
  }
  
  public boolean k() {
    return (a.a() / 1000L >= this.j - 300L);
  }
  
  @NonNull
  public String l() {
    return this.k;
  }
  
  @NonNull
  public Set<Scope> m() {
    return new HashSet<Scope>(this.c);
  }
  
  public String n() {
    return p().toString();
  }
  
  public String o() {
    JSONObject jSONObject = p();
    jSONObject.remove("serverAuthCode");
    return jSONObject.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    coj.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\auth\api\signin\GoogleSignInAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */