package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import cod;
import coe;
import coh;
import cok;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cpc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInOptions extends zza implements ReflectedParcelable, cpc {
  public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
  
  public static final Scope a = new Scope("profile");
  
  public static final Scope b = new Scope("email");
  
  public static final Scope c = new Scope("openid");
  
  public static final Scope d = new Scope("https://www.googleapis.com/auth/games");
  
  public static final GoogleSignInOptions e = (new coe()).a().c().d();
  
  public static final GoogleSignInOptions f = (new coe()).a(d, new Scope[0]).d();
  
  private static Comparator<Scope> q;
  
  public final int g;
  
  private final ArrayList<Scope> h;
  
  private Account i;
  
  private boolean j;
  
  private final boolean k;
  
  private final boolean l;
  
  private String m;
  
  private String n;
  
  private ArrayList<zzg> o;
  
  private Map<Integer, zzg> p;
  
  static {
    CREATOR = (Parcelable.Creator<GoogleSignInOptions>)new cok();
    q = (Comparator<Scope>)new cod();
  }
  
  public GoogleSignInOptions(int paramInt, ArrayList<Scope> paramArrayList, Account paramAccount, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString1, String paramString2, ArrayList<zzg> paramArrayList1) {
    this(paramInt, paramArrayList, paramAccount, paramBoolean1, paramBoolean2, paramBoolean3, paramString1, paramString2, b(paramArrayList1));
  }
  
  private GoogleSignInOptions(int paramInt, ArrayList<Scope> paramArrayList, Account paramAccount, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString1, String paramString2, Map<Integer, zzg> paramMap) {
    this.g = paramInt;
    this.h = paramArrayList;
    this.i = paramAccount;
    this.j = paramBoolean1;
    this.k = paramBoolean2;
    this.l = paramBoolean3;
    this.m = paramString1;
    this.n = paramString2;
    this.o = new ArrayList<zzg>(paramMap.values());
    this.p = paramMap;
  }
  
  @Nullable
  public static GoogleSignInOptions a(@Nullable String paramString) {
    if (TextUtils.isEmpty(paramString))
      return null; 
    JSONObject jSONObject = new JSONObject(paramString);
    HashSet<Scope> hashSet = new HashSet();
    JSONArray jSONArray = jSONObject.getJSONArray("scopes");
    int j = jSONArray.length();
    for (int i = 0; i < j; i++)
      hashSet.add(new Scope(jSONArray.getString(i))); 
    String str = jSONObject.optString("accountName", null);
    if (!TextUtils.isEmpty(str)) {
      Account account = new Account(str, "com.google");
      return new GoogleSignInOptions(3, new ArrayList<Scope>(hashSet), account, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap<Integer, zzg>());
    } 
    str = null;
    return new GoogleSignInOptions(3, new ArrayList<Scope>(hashSet), (Account)str, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.optString("serverClientId", null), jSONObject.optString("hostedDomain", null), new HashMap<Integer, zzg>());
  }
  
  private static Map<Integer, zzg> b(@Nullable List<zzg> paramList) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    if (paramList == null)
      return (Map)hashMap; 
    for (zzg zzg : paramList)
      hashMap.put(Integer.valueOf(zzg.a()), zzg); 
    return (Map)hashMap;
  }
  
  private JSONObject k() {
    JSONArray jSONArray;
    JSONObject jSONObject = new JSONObject();
    try {
      jSONArray = new JSONArray();
      Collections.sort(this.h, q);
      Iterator<Scope> iterator = this.h.iterator();
      while (iterator.hasNext())
        jSONArray.put(((Scope)iterator.next()).a()); 
    } catch (JSONException jSONException) {
      throw new RuntimeException(jSONException);
    } 
    jSONException.put("scopes", jSONArray);
    if (this.i != null)
      jSONException.put("accountName", this.i.name); 
    jSONException.put("idTokenRequested", this.j);
    jSONException.put("forceCodeForRefreshToken", this.l);
    jSONException.put("serverAuthRequested", this.k);
    if (!TextUtils.isEmpty(this.m))
      jSONException.put("serverClientId", this.m); 
    if (!TextUtils.isEmpty(this.n))
      jSONException.put("hostedDomain", this.n); 
    return (JSONObject)jSONException;
  }
  
  public ArrayList<Scope> a() {
    return new ArrayList<Scope>(this.h);
  }
  
  public Scope[] b() {
    return this.h.<Scope>toArray(new Scope[this.h.size()]);
  }
  
  public Account c() {
    return this.i;
  }
  
  public boolean d() {
    return this.j;
  }
  
  public boolean e() {
    return this.k;
  }
  
  public boolean equals(Object paramObject) {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull -> 6
    //   4: iconst_0
    //   5: ireturn
    //   6: aload_1
    //   7: checkcast com/google/android/gms/auth/api/signin/GoogleSignInOptions
    //   10: astore_1
    //   11: aload_0
    //   12: getfield o : Ljava/util/ArrayList;
    //   15: invokevirtual size : ()I
    //   18: ifgt -> 4
    //   21: aload_1
    //   22: getfield o : Ljava/util/ArrayList;
    //   25: invokevirtual size : ()I
    //   28: ifgt -> 4
    //   31: aload_0
    //   32: getfield h : Ljava/util/ArrayList;
    //   35: invokevirtual size : ()I
    //   38: aload_1
    //   39: invokevirtual a : ()Ljava/util/ArrayList;
    //   42: invokevirtual size : ()I
    //   45: if_icmpne -> 4
    //   48: aload_0
    //   49: getfield h : Ljava/util/ArrayList;
    //   52: aload_1
    //   53: invokevirtual a : ()Ljava/util/ArrayList;
    //   56: invokevirtual containsAll : (Ljava/util/Collection;)Z
    //   59: ifeq -> 4
    //   62: aload_0
    //   63: getfield i : Landroid/accounts/Account;
    //   66: ifnonnull -> 131
    //   69: aload_1
    //   70: invokevirtual c : ()Landroid/accounts/Account;
    //   73: ifnonnull -> 4
    //   76: aload_0
    //   77: getfield m : Ljava/lang/String;
    //   80: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   83: ifeq -> 148
    //   86: aload_1
    //   87: invokevirtual g : ()Ljava/lang/String;
    //   90: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   93: ifeq -> 4
    //   96: aload_0
    //   97: getfield l : Z
    //   100: aload_1
    //   101: invokevirtual f : ()Z
    //   104: if_icmpne -> 4
    //   107: aload_0
    //   108: getfield j : Z
    //   111: aload_1
    //   112: invokevirtual d : ()Z
    //   115: if_icmpne -> 4
    //   118: aload_0
    //   119: getfield k : Z
    //   122: aload_1
    //   123: invokevirtual e : ()Z
    //   126: if_icmpne -> 4
    //   129: iconst_1
    //   130: ireturn
    //   131: aload_0
    //   132: getfield i : Landroid/accounts/Account;
    //   135: aload_1
    //   136: invokevirtual c : ()Landroid/accounts/Account;
    //   139: invokevirtual equals : (Ljava/lang/Object;)Z
    //   142: ifeq -> 4
    //   145: goto -> 76
    //   148: aload_0
    //   149: getfield m : Ljava/lang/String;
    //   152: aload_1
    //   153: invokevirtual g : ()Ljava/lang/String;
    //   156: invokevirtual equals : (Ljava/lang/Object;)Z
    //   159: istore_2
    //   160: iload_2
    //   161: ifeq -> 4
    //   164: goto -> 96
    //   167: astore_1
    //   168: iconst_0
    //   169: ireturn
    // Exception table:
    //   from	to	target	type
    //   6	76	167	java/lang/ClassCastException
    //   76	96	167	java/lang/ClassCastException
    //   96	129	167	java/lang/ClassCastException
    //   131	145	167	java/lang/ClassCastException
    //   148	160	167	java/lang/ClassCastException
  }
  
  public boolean f() {
    return this.l;
  }
  
  public String g() {
    return this.m;
  }
  
  public String h() {
    return this.n;
  }
  
  public int hashCode() {
    ArrayList<String> arrayList = new ArrayList();
    Iterator<Scope> iterator = this.h.iterator();
    while (iterator.hasNext())
      arrayList.add(((Scope)iterator.next()).a()); 
    Collections.sort(arrayList);
    return (new coh()).a(arrayList).a(this.i).a(this.m).a(this.l).a(this.j).a(this.k).a();
  }
  
  public ArrayList<zzg> i() {
    return this.o;
  }
  
  public String j() {
    return k().toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    cok.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\auth\api\signin\GoogleSignInOptions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */