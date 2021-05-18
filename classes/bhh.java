import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.facebook.CustomTabMainActivity;

public class bhh extends BroadcastReceiver {
  public bhh(CustomTabMainActivity paramCustomTabMainActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    Intent intent = new Intent((Context)this.a, CustomTabMainActivity.class);
    intent.setAction(CustomTabMainActivity.d);
    intent.putExtra(CustomTabMainActivity.c, paramIntent.getStringExtra(CustomTabMainActivity.c));
    intent.addFlags(603979776);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */