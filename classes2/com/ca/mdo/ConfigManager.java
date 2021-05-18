package com.ca.mdo;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

class ConfigManager {
  private static Map<String, String> config = new HashMap<String, String>();
  
  Map<String, String> mHashmap = new HashMap<String, String>();
  
  private byte[] getByteArray(InputStream paramInputStream) throws IOException {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[8092];
    while (true) {
      int i = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
      if (i != -1) {
        byteArrayOutputStream.write(arrayOfByte, 0, i);
        continue;
      } 
      return byteArrayOutputStream.toByteArray();
    } 
  }
  
  public static Map<String, String> getConfig() {
    return config;
  }
  
  public static void readConfigurationFromPlistFile(Context paramContext) {
    ConfigManager configManager = new ConfigManager();
    if (configManager.parsePlistXML(paramContext)) {
      if (!configManager.validateConfig()) {
        CALog.e("Failed to validate configuration, disabling SDK.");
        CAMobileDevOps.mDisabled.set(true);
      } 
    } else {
      CALog.e("Not able to read conf file, disabling SDK.");
      CAMobileDevOps.mDisabled.set(true);
    } 
    config = configManager.mHashmap;
  }
  
  protected boolean parsePlistXML(Context paramContext) {
    boolean bool = false;
    int i = 0;
    InputStream inputStream = null;
    String str = "camdo.plist";
    try {
      String[] arrayOfString = paramContext.getAssets().list("conf");
      int j = 0;
      while (true) {
        String str1 = str;
        if (j < arrayOfString.length)
          if (arrayOfString[j].contains("camdo.plist") || arrayOfString[j].contains("camdo.splist")) {
            str1 = arrayOfString[j];
            CALog.d("Using config file:" + str1);
          } else {
            j++;
            continue;
          }  
        InputStream inputStream1 = paramContext.getAssets().open("conf/" + str1);
        XmlPullParserFactory xmlPullParserFactory = XmlPullParserFactory.newInstance();
        xmlPullParserFactory.setNamespaceAware(true);
        XmlPullParser xmlPullParser = xmlPullParserFactory.newPullParser();
        xmlPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        xmlPullParser.setInput(new InputStreamReader(inputStream1));
        int k = xmlPullParser.getEventType();
        inputStream1 = inputStream;
        while (true) {
          if (k != 1) {
            String str2;
            inputStream = inputStream1;
            boolean bool1 = bool;
            j = i;
            switch (k) {
              case 0:
              case 1:
              case 3:
                k = xmlPullParser.next();
                inputStream1 = inputStream;
                bool = bool1;
                i = j;
                continue;
              case 2:
                str2 = xmlPullParser.getName();
                j = i;
                if (str2.equals("key")) {
                  bool = true;
                  j = 0;
                } 
                inputStream = inputStream1;
                bool1 = bool;
                if (str2.equals("string")) {
                  j = 1;
                  inputStream = inputStream1;
                  bool1 = bool;
                } 
              case 4:
                str = xmlPullParser.getText();
                inputStream = inputStream1;
                bool1 = bool;
                j = i;
                if (!str.startsWith("\n")) {
                  String str3;
                  InputStream inputStream2 = inputStream1;
                  if (bool) {
                    inputStream2 = inputStream1;
                    if (i == 0)
                      str3 = str; 
                  } 
                  String str4 = str3;
                  bool1 = bool;
                  j = i;
                  if (i != 0) {
                    str4 = str3;
                    bool1 = bool;
                    j = i;
                    if (bool) {
                      this.mHashmap.put(str3, str);
                      j = 0;
                      bool1 = false;
                      str4 = str3;
                    } 
                  } 
                } 
            } 
            inputStream = inputStream1;
            bool1 = bool;
            j = i;
          } 
          return true;
        } 
        break;
      } 
    } catch (XmlPullParserException xmlPullParserException) {
      CALog.e("Exception=" + xmlPullParserException, (Throwable)xmlPullParserException);
      return false;
    } catch (Throwable throwable) {
      CALog.e("Error =" + throwable, throwable);
    } 
    return true;
  }
  
  protected boolean validateConfig() {
    String str1 = this.mHashmap.get("tenantID");
    String str2 = this.mHashmap.get("appId");
    String str3 = this.mHashmap.get("baseURL");
    String str4 = this.mHashmap.get("profileURL");
    String str5 = this.mHashmap.get("appKey");
    if (str1 == null || str2 == null || str3 == null || str4 == null || str5 == null)
      return false; 
    CALog.d("appKey = " + str5);
    CALog.d("baseURL = " + str3);
    CALog.d("appID = " + str2);
    CALog.d("tenantID = " + str1);
    if (!MDOSecurityManager.getInstance().isSecureMode())
      CALog.d("profileURL = " + str4); 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\ConfigManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */