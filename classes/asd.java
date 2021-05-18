import android.app.IntentService;
import android.os.Bundle;
import android.util.Log;
import chat.santander.com.modulochatsantander.receiver.ChatEventReceiver;
import chat.santander.com.modulochatsantander.tasks.StartSession;

public abstract class asd extends IntentService {
  public static final String a = StartSession.class.getName();
  
  public asd(String paramString) {
    super(paramString);
  }
  
  public void a(String paramString) {
    Log.d(a, "Notifiquei o evento");
    ChatEventReceiver chatEventReceiver = ard.a().K();
    Bundle bundle = new Bundle();
    bundle.putString(aps.bx, paramString);
    chatEventReceiver.send(-1, bundle);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\asd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */