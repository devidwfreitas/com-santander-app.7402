package com.datami.smi.h;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

final class d implements ServiceConnection {
  boolean a = false;
  
  private final LinkedBlockingQueue b = new LinkedBlockingQueue(1);
  
  private d() {}
  
  public final IBinder a() {
    if (this.a)
      throw new IllegalStateException(); 
    this.a = true;
    return this.b.take();
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder) {
    try {
      this.b.put(paramIBinder);
      return;
    } catch (InterruptedException interruptedException) {
      return;
    } 
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\h\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */