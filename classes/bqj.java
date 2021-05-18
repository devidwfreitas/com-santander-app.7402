import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

public abstract class bqj implements ServiceConnection {
  private final Context a;
  
  private final Handler b;
  
  private bql c;
  
  private boolean d;
  
  private Messenger e;
  
  private int f;
  
  private int g;
  
  private final String h;
  
  private final int i;
  
  public bqj(Context paramContext, int paramInt1, int paramInt2, int paramInt3, String paramString) {
    Context context = paramContext.getApplicationContext();
    if (context != null)
      paramContext = context; 
    this.a = paramContext;
    this.f = paramInt1;
    this.g = paramInt2;
    this.h = paramString;
    this.i = paramInt3;
    this.b = new bqk(this);
  }
  
  private void b(Bundle paramBundle) {
    if (this.d) {
      this.d = false;
      bql bql1 = this.c;
      if (bql1 != null) {
        bql1.a(paramBundle);
        return;
      } 
    } 
  }
  
  private void d() {
    Bundle bundle = new Bundle();
    bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.h);
    a(bundle);
    Message message = Message.obtain(null, this.f);
    message.arg1 = this.i;
    message.setData(bundle);
    message.replyTo = new Messenger(this.b);
    try {
      this.e.send(message);
      return;
    } catch (RemoteException remoteException) {
      b(null);
      return;
    } 
  }
  
  protected Context a() {
    return this.a;
  }
  
  protected abstract void a(Bundle paramBundle);
  
  protected void a(Message paramMessage) {
    if (paramMessage.what == this.g) {
      Bundle bundle = paramMessage.getData();
      if (bundle.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
        b(null);
      } else {
        b(bundle);
      } 
      try {
        this.a.unbindService(this);
        return;
      } catch (IllegalArgumentException illegalArgumentException) {
        return;
      } 
    } 
  }
  
  public void a(bql parambql) {
    this.c = parambql;
  }
  
  public boolean b() {
    if (!this.d && bqa.b(this.i) != -1) {
      Intent intent = bqa.b(this.a);
      if (intent != null) {
        this.d = true;
        this.a.bindService(intent, this, 1);
        return true;
      } 
    } 
    return false;
  }
  
  public void c() {
    this.d = false;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    this.e = new Messenger(paramIBinder);
    d();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {
    this.e = null;
    try {
      this.a.unbindService(this);
    } catch (IllegalArgumentException illegalArgumentException) {}
    b(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */