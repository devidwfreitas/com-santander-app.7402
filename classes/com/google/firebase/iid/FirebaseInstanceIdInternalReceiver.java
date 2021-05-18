package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Log;
import eiy;

public final class FirebaseInstanceIdInternalReceiver extends WakefulBroadcastReceiver {
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (paramIntent == null)
      return; 
    Parcelable parcelable = paramIntent.getParcelableExtra("wrapped_intent");
    if (!(parcelable instanceof Intent)) {
      Log.w("FirebaseInstanceId", "Missing or invalid wrapped intent");
      return;
    } 
    eiy.a().a(paramContext, paramIntent.getAction(), (Intent)parcelable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\firebase\iid\FirebaseInstanceIdInternalReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */