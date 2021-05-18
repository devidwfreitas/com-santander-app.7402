import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.Profile;
import com.facebook.login.LoginMethodHandler;
import java.util.ArrayList;
import java.util.Date;

class bst implements bql {
  bst(bsp parambsp, String paramString1, bso parambso, bjc parambjc, String paramString2) {}
  
  public void a(Bundle paramBundle) {
    if (paramBundle != null) {
      String str2 = paramBundle.getString("com.facebook.platform.status.ERROR_TYPE");
      String str3 = paramBundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
      if (str2 != null) {
        bsp.a(str2, str3, this.a, this.b, this.c);
        return;
      } 
      str2 = paramBundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
      long l = paramBundle.getLong("com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH");
      ArrayList arrayList = paramBundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
      String str1 = paramBundle.getString("signed request");
      if (!bqq.a(str1)) {
        str1 = LoginMethodHandler.c(str1);
      } else {
        str1 = null;
      } 
      if (!bqq.a(str2) && arrayList != null && !arrayList.isEmpty() && !bqq.a(str1)) {
        AccessToken accessToken = new AccessToken(str2, this.d, str1, arrayList, null, null, new Date(l), null);
        AccessToken.a(accessToken);
        Profile.b();
        this.b.c(this.a);
        this.c.a(accessToken);
        return;
      } 
      this.b.d(this.a);
      this.c.a();
      return;
    } 
    this.b.d(this.a);
    this.c.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bst.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */