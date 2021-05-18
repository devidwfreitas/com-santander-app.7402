package chat.santander.com.modulochatsantander.tasks;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;
import apu;
import aqd;
import ard;
import ary;

public class TextWatcherTask extends IntentService {
  public static final String a = TextWatcherTask.class.getName();
  
  public TextWatcherTask() {
    super("TextWatcherTask");
  }
  
  protected void onHandleIntent(Intent paramIntent) {
    boolean bool = paramIntent.getBooleanExtra("TEXT_WATCHER_TASK_EVENT", false);
    try {
      apu apu;
      ary ary = ary.b();
      ard ard = ard.a();
      if (Boolean.valueOf(bool).booleanValue()) {
        apu = apu.TypingStarted;
      } else {
        apu = apu.TypingStopped;
      } 
      ary.a(ard, apu);
      return;
    } catch (aqd aqd) {
      Log.e(a, "doInBackground ChatServiceException: ".concat(aqd.getMessage()), (Throwable)aqd);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chat\santander\com\modulochatsantander\tasks\TextWatcherTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */