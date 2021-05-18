package com.ca.org.acra.collector;

import android.os.Process;
import android.util.Log;
import com.ca.org.acra.ACRA;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

final class DumpSysCollector {
  public static String collectMemInfo() {
    StringBuilder stringBuilder = new StringBuilder();
    try {
      ArrayList<String> arrayList = new ArrayList();
      arrayList.add("dumpsys");
      arrayList.add("meminfo");
      arrayList.add(Integer.toString(Process.myPid()));
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(arrayList.<String>toArray(new String[arrayList.size()])).getInputStream()), 8192);
      while (true) {
        String str = bufferedReader.readLine();
        if (str != null) {
          stringBuilder.append(str);
          stringBuilder.append("\n");
          continue;
        } 
        return stringBuilder.toString();
      } 
    } catch (IOException iOException) {
      Log.e(ACRA.LOG_TAG, "DumpSysCollector.meminfo could not retrieve data", iOException);
    } 
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\DumpSysCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */