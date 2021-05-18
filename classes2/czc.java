import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.List;

class czc implements Runnable {
  private final String b;
  
  private final czn c;
  
  private final Bundle d;
  
  private final List<Uri> e;
  
  czc(cza paramcza, String paramString, IBinder paramIBinder, Bundle paramBundle, List<Uri> paramList) {
    this.b = paramString;
    this.c = czo.a(paramIBinder);
    this.d = paramBundle;
    this.e = paramList;
  }
  
  public void run() {
    null = new czl(this.b, this.d, this.e);
    int i = this.a.a(null);
    try {
      this.c.a(i);
      return;
    } catch (RemoteException remoteException) {
      String str = String.valueOf(this.b);
      if (str.length() != 0) {
        str = "Error reporting result of operation to scheduler for ".concat(str);
      } else {
        str = new String("Error reporting result of operation to scheduler for ");
      } 
      Log.e("GcmTaskService", str);
      return;
    } finally {
      cza.a(this.a, this.b);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */