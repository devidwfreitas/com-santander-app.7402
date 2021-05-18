package com.google.ads.conversiontracking;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import clj;

public class InstallReceiver extends BroadcastReceiver {
  public void onReceive(Context paramContext, Intent paramIntent) {
    String str2 = paramIntent.getStringExtra("referrer");
    if (!"com.android.vending.INSTALL_REFERRER".equals(paramIntent.getAction()) || str2 == null)
      return; 
    String str1 = String.valueOf(str2);
    if (str1.length() != 0) {
      str1 = "Received install referrer: ".concat(str1);
    } else {
      str1 = new String("Received install referrer: ");
    } 
    Log.i("GoogleConversionReporter", str1);
    clj.a(paramContext, Uri.parse("http://hostname/").buildUpon().appendQueryParameter("referrer", str2).build());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\ads\conversiontracking\InstallReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */