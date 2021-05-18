package chat.santander.com.modulochatsantander.tasks;

import android.content.Intent;
import android.util.Log;
import aqd;
import ard;
import ary;
import asd;
import ase;

public class StartSession extends asd {
  public static final String b = StartSession.class.getName();
  
  public StartSession() {
    super("StartSession");
  }
  
  protected void onHandleIntent(Intent paramIntent) {
    ard ard = ard.a();
    try {
      if (!ase.d(ard))
        ary.b().b(ard); 
      a("START_SESSION_EVENT");
      return;
    } catch (aqd aqd) {
      Log.e(b, "StartSession Exception: ".concat(aqd.getMessage()), (Throwable)aqd);
      return;
    } catch (Exception exception) {
      Log.e(b, "StartSession Exception: ".concat(exception.getMessage()), exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chat\santander\com\modulochatsantander\tasks\StartSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */