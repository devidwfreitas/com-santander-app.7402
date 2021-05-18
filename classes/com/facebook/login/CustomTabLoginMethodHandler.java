package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import bgy;
import bhp;
import bhr;
import bhv;
import boj;
import bol;
import bqq;
import bqx;
import brm;
import com.facebook.CustomTabMainActivity;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
  public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR;
  
  private static final int c = 1;
  
  private static final int d = 20;
  
  private static final int e = 4201;
  
  private static final String f = "android.support.customtabs.action.CustomTabsService";
  
  private static final String[] g = new String[] { "com.android.chrome", "com.chrome.beta", "com.chrome.dev" };
  
  private String h;
  
  private String i;
  
  static {
    CREATOR = (Parcelable.Creator<CustomTabLoginMethodHandler>)new brm();
  }
  
  public CustomTabLoginMethodHandler(Parcel paramParcel) {
    super(paramParcel);
    this.i = paramParcel.readString();
  }
  
  CustomTabLoginMethodHandler(LoginClient paramLoginClient) {
    super(paramLoginClient);
    this.i = bqq.a(20);
  }
  
  private void a(String paramString, LoginClient$Request paramLoginClient$Request) {
    // Byte code:
    //   0: aload_1
    //   1: ifnull -> 64
    //   4: aload_1
    //   5: invokestatic a : ()Ljava/lang/String;
    //   8: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   11: ifeq -> 64
    //   14: aload_1
    //   15: invokestatic parse : (Ljava/lang/String;)Landroid/net/Uri;
    //   18: astore_1
    //   19: aload_1
    //   20: invokevirtual getQuery : ()Ljava/lang/String;
    //   23: invokestatic d : (Ljava/lang/String;)Landroid/os/Bundle;
    //   26: astore #6
    //   28: aload #6
    //   30: aload_1
    //   31: invokevirtual getFragment : ()Ljava/lang/String;
    //   34: invokestatic d : (Ljava/lang/String;)Landroid/os/Bundle;
    //   37: invokevirtual putAll : (Landroid/os/Bundle;)V
    //   40: aload_0
    //   41: aload #6
    //   43: invokespecial a : (Landroid/os/Bundle;)Z
    //   46: ifne -> 65
    //   49: aload_0
    //   50: aload_2
    //   51: aconst_null
    //   52: new bhp
    //   55: dup
    //   56: ldc 'Invalid state parameter'
    //   58: invokespecial <init> : (Ljava/lang/String;)V
    //   61: invokespecial a : (Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lbhp;)V
    //   64: return
    //   65: aload #6
    //   67: ldc 'error'
    //   69: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   72: astore_1
    //   73: aload_1
    //   74: astore #4
    //   76: aload_1
    //   77: ifnonnull -> 89
    //   80: aload #6
    //   82: ldc 'error_type'
    //   84: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   87: astore #4
    //   89: aload #6
    //   91: ldc 'error_msg'
    //   93: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   96: astore #5
    //   98: aload #5
    //   100: astore_1
    //   101: aload #5
    //   103: ifnonnull -> 114
    //   106: aload #6
    //   108: ldc 'error_message'
    //   110: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   113: astore_1
    //   114: aload_1
    //   115: astore #5
    //   117: aload_1
    //   118: ifnonnull -> 130
    //   121: aload #6
    //   123: ldc 'error_description'
    //   125: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   128: astore #5
    //   130: aload #6
    //   132: ldc 'error_code'
    //   134: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   137: astore_1
    //   138: aload_1
    //   139: invokestatic a : (Ljava/lang/String;)Z
    //   142: ifne -> 274
    //   145: aload_1
    //   146: invokestatic parseInt : (Ljava/lang/String;)I
    //   149: istore_3
    //   150: aload #4
    //   152: invokestatic a : (Ljava/lang/String;)Z
    //   155: ifeq -> 186
    //   158: aload #5
    //   160: invokestatic a : (Ljava/lang/String;)Z
    //   163: ifeq -> 186
    //   166: iload_3
    //   167: iconst_m1
    //   168: if_icmpne -> 186
    //   171: aload_0
    //   172: aload_2
    //   173: aload #6
    //   175: aconst_null
    //   176: invokespecial a : (Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lbhp;)V
    //   179: return
    //   180: astore_1
    //   181: iconst_m1
    //   182: istore_3
    //   183: goto -> 150
    //   186: aload #4
    //   188: ifnull -> 225
    //   191: aload #4
    //   193: ldc 'access_denied'
    //   195: invokevirtual equals : (Ljava/lang/Object;)Z
    //   198: ifne -> 211
    //   201: aload #4
    //   203: ldc 'OAuthAccessDeniedException'
    //   205: invokevirtual equals : (Ljava/lang/Object;)Z
    //   208: ifeq -> 225
    //   211: aload_0
    //   212: aload_2
    //   213: aconst_null
    //   214: new bhr
    //   217: dup
    //   218: invokespecial <init> : ()V
    //   221: invokespecial a : (Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lbhp;)V
    //   224: return
    //   225: iload_3
    //   226: sipush #4201
    //   229: if_icmpne -> 246
    //   232: aload_0
    //   233: aload_2
    //   234: aconst_null
    //   235: new bhr
    //   238: dup
    //   239: invokespecial <init> : ()V
    //   242: invokespecial a : (Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lbhp;)V
    //   245: return
    //   246: aload_0
    //   247: aload_2
    //   248: aconst_null
    //   249: new bid
    //   252: dup
    //   253: new com/facebook/FacebookRequestError
    //   256: dup
    //   257: iload_3
    //   258: aload #4
    //   260: aload #5
    //   262: invokespecial <init> : (ILjava/lang/String;Ljava/lang/String;)V
    //   265: aload #5
    //   267: invokespecial <init> : (Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V
    //   270: invokespecial a : (Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lbhp;)V
    //   273: return
    //   274: iconst_m1
    //   275: istore_3
    //   276: goto -> 150
    // Exception table:
    //   from	to	target	type
    //   145	150	180	java/lang/NumberFormatException
  }
  
  private boolean a(Bundle paramBundle) {
    try {
      String str = paramBundle.getString("state");
      return (str == null) ? false : (new JSONObject(str)).getString("7_challenge").equals(this.i);
    } catch (JSONException jSONException) {
      return false;
    } 
  }
  
  private boolean e() {
    return (f() && g() != null && bqx.h(bhv.h()));
  }
  
  private boolean f() {
    boj boj = bol.a(bqq.a((Context)this.b.b()));
    return (boj != null && boj.d());
  }
  
  private String g() {
    if (this.h != null)
      return this.h; 
    FragmentActivity fragmentActivity = this.b.b();
    Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
    List list = fragmentActivity.getPackageManager().queryIntentServices(intent, 0);
    if (list != null) {
      HashSet hashSet = new HashSet(Arrays.asList((Object[])g));
      Iterator iterator = list.iterator();
      while (iterator.hasNext()) {
        ServiceInfo serviceInfo = ((ResolveInfo)iterator.next()).serviceInfo;
        if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
          this.h = serviceInfo.packageName;
          return this.h;
        } 
      } 
    } 
    return null;
  }
  
  String a() {
    return "custom_tab";
  }
  
  protected void a(JSONObject paramJSONObject) {
    paramJSONObject.put("7_challenge", this.i);
  }
  
  boolean a(int paramInt1, int paramInt2, Intent paramIntent) {
    if (paramInt1 != 1)
      return super.a(paramInt1, paramInt2, paramIntent); 
    LoginClient$Request loginClient$Request = this.b.c();
    if (paramInt2 == -1) {
      a(paramIntent.getStringExtra(CustomTabMainActivity.c), loginClient$Request);
      return true;
    } 
    a(loginClient$Request, (Bundle)null, (bhp)new bhr());
    return false;
  }
  
  boolean a(LoginClient$Request paramLoginClient$Request) {
    if (!e())
      return false; 
    Bundle bundle = a(b(paramLoginClient$Request), paramLoginClient$Request);
    Intent intent = new Intent((Context)this.b.b(), CustomTabMainActivity.class);
    intent.putExtra(CustomTabMainActivity.a, bundle);
    intent.putExtra(CustomTabMainActivity.b, g());
    this.b.a().startActivityForResult(intent, 1);
    return true;
  }
  
  bgy b_() {
    return bgy.CHROME_CUSTOM_TAB;
  }
  
  protected String c() {
    return "chrome_custom_tab";
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\login\CustomTabLoginMethodHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */