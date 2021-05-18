package com.ca.org.acra.collector;

import android.content.Context;
import com.ca.org.acra.util.BoundedLinkedList;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

class LogFileCollector {
  public static String collectLogFile(Context paramContext, String paramString, int paramInt) throws IOException {
    BufferedReader bufferedReader;
    BoundedLinkedList boundedLinkedList = new BoundedLinkedList(paramInt);
    if (paramString.contains("/")) {
      bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(paramString)), 1024);
    } else {
      bufferedReader = new BufferedReader(new InputStreamReader(bufferedReader.openFileInput(paramString)), 1024);
    } 
    for (paramString = bufferedReader.readLine(); paramString != null; paramString = bufferedReader.readLine())
      boundedLinkedList.add(paramString + "\n"); 
    return boundedLinkedList.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\collector\LogFileCollector.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */