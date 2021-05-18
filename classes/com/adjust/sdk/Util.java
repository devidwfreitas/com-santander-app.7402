package com.adjust.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import awg;
import awh;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Pattern;

public class Util {
  private static final String DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z";
  
  public static final DecimalFormat SecondsDisplayFormat = new DecimalFormat("0.0");
  
  public static final SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z", Locale.US);
  
  private static final String fieldReadErrorMessage = "Unable to read '%s' field in migration device with message (%s)";
  
  public static boolean checkPermission(Context paramContext, String paramString) {
    return (paramContext.checkCallingOrSelfPermission(paramString) == 0);
  }
  
  public static String convertToHex(byte[] paramArrayOfbyte) {
    BigInteger bigInteger = new BigInteger(1, paramArrayOfbyte);
    String str = "%0" + (paramArrayOfbyte.length << 1) + "x";
    return String.format(Locale.US, str, new Object[] { bigInteger });
  }
  
  protected static String createUuid() {
    return UUID.randomUUID().toString();
  }
  
  public static boolean equalBoolean(Boolean paramBoolean1, Boolean paramBoolean2) {
    return equalObject(paramBoolean1, paramBoolean2);
  }
  
  public static boolean equalEnum(Enum paramEnum1, Enum paramEnum2) {
    return equalObject(paramEnum1, paramEnum2);
  }
  
  public static boolean equalInt(Integer paramInteger1, Integer paramInteger2) {
    return equalObject(paramInteger1, paramInteger2);
  }
  
  public static boolean equalLong(Long paramLong1, Long paramLong2) {
    return equalObject(paramLong1, paramLong2);
  }
  
  public static boolean equalObject(Object paramObject1, Object paramObject2) {
    return (paramObject1 == null || paramObject2 == null) ? ((paramObject1 == null && paramObject2 == null)) : paramObject1.equals(paramObject2);
  }
  
  public static boolean equalString(String paramString1, String paramString2) {
    return equalObject(paramString1, paramString2);
  }
  
  public static boolean equalsDouble(Double paramDouble1, Double paramDouble2) {
    return (paramDouble1 == null || paramDouble2 == null) ? (!(paramDouble1 != null || paramDouble2 != null)) : (!(Double.doubleToLongBits(paramDouble1.doubleValue()) != Double.doubleToLongBits(paramDouble2.doubleValue())));
  }
  
  public static String getAndroidId(Context paramContext) {
    return Reflection.getAndroidId(paramContext);
  }
  
  public static int getConnectivityType(Context paramContext) {
    try {
      return ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo().getType();
    } catch (Exception exception) {
      getLogger().warn("Couldn't read connectivity type (%s)", new Object[] { exception.getMessage() });
      return -1;
    } 
  }
  
  public static String getCpuAbi() {
    return Reflection.getCpuAbi();
  }
  
  public static String getFireAdvertisingId(ContentResolver paramContentResolver) {
    if (paramContentResolver == null)
      return null; 
    try {
      return Settings.Secure.getString(paramContentResolver, "advertising_id");
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static Boolean getFireTrackingEnabled(ContentResolver paramContentResolver) {
    try {
      if (Settings.Secure.getInt(paramContentResolver, "limit_ad_tracking") == 0) {
        boolean bool1 = true;
        return Boolean.valueOf(bool1);
      } 
      boolean bool = false;
      return Boolean.valueOf(bool);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static void getGoogleAdId(Context paramContext, OnDeviceIdsRead paramOnDeviceIdsRead) {
    String str;
    ILogger iLogger = AdjustFactory.getLogger();
    if (Looper.myLooper() != Looper.getMainLooper()) {
      iLogger.debug("GoogleAdId being read in the background", new Object[0]);
      str = getPlayAdId(paramContext);
      iLogger.debug("GoogleAdId read " + str, new Object[0]);
      paramOnDeviceIdsRead.onGoogleAdIdRead(str);
      return;
    } 
    iLogger.debug("GoogleAdId being read in the foreground", new Object[0]);
    (new awh(paramOnDeviceIdsRead)).execute((Object[])new Context[] { (Context)str });
  }
  
  public static String getIMEI(TelephonyManager paramTelephonyManager) {
    return Reflection.getImei(paramTelephonyManager);
  }
  
  public static String getIMEI(TelephonyManager paramTelephonyManager, int paramInt) {
    return Reflection.getImei(paramTelephonyManager, paramInt);
  }
  
  public static String getIMEIs(TelephonyManager paramTelephonyManager) {
    ArrayList<String> arrayList = new ArrayList();
    tryAddToStringList(arrayList, getIMEI(paramTelephonyManager, 0));
    for (int i = 1;; i++) {
      if (i >= 10 || !tryAddToStringList(arrayList, getIMEI(paramTelephonyManager, i))) {
        tryAddToStringList(arrayList, getIMEI(paramTelephonyManager, 2147483647));
        return TextUtils.join(",", arrayList);
      } 
    } 
  }
  
  public static Locale getLocale(Configuration paramConfiguration) {
    Locale locale = Reflection.getLocaleFromLocaleList(paramConfiguration);
    return (locale != null) ? locale : Reflection.getLocaleFromField(paramConfiguration);
  }
  
  private static ILogger getLogger() {
    return AdjustFactory.getLogger();
  }
  
  public static String getMEID(TelephonyManager paramTelephonyManager) {
    return Reflection.getMeid(paramTelephonyManager);
  }
  
  public static String getMEID(TelephonyManager paramTelephonyManager, int paramInt) {
    return Reflection.getMeid(paramTelephonyManager, paramInt);
  }
  
  public static String getMEIDs(TelephonyManager paramTelephonyManager) {
    ArrayList<String> arrayList = new ArrayList();
    tryAddToStringList(arrayList, getMEID(paramTelephonyManager, 0));
    for (int i = 1;; i++) {
      if (i >= 10 || !tryAddToStringList(arrayList, getMEID(paramTelephonyManager, i))) {
        tryAddToStringList(arrayList, getMEID(paramTelephonyManager, 2147483647));
        return TextUtils.join(",", arrayList);
      } 
    } 
  }
  
  public static String getMacAddress(Context paramContext) {
    return Reflection.getMacAddress(paramContext);
  }
  
  public static String getMcc(Context paramContext) {
    try {
      null = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperator();
      if (TextUtils.isEmpty(null)) {
        AdjustFactory.getLogger().warn("Couldn't receive networkOperator string to read MCC", new Object[0]);
        return null;
      } 
      return null.substring(0, 3);
    } catch (Exception exception) {
      AdjustFactory.getLogger().warn("Couldn't return mcc", new Object[0]);
      return null;
    } 
  }
  
  public static String getMnc(Context paramContext) {
    try {
      null = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperator();
      if (TextUtils.isEmpty(null)) {
        AdjustFactory.getLogger().warn("Couldn't receive networkOperator string to read MNC", new Object[0]);
        return null;
      } 
      return null.substring(3);
    } catch (Exception exception) {
      AdjustFactory.getLogger().warn("Couldn't return mnc", new Object[0]);
      return null;
    } 
  }
  
  public static int getNetworkType(Context paramContext) {
    try {
      return ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType();
    } catch (Exception exception) {
      getLogger().warn("Couldn't read network type (%s)", new Object[] { exception.getMessage() });
      return -1;
    } 
  }
  
  public static String getPlayAdId(Context paramContext) {
    return Reflection.getPlayAdId(paramContext);
  }
  
  public static Map<String, String> getPluginKeys(Context paramContext) {
    return Reflection.getPluginKeys(paramContext);
  }
  
  public static String getReasonString(String paramString, Throwable paramThrowable) {
    return (paramThrowable != null) ? String.format(Locale.US, "%s: %s", new Object[] { paramString, paramThrowable }) : String.format(Locale.US, "%s", new Object[] { paramString });
  }
  
  public static String[] getSupportedAbis() {
    return Reflection.getSupportedAbis();
  }
  
  public static String getTelephonyId(TelephonyManager paramTelephonyManager) {
    return Reflection.getTelephonyId(paramTelephonyManager);
  }
  
  public static String getTelephonyId(TelephonyManager paramTelephonyManager, int paramInt) {
    return Reflection.getTelephonyId(paramTelephonyManager, paramInt);
  }
  
  public static String getTelephonyIds(TelephonyManager paramTelephonyManager) {
    ArrayList<String> arrayList = new ArrayList();
    tryAddToStringList(arrayList, getTelephonyId(paramTelephonyManager, 0));
    for (int i = 1;; i++) {
      if (i >= 10 || !tryAddToStringList(arrayList, getTelephonyId(paramTelephonyManager, i))) {
        tryAddToStringList(arrayList, getTelephonyId(paramTelephonyManager, 2147483647));
        return TextUtils.join(",", arrayList);
      } 
    } 
  }
  
  public static String getVmInstructionSet() {
    return Reflection.getVmInstructionSet();
  }
  
  public static long getWaitingTime(int paramInt, BackoffStrategy paramBackoffStrategy) {
    if (paramInt < paramBackoffStrategy.minRetries)
      return 0L; 
    long l = Math.min((long)Math.pow(2.0D, (paramInt - paramBackoffStrategy.minRetries)) * paramBackoffStrategy.milliSecondMultiplier, paramBackoffStrategy.maxWait);
    double d = randomInRange(paramBackoffStrategy.minRange, paramBackoffStrategy.maxRange);
    return (long)(l * d);
  }
  
  public static String hash(String paramString1, String paramString2) {
    try {
      byte[] arrayOfByte = paramString1.getBytes("UTF-8");
      MessageDigest messageDigest = MessageDigest.getInstance(paramString2);
      messageDigest.update(arrayOfByte, 0, arrayOfByte.length);
      return convertToHex(messageDigest.digest());
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static int hashBoolean(Boolean paramBoolean) {
    return (paramBoolean == null) ? 0 : paramBoolean.hashCode();
  }
  
  public static int hashEnum(Enum paramEnum) {
    return (paramEnum == null) ? 0 : paramEnum.hashCode();
  }
  
  public static int hashLong(Long paramLong) {
    return (paramLong == null) ? 0 : paramLong.hashCode();
  }
  
  public static int hashObject(Object paramObject) {
    return (paramObject == null) ? 0 : paramObject.hashCode();
  }
  
  public static int hashString(String paramString) {
    return (paramString == null) ? 0 : paramString.hashCode();
  }
  
  public static Boolean isPlayTrackingEnabled(Context paramContext) {
    return Reflection.isPlayTrackingEnabled(paramContext);
  }
  
  public static boolean isValidParameter(String paramString1, String paramString2, String paramString3) {
    if (paramString1 == null) {
      getLogger().error("%s parameter %s is missing", new Object[] { paramString3, paramString2 });
      return false;
    } 
    if (paramString1.equals("")) {
      getLogger().error("%s parameter %s is empty", new Object[] { paramString3, paramString2 });
      return false;
    } 
    return true;
  }
  
  public static String md5(String paramString) {
    return hash(paramString, "MD5");
  }
  
  public static Map<String, String> mergeParameters(Map<String, String> paramMap1, Map<String, String> paramMap2, String paramString) {
    if (paramMap1 == null)
      return paramMap2; 
    if (paramMap2 == null)
      return paramMap1; 
    paramMap1 = new HashMap<String, String>(paramMap1);
    ILogger iLogger = getLogger();
    for (Map.Entry<String, String> entry : paramMap2.entrySet()) {
      String str = paramMap1.put((String)entry.getKey(), (String)entry.getValue());
      if (str != null)
        iLogger.warn("Key %s with value %s from %s parameter was replaced by value %s", new Object[] { entry.getKey(), str, paramString, entry.getValue() }); 
    } 
    return paramMap1;
  }
  
  public static String quote(String paramString) {
    if (paramString == null)
      return null; 
    String str = paramString;
    return Pattern.compile("\\s").matcher(paramString).find() ? String.format(Locale.US, "'%s'", new Object[] { paramString }) : str;
  }
  
  private static double randomInRange(double paramDouble1, double paramDouble2) {
    return (new Random()).nextDouble() * (paramDouble2 - paramDouble1) + paramDouble1;
  }
  
  public static boolean readBooleanField(ObjectInputStream.GetField paramGetField, String paramString, boolean paramBoolean) {
    try {
      return paramGetField.get(paramString, paramBoolean);
    } catch (Exception exception) {
      getLogger().debug("Unable to read '%s' field in migration device with message (%s)", new Object[] { paramString, exception.getMessage() });
      return paramBoolean;
    } 
  }
  
  public static int readIntField(ObjectInputStream.GetField paramGetField, String paramString, int paramInt) {
    try {
      return paramGetField.get(paramString, paramInt);
    } catch (Exception exception) {
      getLogger().debug("Unable to read '%s' field in migration device with message (%s)", new Object[] { paramString, exception.getMessage() });
      return paramInt;
    } 
  }
  
  public static long readLongField(ObjectInputStream.GetField paramGetField, String paramString, long paramLong) {
    try {
      return paramGetField.get(paramString, paramLong);
    } catch (Exception exception) {
      getLogger().debug("Unable to read '%s' field in migration device with message (%s)", new Object[] { paramString, exception.getMessage() });
      return paramLong;
    } 
  }
  
  public static <T> T readObject(Context paramContext, String paramString1, String paramString2, Class<T> paramClass) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: aconst_null
    //   4: astore #5
    //   6: aload_0
    //   7: aload_1
    //   8: invokevirtual openFileInput : (Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_1
    //   12: new java/io/BufferedInputStream
    //   15: dup
    //   16: aload_1
    //   17: invokespecial <init> : (Ljava/io/InputStream;)V
    //   20: astore_0
    //   21: new java/io/ObjectInputStream
    //   24: dup
    //   25: aload_0
    //   26: invokespecial <init> : (Ljava/io/InputStream;)V
    //   29: astore_1
    //   30: aload_3
    //   31: aload_1
    //   32: invokevirtual readObject : ()Ljava/lang/Object;
    //   35: invokevirtual cast : (Ljava/lang/Object;)Ljava/lang/Object;
    //   38: astore_0
    //   39: aload_0
    //   40: astore_3
    //   41: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   44: ldc_w 'Read %s: %s'
    //   47: iconst_2
    //   48: anewarray java/lang/Object
    //   51: dup
    //   52: iconst_0
    //   53: aload_2
    //   54: aastore
    //   55: dup
    //   56: iconst_1
    //   57: aload_0
    //   58: aastore
    //   59: invokeinterface debug : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   64: aload_1
    //   65: ifnull -> 74
    //   68: aload_1
    //   69: invokeinterface close : ()V
    //   74: aload_0
    //   75: areturn
    //   76: astore #5
    //   78: aconst_null
    //   79: astore_0
    //   80: aload_0
    //   81: astore_3
    //   82: aload_0
    //   83: astore #4
    //   85: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   88: ldc_w 'Failed to find %s class (%s)'
    //   91: iconst_2
    //   92: anewarray java/lang/Object
    //   95: dup
    //   96: iconst_0
    //   97: aload_2
    //   98: aastore
    //   99: dup
    //   100: iconst_1
    //   101: aload #5
    //   103: invokevirtual getMessage : ()Ljava/lang/String;
    //   106: aastore
    //   107: invokeinterface error : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   112: goto -> 64
    //   115: astore_0
    //   116: aload_3
    //   117: astore_0
    //   118: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   121: ldc_w '%s file not found'
    //   124: iconst_1
    //   125: anewarray java/lang/Object
    //   128: dup
    //   129: iconst_0
    //   130: aload_2
    //   131: aastore
    //   132: invokeinterface debug : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   137: goto -> 64
    //   140: astore #5
    //   142: aconst_null
    //   143: astore_0
    //   144: aload_0
    //   145: astore_3
    //   146: aload_0
    //   147: astore #4
    //   149: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   152: ldc_w 'Failed to cast %s object (%s)'
    //   155: iconst_2
    //   156: anewarray java/lang/Object
    //   159: dup
    //   160: iconst_0
    //   161: aload_2
    //   162: aastore
    //   163: dup
    //   164: iconst_1
    //   165: aload #5
    //   167: invokevirtual getMessage : ()Ljava/lang/String;
    //   170: aastore
    //   171: invokeinterface error : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   176: goto -> 64
    //   179: astore_0
    //   180: aload #4
    //   182: astore_3
    //   183: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   186: ldc_w 'Failed to open %s file for reading (%s)'
    //   189: iconst_2
    //   190: anewarray java/lang/Object
    //   193: dup
    //   194: iconst_0
    //   195: aload_2
    //   196: aastore
    //   197: dup
    //   198: iconst_1
    //   199: aload_0
    //   200: aastore
    //   201: invokeinterface error : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   206: aload_3
    //   207: astore_0
    //   208: goto -> 64
    //   211: astore #5
    //   213: aconst_null
    //   214: astore_0
    //   215: aload_0
    //   216: astore_3
    //   217: aload_0
    //   218: astore #4
    //   220: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   223: ldc_w 'Failed to read %s object (%s)'
    //   226: iconst_2
    //   227: anewarray java/lang/Object
    //   230: dup
    //   231: iconst_0
    //   232: aload_2
    //   233: aastore
    //   234: dup
    //   235: iconst_1
    //   236: aload #5
    //   238: invokevirtual getMessage : ()Ljava/lang/String;
    //   241: aastore
    //   242: invokeinterface error : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   247: goto -> 64
    //   250: astore_1
    //   251: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   254: ldc_w 'Failed to close %s file for reading (%s)'
    //   257: iconst_2
    //   258: anewarray java/lang/Object
    //   261: dup
    //   262: iconst_0
    //   263: aload_2
    //   264: aastore
    //   265: dup
    //   266: iconst_1
    //   267: aload_1
    //   268: aastore
    //   269: invokeinterface error : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   274: aload_0
    //   275: areturn
    //   276: astore_0
    //   277: aconst_null
    //   278: astore_1
    //   279: aload #4
    //   281: astore_3
    //   282: goto -> 183
    //   285: astore_0
    //   286: aload #4
    //   288: astore_3
    //   289: goto -> 183
    //   292: astore_3
    //   293: aload_0
    //   294: astore_1
    //   295: aload_3
    //   296: astore_0
    //   297: aload #4
    //   299: astore_3
    //   300: goto -> 183
    //   303: astore_0
    //   304: aconst_null
    //   305: astore_0
    //   306: aload #5
    //   308: astore_1
    //   309: goto -> 118
    //   312: astore_0
    //   313: aconst_null
    //   314: astore_0
    //   315: goto -> 118
    //   318: astore_1
    //   319: aload_0
    //   320: astore_1
    //   321: aconst_null
    //   322: astore_0
    //   323: goto -> 118
    //   326: astore_0
    //   327: aconst_null
    //   328: astore_0
    //   329: goto -> 118
    //   332: astore #5
    //   334: goto -> 215
    //   337: astore #5
    //   339: goto -> 144
    //   342: astore #5
    //   344: goto -> 80
    // Exception table:
    //   from	to	target	type
    //   6	12	303	java/io/FileNotFoundException
    //   6	12	276	java/lang/Exception
    //   12	21	312	java/io/FileNotFoundException
    //   12	21	285	java/lang/Exception
    //   21	30	318	java/io/FileNotFoundException
    //   21	30	292	java/lang/Exception
    //   30	39	76	java/lang/ClassNotFoundException
    //   30	39	140	java/lang/ClassCastException
    //   30	39	211	java/lang/Exception
    //   30	39	326	java/io/FileNotFoundException
    //   41	64	342	java/lang/ClassNotFoundException
    //   41	64	337	java/lang/ClassCastException
    //   41	64	332	java/lang/Exception
    //   41	64	115	java/io/FileNotFoundException
    //   68	74	250	java/lang/Exception
    //   85	112	115	java/io/FileNotFoundException
    //   85	112	179	java/lang/Exception
    //   149	176	115	java/io/FileNotFoundException
    //   149	176	179	java/lang/Exception
    //   220	247	115	java/io/FileNotFoundException
    //   220	247	179	java/lang/Exception
  }
  
  public static <T> T readObjectField(ObjectInputStream.GetField paramGetField, String paramString, T paramT) {
    try {
      return (T)paramGetField.get(paramString, paramT);
    } catch (Exception exception) {
      getLogger().debug("Unable to read '%s' field in migration device with message (%s)", new Object[] { paramString, exception.getMessage() });
      return paramT;
    } 
  }
  
  public static String readStringField(ObjectInputStream.GetField paramGetField, String paramString1, String paramString2) {
    return readObjectField(paramGetField, paramString1, paramString2);
  }
  
  public static void runInBackground(Runnable paramRunnable) {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      paramRunnable.run();
      return;
    } 
    (new awg()).execute(new Object[] { paramRunnable });
  }
  
  public static String sha1(String paramString) {
    return hash(paramString, "SHA-1");
  }
  
  public static String sha256(String paramString) {
    return hash(paramString, "SHA-256");
  }
  
  public static boolean tryAddToStringList(List<String> paramList, String paramString) {
    return (paramString != null && !paramList.contains(paramString)) ? paramList.add(paramString) : false;
  }
  
  public static <T> void writeObject(T paramT, Context paramContext, String paramString1, String paramString2) {
    BufferedOutputStream bufferedOutputStream2;
    FileOutputStream fileOutputStream = null;
    try {
      FileOutputStream fileOutputStream1 = paramContext.openFileOutput(paramString1, 0);
      fileOutputStream = fileOutputStream1;
      BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream1);
      try {
        ObjectOutputStream objectOutputStream1 = new ObjectOutputStream(bufferedOutputStream);
        ObjectOutputStream objectOutputStream2 = objectOutputStream1;
        try {
          objectOutputStream1.writeObject(paramT);
          objectOutputStream2 = objectOutputStream1;
          getLogger().debug("Wrote %s: %s", new Object[] { paramString2, paramT });
        } catch (NotSerializableException null) {
          objectOutputStream2 = objectOutputStream1;
        } 
        if (objectOutputStream1 != null)
          try {
            objectOutputStream1.close();
            return;
          } catch (Exception null) {
            getLogger().error("Failed to close %s file for writing (%s)", new Object[] { paramString2, exception });
            return;
          }  
        return;
      } catch (Exception null) {
        bufferedOutputStream2 = bufferedOutputStream;
      } 
    } catch (Exception exception) {}
    getLogger().error("Failed to open %s for writing (%s)", new Object[] { paramString2, exception });
    BufferedOutputStream bufferedOutputStream1 = bufferedOutputStream2;
    if (bufferedOutputStream1 != null)
      try {
        bufferedOutputStream1.close();
        return;
      } catch (Exception exception1) {
        getLogger().error("Failed to close %s file for writing (%s)", new Object[] { paramString2, exception1 });
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\Util.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */