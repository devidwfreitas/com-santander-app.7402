package com.google.android.gms.gcm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Base64;
import android.util.Log;

public class GcmReceiver extends WakefulBroadcastReceiver {
  private static String zzbgu = "gcm.googleapis.com/refresh";
  
  private void doStartService(Context paramContext, Intent paramIntent) {
    if (isOrderedBroadcast())
      setResultCode(500); 
    zze(paramContext, paramIntent);
    try {
      ComponentName componentName;
      if (paramContext.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
        componentName = startWakefulService(paramContext, paramIntent);
      } else {
        componentName = componentName.startService(paramIntent);
        Log.d("GcmReceiver", "Missing wake lock permission, service start may be delayed");
      } 
      if (componentName == null) {
        Log.e("GcmReceiver", "Error while delivering the message: ServiceIntent not found.");
        if (isOrderedBroadcast()) {
          setResultCode(404);
          return;
        } 
      } else if (isOrderedBroadcast()) {
        setResultCode(-1);
      } 
    } catch (SecurityException securityException) {
      Log.e("GcmReceiver", "Error while delivering the message to the serviceIntent", securityException);
      if (isOrderedBroadcast()) {
        setResultCode(401);
        return;
      } 
    } 
  }
  
  private void zze(Context paramContext, Intent paramIntent) {
    String str1;
    String str2;
    ResolveInfo resolveInfo = paramContext.getPackageManager().resolveService(paramIntent, 0);
    if (resolveInfo == null || resolveInfo.serviceInfo == null) {
      Log.e("GcmReceiver", "Failed to resolve target intent service, skipping classname enforcement");
      return;
    } 
    ServiceInfo serviceInfo = resolveInfo.serviceInfo;
    if (!paramContext.getPackageName().equals(serviceInfo.packageName) || serviceInfo.name == null) {
      str1 = String.valueOf(serviceInfo.packageName);
      str2 = String.valueOf(serviceInfo.name);
      Log.e("GcmReceiver", (new StringBuilder(String.valueOf(str1).length() + 94 + String.valueOf(str2).length())).append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ").append(str1).append("/").append(str2).toString());
      return;
    } 
    String str4 = serviceInfo.name;
    String str3 = str4;
    if (str4.startsWith(".")) {
      str3 = String.valueOf(str1.getPackageName());
      str4 = String.valueOf(str4);
      if (str4.length() != 0) {
        str3 = str3.concat(str4);
      } else {
        str3 = new String(str3);
      } 
    } 
    if (Log.isLoggable("GcmReceiver", 3)) {
      str4 = String.valueOf(str3);
      if (str4.length() != 0) {
        str4 = "Restricting intent to a specific service: ".concat(str4);
      } else {
        str4 = new String("Restricting intent to a specific service: ");
      } 
      Log.d("GcmReceiver", str4);
    } 
    str2.setClassName(str1.getPackageName(), str3);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    paramIntent.setComponent(null);
    paramIntent.setPackage(paramContext.getPackageName());
    if (Build.VERSION.SDK_INT <= 18)
      paramIntent.removeCategory(paramContext.getPackageName()); 
    String str = paramIntent.getStringExtra("from");
    if ("com.google.android.c2dm.intent.REGISTRATION".equals(paramIntent.getAction()) || "google.com/iid".equals(str) || zzbgu.equals(str))
      paramIntent.setAction("com.google.android.gms.iid.InstanceID"); 
    str = paramIntent.getStringExtra("gcm.rawData64");
    if (str != null) {
      paramIntent.putExtra("rawData", Base64.decode(str, 0));
      paramIntent.removeExtra("gcm.rawData64");
    } 
    if ("com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction())) {
      zzd(paramContext, paramIntent);
    } else {
      doStartService(paramContext, paramIntent);
    } 
    if (isOrderedBroadcast() && getResultCode() == 0)
      setResultCode(-1); 
  }
  
  public void zzd(Context paramContext, Intent paramIntent) {
    doStartService(paramContext, paramIntent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\gcm\GcmReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */