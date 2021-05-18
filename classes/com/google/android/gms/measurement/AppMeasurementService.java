package com.google.android.gms.measurement;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.MainThread;
import dog;
import doj;

public final class AppMeasurementService extends Service implements doj {
  private dog a;
  
  private dog b() {
    if (this.a == null)
      this.a = new dog(this); 
    return this.a;
  }
  
  public Context a() {
    return (Context)this;
  }
  
  public boolean a(int paramInt) {
    return stopSelfResult(paramInt);
  }
  
  @MainThread
  public IBinder onBind(Intent paramIntent) {
    return b().a(paramIntent);
  }
  
  @MainThread
  public void onCreate() {
    super.onCreate();
    b().a();
  }
  
  @MainThread
  public void onDestroy() {
    b().b();
    super.onDestroy();
  }
  
  @MainThread
  public void onRebind(Intent paramIntent) {
    b().c(paramIntent);
  }
  
  @MainThread
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    b().a(paramIntent, paramInt1, paramInt2);
    AppMeasurementReceiver.completeWakefulIntent(paramIntent);
    return 2;
  }
  
  @MainThread
  public boolean onUnbind(Intent paramIntent) {
    return b().b(paramIntent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\measurement\AppMeasurementService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */