package com.datami.smi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class g extends BroadcastReceiver {
  private g() {}
  
  public final void onReceive(Context paramContext, Intent paramIntent) {
    c.a(true);
    paramContext.unregisterReceiver(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */