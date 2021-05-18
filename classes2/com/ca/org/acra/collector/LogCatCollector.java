package com.ca.org.acra.collector;

import android.os.Process;
import android.util.Log;
import com.ca.org.acra.ACRA;
import com.ca.org.acra.util.BoundedLinkedList;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;

class LogCatCollector {
  private static final int DEFAULT_TAIL_COUNT = 100;
  
  public static String collectLogCat(String paramString) {
    int i = Process.myPid();
    String str2 = null;
    String str1 = str2;
    if (ACRA.getConfig().logcatFilterByPid()) {
      str1 = str2;
      if (i > 0)
        str1 = Integer.toString(i) + "):"; 
    } 
    ArrayList<String> arrayList1 = new ArrayList();
    arrayList1.add("logcat");
    if (paramString != null) {
      arrayList1.add("-b");
      arrayList1.add(paramString);
    } 
    ArrayList<String> arrayList2 = new ArrayList(Arrays.asList((Object[])ACRA.getConfig().logcatArguments()));
    int j = arrayList2.indexOf("-t");
    if (j > -1 && j < arrayList2.size()) {
      int k = Integer.parseInt(arrayList2.get(j + 1));
      i = k;
      if (Compatibility.getAPILevel() < 8) {
        arrayList2.remove(j + 1);
        arrayList2.remove(j);
        arrayList2.add("-d");
        i = k;
      } 
    } else {
      i = -1;
    } 
    if (i <= 0)
      i = 100; 
    BoundedLinkedList<String> boundedLinkedList = new BoundedLinkedList(i);
    arrayList1.addAll(arrayList2);
    try {
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(arrayList1.<String>toArray(new String[arrayList1.size()])).getInputStream()), 8192);
      Log.d(ACRA.LOG_TAG, "Retrieving logcat output...");
      while (true) {
        String str = bufferedReader.readLine();
        if (str != null) {
          if (str1 == null || str.contains(str1))
            boundedLinkedList.add(str + "\n"); 
          continue;
        } 
        return boundedLinkedList.toString();
      } 
    } catch (IOException iOException) {
      Log.e(ACRA.LOG_TAG, "LogCatCollector.collectLogCat could not retrieve data.", iOException);
    } 
    return boundedLinkedList.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\LogCatCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */