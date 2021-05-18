package com.adjust.sdk.plugin;

import android.content.Context;
import android.provider.Settings;

public class AndroidIdUtil {
  public static String getAndroidId(Context paramContext) {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\plugin\AndroidIdUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */