import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.share.internal.LikeContent;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class bww {
  private static final String A = "unlike_token";
  
  private static final int B = 3501;
  
  private static bon C;
  
  private static final ConcurrentHashMap<String, bww> D;
  
  private static bri E;
  
  private static bri F;
  
  private static Handler G;
  
  private static String H;
  
  private static boolean I = false;
  
  private static volatile int J = 0;
  
  private static bgz K;
  
  public static final String a = "com.facebook.sdk.LikeActionController.UPDATED";
  
  public static final String b = "com.facebook.sdk.LikeActionController.DID_ERROR";
  
  public static final String c = "com.facebook.sdk.LikeActionController.DID_RESET";
  
  public static final String d = "com.facebook.sdk.LikeActionController.OBJECT_ID";
  
  public static final String e = "Invalid Object Id";
  
  public static final String f = "Unable to publish the like/unlike action";
  
  private static final String g = bww.class.getSimpleName();
  
  private static final int h = 3;
  
  private static final int i = 128;
  
  private static final int j = 1000;
  
  private static final String k = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY";
  
  private static final String l = "PENDING_CONTROLLER_KEY";
  
  private static final String m = "OBJECT_SUFFIX";
  
  private static final String n = "com.facebook.share.internal.LikeActionController.version";
  
  private static final String o = "object_id";
  
  private static final String p = "object_type";
  
  private static final String q = "like_count_string_with_like";
  
  private static final String r = "like_count_string_without_like";
  
  private static final String s = "social_sentence_with_like";
  
  private static final String t = "social_sentence_without_like";
  
  private static final String u = "is_object_liked";
  
  private static final String v = "unlike_token";
  
  private static final String w = "facebook_dialog_analytics_bundle";
  
  private static final String x = "object_is_liked";
  
  private static final String y = "like_count_string";
  
  private static final String z = "social_sentence";
  
  private String L;
  
  private ccn M;
  
  private boolean N;
  
  private String O;
  
  private String P;
  
  private String Q;
  
  private String R;
  
  private String S;
  
  private String T;
  
  private boolean U;
  
  private boolean V;
  
  private boolean W;
  
  private Bundle X;
  
  private bla Y;
  
  static {
    D = new ConcurrentHashMap<String, bww>();
    E = new bri(1);
    F = new bri(1);
  }
  
  private bww(String paramString, ccn paramccn) {
    this.L = paramString;
    this.M = paramccn;
  }
  
  private static bww a(String paramString) {
    paramString = d(paramString);
    bww bww1 = D.get(paramString);
    if (bww1 != null)
      E.a(new bxv(paramString, false)); 
    return bww1;
  }
  
  private byu a(Bundle paramBundle) {
    return new bxf(this, null, paramBundle);
  }
  
  private static void a(bww parambww, ccn paramccn, bxo parambxo) {
    bhp bhp1;
    ccn ccn1;
    bhp bhp2;
    ccn ccn2 = null;
    ccn ccn3 = bze.a(paramccn, parambww.M);
    if (ccn3 == null) {
      bhp1 = new bhp("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", new Object[] { parambww.L, parambww.M.toString(), paramccn.toString() });
      paramccn = ccn2;
    } else {
      ((bww)bhp1).M = ccn3;
      ccn2 = null;
      bhp2 = bhp1;
      ccn1 = ccn2;
    } 
    a(parambxo, (bww)bhp2, (bhp)ccn1);
  }
  
  private static void a(bxo parambxo, bww parambww, bhp parambhp) {
    if (parambxo == null)
      return; 
    G.post(new bxd(parambxo, parambww, parambhp));
  }
  
  private void a(bxy parambxy) {
    if (!bqq.a(this.T)) {
      if (parambxy != null)
        parambxy.a(); 
      return;
    } 
    bxq bxq = new bxq(this, this.L, this.M);
    bxs bxs = new bxs(this, this.L, this.M);
    biu biu = new biu();
    bxq.a(biu);
    bxs.a(biu);
    biu.a(new bwz(this, bxq, bxs, parambxy));
    biu.h();
  }
  
  private void a(String paramString, Bundle paramBundle) {
    paramBundle = new Bundle(paramBundle);
    paramBundle.putString("object_id", this.L);
    paramBundle.putString("object_type", this.M.toString());
    paramBundle.putString("current_action", paramString);
    l().a("fb_like_control_error", (Double)null, paramBundle);
  }
  
  private static void a(String paramString, bww parambww) {
    paramString = d(paramString);
    E.a(new bxv(paramString, true));
    D.put(paramString, parambww);
  }
  
  public static void a(String paramString, ccn paramccn, bxo parambxo) {
    if (!I)
      j(); 
    bww bww1 = a(paramString);
    if (bww1 != null) {
      a(bww1, paramccn, parambxo);
      return;
    } 
    F.a(new bxn(paramString, paramccn, parambxo));
  }
  
  private void a(String paramString, FacebookRequestError paramFacebookRequestError) {
    Bundle bundle = new Bundle();
    if (paramFacebookRequestError != null) {
      JSONObject jSONObject = paramFacebookRequestError.k();
      if (jSONObject != null)
        bundle.putString("error", jSONObject.toString()); 
    } 
    a(paramString, bundle);
  }
  
  private void a(boolean paramBoolean) {
    b(paramBoolean);
    Bundle bundle = new Bundle();
    bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
    c(this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
  }
  
  private void a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    boolean bool;
    paramString1 = bqq.a(paramString1, (String)null);
    paramString2 = bqq.a(paramString2, (String)null);
    paramString3 = bqq.a(paramString3, (String)null);
    paramString4 = bqq.a(paramString4, (String)null);
    paramString5 = bqq.a(paramString5, (String)null);
    if (paramBoolean != this.N || !bqq.a(paramString1, this.O) || !bqq.a(paramString2, this.P) || !bqq.a(paramString3, this.Q) || !bqq.a(paramString4, this.R) || !bqq.a(paramString5, this.S)) {
      bool = true;
    } else {
      bool = false;
    } 
    if (!bool)
      return; 
    this.N = paramBoolean;
    this.O = paramString1;
    this.P = paramString2;
    this.Q = paramString3;
    this.R = paramString4;
    this.S = paramString5;
    l(this);
    d(this, "com.facebook.sdk.LikeActionController.UPDATED");
  }
  
  public static boolean a(int paramInt1, int paramInt2, Intent paramIntent) {
    if (bqq.a(H))
      H = bhv.h().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null); 
    if (bqq.a(H))
      return false; 
    a(H, ccn.UNKNOWN, new bwx(paramInt1, paramInt2, paramIntent));
    return true;
  }
  
  private boolean a(boolean paramBoolean, Bundle paramBundle) {
    if (n()) {
      if (paramBoolean) {
        c(paramBundle);
        return true;
      } 
      if (!bqq.a(this.S)) {
        d(paramBundle);
        return true;
      } 
    } 
    return false;
  }
  
  private static bww b(String paramString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore #4
    //   5: aload_0
    //   6: invokestatic d : (Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_0
    //   10: getstatic bww.C : Lbon;
    //   13: aload_0
    //   14: invokevirtual a : (Ljava/lang/String;)Ljava/io/InputStream;
    //   17: astore_0
    //   18: aload #4
    //   20: astore_2
    //   21: aload_0
    //   22: ifnull -> 54
    //   25: aload_0
    //   26: astore_1
    //   27: aload_0
    //   28: invokestatic a : (Ljava/io/InputStream;)Ljava/lang/String;
    //   31: astore #5
    //   33: aload #4
    //   35: astore_2
    //   36: aload_0
    //   37: astore_1
    //   38: aload #5
    //   40: invokestatic a : (Ljava/lang/String;)Z
    //   43: ifne -> 54
    //   46: aload_0
    //   47: astore_1
    //   48: aload #5
    //   50: invokestatic c : (Ljava/lang/String;)Lbww;
    //   53: astore_2
    //   54: aload_2
    //   55: astore_1
    //   56: aload_0
    //   57: ifnull -> 66
    //   60: aload_0
    //   61: invokestatic a : (Ljava/io/Closeable;)V
    //   64: aload_2
    //   65: astore_1
    //   66: aload_1
    //   67: areturn
    //   68: astore_2
    //   69: aconst_null
    //   70: astore_0
    //   71: aload_0
    //   72: astore_1
    //   73: getstatic bww.g : Ljava/lang/String;
    //   76: ldc_w 'Unable to deserialize controller from disk'
    //   79: aload_2
    //   80: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   83: pop
    //   84: aload_3
    //   85: astore_1
    //   86: aload_0
    //   87: ifnull -> 66
    //   90: aload_0
    //   91: invokestatic a : (Ljava/io/Closeable;)V
    //   94: aconst_null
    //   95: areturn
    //   96: astore_0
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: ifnull -> 107
    //   103: aload_1
    //   104: invokestatic a : (Ljava/io/Closeable;)V
    //   107: aload_0
    //   108: athrow
    //   109: astore_0
    //   110: goto -> 99
    //   113: astore_2
    //   114: goto -> 71
    // Exception table:
    //   from	to	target	type
    //   5	18	68	java/io/IOException
    //   5	18	96	finally
    //   27	33	113	java/io/IOException
    //   27	33	109	finally
    //   38	46	113	java/io/IOException
    //   38	46	109	finally
    //   48	54	113	java/io/IOException
    //   48	54	109	finally
    //   73	84	109	finally
  }
  
  private void b(int paramInt1, int paramInt2, Intent paramIntent) {
    bze.a(paramInt1, paramInt2, paramIntent, a(this.X));
    m();
  }
  
  private void b(Activity paramActivity, bpa parambpa, Bundle paramBundle) {
    String str;
    if (byf.e()) {
      str = "fb_like_control_did_present_dialog";
    } else if (byf.f()) {
      str = "fb_like_control_did_present_fallback_dialog";
    } else {
      a("present_dialog", paramBundle);
      bqq.c(g, "Cannot show the Like Dialog on this device.");
      d((bww)null, "com.facebook.sdk.LikeActionController.UPDATED");
      str = null;
    } 
    if (str != null) {
      if (this.M != null) {
        str = this.M.toString();
      } else {
        str = ccn.UNKNOWN.toString();
      } 
      LikeContent likeContent = (new bye()).a(this.L).b(str).b();
      if (parambpa != null) {
        (new byf(parambpa)).b(likeContent);
      } else {
        (new byf(paramActivity)).b(likeContent);
      } 
      b(paramBundle);
      l().a("fb_like_control_did_present_dialog", (Double)null, paramBundle);
    } 
  }
  
  private void b(Bundle paramBundle) {
    e(this.L);
    this.X = paramBundle;
    l(this);
  }
  
  private static void b(String paramString1, String paramString2) {
    OutputStream outputStream2 = null;
    OutputStream outputStream1 = null;
    try {
      OutputStream outputStream = C.b(paramString1);
      outputStream1 = outputStream;
      outputStream2 = outputStream;
      outputStream.write(paramString2.getBytes());
      return;
    } catch (IOException iOException) {
      outputStream2 = outputStream1;
      Log.e(g, "Unable to serialize controller to disk", iOException);
      return;
    } finally {
      if (outputStream2 != null)
        bqq.a(outputStream2); 
    } 
  }
  
  private void b(boolean paramBoolean) {
    a(paramBoolean, this.O, this.P, this.Q, this.R, this.S);
  }
  
  private static bww c(String paramString) {
    try {
      JSONObject jSONObject1 = new JSONObject(paramString);
      if (jSONObject1.optInt("com.facebook.share.internal.LikeActionController.version", -1) != 3)
        return null; 
      bww bww2 = new bww(jSONObject1.getString("object_id"), ccn.fromInt(jSONObject1.optInt("object_type", ccn.UNKNOWN.getValue())));
      bww2.O = jSONObject1.optString("like_count_string_with_like", null);
      bww2.P = jSONObject1.optString("like_count_string_without_like", null);
      bww2.Q = jSONObject1.optString("social_sentence_with_like", null);
      bww2.R = jSONObject1.optString("social_sentence_without_like", null);
      bww2.N = jSONObject1.optBoolean("is_object_liked");
      bww2.S = jSONObject1.optString("unlike_token", null);
      JSONObject jSONObject2 = jSONObject1.optJSONObject("facebook_dialog_analytics_bundle");
      bww bww1 = bww2;
      if (jSONObject2 != null) {
        bww2.X = bna.a(jSONObject2);
        bww1 = bww2;
      } 
    } catch (JSONException jSONException) {
      Log.e(g, "Unable to deserialize controller from JSON", (Throwable)jSONException);
      jSONException = null;
    } 
    return (bww)jSONException;
  }
  
  private void c(Bundle paramBundle) {
    this.W = true;
    a(new bxg(this, paramBundle));
  }
  
  private static void c(bww parambww, String paramString, Bundle paramBundle) {
    Intent intent = new Intent(paramString);
    Bundle bundle = paramBundle;
    if (parambww != null) {
      bundle = paramBundle;
      if (paramBundle == null)
        bundle = new Bundle(); 
      bundle.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", parambww.a());
    } 
    if (bundle != null)
      intent.putExtras(bundle); 
    LocalBroadcastManager.getInstance(bhv.h()).sendBroadcast(intent);
  }
  
  private static void c(String paramString, ccn paramccn, bxo parambxo) {
    bww bww1 = a(paramString);
    if (bww1 != null) {
      a(bww1, paramccn, parambxo);
      return;
    } 
    bww bww2 = b(paramString);
    bww1 = bww2;
    if (bww2 == null) {
      bww1 = new bww(paramString, paramccn);
      l(bww1);
    } 
    a(paramString, bww1);
    G.post(new bxb(bww1));
    a(parambxo, bww1, (bhp)null);
  }
  
  private static String d(String paramString) {
    String str1 = null;
    AccessToken accessToken = AccessToken.a();
    if (accessToken != null)
      str1 = accessToken.c(); 
    String str2 = str1;
    if (str1 != null)
      str2 = bqq.b(str1); 
    return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", new Object[] { paramString, bqq.a(str2, ""), Integer.valueOf(J) });
  }
  
  private void d(Bundle paramBundle) {
    this.W = true;
    biu biu = new biu();
    bxx bxx = new bxx(this, this.S);
    bxx.a(biu);
    biu.a(new bxi(this, bxx, paramBundle));
    biu.h();
  }
  
  private static void d(bww parambww, String paramString) {
    c(parambww, paramString, (Bundle)null);
  }
  
  private void e(Bundle paramBundle) {
    if (this.N != this.V && !a(this.N, paramBundle)) {
      boolean bool;
      if (!this.N) {
        bool = true;
      } else {
        bool = false;
      } 
      a(bool);
    } 
  }
  
  private static void e(String paramString) {
    H = paramString;
    bhv.h().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", H).apply();
  }
  
  private static void j() {
    // Byte code:
    //   0: ldc bww
    //   2: monitorenter
    //   3: getstatic bww.I : Z
    //   6: istore_0
    //   7: iload_0
    //   8: ifeq -> 15
    //   11: ldc bww
    //   13: monitorexit
    //   14: return
    //   15: new android/os/Handler
    //   18: dup
    //   19: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   22: invokespecial <init> : (Landroid/os/Looper;)V
    //   25: putstatic bww.G : Landroid/os/Handler;
    //   28: invokestatic h : ()Landroid/content/Context;
    //   31: ldc 'com.facebook.LikeActionController.CONTROLLER_STORE_KEY'
    //   33: iconst_0
    //   34: invokevirtual getSharedPreferences : (Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   37: ldc 'OBJECT_SUFFIX'
    //   39: iconst_1
    //   40: invokeinterface getInt : (Ljava/lang/String;I)I
    //   45: putstatic bww.J : I
    //   48: new bon
    //   51: dup
    //   52: getstatic bww.g : Ljava/lang/String;
    //   55: new bow
    //   58: dup
    //   59: invokespecial <init> : ()V
    //   62: invokespecial <init> : (Ljava/lang/String;Lbow;)V
    //   65: putstatic bww.C : Lbon;
    //   68: invokestatic k : ()V
    //   71: getstatic bnl.Like : Lbnl;
    //   74: invokevirtual toRequestCode : ()I
    //   77: new bxc
    //   80: dup
    //   81: invokespecial <init> : ()V
    //   84: invokestatic a : (ILbnk;)V
    //   87: iconst_1
    //   88: putstatic bww.I : Z
    //   91: goto -> 11
    //   94: astore_1
    //   95: ldc bww
    //   97: monitorexit
    //   98: aload_1
    //   99: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	94	finally
    //   15	91	94	finally
  }
  
  private static void k() {
    K = new bxe();
  }
  
  private bla l() {
    if (this.Y == null)
      this.Y = bla.c(bhv.h()); 
    return this.Y;
  }
  
  private static void l(bww parambww) {
    String str2 = m(parambww);
    String str1 = d(parambww.L);
    if (!bqq.a(str2) && !bqq.a(str1))
      F.a(new bya(str1, str2)); 
  }
  
  private static String m(bww parambww) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
      jSONObject.put("object_id", parambww.L);
      jSONObject.put("object_type", parambww.M.getValue());
      jSONObject.put("like_count_string_with_like", parambww.O);
      jSONObject.put("like_count_string_without_like", parambww.P);
      jSONObject.put("social_sentence_with_like", parambww.Q);
      jSONObject.put("social_sentence_without_like", parambww.R);
      jSONObject.put("is_object_liked", parambww.N);
      jSONObject.put("unlike_token", parambww.S);
      if (parambww.X != null) {
        JSONObject jSONObject1 = bna.a(parambww.X);
        if (jSONObject1 != null)
          jSONObject.put("facebook_dialog_analytics_bundle", jSONObject1); 
      } 
      return jSONObject.toString();
    } catch (JSONException jSONException) {
      Log.e(g, "Unable to serialize controller to JSON", (Throwable)jSONException);
      return null;
    } 
  }
  
  private void m() {
    this.X = null;
    e((String)null);
  }
  
  private boolean n() {
    AccessToken accessToken = AccessToken.a();
    return (!this.U && this.T != null && accessToken != null && accessToken.e() != null && accessToken.e().contains("publish_actions"));
  }
  
  private void o() {
    if (AccessToken.a() == null) {
      p();
      return;
    } 
    a(new bxj(this));
  }
  
  private void p() {
    byn byn = new byn(bhv.h(), bhv.l(), this.L);
    if (!byn.b())
      return; 
    byn.a(new bwy(this));
  }
  
  public String a() {
    return this.L;
  }
  
  public void a(Activity paramActivity, bpa parambpa, Bundle paramBundle) {
    boolean bool1;
    boolean bool2 = true;
    if (!this.N) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (n()) {
      b(bool1);
      if (this.W) {
        l().a("fb_like_control_did_undo_quickly", (Double)null, paramBundle);
        return;
      } 
      if (!a(bool1, paramBundle)) {
        if (!bool1) {
          bool1 = bool2;
        } else {
          bool1 = false;
        } 
        b(bool1);
        b(paramActivity, parambpa, paramBundle);
        return;
      } 
      return;
    } 
    b(paramActivity, parambpa, paramBundle);
  }
  
  public String b() {
    return this.N ? this.O : this.P;
  }
  
  public String c() {
    return this.N ? this.Q : this.R;
  }
  
  public boolean d() {
    return this.N;
  }
  
  public boolean e() {
    if (!byf.e() && !byf.f()) {
      if (this.U || this.M == ccn.PAGE)
        return false; 
      AccessToken accessToken = AccessToken.a();
      if (accessToken == null || accessToken.e() == null || !accessToken.e().contains("publish_actions"))
        return false; 
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bww.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */