import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import chat.santander.com.modulochatsantander.polling.ChatPolling;

public abstract class asy extends AppCompatActivity {
  private static final String a = "[ChatBaseActivity]";
  
  private static ard b = ard.a();
  
  private static arx c = ary.b();
  
  private boolean d;
  
  private boolean a(Class<?> paramClass) {
    for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager)getSystemService("activity")).getRunningServices(2147483647)) {
      if (paramClass.getName().equals(runningServiceInfo.service.getClassName()))
        return true; 
    } 
    return false;
  }
  
  public void a(Activity paramActivity) {
    if (b != null && b.k() != 0)
      ase.a("Chat Santander", b.z(), (Context)paramActivity); 
  }
  
  public void a(Toolbar paramToolbar, boolean paramBoolean) {
    paramToolbar.setTitle("");
    setSupportActionBar(paramToolbar);
    if (getSupportActionBar() != null)
      getSupportActionBar().setDisplayHomeAsUpEnabled(paramBoolean); 
  }
  
  public void a(boolean paramBoolean) {
    Log.d("[ChatBaseActivity]", "enable finish session when close activity: ".concat(String.valueOf(paramBoolean)));
    this.d = paramBoolean;
  }
  
  public boolean k() {
    return this.d;
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    a(true);
    Log.d("[ChatBaseActivity]", "ChatBaseActivity: onCreate ");
  }
  
  public void onDestroy() {
    super.onDestroy();
    Log.d("[ChatBaseActivity]", "ChatBaseActivity: onDestroy ".concat("init"));
    if (b != null)
      try {
        if (!ase.b(b.j()) && k() && !b.t() && b.f())
          ary.b().c(b); 
      } catch (NullPointerException nullPointerException) {
        Log.d("[ChatBaseActivity]", "ChatBaseActivity: onDestroy (NPEX)");
      } catch (Exception exception) {
        Log.d("[ChatBaseActivity]", "ChatBaseActivity: Error onDestroy endChatSession: ".concat(exception.getMessage()), exception);
      }  
    if (a(ChatPolling.class))
      try {
        stopService(new Intent((Context)this, ChatPolling.class));
      } catch (Exception exception) {
        Log.e("[ChatBaseActivity]", "ChatPolling: Error onDestroy stop ChatPolling: ".concat(exception.getMessage()), exception);
      }  
    Log.d("[ChatBaseActivity]", "ChatBaseActivity: onDestroy ".concat("end"));
  }
  
  public void onPause() {
    super.onPause();
    Log.d("[ChatBaseActivity]", "ChatBaseActivity: onPause ");
  }
  
  public void onResume() {
    super.onResume();
    Log.d("[ChatBaseActivity]", "ChatBaseActivity: onResume ");
  }
  
  public void onStop() {
    super.onStop();
    Log.d("[ChatBaseActivity]", "ChatBaseActivity: onStop ");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */