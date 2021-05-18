package com.ca.org.acra.collector;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.ca.org.acra.ACRA;
import java.util.Map;
import java.util.TreeMap;

final class SharedPreferencesCollector {
  public static String collect(Context paramContext) {
    StringBuilder stringBuilder = new StringBuilder();
    TreeMap<Object, Object> treeMap = new TreeMap<Object, Object>();
    treeMap.put("default", PreferenceManager.getDefaultSharedPreferences(paramContext));
    String[] arrayOfString = ACRA.getConfig().additionalSharedPreferences();
    if (arrayOfString != null) {
      int j = arrayOfString.length;
      for (int i = 0; i < j; i++) {
        String str = arrayOfString[i];
        treeMap.put(str, paramContext.getSharedPreferences(str, 0));
      } 
    } 
    for (String str : treeMap.keySet()) {
      stringBuilder.append(str).append("\n");
      SharedPreferences sharedPreferences = (SharedPreferences)treeMap.get(str);
      if (sharedPreferences != null) {
        Map map = sharedPreferences.getAll();
        if (map != null && map.size() > 0) {
          for (String str1 : map.keySet()) {
            if (!filteredKey(str1)) {
              if (map.get(str1) != null) {
                stringBuilder.append(str1).append("=").append(map.get(str1).toString()).append("\n");
                continue;
              } 
              stringBuilder.append(str1).append("=").append("null\n");
            } 
          } 
        } else {
          stringBuilder.append("empty\n");
        } 
      } else {
        stringBuilder.append("null\n");
      } 
      stringBuilder.append("\n");
    } 
    return stringBuilder.toString();
  }
  
  private static boolean filteredKey(String paramString) {
    boolean bool = false;
    String[] arrayOfString = ACRA.getConfig().excludeMatchingSharedPreferencesKeys();
    if (arrayOfString.length < 0)
      bool = paramString.matches(arrayOfString[0]); 
    return bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\SharedPreferencesCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */