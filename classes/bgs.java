import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import java.util.Date;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;

public final class bgs {
  static final String a = "AccessTokenManager";
  
  static final String b = "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED";
  
  static final String c = "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN";
  
  static final String d = "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN";
  
  static final String e = "com.facebook.AccessTokenManager.SharedPreferences";
  
  private static final int f = 86400;
  
  private static final int g = 3600;
  
  private static final String h = "oauth/access_token";
  
  private static final String i = "me/permissions";
  
  private static volatile bgs j;
  
  private final LocalBroadcastManager k;
  
  private final bgq l;
  
  private AccessToken m;
  
  private AtomicBoolean n = new AtomicBoolean(false);
  
  private Date o = new Date(0L);
  
  bgs(LocalBroadcastManager paramLocalBroadcastManager, bgq parambgq) {
    bqx.a(paramLocalBroadcastManager, "localBroadcastManager");
    bqx.a(parambgq, "accessTokenCache");
    this.k = paramLocalBroadcastManager;
    this.l = parambgq;
  }
  
  public static bgs a() {
    // Byte code:
    //   0: getstatic bgs.j : Lbgs;
    //   3: ifnonnull -> 41
    //   6: ldc bgs
    //   8: monitorenter
    //   9: getstatic bgs.j : Lbgs;
    //   12: ifnonnull -> 38
    //   15: new bgs
    //   18: dup
    //   19: invokestatic h : ()Landroid/content/Context;
    //   22: invokestatic getInstance : (Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    //   25: new bgq
    //   28: dup
    //   29: invokespecial <init> : ()V
    //   32: invokespecial <init> : (Landroid/support/v4/content/LocalBroadcastManager;Lbgq;)V
    //   35: putstatic bgs.j : Lbgs;
    //   38: ldc bgs
    //   40: monitorexit
    //   41: getstatic bgs.j : Lbgs;
    //   44: areturn
    //   45: astore_0
    //   46: ldc bgs
    //   48: monitorexit
    //   49: aload_0
    //   50: athrow
    // Exception table:
    //   from	to	target	type
    //   9	38	45	finally
    //   38	41	45	finally
    //   46	49	45	finally
  }
  
  private static GraphRequest a(AccessToken paramAccessToken, bim parambim) {
    return new GraphRequest(paramAccessToken, "me/permissions", new Bundle(), biz.GET, parambim);
  }
  
  private void a(AccessToken paramAccessToken1, AccessToken paramAccessToken2) {
    Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
    intent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", (Parcelable)paramAccessToken1);
    intent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", (Parcelable)paramAccessToken2);
    this.k.sendBroadcast(intent);
  }
  
  private void a(AccessToken paramAccessToken, boolean paramBoolean) {
    AccessToken accessToken = this.m;
    this.m = paramAccessToken;
    this.n.set(false);
    this.o = new Date(0L);
    if (paramBoolean)
      if (paramAccessToken != null) {
        this.l.a(paramAccessToken);
      } else {
        this.l.b();
        bqq.b(bhv.h());
      }  
    if (!bqq.a(accessToken, paramAccessToken))
      a(accessToken, paramAccessToken); 
  }
  
  private static GraphRequest b(AccessToken paramAccessToken, bim parambim) {
    Bundle bundle = new Bundle();
    bundle.putString("grant_type", "fb_extend_sso_token");
    return new GraphRequest(paramAccessToken, "oauth/access_token", bundle, biz.GET, parambim);
  }
  
  private void b(bgp parambgp) {
    AccessToken accessToken = this.m;
    if (accessToken == null) {
      if (parambgp != null)
        parambgp.a(new bhp("No current access token to refresh")); 
      return;
    } 
    if (!this.n.compareAndSet(false, true)) {
      if (parambgp != null) {
        parambgp.a(new bhp("Refresh already in progress"));
        return;
      } 
      return;
    } 
    this.o = new Date();
    HashSet hashSet1 = new HashSet();
    HashSet hashSet2 = new HashSet();
    AtomicBoolean atomicBoolean = new AtomicBoolean(false);
    bgx bgx = new bgx(null);
    biu biu = new biu(new GraphRequest[] { a(accessToken, new bgu(this, atomicBoolean, hashSet1, hashSet2)), b(accessToken, new bgv(this, bgx)) });
    biu.a(new bgw(this, accessToken, parambgp, atomicBoolean, bgx, hashSet1, hashSet2));
    biu.h();
  }
  
  private boolean e() {
    if (this.m != null) {
      Long long_ = Long.valueOf((new Date()).getTime());
      if (this.m.g().canExtendToken() && long_.longValue() - this.o.getTime() > 3600000L && long_.longValue() - this.m.h().getTime() > 86400000L)
        return true; 
    } 
    return false;
  }
  
  public void a(bgp parambgp) {
    if (Looper.getMainLooper().equals(Looper.myLooper())) {
      b(parambgp);
      return;
    } 
    (new Handler(Looper.getMainLooper())).post(new bgt(this, parambgp));
  }
  
  public void a(AccessToken paramAccessToken) {
    a(paramAccessToken, true);
  }
  
  public AccessToken b() {
    return this.m;
  }
  
  boolean c() {
    boolean bool = false;
    AccessToken accessToken = this.l.a();
    if (accessToken != null) {
      a(accessToken, false);
      bool = true;
    } 
    return bool;
  }
  
  public void d() {
    if (!e())
      return; 
    a((bgp)null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */