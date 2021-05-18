import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.facebook.Profile;

class bjj extends BroadcastReceiver {
  private bjj(bjh parambjh) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if ("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED".equals(paramIntent.getAction())) {
      Profile profile1 = (Profile)paramIntent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_PROFILE");
      Profile profile2 = (Profile)paramIntent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_PROFILE");
      this.a.a(profile1, profile2);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bjj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */