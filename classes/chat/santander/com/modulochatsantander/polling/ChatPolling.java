package chat.santander.com.modulochatsantander.polling;

import android.content.Intent;
import android.util.Log;
import aqd;
import ard;
import arx;
import ary;
import asd;
import ase;
import java.util.Calendar;
import java.util.UUID;

public class ChatPolling extends asd {
  private static final String c = "[ChatPolling]";
  
  private UUID b = UUID.randomUUID();
  
  private arx d = (arx)ary.b();
  
  private ard e = ard.a();
  
  public ChatPolling() {
    super("ChatPolling");
  }
  
  private void a(Exception paramException) {
    if (paramException != null && paramException.getMessage() != null)
      Log.e("[ChatPolling]", this.b + " ChatPolling Exception ".concat(paramException.getMessage()), paramException); 
    if (this.e != null && this.e.k() != 0) {
      if (this.e.l() != null)
        Log.e("[ChatPolling]", this.b + " ChatPolling error desc ".concat(this.e.l())); 
      if (this.e.z() != null)
        Log.e("[ChatPolling]", this.b + " ChatPolling error json ".concat(this.e.z())); 
    } 
  }
  
  public void onDestroy() {
    super.onDestroy();
    Log.d("[ChatPolling]", this.b + " ChatPolling onDestroy service end ".concat(ase.a().getTime().toString()));
  }
  
  protected void onHandleIntent(Intent paramIntent) {
    int j = 0;
    Log.d("[ChatPolling]", this.b + " ChatPolling onHandleIntent isValidChatSession: ".concat(String.valueOf(this.e.f())));
    for (int i = 0;; i = k) {
      int k;
      if (this.e != null && this.e.f() && !j && !this.e.P()) {
        StringBuilder stringBuilder = (new StringBuilder()).append(this.b);
        k = i + 1;
        Log.d("[ChatPolling]", stringBuilder.append(" => exec polling nro ".concat(String.valueOf(i))).toString());
        if (this.e.f()) {
          try {
            this.d.g(this.e);
          } catch (aqd aqd) {
            a((Exception)aqd);
          } catch (Exception exception) {
            a(exception);
          } 
          if (ase.f(this.e.r())) {
            this.e.e(true);
            Log.d("[ChatPolling]", this.b + " POLLING NOTIFY NEW DISCONNECT EVENT");
            a("DISCONNECT_EVENT");
            i = 1;
          } else {
            i = j;
            if (ase.k(this.e.r()))
              if (ase.f(this.e.r())) {
                this.e.e(true);
                Log.d("[ChatPolling]", this.b + " POLLING NOTIFY NEW DISCONNECT EVENT");
                a("DISCONNECT_EVENT");
                i = 1;
              } else {
                Log.d("[ChatPolling]", this.b + " POLLING NOTIFY NEW TRANSCRIPT EVENT");
                a("NEW_EVENT");
                i = j;
              }  
          } 
          try {
            Thread.sleep(this.e.B());
            j = i;
            i = k;
          } catch (InterruptedException interruptedException) {
            a(interruptedException);
            j = i;
            i = k;
          } catch (Exception exception) {
            Log.e("[ChatPolling]", "Pooling Interval ", exception);
            j = i;
            i = k;
          } 
        } 
      } else {
        a("DISCONNECT_EVENT");
        return;
      } 
    } 
  }
  
  public void onStart(Intent paramIntent, int paramInt) {
    super.onStart(paramIntent, paramInt);
    Log.d("[ChatPolling]", "ChatPolling service start ".concat(Calendar.getInstance().getTime().toString()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chat\santander\com\modulochatsantander\polling\ChatPolling.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */