package com.adjust.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AdjustReferrerReceiver extends BroadcastReceiver {
  public void onReceive(Context paramContext, Intent paramIntent) {
    String str = paramIntent.getStringExtra("referrer");
    if (str == null)
      return; 
    Adjust.getDefaultInstance().sendReferrer(str, paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\AdjustReferrerReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */