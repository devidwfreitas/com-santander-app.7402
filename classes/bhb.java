import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.facebook.AccessToken;

class bhb extends BroadcastReceiver {
  private bhb(bgz parambgz) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(paramIntent.getAction())) {
      AccessToken accessToken1 = (AccessToken)paramIntent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN");
      AccessToken accessToken2 = (AccessToken)paramIntent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN");
      this.a.a(accessToken1, accessToken2);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */