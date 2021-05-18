package android.support.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class CustomTabsClient {
  private final ICustomTabsService mService;
  
  private final ComponentName mServiceComponentName;
  
  @RestrictTo({RestrictTo.Scope.GROUP_ID})
  CustomTabsClient(ICustomTabsService paramICustomTabsService, ComponentName paramComponentName) {
    this.mService = paramICustomTabsService;
    this.mServiceComponentName = paramComponentName;
  }
  
  public static boolean bindCustomTabsService(Context paramContext, String paramString, CustomTabsServiceConnection paramCustomTabsServiceConnection) {
    Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
    if (!TextUtils.isEmpty(paramString))
      intent.setPackage(paramString); 
    return paramContext.bindService(intent, paramCustomTabsServiceConnection, 33);
  }
  
  public static boolean connectAndInitialize(Context paramContext, String paramString) {
    if (paramString == null)
      return false; 
    paramContext = paramContext.getApplicationContext();
    CustomTabsClient$1 customTabsClient$1 = new CustomTabsClient$1(paramContext);
    try {
      return bindCustomTabsService(paramContext, paramString, customTabsClient$1);
    } catch (SecurityException securityException) {
      return false;
    } 
  }
  
  public static String getPackageName(Context paramContext, @Nullable List<String> paramList) {
    return getPackageName(paramContext, paramList, false);
  }
  
  public static String getPackageName(Context paramContext, @Nullable List<String> paramList, boolean paramBoolean) {
    List<String> list1;
    PackageManager packageManager = paramContext.getPackageManager();
    if (paramList == null) {
      list1 = new ArrayList();
    } else {
      list1 = paramList;
    } 
    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://"));
    List<String> list2 = list1;
    if (!paramBoolean) {
      ResolveInfo resolveInfo = packageManager.resolveActivity(intent2, 0);
      list2 = list1;
      if (resolveInfo != null) {
        String str = resolveInfo.activityInfo.packageName;
        list2 = new ArrayList<String>(list1.size() + 1);
        list2.add(str);
        if (paramList != null)
          list2.addAll(paramList); 
      } 
    } 
    Intent intent1 = new Intent("android.support.customtabs.action.CustomTabsService");
    for (String str : list2) {
      intent1.setPackage(str);
      if (packageManager.resolveService(intent1, 0) != null)
        return str; 
    } 
    return null;
  }
  
  public Bundle extraCommand(String paramString, Bundle paramBundle) {
    try {
      return this.mService.extraCommand(paramString, paramBundle);
    } catch (RemoteException remoteException) {
      return null;
    } 
  }
  
  public CustomTabsSession newSession(CustomTabsCallback paramCustomTabsCallback) {
    CustomTabsClient$2 customTabsClient$2 = new CustomTabsClient$2(this, paramCustomTabsCallback);
    try {
      boolean bool = this.mService.newSession(customTabsClient$2);
      return !bool ? null : new CustomTabsSession(this.mService, customTabsClient$2, this.mServiceComponentName);
    } catch (RemoteException remoteException) {
      return null;
    } 
  }
  
  public boolean warmup(long paramLong) {
    try {
      return this.mService.warmup(paramLong);
    } catch (RemoteException remoteException) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */