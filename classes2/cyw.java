import android.annotation.TargetApi;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import java.util.Iterator;

public abstract class cyw extends Service {
  private int zzbgm;
  
  private int zzbgn = 0;
  
  private final Object zzrJ = new Object();
  
  static void zzD(Bundle paramBundle) {
    Iterator<String> iterator = paramBundle.keySet().iterator();
    while (iterator.hasNext()) {
      String str = iterator.next();
      if (str != null && str.startsWith("google.c."))
        iterator.remove(); 
    } 
  }
  
  private void zzGN() {
    synchronized (this.zzrJ) {
      this.zzbgn--;
      if (this.zzbgn == 0)
        zzjA(this.zzbgm); 
      return;
    } 
  }
  
  @TargetApi(11)
  private void zzl(Intent paramIntent) {
    int i = Build.VERSION.SDK_INT;
    AsyncTask.THREAD_POOL_EXECUTOR.execute(new cyx(this, paramIntent));
  }
  
  private void zzm(Intent paramIntent) {
    byte b;
    try {
      String str1 = paramIntent.getAction();
      b = -1;
    } finally {
      WakefulBroadcastReceiver.completeWakefulIntent(paramIntent);
    } 
    switch (b) {
      case 0:
        zzn(paramIntent);
        zzGN();
        WakefulBroadcastReceiver.completeWakefulIntent(paramIntent);
        return;
    } 
    String str = String.valueOf(paramIntent.getAction());
    if (str.length() != 0) {
      str = "Unknown intent action: ".concat(str);
    } else {
      str = new String("Unknown intent action: ");
    } 
    Log.d("GcmListenerService", str);
    zzGN();
    WakefulBroadcastReceiver.completeWakefulIntent(paramIntent);
  }
  
  private void zzn(Intent paramIntent) {
    String str3 = paramIntent.getStringExtra("message_type");
    String str2 = str3;
    if (str3 == null)
      str2 = "gcm"; 
    byte b = -1;
    switch (str2.hashCode()) {
      default:
        switch (b) {
          default:
            str1 = String.valueOf(str2);
            if (str1.length() != 0) {
              str1 = "Received message with unknown type: ".concat(str1);
            } else {
              break;
            } 
            Log.w("GcmListenerService", str1);
            return;
          case 0:
            zzo((Intent)str1);
            return;
          case 1:
            onDeletedMessages();
            return;
          case 2:
            onMessageSent(str1.getStringExtra("google.message_id"));
            return;
          case 3:
            break;
        } 
        onSendError(zzp((Intent)str1), str1.getStringExtra("error"));
        return;
      case 102161:
        if (str2.equals("gcm"))
          b = 0; 
      case -2062414158:
        if (str2.equals("deleted_messages"))
          b = 1; 
      case 814800675:
        if (str2.equals("send_event"))
          b = 2; 
      case 814694033:
        if (str2.equals("send_error"))
          b = 3; 
    } 
    String str1 = new String("Received message with unknown type: ");
    Log.w("GcmListenerService", str1);
  }
  
  private void zzo(Intent paramIntent) {
    Bundle bundle = paramIntent.getExtras();
    bundle.remove("message_type");
    bundle.remove("android.support.content.wakelockid");
    if (czm.a(bundle)) {
      if (!czm.b((Context)this)) {
        czm.a((Context)this).c(bundle);
        return;
      } 
      czm.b(bundle);
    } 
    String str = bundle.getString("from");
    bundle.remove("from");
    zzD(bundle);
    onMessageReceived(str, bundle);
  }
  
  private String zzp(Intent paramIntent) {
    String str2 = paramIntent.getStringExtra("google.message_id");
    String str1 = str2;
    if (str2 == null)
      str1 = paramIntent.getStringExtra("message_id"); 
    return str1;
  }
  
  public final IBinder onBind(Intent paramIntent) {
    return null;
  }
  
  public void onDeletedMessages() {}
  
  public void onMessageReceived(String paramString, Bundle paramBundle) {}
  
  public void onMessageSent(String paramString) {}
  
  public void onSendError(String paramString1, String paramString2) {}
  
  public final int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    synchronized (this.zzrJ) {
      this.zzbgm = paramInt2;
      this.zzbgn++;
      if (paramIntent == null) {
        zzGN();
        return 2;
      } 
    } 
    zzl(paramIntent);
    return 3;
  }
  
  boolean zzjA(int paramInt) {
    return stopSelfResult(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */