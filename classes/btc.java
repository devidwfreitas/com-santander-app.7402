import android.content.Context;
import android.os.Bundle;

public class btc extends brd {
  static final String a = "fbconnect://success";
  
  private static final String b = "oauth";
  
  private String c;
  
  private boolean d;
  
  public btc(Context paramContext, String paramString, Bundle paramBundle) {
    super(paramContext, paramString, "oauth", paramBundle);
  }
  
  public bqy a() {
    Bundle bundle = e();
    bundle.putString("redirect_uri", "fbconnect://success");
    bundle.putString("client_id", b());
    bundle.putString("e2e", this.c);
    bundle.putString("response_type", "token,signed_request");
    bundle.putString("return_scopes", "true");
    bundle.putString("auth_type", "rerequest");
    return new bqy(c(), "oauth", bundle, d(), f());
  }
  
  public btc a(String paramString) {
    this.c = paramString;
    return this;
  }
  
  public btc a(boolean paramBoolean) {
    this.d = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */