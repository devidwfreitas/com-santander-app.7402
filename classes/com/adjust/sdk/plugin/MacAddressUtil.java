package com.adjust.sdk.plugin;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;

public class MacAddressUtil {
  public static String getMacAddress(Context paramContext) {
    String str = getRawMacAddress(paramContext);
    return (str == null) ? null : removeSpaceString(str.toUpperCase(Locale.US));
  }
  
  private static String getRawMacAddress(Context paramContext) {
    String str = loadAddress("wlan0");
    if (str == null) {
      String str1 = loadAddress("eth0");
      str = str1;
      if (str1 == null)
        try {
          String str2 = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
          str = str2;
          if (str2 == null)
            return null; 
        } catch (Exception exception) {} 
    } 
    return str;
  }
  
  private static String loadAddress(String paramString) {
    try {
      String str = "/sys/class/net/" + paramString + "/address";
      StringBuilder stringBuilder = new StringBuilder(1000);
      BufferedReader bufferedReader = new BufferedReader(new FileReader(str), 1024);
      char[] arrayOfChar = new char[1024];
      while (true) {
        int i = bufferedReader.read(arrayOfChar);
        if (i != -1) {
          stringBuilder.append(String.valueOf(arrayOfChar, 0, i));
          continue;
        } 
        bufferedReader.close();
        return stringBuilder.toString();
      } 
    } catch (IOException iOException) {
      return null;
    } 
  }
  
  private static String removeSpaceString(String paramString) {
    if (paramString != null) {
      paramString = paramString.replaceAll("\\s", "");
      if (!TextUtils.isEmpty(paramString))
        return paramString; 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\plugin\MacAddressUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */