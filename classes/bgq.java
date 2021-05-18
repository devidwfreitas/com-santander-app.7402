import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import org.json.JSONException;
import org.json.JSONObject;

class bgq {
  static final String a = "com.facebook.AccessTokenManager.CachedAccessToken";
  
  private final SharedPreferences b;
  
  private final bgr c;
  
  private bja d;
  
  public bgq() {
    this(bhv.h().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new bgr());
  }
  
  bgq(SharedPreferences paramSharedPreferences, bgr parambgr) {
    this.b = paramSharedPreferences;
    this.c = parambgr;
  }
  
  private boolean c() {
    return this.b.contains("com.facebook.AccessTokenManager.CachedAccessToken");
  }
  
  private AccessToken d() {
    AccessToken accessToken = null;
    String str = this.b.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
    if (str != null)
      try {
        return AccessToken.a(new JSONObject(str));
      } catch (JSONException jSONException) {
        return null;
      }  
    return (AccessToken)jSONException;
  }
  
  private boolean e() {
    return bhv.e();
  }
  
  private AccessToken f() {
    AccessToken accessToken2 = null;
    Bundle bundle = g().a();
    AccessToken accessToken1 = accessToken2;
    if (bundle != null) {
      accessToken1 = accessToken2;
      if (bja.b(bundle))
        accessToken1 = AccessToken.a(bundle); 
    } 
    return accessToken1;
  }
  
  private bja g() {
    // Byte code:
    //   0: aload_0
    //   1: getfield d : Lbja;
    //   4: ifnonnull -> 29
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield d : Lbja;
    //   13: ifnonnull -> 27
    //   16: aload_0
    //   17: aload_0
    //   18: getfield c : Lbgr;
    //   21: invokevirtual a : ()Lbja;
    //   24: putfield d : Lbja;
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_0
    //   30: getfield d : Lbja;
    //   33: areturn
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Exception table:
    //   from	to	target	type
    //   9	27	34	finally
    //   27	29	34	finally
    //   35	37	34	finally
  }
  
  public AccessToken a() {
    AccessToken accessToken = null;
    if (c())
      return d(); 
    if (e()) {
      AccessToken accessToken1 = f();
      accessToken = accessToken1;
      if (accessToken1 != null) {
        a(accessToken1);
        g().b();
        return accessToken1;
      } 
    } 
    return accessToken;
  }
  
  public void a(AccessToken paramAccessToken) {
    bqx.a(paramAccessToken, "accessToken");
    try {
      JSONObject jSONObject = paramAccessToken.l();
      this.b.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", jSONObject.toString()).apply();
      return;
    } catch (JSONException jSONException) {
      return;
    } 
  }
  
  public void b() {
    this.b.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
    if (e())
      g().b(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */