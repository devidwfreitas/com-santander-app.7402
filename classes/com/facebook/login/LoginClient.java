package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import bhp;
import bjx;
import bnl;
import bqq;
import bse;
import bsf;
import bsg;
import bsh;
import bso;
import com.facebook.AccessToken;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class LoginClient implements Parcelable {
  public static final Parcelable.Creator<LoginClient> CREATOR = (Parcelable.Creator<LoginClient>)new bsf();
  
  LoginMethodHandler[] a;
  
  int b = -1;
  
  Fragment c;
  
  bsh d;
  
  bsg e;
  
  boolean f;
  
  LoginClient$Request g;
  
  Map<String, String> h;
  
  private bso i;
  
  public LoginClient(Parcel paramParcel) {
    Parcelable[] arrayOfParcelable = paramParcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
    this.a = new LoginMethodHandler[arrayOfParcelable.length];
    for (int i = 0; i < arrayOfParcelable.length; i++) {
      this.a[i] = (LoginMethodHandler)arrayOfParcelable[i];
      this.a[i].a(this);
    } 
    this.b = paramParcel.readInt();
    this.g = (LoginClient$Request)paramParcel.readParcelable(LoginClient$Request.class.getClassLoader());
    this.h = bqq.a(paramParcel);
  }
  
  public LoginClient(Fragment paramFragment) {
    this.c = paramFragment;
  }
  
  private static AccessToken a(AccessToken paramAccessToken, Collection<String> paramCollection1, Collection<String> paramCollection2) {
    return new AccessToken(paramAccessToken.c(), paramAccessToken.i(), paramAccessToken.j(), paramCollection1, paramCollection2, paramAccessToken.g(), paramAccessToken.d(), paramAccessToken.h());
  }
  
  private void a(String paramString, LoginClient$Result paramLoginClient$Result, Map<String, String> paramMap) {
    a(paramString, paramLoginClient$Result.a.getLoggingValue(), paramLoginClient$Result.c, paramLoginClient$Result.d, paramMap);
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, Map<String, String> paramMap) {
    if (this.g == null) {
      q().a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", paramString1);
      return;
    } 
    q().a(this.g.e(), paramString1, paramString2, paramString3, paramString4, paramMap);
  }
  
  private void a(String paramString1, String paramString2, boolean paramBoolean) {
    if (this.h == null)
      this.h = new HashMap<String, String>(); 
    String str = paramString2;
    if (this.h.containsKey(paramString1)) {
      str = paramString2;
      if (paramBoolean)
        str = (String)this.h.get(paramString1) + "," + paramString2; 
    } 
    this.h.put(paramString1, str);
  }
  
  public static int d() {
    return bnl.Login.toRequestCode();
  }
  
  private void d(LoginClient$Result paramLoginClient$Result) {
    if (this.d != null)
      this.d.a(paramLoginClient$Result); 
  }
  
  static String o() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("init", System.currentTimeMillis());
    } catch (JSONException jSONException) {}
    return jSONObject.toString();
  }
  
  private void p() {
    b(LoginClient$Result.a(this.g, "Login attempt failed.", null));
  }
  
  private bso q() {
    if (this.i == null || !this.i.a().equals(this.g.d()))
      this.i = new bso((Context)b(), this.g.d()); 
    return this.i;
  }
  
  int a(String paramString) {
    return b().checkCallingOrSelfPermission(paramString);
  }
  
  public Fragment a() {
    return this.c;
  }
  
  public void a(Fragment paramFragment) {
    if (this.c != null)
      throw new bhp("Can't set fragment once it is already set."); 
    this.c = paramFragment;
  }
  
  public void a(bsg parambsg) {
    this.e = parambsg;
  }
  
  public void a(bsh parambsh) {
    this.d = parambsh;
  }
  
  public void a(LoginClient$Request paramLoginClient$Request) {
    if (!e())
      b(paramLoginClient$Request); 
  }
  
  void a(LoginClient$Result paramLoginClient$Result) {
    if (paramLoginClient$Result.b != null && AccessToken.a() != null) {
      c(paramLoginClient$Result);
      return;
    } 
    b(paramLoginClient$Result);
  }
  
  public boolean a(int paramInt1, int paramInt2, Intent paramIntent) {
    return (this.g != null) ? g().a(paramInt1, paramInt2, paramIntent) : false;
  }
  
  FragmentActivity b() {
    return this.c.getActivity();
  }
  
  void b(LoginClient$Request paramLoginClient$Request) {
    if (paramLoginClient$Request != null) {
      if (this.g != null)
        throw new bhp("Attempted to authorize while a request is pending."); 
      if (AccessToken.a() == null || h()) {
        this.g = paramLoginClient$Request;
        this.a = c(paramLoginClient$Request);
        i();
        return;
      } 
    } 
  }
  
  public void b(LoginClient$Result paramLoginClient$Result) {
    LoginMethodHandler loginMethodHandler = g();
    if (loginMethodHandler != null)
      a(loginMethodHandler.a(), paramLoginClient$Result, loginMethodHandler.a); 
    if (this.h != null)
      paramLoginClient$Result.f = this.h; 
    this.a = null;
    this.b = -1;
    this.g = null;
    this.h = null;
    d(paramLoginClient$Result);
  }
  
  public LoginClient$Request c() {
    return this.g;
  }
  
  void c(LoginClient$Result paramLoginClient$Result) {
    // Byte code:
    //   0: aload_1
    //   1: getfield b : Lcom/facebook/AccessToken;
    //   4: ifnonnull -> 18
    //   7: new bhp
    //   10: dup
    //   11: ldc_w 'Can't validate without a token'
    //   14: invokespecial <init> : (Ljava/lang/String;)V
    //   17: athrow
    //   18: invokestatic a : ()Lcom/facebook/AccessToken;
    //   21: astore_2
    //   22: aload_1
    //   23: getfield b : Lcom/facebook/AccessToken;
    //   26: astore_3
    //   27: aload_2
    //   28: ifnull -> 67
    //   31: aload_3
    //   32: ifnull -> 67
    //   35: aload_2
    //   36: invokevirtual j : ()Ljava/lang/String;
    //   39: aload_3
    //   40: invokevirtual j : ()Ljava/lang/String;
    //   43: invokevirtual equals : (Ljava/lang/Object;)Z
    //   46: ifeq -> 67
    //   49: aload_0
    //   50: getfield g : Lcom/facebook/login/LoginClient$Request;
    //   53: aload_1
    //   54: getfield b : Lcom/facebook/AccessToken;
    //   57: invokestatic a : (Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;
    //   60: astore_1
    //   61: aload_0
    //   62: aload_1
    //   63: invokevirtual b : (Lcom/facebook/login/LoginClient$Result;)V
    //   66: return
    //   67: aload_0
    //   68: getfield g : Lcom/facebook/login/LoginClient$Request;
    //   71: ldc_w 'User logged in as different Facebook user.'
    //   74: aconst_null
    //   75: invokestatic a : (Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;
    //   78: astore_1
    //   79: goto -> 61
    //   82: astore_1
    //   83: aload_0
    //   84: aload_0
    //   85: getfield g : Lcom/facebook/login/LoginClient$Request;
    //   88: ldc_w 'Caught exception'
    //   91: aload_1
    //   92: invokevirtual getMessage : ()Ljava/lang/String;
    //   95: invokestatic a : (Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;
    //   98: invokevirtual b : (Lcom/facebook/login/LoginClient$Result;)V
    //   101: return
    // Exception table:
    //   from	to	target	type
    //   35	61	82	java/lang/Exception
    //   61	66	82	java/lang/Exception
    //   67	79	82	java/lang/Exception
  }
  
  protected LoginMethodHandler[] c(LoginClient$Request paramLoginClient$Request) {
    ArrayList<GetTokenLoginMethodHandler> arrayList = new ArrayList();
    bse bse = paramLoginClient$Request.b();
    if (bse.allowsGetTokenAuth())
      arrayList.add(new GetTokenLoginMethodHandler(this)); 
    if (bse.allowsKatanaAuth())
      arrayList.add(new KatanaProxyLoginMethodHandler(this)); 
    if (bse.allowsFacebookLiteAuth())
      arrayList.add(new FacebookLiteLoginMethodHandler(this)); 
    if (bse.allowsCustomTabAuth())
      arrayList.add(new CustomTabLoginMethodHandler(this)); 
    if (bse.allowsWebViewAuth())
      arrayList.add(new WebViewLoginMethodHandler(this)); 
    if (bse.allowsDeviceAuth())
      arrayList.add(new DeviceAuthMethodHandler(this)); 
    LoginMethodHandler[] arrayOfLoginMethodHandler = new LoginMethodHandler[arrayList.size()];
    arrayList.toArray(arrayOfLoginMethodHandler);
    return arrayOfLoginMethodHandler;
  }
  
  public int describeContents() {
    return 0;
  }
  
  boolean e() {
    return (this.g != null && this.b >= 0);
  }
  
  public void f() {
    if (this.b >= 0)
      g().b(); 
  }
  
  LoginMethodHandler g() {
    return (this.b >= 0) ? this.a[this.b] : null;
  }
  
  boolean h() {
    if (this.f)
      return true; 
    if (a("android.permission.INTERNET") != 0) {
      FragmentActivity fragmentActivity = b();
      String str1 = fragmentActivity.getString(bjx.com_facebook_internet_permission_error_title);
      String str2 = fragmentActivity.getString(bjx.com_facebook_internet_permission_error_message);
      b(LoginClient$Result.a(this.g, str1, str2));
      return false;
    } 
    this.f = true;
    return true;
  }
  
  void i() {
    // Byte code:
    //   0: aload_0
    //   1: getfield b : I
    //   4: iflt -> 30
    //   7: aload_0
    //   8: aload_0
    //   9: invokevirtual g : ()Lcom/facebook/login/LoginMethodHandler;
    //   12: invokevirtual a : ()Ljava/lang/String;
    //   15: ldc_w 'skipped'
    //   18: aconst_null
    //   19: aconst_null
    //   20: aload_0
    //   21: invokevirtual g : ()Lcom/facebook/login/LoginMethodHandler;
    //   24: getfield a : Ljava/util/Map;
    //   27: invokespecial a : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    //   30: aload_0
    //   31: getfield a : [Lcom/facebook/login/LoginMethodHandler;
    //   34: ifnull -> 69
    //   37: aload_0
    //   38: getfield b : I
    //   41: aload_0
    //   42: getfield a : [Lcom/facebook/login/LoginMethodHandler;
    //   45: arraylength
    //   46: iconst_1
    //   47: isub
    //   48: if_icmpge -> 69
    //   51: aload_0
    //   52: aload_0
    //   53: getfield b : I
    //   56: iconst_1
    //   57: iadd
    //   58: putfield b : I
    //   61: aload_0
    //   62: invokevirtual j : ()Z
    //   65: ifeq -> 30
    //   68: return
    //   69: aload_0
    //   70: getfield g : Lcom/facebook/login/LoginClient$Request;
    //   73: ifnull -> 68
    //   76: aload_0
    //   77: invokespecial p : ()V
    //   80: return
  }
  
  boolean j() {
    LoginMethodHandler loginMethodHandler = g();
    if (loginMethodHandler.d() && !h()) {
      a("no_internet_permission", "1", false);
      return false;
    } 
    boolean bool = loginMethodHandler.a(this.g);
    if (bool) {
      q().a(this.g.e(), loginMethodHandler.a());
      return bool;
    } 
    q().b(this.g.e(), loginMethodHandler.a());
    a("not_tried", loginMethodHandler.a(), true);
    return bool;
  }
  
  bsh k() {
    return this.d;
  }
  
  bsg l() {
    return this.e;
  }
  
  void m() {
    if (this.e != null)
      this.e.a(); 
  }
  
  void n() {
    if (this.e != null)
      this.e.b(); 
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeParcelableArray((Parcelable[])this.a, paramInt);
    paramParcel.writeInt(this.b);
    paramParcel.writeParcelable(this.g, paramInt);
    bqq.a(paramParcel, this.h);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\LoginClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */