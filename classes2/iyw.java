import android.app.ActivityManager;
import android.os.Handler;
import com.santander.app.idsantander.presentation.IdSantanderGerarQrActivity;
import java.util.Iterator;

public class iyw implements Runnable {
  public iyw(IdSantanderGerarQrActivity paramIdSantanderGerarQrActivity, ActivityManager paramActivityManager, Handler paramHandler) {}
  
  public void run() {
    Iterator iterator = this.a.getRunningServices(200).iterator();
    while (iterator.hasNext()) {
      if (((ActivityManager.RunningServiceInfo)iterator.next()).process.equals("com.android.systemui:screenshot"))
        IdSantanderGerarQrActivity.a(this.c).a(); 
    } 
    this.b.postDelayed(this, 2000L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iyw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */