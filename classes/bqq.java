import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class bqq {
  static final String a = "FacebookSDK";
  
  public static final int b = 8192;
  
  private static final String c = "MD5";
  
  private static final String d = "SHA-1";
  
  private static final String e = "https";
  
  private static final String f = "a2";
  
  private static final String g = "UTF-8";
  
  private static final int h = 1800000;
  
  private static final String i = "NoCarrier";
  
  private static final int j = 10;
  
  private static int k = 0;
  
  private static long l = -1L;
  
  private static long m = -1L;
  
  private static long n = -1L;
  
  private static String o = "";
  
  private static String p = "";
  
  private static String q = "NoCarrier";
  
  private static int a() {
    if (k > 0)
      return k; 
    try {
      File[] arrayOfFile = (new File("/sys/devices/system/cpu/")).listFiles(new bqs());
      if (arrayOfFile != null)
        k = arrayOfFile.length; 
    } catch (Exception exception) {}
    if (k <= 0)
      k = Math.max(Runtime.getRuntime().availableProcessors(), 1); 
    return k;
  }
  
  public static int a(InputStream paramInputStream, OutputStream paramOutputStream) {
    BufferedInputStream bufferedInputStream;
    int i = 0;
    try {
      bufferedInputStream = new BufferedInputStream(paramInputStream);
    } finally {
      paramOutputStream = null;
    } 
    if (bufferedInputStream != null)
      bufferedInputStream.close(); 
    if (paramInputStream != null)
      paramInputStream.close(); 
    throw paramOutputStream;
  }
  
  private static long a(double paramDouble) {
    return Math.round(paramDouble / 1.073741824E9D);
  }
  
  public static Uri a(String paramString1, String paramString2, Bundle paramBundle) {
    Uri.Builder builder = new Uri.Builder();
    builder.scheme("https");
    builder.authority(paramString1);
    builder.path(paramString2);
    if (paramBundle != null)
      for (String paramString2 : paramBundle.keySet()) {
        Object object = paramBundle.get(paramString2);
        if (object instanceof String)
          builder.appendQueryParameter(paramString2, (String)object); 
      }  
    return builder.build();
  }
  
  public static Object a(Object paramObject, Method paramMethod, Object... paramVarArgs) {
    try {
      return paramMethod.invoke(paramObject, paramVarArgs);
    } catch (IllegalAccessException illegalAccessException) {
      return null;
    } catch (InvocationTargetException invocationTargetException) {
      return null;
    } 
  }
  
  public static Object a(JSONObject paramJSONObject, String paramString1, String paramString2) {
    Object object = paramJSONObject.opt(paramString1);
    if (object != null && object instanceof String)
      object = (new JSONTokener((String)object)).nextValue(); 
    if (object != null && !(object instanceof JSONObject) && !(object instanceof JSONArray)) {
      if (paramString2 != null) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.putOpt(paramString2, object);
        return jSONObject;
      } 
      throw new bhp("Got an unexpected non-JSON object.");
    } 
    return object;
  }
  
  public static String a(int paramInt) {
    return (new BigInteger(paramInt * 5, new Random())).toString(32);
  }
  
  public static String a(Context paramContext) {
    bqx.a(paramContext, "context");
    bhv.a(paramContext);
    return bhv.l();
  }
  
  public static String a(Uri paramUri) {
    return (paramUri == null) ? null : paramUri.toString();
  }
  
  public static String a(InputStream paramInputStream) {
    Closeable closeable;
    Exception exception;
    StringBuilder stringBuilder = null;
    try {
      Exception exception1;
      paramInputStream = new BufferedInputStream(paramInputStream);
    } finally {
      paramInputStream = null;
    } 
    a((Closeable)exception);
    a(closeable);
    throw paramInputStream;
  }
  
  public static String a(String paramString1, String paramString2) {
    return a(paramString1) ? paramString2 : paramString1;
  }
  
  private static String a(String paramString, byte[] paramArrayOfbyte) {
    try {
      MessageDigest messageDigest = MessageDigest.getInstance(paramString);
      return a(messageDigest, paramArrayOfbyte);
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      return null;
    } 
  }
  
  private static String a(MessageDigest paramMessageDigest, byte[] paramArrayOfbyte) {
    paramMessageDigest.update(paramArrayOfbyte);
    byte[] arrayOfByte = paramMessageDigest.digest();
    StringBuilder stringBuilder = new StringBuilder();
    int j = arrayOfByte.length;
    for (int i = 0; i < j; i++) {
      byte b = arrayOfByte[i];
      stringBuilder.append(Integer.toHexString(b >> 4 & 0xF));
      stringBuilder.append(Integer.toHexString(b >> 0 & 0xF));
    } 
    return stringBuilder.toString();
  }
  
  public static String a(JSONObject paramJSONObject, String paramString) {
    return (paramJSONObject != null) ? paramJSONObject.optString(paramString, "") : "";
  }
  
  public static String a(byte[] paramArrayOfbyte) {
    return a("SHA-1", paramArrayOfbyte);
  }
  
  public static Method a(Class<?> paramClass, String paramString, Class<?>... paramVarArgs) {
    try {
      return paramClass.getMethod(paramString, paramVarArgs);
    } catch (NoSuchMethodException noSuchMethodException) {
      return null;
    } 
  }
  
  public static Method a(String paramString1, String paramString2, Class<?>... paramVarArgs) {
    try {
      return a(Class.forName(paramString1), paramString2, paramVarArgs);
    } catch (ClassNotFoundException classNotFoundException) {
      return null;
    } 
  }
  
  public static <T> Collection<T> a(T... paramVarArgs) {
    return Collections.unmodifiableCollection(Arrays.asList(paramVarArgs));
  }
  
  public static Date a(Bundle paramBundle, String paramString, Date paramDate) {
    long l;
    if (paramBundle == null)
      return null; 
    Object object = paramBundle.get(paramString);
    if (object instanceof Long) {
      l = ((Long)object).longValue();
    } else {
      if (object instanceof String) {
        try {
          l = Long.parseLong((String)object);
          if (l == 0L)
            return new Date(Long.MAX_VALUE); 
        } catch (NumberFormatException numberFormatException) {
          return null;
        } 
      } else {
        return null;
      } 
      return new Date(l * 1000L + paramDate.getTime());
    } 
    if (l == 0L)
      return new Date(Long.MAX_VALUE); 
  }
  
  public static <T, K> List<K> a(List<T> paramList, bqu<T, K> parambqu) {
    if (paramList != null) {
      ArrayList<K> arrayList = new ArrayList();
      Iterator<T> iterator = paramList.iterator();
      while (iterator.hasNext()) {
        K k = parambqu.a(iterator.next());
        if (k != null)
          arrayList.add(k); 
      } 
      if (arrayList.size() != 0)
        return arrayList; 
    } 
    return null;
  }
  
  public static <T> List<T> a(List<T> paramList, bqw<T> parambqw) {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new java/util/ArrayList
    //   9: dup
    //   10: invokespecial <init> : ()V
    //   13: astore_2
    //   14: aload_0
    //   15: invokeinterface iterator : ()Ljava/util/Iterator;
    //   20: astore_0
    //   21: aload_0
    //   22: invokeinterface hasNext : ()Z
    //   27: ifeq -> 58
    //   30: aload_0
    //   31: invokeinterface next : ()Ljava/lang/Object;
    //   36: astore_3
    //   37: aload_1
    //   38: aload_3
    //   39: invokeinterface a : (Ljava/lang/Object;)Z
    //   44: ifeq -> 21
    //   47: aload_2
    //   48: aload_3
    //   49: invokeinterface add : (Ljava/lang/Object;)Z
    //   54: pop
    //   55: goto -> 21
    //   58: aload_2
    //   59: invokeinterface size : ()I
    //   64: ifeq -> 4
    //   67: aload_2
    //   68: areturn
  }
  
  public static List<String> a(JSONArray paramJSONArray) {
    ArrayList<String> arrayList = new ArrayList();
    for (int i = 0; i < paramJSONArray.length(); i++)
      arrayList.add(paramJSONArray.getString(i)); 
    return arrayList;
  }
  
  public static Map<String, String> a(Parcel paramParcel) {
    int j = paramParcel.readInt();
    if (j < 0)
      return null; 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    int i = 0;
    while (true) {
      HashMap<Object, Object> hashMap1 = hashMap;
      if (i < j) {
        hashMap.put(paramParcel.readString(), paramParcel.readString());
        i++;
        continue;
      } 
      return (Map)hashMap1;
    } 
  }
  
  static Map<String, Object> a(JSONObject paramJSONObject) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    JSONArray jSONArray = paramJSONObject.names();
    int i = 0;
    while (true) {
      if (i < jSONArray.length()) {
        try {
          String str = jSONArray.getString(i);
          Object<String, Object> object2 = (Object<String, Object>)paramJSONObject.get(str);
          Object<String, Object> object1 = object2;
          if (object2 instanceof JSONObject)
            object1 = (Object<String, Object>)a((JSONObject)object2); 
          hashMap.put(str, object1);
        } catch (JSONException jSONException) {}
        i++;
        continue;
      } 
      return (Map)hashMap;
    } 
  }
  
  private static void a(Context paramContext, String paramString) {
    CookieSyncManager.createInstance(paramContext).sync();
    CookieManager cookieManager = CookieManager.getInstance();
    String str = cookieManager.getCookie(paramString);
    if (str == null)
      return; 
    String[] arrayOfString = str.split(";");
    int j = arrayOfString.length;
    for (int i = 0; i < j; i++) {
      String[] arrayOfString1 = arrayOfString[i].split("=");
      if (arrayOfString1.length > 0)
        cookieManager.setCookie(paramString, arrayOfString1[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"); 
    } 
    cookieManager.removeExpiredCookie();
  }
  
  public static void a(Bundle paramBundle, String paramString, Uri paramUri) {
    if (paramUri != null)
      a(paramBundle, paramString, paramUri.toString()); 
  }
  
  public static void a(Bundle paramBundle, String paramString1, String paramString2) {
    if (!a(paramString2))
      paramBundle.putString(paramString1, paramString2); 
  }
  
  public static void a(Bundle paramBundle, String paramString, List<String> paramList) {
    if (paramList != null) {
      StringBuilder stringBuilder = new StringBuilder();
      Iterator<String> iterator = paramList.iterator();
      while (iterator.hasNext()) {
        stringBuilder.append(iterator.next());
        stringBuilder.append(",");
      } 
      String str = "";
      if (stringBuilder.length() > 0)
        str = stringBuilder.substring(0, stringBuilder.length() - 1); 
      paramBundle.putString(paramString, str);
    } 
  }
  
  public static void a(Parcel paramParcel, Map<String, String> paramMap) {
    if (paramMap == null) {
      paramParcel.writeInt(-1);
      return;
    } 
    paramParcel.writeInt(paramMap.size());
    Iterator<Map.Entry> iterator = paramMap.entrySet().iterator();
    while (true) {
      if (iterator.hasNext()) {
        Map.Entry entry = iterator.next();
        paramParcel.writeString((String)entry.getKey());
        paramParcel.writeString((String)entry.getValue());
        continue;
      } 
      return;
    } 
  }
  
  public static void a(Closeable paramCloseable) {
    if (paramCloseable != null)
      try {
        paramCloseable.close();
        return;
      } catch (IOException iOException) {
        return;
      }  
  }
  
  public static void a(File paramFile) {
    if (!paramFile.exists())
      return; 
    if (paramFile.isDirectory()) {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null) {
        int j = arrayOfFile.length;
        for (int i = 0; i < j; i++)
          a(arrayOfFile[i]); 
      } 
    } 
    paramFile.delete();
  }
  
  public static void a(String paramString, bqt parambqt) {
    JSONObject jSONObject = bqm.a(paramString);
    if (jSONObject != null) {
      parambqt.a(jSONObject);
      return;
    } 
    bqr bqr = new bqr(parambqt, paramString);
    GraphRequest graphRequest = f(paramString);
    graphRequest.a(bqr);
    graphRequest.n();
  }
  
  public static void a(String paramString, Exception paramException) {
    if (bhv.d() && paramString != null && paramException != null)
      Log.d(paramString, paramException.getClass().getSimpleName() + ": " + paramException.getMessage()); 
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable) {
    if (bhv.d() && !a(paramString1))
      Log.d(paramString1, paramString2, paramThrowable); 
  }
  
  public static void a(URLConnection paramURLConnection) {
    if (paramURLConnection != null && paramURLConnection instanceof HttpURLConnection)
      ((HttpURLConnection)paramURLConnection).disconnect(); 
  }
  
  public static void a(JSONObject paramJSONObject, Context paramContext) {
    Locale locale;
    JSONArray jSONArray = new JSONArray();
    jSONArray.put("a2");
    e(paramContext);
    String str2 = paramContext.getPackageName();
    int j = -1;
    String str1 = "";
    int i = j;
    try {
      PackageInfo packageInfo = paramContext.getPackageManager().getPackageInfo(str2, 0);
      i = j;
      j = packageInfo.versionCode;
      i = j;
      String str = packageInfo.versionName;
      i = j;
      str1 = str;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {}
    jSONArray.put(str2);
    jSONArray.put(i);
    jSONArray.put(str1);
    jSONArray.put(Build.VERSION.RELEASE);
    jSONArray.put(Build.MODEL);
    try {
      locale = (paramContext.getResources().getConfiguration()).locale;
    } catch (Exception exception) {
      locale = Locale.getDefault();
    } 
    jSONArray.put(locale.getLanguage() + "_" + locale.getCountry());
    jSONArray.put(o);
    jSONArray.put(q);
    try {
      WindowManager windowManager = (WindowManager)paramContext.getSystemService("window");
      if (windowManager != null) {
        Display display = windowManager.getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getMetrics(displayMetrics);
        i = displayMetrics.widthPixels;
        try {
          j = displayMetrics.heightPixels;
          try {
            float f = displayMetrics.density;
            double d = f;
            int k = j;
            j = i;
            i = k;
            jSONArray.put(j);
            jSONArray.put(i);
            jSONArray.put(String.format("%.2f", new Object[] { Double.valueOf(d) }));
            jSONArray.put(a());
            jSONArray.put(m);
            jSONArray.put(n);
            jSONArray.put(p);
            paramJSONObject.put("extinfo", jSONArray.toString());
          } catch (Exception exception) {
            int k = i;
            i = j;
            j = k;
          } 
        } catch (Exception exception) {
          boolean bool = false;
          j = i;
          i = bool;
        } 
      } else {
        double d = 0.0D;
        i = 0;
        j = 0;
        jSONArray.put(j);
        jSONArray.put(i);
        jSONArray.put(String.format("%.2f", new Object[] { Double.valueOf(d) }));
        jSONArray.put(a());
        jSONArray.put(m);
        jSONArray.put(n);
        jSONArray.put(p);
        paramJSONObject.put("extinfo", jSONArray.toString());
      } 
    } catch (Exception exception) {
      i = 0;
      j = 0;
    } 
  }
  
  public static void a(JSONObject paramJSONObject, bmv parambmv, String paramString, boolean paramBoolean) {
    boolean bool = true;
    if (parambmv != null && parambmv.a() != null)
      paramJSONObject.put("attribution", parambmv.a()); 
    if (parambmv != null && parambmv.b() != null) {
      boolean bool1;
      paramJSONObject.put("advertiser_id", parambmv.b());
      if (!parambmv.d()) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      paramJSONObject.put("advertiser_tracking_enabled", bool1);
    } 
    if (parambmv != null && parambmv.c() != null)
      paramJSONObject.put("installer_package", parambmv.c()); 
    paramJSONObject.put("anon_id", paramString);
    if (!paramBoolean) {
      paramBoolean = bool;
    } else {
      paramBoolean = false;
    } 
    paramJSONObject.put("application_tracking_enabled", paramBoolean);
  }
  
  public static boolean a(Bundle paramBundle, String paramString, Object paramObject) {
    if (paramObject == null) {
      paramBundle.remove(paramString);
      return true;
    } 
    if (paramObject instanceof Boolean) {
      paramBundle.putBoolean(paramString, ((Boolean)paramObject).booleanValue());
      return true;
    } 
    if (paramObject instanceof boolean[]) {
      paramBundle.putBooleanArray(paramString, (boolean[])paramObject);
      return true;
    } 
    if (paramObject instanceof Double) {
      paramBundle.putDouble(paramString, ((Double)paramObject).doubleValue());
      return true;
    } 
    if (paramObject instanceof double[]) {
      paramBundle.putDoubleArray(paramString, (double[])paramObject);
      return true;
    } 
    if (paramObject instanceof Integer) {
      paramBundle.putInt(paramString, ((Integer)paramObject).intValue());
      return true;
    } 
    if (paramObject instanceof int[]) {
      paramBundle.putIntArray(paramString, (int[])paramObject);
      return true;
    } 
    if (paramObject instanceof Long) {
      paramBundle.putLong(paramString, ((Long)paramObject).longValue());
      return true;
    } 
    if (paramObject instanceof long[]) {
      paramBundle.putLongArray(paramString, (long[])paramObject);
      return true;
    } 
    if (paramObject instanceof String) {
      paramBundle.putString(paramString, (String)paramObject);
      return true;
    } 
    if (paramObject instanceof JSONArray) {
      paramBundle.putString(paramString, paramObject.toString());
      return true;
    } 
    if (paramObject instanceof JSONObject) {
      paramBundle.putString(paramString, paramObject.toString());
      return true;
    } 
    return false;
  }
  
  public static boolean a(AccessToken paramAccessToken) {
    return (paramAccessToken != null) ? paramAccessToken.equals(AccessToken.a()) : false;
  }
  
  public static <T> boolean a(T paramT1, T paramT2) {
    return (paramT1 == null) ? ((paramT2 == null)) : paramT1.equals(paramT2);
  }
  
  public static boolean a(String paramString) {
    return (paramString == null || paramString.length() == 0);
  }
  
  public static <T> boolean a(Collection<T> paramCollection) {
    return (paramCollection == null || paramCollection.size() == 0);
  }
  
  public static <T> boolean a(Collection<T> paramCollection1, Collection<T> paramCollection2) {
    boolean bool = false;
    if (paramCollection2 == null || paramCollection2.size() == 0) {
      if (paramCollection1 == null || paramCollection1.size() == 0)
        bool = true; 
      return bool;
    } 
    paramCollection2 = new HashSet<T>(paramCollection2);
    Iterator<T> iterator = paramCollection1.iterator();
    while (iterator.hasNext()) {
      if (!paramCollection2.contains(iterator.next()))
        return false; 
    } 
    return true;
  }
  
  public static boolean a(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    if (paramJSONObject1 != null && paramJSONObject2 != null && paramJSONObject1.has("id") && paramJSONObject2.has("id")) {
      if (paramJSONObject1.equals(paramJSONObject2))
        return true; 
      String str1 = paramJSONObject1.optString("id");
      String str2 = paramJSONObject2.optString("id");
      if (str1 != null && str2 != null)
        return str1.equals(str2); 
    } 
    return false;
  }
  
  public static int[] a(int[] paramArrayOfint1, int[] paramArrayOfint2) {
    int j = 0;
    if (paramArrayOfint1 == null)
      return paramArrayOfint2; 
    if (paramArrayOfint2 == null)
      return paramArrayOfint1; 
    int[] arrayOfInt = new int[paramArrayOfint1.length + paramArrayOfint2.length];
    byte b = 0;
    int i = 0;
    while (true) {
      int k = i;
      if (b < paramArrayOfint1.length) {
        k = i;
        if (j < paramArrayOfint2.length) {
          int n;
          byte b1;
          int i1;
          int m = paramArrayOfint1[b];
          int i2 = paramArrayOfint2[j];
          if (b < paramArrayOfint1.length - 1) {
            k = paramArrayOfint1[b + 1];
          } else {
            k = Integer.MAX_VALUE;
          } 
          if (j < paramArrayOfint2.length - 1) {
            i1 = paramArrayOfint2[j + 1];
          } else {
            i1 = Integer.MAX_VALUE;
          } 
          if (m < i2) {
            if (k > i2) {
              if (k > i1) {
                n = j + 2;
                m = i2;
                k = i1;
                b1 = b;
              } else {
                b1 = b + 2;
                n = j;
                m = i2;
              } 
            } else {
              b1 = b + 2;
              k = Integer.MAX_VALUE;
              m = Integer.MIN_VALUE;
              n = j;
            } 
          } else if (i1 > m) {
            if (i1 > k) {
              b1 = b + 2;
              n = j;
            } else {
              n = j + 2;
              b1 = b;
              k = i1;
            } 
          } else {
            n = j + 2;
            k = Integer.MAX_VALUE;
            m = Integer.MIN_VALUE;
            b1 = b;
          } 
          j = n;
          b = b1;
          if (m != Integer.MIN_VALUE) {
            i1 = i + 1;
            arrayOfInt[i] = m;
            if (k != Integer.MAX_VALUE) {
              i = i1 + 1;
              arrayOfInt[i1] = k;
              j = n;
              b = b1;
              continue;
            } 
            k = i1;
            return Arrays.copyOf(arrayOfInt, k);
          } 
          continue;
        } 
      } 
      return Arrays.copyOf(arrayOfInt, k);
    } 
  }
  
  public static bqv b(JSONObject paramJSONObject) {
    JSONArray jSONArray = paramJSONObject.getJSONObject("permissions").getJSONArray("data");
    ArrayList<String> arrayList1 = new ArrayList(jSONArray.length());
    ArrayList<String> arrayList2 = new ArrayList(jSONArray.length());
    for (int i = 0; i < jSONArray.length(); i++) {
      JSONObject jSONObject = jSONArray.optJSONObject(i);
      String str = jSONObject.optString("permission");
      if (str != null && !str.equals("installed")) {
        String str1 = jSONObject.optString("status");
        if (str1 != null)
          if (str1.equals("granted")) {
            arrayList1.add(str);
          } else if (str1.equals("declined")) {
            arrayList2.add(str);
          }  
      } 
    } 
    return new bqv(arrayList1, arrayList2);
  }
  
  public static String b(String paramString) {
    return d("MD5", paramString);
  }
  
  public static <T> ArrayList<T> b(T... paramVarArgs) {
    ArrayList<T> arrayList = new ArrayList(paramVarArgs.length);
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++)
      arrayList.add(paramVarArgs[i]); 
    return arrayList;
  }
  
  public static Set<String> b(JSONArray paramJSONArray) {
    HashSet<String> hashSet = new HashSet();
    for (int i = 0; i < paramJSONArray.length(); i++)
      hashSet.add(paramJSONArray.getString(i)); 
    return hashSet;
  }
  
  public static JSONObject b(JSONObject paramJSONObject, String paramString) {
    return (paramJSONObject != null) ? paramJSONObject.optJSONObject(paramString) : null;
  }
  
  private static void b() {
    try {
      TimeZone timeZone = TimeZone.getDefault();
      o = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
      p = timeZone.getID();
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public static void b(Context paramContext) {
    a(paramContext, "facebook.com");
    a(paramContext, ".facebook.com");
    a(paramContext, "https://facebook.com");
    a(paramContext, "https://.facebook.com");
  }
  
  public static boolean b(Uri paramUri) {
    return (paramUri != null && ("http".equalsIgnoreCase(paramUri.getScheme()) || "https".equalsIgnoreCase(paramUri.getScheme()) || "fbstaging".equalsIgnoreCase(paramUri.getScheme())));
  }
  
  public static boolean b(String paramString1, String paramString2) {
    boolean bool1 = TextUtils.isEmpty(paramString1);
    boolean bool2 = TextUtils.isEmpty(paramString2);
    return (bool1 && bool2) ? true : ((!bool1 && !bool2) ? paramString1.equals(paramString2) : false);
  }
  
  public static String c(String paramString) {
    return d("SHA-1", paramString);
  }
  
  public static <T> HashSet<T> c(T... paramVarArgs) {
    HashSet<T> hashSet = new HashSet(paramVarArgs.length);
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++)
      hashSet.add(paramVarArgs[i]); 
    return hashSet;
  }
  
  public static JSONArray c(JSONObject paramJSONObject, String paramString) {
    return (paramJSONObject != null) ? paramJSONObject.optJSONArray(paramString) : null;
  }
  
  public static void c(Context paramContext) {
    bpc.a(paramContext);
  }
  
  public static void c(String paramString1, String paramString2) {
    if (bhv.d() && paramString1 != null && paramString2 != null)
      Log.d(paramString1, paramString2); 
  }
  
  private static boolean c() {
    return "mounted".equals(Environment.getExternalStorageState());
  }
  
  public static boolean c(Uri paramUri) {
    return (paramUri != null && "content".equalsIgnoreCase(paramUri.getScheme()));
  }
  
  public static Bundle d(String paramString) {
    Bundle bundle = new Bundle();
    if (!a(paramString)) {
      String[] arrayOfString = paramString.split("&");
      int j = arrayOfString.length;
      for (int i = 0;; i++) {
        if (i < j) {
          String[] arrayOfString1 = arrayOfString[i].split("=");
          try {
            if (arrayOfString1.length == 2) {
              bundle.putString(URLDecoder.decode(arrayOfString1[0], "UTF-8"), URLDecoder.decode(arrayOfString1[1], "UTF-8"));
            } else if (arrayOfString1.length == 1) {
              bundle.putString(URLDecoder.decode(arrayOfString1[0], "UTF-8"), "");
            } 
          } catch (UnsupportedEncodingException unsupportedEncodingException) {
            a("FacebookSDK", unsupportedEncodingException);
          } 
        } else {
          return bundle;
        } 
      } 
    } 
    return bundle;
  }
  
  public static String d(Context paramContext) {
    return (paramContext == null) ? "null" : ((paramContext == paramContext.getApplicationContext()) ? "unknown" : paramContext.getClass().getSimpleName());
  }
  
  private static String d(String paramString1, String paramString2) {
    return a(paramString1, paramString2.getBytes());
  }
  
  public static <T> List<T> d(T... paramVarArgs) {
    ArrayList<T> arrayList = new ArrayList();
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      T t = paramVarArgs[i];
      if (t != null)
        arrayList.add(t); 
    } 
    return arrayList;
  }
  
  private static void d() {
    try {
      if (c()) {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = statFs.getAvailableBlocks();
        n = statFs.getBlockSize() * l;
      } 
      n = a(n);
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  public static boolean d(Uri paramUri) {
    return (paramUri != null && "file".equalsIgnoreCase(paramUri.getScheme()));
  }
  
  public static long e(Uri paramUri) {
    Exception exception;
    try {
      Cursor cursor = bhv.h().getContentResolver().query(paramUri, null, null, null, null);
    } finally {
      exception = null;
    } 
    if (paramUri != null)
      paramUri.close(); 
    throw exception;
  }
  
  public static JSONObject e(String paramString) {
    JSONObject jSONObject = bqm.a(paramString);
    if (jSONObject != null)
      return jSONObject; 
    bix bix = f(paramString).m();
    return (bix.a() != null) ? null : bix.b();
  }
  
  private static void e() {
    try {
      if (c()) {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = statFs.getBlockCount();
        m = statFs.getBlockSize() * l;
      } 
      m = a(m);
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  private static void e(Context paramContext) {
    if (l == -1L || System.currentTimeMillis() - l >= 1800000L) {
      l = System.currentTimeMillis();
      b();
      f(paramContext);
      e();
      d();
    } 
  }
  
  private static GraphRequest f(String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
    bundle.putString("access_token", paramString);
    return new GraphRequest(null, "me", bundle, biz.GET, null);
  }
  
  private static void f(Context paramContext) {
    if (q.equals("NoCarrier"))
      try {
        q = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
        return;
      } catch (Exception exception) {
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */