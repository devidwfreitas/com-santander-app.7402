package chat.santander.com.modulochatsantander.tasks;

import android.content.Intent;
import android.util.Log;
import aqd;
import ard;
import ary;
import asd;

public class EndSession extends asd {
  private static final String b = EndSession.class.getName();
  
  private ard c = ard.a();
  
  public EndSession() {
    super("EndSession");
  }
  
  protected void onHandleIntent(Intent paramIntent) {
    boolean bool = paramIntent.getBooleanExtra("END_SESSION_EVENT", false);
    try {
      ary.b().c(this.c);
      this.c.d();
      return;
    } catch (aqd aqd) {
      Log.e(b, "Exit button erro Exception: ".concat(aqd.getMessage()), (Throwable)aqd);
      this.c.d();
      return;
    } catch (Exception exception) {
      Log.e(b, "End Chat Session Exception: ".concat(exception.getMessage()), exception);
      this.c.d();
      return;
    } finally {
      this.c.d();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chat\santander\com\modulochatsantander\tasks\EndSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */