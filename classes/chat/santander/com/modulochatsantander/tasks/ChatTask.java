package chat.santander.com.modulochatsantander.tasks;

import android.content.Intent;
import android.util.Log;
import aps;
import apu;
import aqd;
import ard;
import arx;
import ary;
import asd;
import java.util.Calendar;

public class ChatTask extends asd {
  public static final String b = ChatTask.class.getName();
  
  private ard c = ard.a();
  
  private arx d = (arx)ary.b();
  
  public ChatTask() {
    super("ChatTask");
  }
  
  public void onDestroy() {
    super.onDestroy();
    Log.d(b, "ChatTask service end ".concat(Calendar.getInstance().getTime().toString()));
  }
  
  protected void onHandleIntent(Intent paramIntent) {
    String str = paramIntent.getStringExtra(aps.by);
    Log.d(b, "ChatTask textToSend " + str);
    try {
      this.d.a(this.c, apu.TextMessageSent);
      return;
    } catch (aqd aqd) {
      Log.e(b, "doInBackground ChatServiceException: ".concat(aqd.getMessage()), (Throwable)aqd);
      a("Desculpe, estamos resolvendo uma questão técnica e você já vai conseguir usar o chat.");
      return;
    } 
  }
  
  public void onStart(Intent paramIntent, int paramInt) {
    super.onStart(paramIntent, paramInt);
    Log.d(b, "ChatTask service start ".concat(Calendar.getInstance().getTime().toString()));
    a("MESSAGE_SENT_EVENT");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\chat\santander\com\modulochatsantander\tasks\ChatTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */