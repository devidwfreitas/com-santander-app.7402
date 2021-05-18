import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.ca.android.app.CaMDOActivity;
import com.facebook.CustomTabMainActivity;

public class bhf extends CaMDOActivity {
  public static final String a = bhf.class.getSimpleName() + ".action_customTabRedirect";
  
  public static final String b = bhf.class.getSimpleName() + ".action_destroy";
  
  private static final int c = 2;
  
  private BroadcastReceiver d;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == 0) {
      paramIntent = new Intent(a);
      paramIntent.putExtra(CustomTabMainActivity.c, getIntent().getDataString());
      LocalBroadcastManager.getInstance((Context)this).sendBroadcast(paramIntent);
      this.d = new bhg(this);
      LocalBroadcastManager.getInstance((Context)this).registerReceiver(this.d, new IntentFilter(b));
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    Intent intent = new Intent((Context)this, CustomTabMainActivity.class);
    intent.setAction(a);
    intent.putExtra(CustomTabMainActivity.c, getIntent().getDataString());
    intent.addFlags(603979776);
    startActivityForResult(intent, 2);
  }
  
  protected void onDestroy() {
    LocalBroadcastManager.getInstance((Context)this).unregisterReceiver(this.d);
    super.onDestroy();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */