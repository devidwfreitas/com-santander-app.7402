package com.ca.mdo;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.ca.android.app.JSCaMDOIntegration;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpResponse;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.json.JSONException;
import org.json.JSONObject;

class Util {
  private static final int NON_HTTP_URL_MAX_SIZE = 200;
  
  public static Application app;
  
  private static DefaultHttpClient httpClient;
  
  private static boolean isHttpClienSetup;
  
  private static SharedPreferences.Editor mEditor;
  
  private static SharedPreferences mPref;
  
  public static String screenShotHeight;
  
  public static String screenShotWidth = "0";
  
  static {
    screenShotHeight = "0";
    isHttpClienSetup = false;
    app = null;
  }
  
  public static byte[] compress(String paramString) throws IOException {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(paramString.length());
    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
    gZIPOutputStream.write(paramString.getBytes("utf-8"));
    gZIPOutputStream.close();
    byte[] arrayOfByte = byteArrayOutputStream.toByteArray();
    byteArrayOutputStream.close();
    return arrayOfByte;
  }
  
  @TargetApi(8)
  public static String compressAndEncode(Bitmap paramBitmap, int paramInt) {
    ByteArrayOutputStream byteArrayOutputStream = null;
    if (paramBitmap == null)
      return ""; 
    if (Build.VERSION.SDK_INT > 8) {
      int i;
      byteArrayOutputStream = new ByteArrayOutputStream();
      if (paramInt < 0 || paramInt > 100) {
        i = 15;
      } else {
        i = paramInt;
        if (paramInt > 30)
          i = 30; 
      } 
      CALog.d("Image compression Quality =" + i);
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
      return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    } 
    Log.i("CAMobileDevOps ", "Utils - encodeToBase64 - not able to encode as SDK is below Android FROYO");
    return (String)byteArrayOutputStream;
  }
  
  public static void endProfile(long paramLong, String paramString) {
    CALog.v(paramString + "completed in " + (System.currentTimeMillis() - paramLong) + "ms");
  }
  
  public static InputStream executeFormRequest(JSCaMDOIntegration.FormRequest paramFormRequest) throws Exception {
    // Byte code:
    //   0: aload_0
    //   1: getfield url : Ljava/lang/String;
    //   4: astore #10
    //   6: new java/net/URL
    //   9: dup
    //   10: aload #10
    //   12: invokespecial <init> : (Ljava/lang/String;)V
    //   15: astore #7
    //   17: aload_0
    //   18: invokevirtual getParameters : ()Ljava/lang/String;
    //   21: ldc 'UTF-8'
    //   23: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   26: astore #6
    //   28: aload #6
    //   30: arraylength
    //   31: istore_1
    //   32: invokestatic currentTimeMillis : ()J
    //   35: lstore_2
    //   36: aload #7
    //   38: invokevirtual openConnection : ()Ljava/net/URLConnection;
    //   41: checkcast java/net/HttpURLConnection
    //   44: astore #11
    //   46: aload_0
    //   47: getfield httpMethod : Ljava/lang/String;
    //   50: ifnull -> 65
    //   53: aload #11
    //   55: aload_0
    //   56: getfield httpMethod : Ljava/lang/String;
    //   59: invokevirtual toUpperCase : ()Ljava/lang/String;
    //   62: invokevirtual setRequestMethod : (Ljava/lang/String;)V
    //   65: invokestatic sendAPMHeader : ()Z
    //   68: ifeq -> 81
    //   71: aload #11
    //   73: ldc 'x-apm-bt'
    //   75: invokestatic getAPMHeader : ()Ljava/lang/String;
    //   78: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   81: aload_0
    //   82: getfield enctype : Ljava/lang/String;
    //   85: ifnull -> 99
    //   88: aload #11
    //   90: ldc 'Content-Type'
    //   92: aload_0
    //   93: getfield enctype : Ljava/lang/String;
    //   96: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   99: aload #11
    //   101: ldc 'Charset'
    //   103: ldc 'utf-8'
    //   105: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   108: aload #11
    //   110: ldc 'Content-Length'
    //   112: iload_1
    //   113: invokestatic toString : (I)Ljava/lang/String;
    //   116: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload #11
    //   121: iconst_1
    //   122: invokevirtual setDoOutput : (Z)V
    //   125: aload #11
    //   127: iconst_0
    //   128: invokevirtual setInstanceFollowRedirects : (Z)V
    //   131: aload #11
    //   133: iconst_0
    //   134: invokevirtual setUseCaches : (Z)V
    //   137: new java/io/DataOutputStream
    //   140: dup
    //   141: aload #11
    //   143: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   146: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   149: astore #7
    //   151: aload #7
    //   153: aload #6
    //   155: invokevirtual write : ([B)V
    //   158: aload #7
    //   160: invokevirtual flush : ()V
    //   163: aconst_null
    //   164: astore #6
    //   166: aload #11
    //   168: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   171: astore_0
    //   172: aload_0
    //   173: astore #6
    //   175: aload #6
    //   177: astore_0
    //   178: aload #7
    //   180: ifnull -> 191
    //   183: aload #7
    //   185: invokevirtual close : ()V
    //   188: aload #6
    //   190: astore_0
    //   191: invokestatic currentTimeMillis : ()J
    //   194: lstore #4
    //   196: aload #11
    //   198: invokevirtual getContentType : ()Ljava/lang/String;
    //   201: astore #12
    //   203: aconst_null
    //   204: astore #8
    //   206: aconst_null
    //   207: astore #9
    //   209: aload #8
    //   211: astore #7
    //   213: aload #9
    //   215: astore #6
    //   217: aload #12
    //   219: ifnull -> 305
    //   222: aload #12
    //   224: ldc_w ';'
    //   227: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   230: astore #12
    //   232: aload #8
    //   234: astore #7
    //   236: aload #9
    //   238: astore #6
    //   240: aload #12
    //   242: ifnull -> 305
    //   245: aload #8
    //   247: astore #7
    //   249: aload #9
    //   251: astore #6
    //   253: aload #12
    //   255: iconst_0
    //   256: aaload
    //   257: ifnull -> 305
    //   260: aload #12
    //   262: iconst_0
    //   263: aaload
    //   264: invokevirtual trim : ()Ljava/lang/String;
    //   267: astore #9
    //   269: aload #8
    //   271: astore #7
    //   273: aload #9
    //   275: astore #6
    //   277: aload #12
    //   279: arraylength
    //   280: iconst_2
    //   281: if_icmpne -> 305
    //   284: aload #12
    //   286: iconst_1
    //   287: aaload
    //   288: ldc_w '='
    //   291: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   294: iconst_1
    //   295: aaload
    //   296: invokevirtual trim : ()Ljava/lang/String;
    //   299: astore #7
    //   301: aload #9
    //   303: astore #6
    //   305: aload_0
    //   306: ifnonnull -> 376
    //   309: aconst_null
    //   310: areturn
    //   311: astore_0
    //   312: new java/lang/StringBuilder
    //   315: dup
    //   316: invokespecial <init> : ()V
    //   319: ldc_w 'Form post exception e'
    //   322: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: aload_0
    //   326: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   329: invokevirtual toString : ()Ljava/lang/String;
    //   332: aload_0
    //   333: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   336: pop
    //   337: aload #6
    //   339: astore_0
    //   340: aload #7
    //   342: ifnull -> 191
    //   345: aload #7
    //   347: invokevirtual close : ()V
    //   350: aload #6
    //   352: astore_0
    //   353: goto -> 191
    //   356: astore_0
    //   357: aload #6
    //   359: astore_0
    //   360: goto -> 191
    //   363: astore_0
    //   364: aload #7
    //   366: ifnull -> 374
    //   369: aload #7
    //   371: invokevirtual close : ()V
    //   374: aload_0
    //   375: athrow
    //   376: aload #10
    //   378: aload #11
    //   380: invokevirtual getResponseCode : ()I
    //   383: lload #4
    //   385: lload_2
    //   386: lsub
    //   387: lconst_0
    //   388: lconst_0
    //   389: aconst_null
    //   390: aconst_null
    //   391: aconst_null
    //   392: aconst_null
    //   393: invokestatic getNetworkData : (Ljava/lang/String;IJJJLcom/ca/integration/CaMDOCallback;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/ca/mdo/Network;
    //   396: invokestatic httpPerformance : (Lcom/ca/mdo/Network;)V
    //   399: new com/ca/mdo/SDKInputStream
    //   402: dup
    //   403: aload_0
    //   404: aload #11
    //   406: aload #7
    //   408: aload #6
    //   410: invokespecial <init> : (Ljava/io/InputStream;Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    //   413: areturn
    //   414: astore_0
    //   415: aload #6
    //   417: astore_0
    //   418: goto -> 191
    //   421: astore #6
    //   423: goto -> 374
    // Exception table:
    //   from	to	target	type
    //   166	172	311	java/lang/Exception
    //   166	172	363	finally
    //   183	188	414	java/lang/Exception
    //   312	337	363	finally
    //   345	350	356	java/lang/Exception
    //   369	374	421	java/lang/Exception
  }
  
  public static InputStream executeHttpGetRequest(String paramString) throws Exception {
    long l2;
    String str;
    InputStream inputStream;
    HttpURLConnection httpURLConnection = (HttpURLConnection)(new URL(paramString)).openConnection();
    if (CAMobileDevOps.sendAPMHeader())
      httpURLConnection.setRequestProperty("x-apm-bt", AppDeviceData.getAPMHeader()); 
    long l1 = System.currentTimeMillis();
    try {
      inputStream = httpURLConnection.getInputStream();
      l2 = System.currentTimeMillis();
      String str4 = httpURLConnection.getContentType();
      String str2 = null;
      String str3 = null;
      String str1 = str2;
      str = str3;
      if (str4 != null) {
        String[] arrayOfString = str4.split(";");
        str1 = str2;
        str = str3;
        if (arrayOfString != null) {
          str1 = str2;
          str = str3;
          if (arrayOfString[0] != null) {
            str3 = arrayOfString[0].trim();
            str1 = str2;
            str = str3;
            if (arrayOfString.length == 2) {
              str1 = arrayOfString[1].split("=")[1].trim();
              str = str3;
            } 
          } 
        } 
      } 
    } catch (Exception exception) {
      CALog.e("Exception while executing url+ :" + paramString, exception);
      return null;
    } 
    if (inputStream == null)
      return null; 
    CAMobileDevOps.httpPerformance(CAMobileDevOps.getNetworkData(paramString, httpURLConnection.getResponseCode(), l2 - l1, 0L, 0L, null, null, null, null));
    return new SDKInputStream(inputStream, httpURLConnection, (String)exception, str);
  }
  
  public static String getAppVersion(Context paramContext) {
    PackageManager packageManager = paramContext.getPackageManager();
    try {
      String str2 = (packageManager.getPackageInfo(paramContext.getPackageName(), 0)).versionName;
      String str1 = str2;
      if (str2 == null) {
        CALog.e("versionName was null, check AndroidManifest file?");
        str1 = "unknown";
      } 
      return str1;
    } catch (Exception exception) {
      return "1.0";
    } 
  }
  
  @TargetApi(13)
  public static Screenshot getBitmapScreenshot(Activity paramActivity, View paramView, int paramInt, Bitmap paramBitmap) {
    Bitmap bitmap2 = null;
    int j = 0;
    int i = 0;
    if (paramBitmap != null) {
      bitmap1 = paramBitmap;
      j = paramBitmap.getWidth();
      i = paramBitmap.getHeight();
      return new Screenshot(bitmap1, j, i, paramInt);
    } 
    if (!CAMobileDevOps.isCrossWalk() && Build.VERSION.SDK_INT > 13) {
      Display display = bitmap1.getWindowManager().getDefaultDisplay();
      Point point = new Point();
      display.getSize(point);
      j = point.x;
      i = point.y;
      Bitmap bitmap = Bitmap.createBitmap(j, i, Bitmap.Config.ARGB_8888);
      paramView.draw(new Canvas(bitmap));
      return new Screenshot(bitmap, j, i, paramInt);
    } 
    CALog.e("Utils - getBitmapScreenshot => Build.Version.SDK_INT is less than HONEYCOMB_MR2");
    Bitmap bitmap1 = bitmap2;
    return new Screenshot(bitmap1, j, i, paramInt);
  }
  
  private static BasicCookieStore getCookieStore(String paramString1, String paramString2) {
    BasicCookieStore basicCookieStore = new BasicCookieStore();
    if (paramString1 != null) {
      String[] arrayOfString = paramString1.split(";");
      for (int i = 0; i < arrayOfString.length; i++) {
        BasicClientCookie basicClientCookie;
        String[] arrayOfString1 = arrayOfString[i].split("=");
        if (arrayOfString1.length == 2) {
          basicClientCookie = new BasicClientCookie(arrayOfString1[0], arrayOfString1[1]);
        } else {
          basicClientCookie = new BasicClientCookie((String)basicClientCookie[0], null);
        } 
        basicClientCookie.setDomain(paramString2);
        basicCookieStore.addCookie((Cookie)basicClientCookie);
      } 
    } 
    return basicCookieStore;
  }
  
  public static int getCountOfJsonArray(JSONObject paramJSONObject, String paramString) {
    try {
      return paramJSONObject.getJSONArray(paramString).length();
    } catch (Exception exception) {
      return 0;
    } 
  }
  
  public static DefaultHttpClient getHttpClient() {
    if (!isHttpClienSetup) {
      BasicHttpParams basicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, 5000);
      HttpConnectionParams.setTcpNoDelay((HttpParams)basicHttpParams, true);
      httpClient = new DefaultHttpClient((HttpParams)basicHttpParams);
      isHttpClienSetup = true;
    } 
    return httpClient;
  }
  
  @TargetApi(17)
  public static ScreenDeviceSize getScreenResolution(Context paramContext) {
    Display display = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    Point point = new Point();
    display.getRealSize(point);
    return new ScreenDeviceSize(String.valueOf(point.x), String.valueOf(point.y));
  }
  
  public static SharedPreferences getSharedPreferences() {
    if (mPref == null)
      openSharedPreferences(); 
    return mPref;
  }
  
  public static SharedPreferences.Editor getSharedPreferencesEditor() {
    if (mPref == null)
      openSharedPreferences(); 
    return mEditor;
  }
  
  public static boolean isConnectedToWIFI(Context paramContext) {
    NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (networkInfo != null && networkInfo.getType() == 1);
  }
  
  public static boolean isJailBroken() {
    boolean bool2;
    int i = 0;
    boolean bool1 = false;
    String[] arrayOfString = new String[8];
    arrayOfString[0] = "/sbin/";
    arrayOfString[1] = "/system/bin/";
    arrayOfString[2] = "/system/xbin/";
    arrayOfString[3] = "/data/local/xbin/";
    arrayOfString[4] = "/data/local/bin/";
    arrayOfString[5] = "/system/sd/xbin/";
    arrayOfString[6] = "/system/bin/failsafe/";
    arrayOfString[7] = "/data/local/";
    int j = arrayOfString.length;
    while (true) {
      boolean bool = bool1;
      if (i < j) {
        String str = arrayOfString[i];
        if ((new File(str + "su")).exists()) {
          bool = true;
        } else {
          i++;
          continue;
        } 
      } 
      bool2 = bool;
      if (!bool) {
        bool1 = bool;
        try {
          List<String> list = Arrays.asList(System.getenv("PATH").split(":"));
          bool2 = bool;
          if (list != null) {
            bool1 = bool;
            Iterator<String> iterator = list.iterator();
            while (true) {
              bool1 = bool;
              bool2 = bool;
              if (iterator.hasNext()) {
                bool1 = bool;
                String str = iterator.next();
                bool1 = bool;
                if ((new File(str + "/" + "su")).exists()) {
                  bool1 = bool;
                  CALog.d("su" + " was found here: " + str);
                  bool = true;
                } 
                continue;
              } 
              break;
            } 
          } 
          break;
        } catch (Throwable throwable) {
          CALog.e("Cannot find su", throwable);
          bool2 = bool1;
        } 
        return bool2;
      } 
      break;
    } 
    return bool2;
  }
  
  @TargetApi(3)
  public static boolean isLauncherActivity(Activity paramActivity) {
    Context context = paramActivity.getApplicationContext();
    String str = context.getPackageName();
    str = context.getPackageManager().getLaunchIntentForPackage(str).getComponent().getClassName();
    context.getClass().getSimpleName();
    List list = ((ActivityManager)context.getSystemService("activity")).getRunningTasks(1);
    ComponentName componentName = ((ActivityManager.RunningTaskInfo)list.get(0)).topActivity;
    return ((ActivityManager.RunningTaskInfo)list.get(0)).topActivity.getClassName().equalsIgnoreCase(str);
  }
  
  public static boolean isTablet(Context paramContext) {
    boolean bool = false;
    if (paramContext != null) {
      boolean bool1;
      boolean bool2;
      if (((paramContext.getResources().getConfiguration()).screenLayout & 0xF) == 4) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (((paramContext.getResources().getConfiguration()).screenLayout & 0xF) == 3) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      if (bool1 || bool2)
        return true; 
    } else {
      return bool;
    } 
    return false;
  }
  
  private static void openSharedPreferences() {
    Application application2 = SDK.getApp();
    Application application1 = application2;
    if (application2 == null)
      application1 = app; 
    if (application1 != null) {
      mPref = application1.getSharedPreferences(Constants.PREF_NAME, 0);
      mEditor = mPref.edit();
    } 
  }
  
  public static JSONObject readJsonFromInputStream(InputStream paramInputStream) throws IOException, JSONException {
    JSONObject jSONObject;
    StringBuilder stringBuilder = null;
    if (paramInputStream != null) {
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
      stringBuilder = new StringBuilder();
      while (true) {
        String str = bufferedReader.readLine();
        if (str != null) {
          stringBuilder.append(str);
          continue;
        } 
        jSONObject = new JSONObject(stringBuilder.toString());
        break;
      } 
    } 
    return jSONObject;
  }
  
  public static JSONObject readJsonFromResponse(HttpResponse paramHttpResponse) throws IOException, JSONException {
    JSONObject jSONObject2 = null;
    JSONObject jSONObject1 = jSONObject2;
    if (paramHttpResponse != null) {
      jSONObject1 = jSONObject2;
      if (paramHttpResponse.getEntity() != null)
        jSONObject1 = readJsonFromInputStream(paramHttpResponse.getEntity().getContent()); 
    } 
    return jSONObject1;
  }
  
  public static long startProfile() {
    return System.currentTimeMillis();
  }
  
  public static Screenshot takeScreenshot(Activity paramActivity, int paramInt, Bitmap paramBitmap) {
    if (paramActivity == null) {
      CALog.d("Utils - takeScreenshot => activity is null");
      return null;
    } 
    return getBitmapScreenshot(paramActivity, paramActivity.findViewById(16908290).getRootView(), paramInt, paramBitmap);
  }
  
  public static String trim(String paramString, int paramInt) {
    return (paramString != null) ? paramString.substring(0, Math.min(paramString.length() - 1, paramInt)) : null;
  }
  
  public static String truncateNonHttpUrl(String paramString) {
    String str = paramString;
    if (paramString != null) {
      str = paramString;
      if (!paramString.startsWith("http://")) {
        str = paramString;
        if (!paramString.startsWith("https://")) {
          str = paramString;
          if (paramString.length() > 200)
            str = paramString.substring(0, 200); 
        } 
      } 
    } 
    return str;
  }
  
  static class ScreenDeviceSize {
    public String screenSizeHeight;
    
    public String screenSizeWidth;
    
    public ScreenDeviceSize(String param1String1, String param1String2) {
      this.screenSizeWidth = param1String1;
      this.screenSizeHeight = param1String2;
    }
  }
  
  static class Screenshot {
    public int compressQuality = 15;
    
    public String encodedValue = "";
    
    public int screenShotHeight;
    
    public int screenShotWidth;
    
    public Screenshot(Bitmap param1Bitmap, int param1Int1, int param1Int2, int param1Int3) {
      this.compressQuality = param1Int3;
      if (param1Bitmap != null)
        this.encodedValue = Util.compressAndEncode(param1Bitmap, this.compressQuality); 
      this.screenShotWidth = param1Int1;
      this.screenShotHeight = param1Int2;
    }
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\Util.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */