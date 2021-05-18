import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.customtabs.CustomTabsIntent;

public class bnu {
  private Uri a;
  
  public bnu(String paramString, Bundle paramBundle) {
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    this.a = bqq.a(bqn.a(), bhv.i() + "/" + "dialog/" + paramString, bundle);
  }
  
  public void a(Activity paramActivity, String paramString) {
    CustomTabsIntent customTabsIntent = (new CustomTabsIntent.Builder()).build();
    customTabsIntent.intent.setPackage(paramString);
    customTabsIntent.intent.addFlags(1073741824);
    customTabsIntent.launchUrl((Context)paramActivity, this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bnu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */