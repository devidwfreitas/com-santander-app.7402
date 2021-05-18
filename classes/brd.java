import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;

public class brd {
  private Context a;
  
  private String b;
  
  private String c;
  
  private int d;
  
  private brf e;
  
  private Bundle f;
  
  private AccessToken g;
  
  public brd(Context paramContext, String paramString, Bundle paramBundle) {
    this.g = AccessToken.a();
    if (this.g == null) {
      String str = bqq.a(paramContext);
      if (str != null) {
        this.b = str;
      } else {
        throw new bhp("Attempted to create a builder without a valid access token or a valid default Application ID.");
      } 
    } 
    a(paramContext, paramString, paramBundle);
  }
  
  public brd(Context paramContext, String paramString1, String paramString2, Bundle paramBundle) {
    String str = paramString1;
    if (paramString1 == null)
      str = bqq.a(paramContext); 
    bqx.a(str, "applicationId");
    this.b = str;
    a(paramContext, paramString2, paramBundle);
  }
  
  private void a(Context paramContext, String paramString, Bundle paramBundle) {
    this.a = paramContext;
    this.c = paramString;
    if (paramBundle != null) {
      this.f = paramBundle;
      return;
    } 
    this.f = new Bundle();
  }
  
  public bqy a() {
    if (this.g != null) {
      this.f.putString("app_id", this.g.i());
      this.f.putString("access_token", this.g.c());
      return new bqy(this.a, this.c, this.f, this.d, this.e);
    } 
    this.f.putString("app_id", this.b);
    return new bqy(this.a, this.c, this.f, this.d, this.e);
  }
  
  public brd a(int paramInt) {
    this.d = paramInt;
    return this;
  }
  
  public brd a(brf parambrf) {
    this.e = parambrf;
    return this;
  }
  
  public String b() {
    return this.b;
  }
  
  public Context c() {
    return this.a;
  }
  
  public int d() {
    return this.d;
  }
  
  public Bundle e() {
    return this.f;
  }
  
  public brf f() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */