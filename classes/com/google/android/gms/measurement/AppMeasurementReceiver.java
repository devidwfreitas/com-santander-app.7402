package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.MainThread;
import android.support.v4.content.WakefulBroadcastReceiver;
import dlm;
import dlo;

public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements dlo {
  private dlm a;
  
  private dlm a() {
    if (this.a == null)
      this.a = new dlm(this); 
    return this.a;
  }
  
  @MainThread
  public void a(Context paramContext, Intent paramIntent) {
    startWakefulService(paramContext, paramIntent);
  }
  
  @MainThread
  public void onReceive(Context paramContext, Intent paramIntent) {
    a().a(paramContext, paramIntent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\measurement\AppMeasurementReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */