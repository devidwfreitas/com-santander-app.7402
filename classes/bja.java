import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class bja {
  private static final String A = "double";
  
  private static final String B = "double[]";
  
  private static final String C = "char";
  
  private static final String D = "char[]";
  
  private static final String E = "string";
  
  private static final String F = "stringList";
  
  private static final String G = "enum";
  
  public static final String a = "com.facebook.TokenCachingStrategy.Token";
  
  public static final String b = "com.facebook.TokenCachingStrategy.ExpirationDate";
  
  public static final String c = "com.facebook.TokenCachingStrategy.LastRefreshDate";
  
  public static final String d = "com.facebook.TokenCachingStrategy.AccessTokenSource";
  
  public static final String e = "com.facebook.TokenCachingStrategy.Permissions";
  
  public static final String f = "com.facebook.TokenCachingStrategy.DeclinedPermissions";
  
  public static final String g = "com.facebook.TokenCachingStrategy.ApplicationId";
  
  public static final String h = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
  
  private static final long i = -9223372036854775808L;
  
  private static final String j = "com.facebook.TokenCachingStrategy.IsSSO";
  
  private static final String k = bja.class.getSimpleName();
  
  private static final String l = "valueType";
  
  private static final String m = "value";
  
  private static final String n = "enumType";
  
  private static final String o = "bool";
  
  private static final String p = "bool[]";
  
  private static final String q = "byte";
  
  private static final String r = "byte[]";
  
  private static final String s = "short";
  
  private static final String t = "short[]";
  
  private static final String u = "int";
  
  private static final String v = "int[]";
  
  private static final String w = "long";
  
  private static final String x = "long[]";
  
  private static final String y = "float";
  
  private static final String z = "float[]";
  
  private String H;
  
  private SharedPreferences I;
  
  public bja(Context paramContext) {
    this(paramContext, null);
  }
  
  public bja(Context paramContext, String paramString) {
    bqx.a(paramContext, "context");
    String str = paramString;
    if (bqq.a(paramString))
      str = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"; 
    this.H = str;
    Context context = paramContext.getApplicationContext();
    if (context != null)
      paramContext = context; 
    this.I = paramContext.getSharedPreferences(this.H, 0);
  }
  
  public static void a(Bundle paramBundle, long paramLong) {
    bqx.a(paramBundle, "bundle");
    paramBundle.putLong("com.facebook.TokenCachingStrategy.ExpirationDate", paramLong);
  }
  
  public static void a(Bundle paramBundle, bgy parambgy) {
    bqx.a(paramBundle, "bundle");
    paramBundle.putSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource", parambgy);
  }
  
  public static void a(Bundle paramBundle, String paramString) {
    bqx.a(paramBundle, "bundle");
    bqx.a(paramString, "value");
    paramBundle.putString("com.facebook.TokenCachingStrategy.Token", paramString);
  }
  
  static void a(Bundle paramBundle, String paramString, Date paramDate) {
    paramBundle.putLong(paramString, paramDate.getTime());
  }
  
  public static void a(Bundle paramBundle, Collection<String> paramCollection) {
    bqx.a(paramBundle, "bundle");
    bqx.a(paramCollection, "value");
    paramBundle.putStringArrayList("com.facebook.TokenCachingStrategy.Permissions", new ArrayList<String>(paramCollection));
  }
  
  public static void a(Bundle paramBundle, Date paramDate) {
    bqx.a(paramBundle, "bundle");
    bqx.a(paramDate, "value");
    a(paramBundle, "com.facebook.TokenCachingStrategy.ExpirationDate", paramDate);
  }
  
  private void a(String paramString, Bundle paramBundle) {
    JSONArray jSONArray1;
    String str1;
    Object object;
    boolean[] arrayOfBoolean;
    byte[] arrayOfByte;
    short[] arrayOfShort;
    int[] arrayOfInt;
    long[] arrayOfLong;
    float[] arrayOfFloat;
    double[] arrayOfDouble;
    char[] arrayOfChar;
    JSONArray jSONArray2;
    int j = 0;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    int i = 0;
    JSONObject jSONObject = new JSONObject(this.I.getString(paramString, "{}"));
    String str2 = jSONObject.getString("valueType");
    if (str2.equals("bool")) {
      paramBundle.putBoolean(paramString, jSONObject.getBoolean("value"));
      return;
    } 
    if (str2.equals("bool[]")) {
      jSONArray1 = jSONObject.getJSONArray("value");
      arrayOfBoolean = new boolean[jSONArray1.length()];
      while (i < arrayOfBoolean.length) {
        arrayOfBoolean[i] = jSONArray1.getBoolean(i);
        i++;
      } 
      paramBundle.putBooleanArray(paramString, arrayOfBoolean);
      return;
    } 
    if (arrayOfBoolean.equals("byte")) {
      paramBundle.putByte(paramString, (byte)jSONArray1.getInt("value"));
      return;
    } 
    if (arrayOfBoolean.equals("byte[]")) {
      jSONArray1 = jSONArray1.getJSONArray("value");
      arrayOfByte = new byte[jSONArray1.length()];
      for (i = j; i < arrayOfByte.length; i++)
        arrayOfByte[i] = (byte)jSONArray1.getInt(i); 
      paramBundle.putByteArray(paramString, arrayOfByte);
      return;
    } 
    if (arrayOfByte.equals("short")) {
      paramBundle.putShort(paramString, (short)jSONArray1.getInt("value"));
      return;
    } 
    if (arrayOfByte.equals("short[]")) {
      jSONArray1 = jSONArray1.getJSONArray("value");
      arrayOfShort = new short[jSONArray1.length()];
      for (i = bool1; i < arrayOfShort.length; i++)
        arrayOfShort[i] = (short)jSONArray1.getInt(i); 
      paramBundle.putShortArray(paramString, arrayOfShort);
      return;
    } 
    if (arrayOfShort.equals("int")) {
      paramBundle.putInt(paramString, jSONArray1.getInt("value"));
      return;
    } 
    if (arrayOfShort.equals("int[]")) {
      jSONArray1 = jSONArray1.getJSONArray("value");
      arrayOfInt = new int[jSONArray1.length()];
      for (i = bool2; i < arrayOfInt.length; i++)
        arrayOfInt[i] = jSONArray1.getInt(i); 
      paramBundle.putIntArray(paramString, arrayOfInt);
      return;
    } 
    if (arrayOfInt.equals("long")) {
      paramBundle.putLong(paramString, jSONArray1.getLong("value"));
      return;
    } 
    if (arrayOfInt.equals("long[]")) {
      jSONArray1 = jSONArray1.getJSONArray("value");
      arrayOfLong = new long[jSONArray1.length()];
      for (i = bool3; i < arrayOfLong.length; i++)
        arrayOfLong[i] = jSONArray1.getLong(i); 
      paramBundle.putLongArray(paramString, arrayOfLong);
      return;
    } 
    if (arrayOfLong.equals("float")) {
      paramBundle.putFloat(paramString, (float)jSONArray1.getDouble("value"));
      return;
    } 
    if (arrayOfLong.equals("float[]")) {
      jSONArray1 = jSONArray1.getJSONArray("value");
      arrayOfFloat = new float[jSONArray1.length()];
      for (i = bool4; i < arrayOfFloat.length; i++)
        arrayOfFloat[i] = (float)jSONArray1.getDouble(i); 
      paramBundle.putFloatArray(paramString, arrayOfFloat);
      return;
    } 
    if (arrayOfFloat.equals("double")) {
      paramBundle.putDouble(paramString, jSONArray1.getDouble("value"));
      return;
    } 
    if (arrayOfFloat.equals("double[]")) {
      jSONArray1 = jSONArray1.getJSONArray("value");
      arrayOfDouble = new double[jSONArray1.length()];
      for (i = bool5; i < arrayOfDouble.length; i++)
        arrayOfDouble[i] = jSONArray1.getDouble(i); 
      paramBundle.putDoubleArray(paramString, arrayOfDouble);
      return;
    } 
    if (arrayOfDouble.equals("char")) {
      str1 = jSONArray1.getString("value");
      if (str1 != null && str1.length() == 1) {
        paramBundle.putChar(paramString, str1.charAt(0));
        return;
      } 
      return;
    } 
    if (arrayOfDouble.equals("char[]")) {
      object = str1.getJSONArray("value");
      arrayOfChar = new char[object.length()];
      for (i = 0; i < arrayOfChar.length; i++) {
        String str = object.getString(i);
        if (str != null && str.length() == 1)
          arrayOfChar[i] = str.charAt(0); 
      } 
      paramBundle.putCharArray(paramString, arrayOfChar);
      return;
    } 
    if (arrayOfChar.equals("string")) {
      paramBundle.putString(paramString, object.getString("value"));
      return;
    } 
    if (arrayOfChar.equals("stringList")) {
      jSONArray2 = object.getJSONArray("value");
      j = jSONArray2.length();
      ArrayList<Object> arrayList = new ArrayList(j);
      for (i = 0; i < j; i++) {
        object = jSONArray2.get(i);
        if (object == JSONObject.NULL) {
          object = null;
        } else {
          object = object;
        } 
        arrayList.add(i, object);
      } 
      paramBundle.putStringArrayList(paramString, arrayList);
      return;
    } 
    if (jSONArray2.equals("enum"))
      try {
        paramBundle.putSerializable(paramString, (Serializable)Enum.valueOf(Class.forName(object.getString("enumType")), object.getString("value")));
        return;
      } catch (ClassNotFoundException classNotFoundException) {
        return;
      } catch (IllegalArgumentException illegalArgumentException) {
        return;
      }  
  }
  
  private void a(String paramString, Bundle paramBundle, SharedPreferences.Editor paramEditor) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #12
    //   3: iconst_0
    //   4: istore #5
    //   6: iconst_0
    //   7: istore #6
    //   9: iconst_0
    //   10: istore #7
    //   12: iconst_0
    //   13: istore #8
    //   15: iconst_0
    //   16: istore #9
    //   18: iconst_0
    //   19: istore #10
    //   21: iconst_0
    //   22: istore #11
    //   24: iconst_0
    //   25: istore #4
    //   27: aload_2
    //   28: aload_1
    //   29: invokevirtual get : (Ljava/lang/String;)Ljava/lang/Object;
    //   32: astore #14
    //   34: aload #14
    //   36: ifnonnull -> 40
    //   39: return
    //   40: new org/json/JSONObject
    //   43: dup
    //   44: invokespecial <init> : ()V
    //   47: astore #15
    //   49: aload #14
    //   51: instanceof java/lang/Byte
    //   54: ifeq -> 121
    //   57: aload #15
    //   59: ldc 'value'
    //   61: aload #14
    //   63: checkcast java/lang/Byte
    //   66: invokevirtual intValue : ()I
    //   69: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   72: pop
    //   73: aconst_null
    //   74: astore_2
    //   75: ldc 'byte'
    //   77: astore #12
    //   79: aload #12
    //   81: ifnull -> 39
    //   84: aload #15
    //   86: ldc 'valueType'
    //   88: aload #12
    //   90: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   93: pop
    //   94: aload_2
    //   95: ifnull -> 107
    //   98: aload #15
    //   100: ldc 'value'
    //   102: aload_2
    //   103: invokevirtual putOpt : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   106: pop
    //   107: aload_3
    //   108: aload_1
    //   109: aload #15
    //   111: invokevirtual toString : ()Ljava/lang/String;
    //   114: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   119: pop
    //   120: return
    //   121: aload #14
    //   123: instanceof java/lang/Short
    //   126: ifeq -> 154
    //   129: aload #15
    //   131: ldc 'value'
    //   133: aload #14
    //   135: checkcast java/lang/Short
    //   138: invokevirtual intValue : ()I
    //   141: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   144: pop
    //   145: aconst_null
    //   146: astore_2
    //   147: ldc 'short'
    //   149: astore #12
    //   151: goto -> 79
    //   154: aload #14
    //   156: instanceof java/lang/Integer
    //   159: ifeq -> 187
    //   162: aload #15
    //   164: ldc 'value'
    //   166: aload #14
    //   168: checkcast java/lang/Integer
    //   171: invokevirtual intValue : ()I
    //   174: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   177: pop
    //   178: aconst_null
    //   179: astore_2
    //   180: ldc 'int'
    //   182: astore #12
    //   184: goto -> 79
    //   187: aload #14
    //   189: instanceof java/lang/Long
    //   192: ifeq -> 220
    //   195: aload #15
    //   197: ldc 'value'
    //   199: aload #14
    //   201: checkcast java/lang/Long
    //   204: invokevirtual longValue : ()J
    //   207: invokevirtual put : (Ljava/lang/String;J)Lorg/json/JSONObject;
    //   210: pop
    //   211: aconst_null
    //   212: astore_2
    //   213: ldc 'long'
    //   215: astore #12
    //   217: goto -> 79
    //   220: aload #14
    //   222: instanceof java/lang/Float
    //   225: ifeq -> 253
    //   228: aload #15
    //   230: ldc 'value'
    //   232: aload #14
    //   234: checkcast java/lang/Float
    //   237: invokevirtual doubleValue : ()D
    //   240: invokevirtual put : (Ljava/lang/String;D)Lorg/json/JSONObject;
    //   243: pop
    //   244: aconst_null
    //   245: astore_2
    //   246: ldc 'float'
    //   248: astore #12
    //   250: goto -> 79
    //   253: aload #14
    //   255: instanceof java/lang/Double
    //   258: ifeq -> 286
    //   261: aload #15
    //   263: ldc 'value'
    //   265: aload #14
    //   267: checkcast java/lang/Double
    //   270: invokevirtual doubleValue : ()D
    //   273: invokevirtual put : (Ljava/lang/String;D)Lorg/json/JSONObject;
    //   276: pop
    //   277: aconst_null
    //   278: astore_2
    //   279: ldc 'double'
    //   281: astore #12
    //   283: goto -> 79
    //   286: aload #14
    //   288: instanceof java/lang/Boolean
    //   291: ifeq -> 319
    //   294: aload #15
    //   296: ldc 'value'
    //   298: aload #14
    //   300: checkcast java/lang/Boolean
    //   303: invokevirtual booleanValue : ()Z
    //   306: invokevirtual put : (Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   309: pop
    //   310: aconst_null
    //   311: astore_2
    //   312: ldc 'bool'
    //   314: astore #12
    //   316: goto -> 79
    //   319: aload #14
    //   321: instanceof java/lang/Character
    //   324: ifeq -> 349
    //   327: aload #15
    //   329: ldc 'value'
    //   331: aload #14
    //   333: invokevirtual toString : ()Ljava/lang/String;
    //   336: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   339: pop
    //   340: aconst_null
    //   341: astore_2
    //   342: ldc 'char'
    //   344: astore #12
    //   346: goto -> 79
    //   349: aload #14
    //   351: instanceof java/lang/String
    //   354: ifeq -> 379
    //   357: aload #15
    //   359: ldc 'value'
    //   361: aload #14
    //   363: checkcast java/lang/String
    //   366: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   369: pop
    //   370: aconst_null
    //   371: astore_2
    //   372: ldc 'string'
    //   374: astore #12
    //   376: goto -> 79
    //   379: aload #14
    //   381: instanceof java/lang/Enum
    //   384: ifeq -> 425
    //   387: aload #15
    //   389: ldc 'value'
    //   391: aload #14
    //   393: invokevirtual toString : ()Ljava/lang/String;
    //   396: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   399: pop
    //   400: aload #15
    //   402: ldc 'enumType'
    //   404: aload #14
    //   406: invokevirtual getClass : ()Ljava/lang/Class;
    //   409: invokevirtual getName : ()Ljava/lang/String;
    //   412: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   415: pop
    //   416: aconst_null
    //   417: astore_2
    //   418: ldc 'enum'
    //   420: astore #12
    //   422: goto -> 79
    //   425: new org/json/JSONArray
    //   428: dup
    //   429: invokespecial <init> : ()V
    //   432: astore_2
    //   433: aload #14
    //   435: instanceof [B
    //   438: ifeq -> 489
    //   441: ldc 'byte[]'
    //   443: astore #12
    //   445: aload #14
    //   447: checkcast [B
    //   450: checkcast [B
    //   453: astore #13
    //   455: aload #13
    //   457: arraylength
    //   458: istore #5
    //   460: iload #4
    //   462: iload #5
    //   464: if_icmpge -> 486
    //   467: aload_2
    //   468: aload #13
    //   470: iload #4
    //   472: baload
    //   473: invokevirtual put : (I)Lorg/json/JSONArray;
    //   476: pop
    //   477: iload #4
    //   479: iconst_1
    //   480: iadd
    //   481: istore #4
    //   483: goto -> 460
    //   486: goto -> 79
    //   489: aload #14
    //   491: instanceof [S
    //   494: ifeq -> 549
    //   497: ldc 'short[]'
    //   499: astore #12
    //   501: aload #14
    //   503: checkcast [S
    //   506: checkcast [S
    //   509: astore #13
    //   511: aload #13
    //   513: arraylength
    //   514: istore #6
    //   516: iload #5
    //   518: istore #4
    //   520: iload #4
    //   522: iload #6
    //   524: if_icmpge -> 546
    //   527: aload_2
    //   528: aload #13
    //   530: iload #4
    //   532: saload
    //   533: invokevirtual put : (I)Lorg/json/JSONArray;
    //   536: pop
    //   537: iload #4
    //   539: iconst_1
    //   540: iadd
    //   541: istore #4
    //   543: goto -> 520
    //   546: goto -> 79
    //   549: aload #14
    //   551: instanceof [I
    //   554: ifeq -> 609
    //   557: ldc 'int[]'
    //   559: astore #12
    //   561: aload #14
    //   563: checkcast [I
    //   566: checkcast [I
    //   569: astore #13
    //   571: aload #13
    //   573: arraylength
    //   574: istore #5
    //   576: iload #6
    //   578: istore #4
    //   580: iload #4
    //   582: iload #5
    //   584: if_icmpge -> 606
    //   587: aload_2
    //   588: aload #13
    //   590: iload #4
    //   592: iaload
    //   593: invokevirtual put : (I)Lorg/json/JSONArray;
    //   596: pop
    //   597: iload #4
    //   599: iconst_1
    //   600: iadd
    //   601: istore #4
    //   603: goto -> 580
    //   606: goto -> 79
    //   609: aload #14
    //   611: instanceof [J
    //   614: ifeq -> 669
    //   617: ldc 'long[]'
    //   619: astore #12
    //   621: aload #14
    //   623: checkcast [J
    //   626: checkcast [J
    //   629: astore #13
    //   631: aload #13
    //   633: arraylength
    //   634: istore #5
    //   636: iload #7
    //   638: istore #4
    //   640: iload #4
    //   642: iload #5
    //   644: if_icmpge -> 666
    //   647: aload_2
    //   648: aload #13
    //   650: iload #4
    //   652: laload
    //   653: invokevirtual put : (J)Lorg/json/JSONArray;
    //   656: pop
    //   657: iload #4
    //   659: iconst_1
    //   660: iadd
    //   661: istore #4
    //   663: goto -> 640
    //   666: goto -> 79
    //   669: aload #14
    //   671: instanceof [F
    //   674: ifeq -> 730
    //   677: ldc 'float[]'
    //   679: astore #12
    //   681: aload #14
    //   683: checkcast [F
    //   686: checkcast [F
    //   689: astore #13
    //   691: aload #13
    //   693: arraylength
    //   694: istore #5
    //   696: iload #8
    //   698: istore #4
    //   700: iload #4
    //   702: iload #5
    //   704: if_icmpge -> 727
    //   707: aload_2
    //   708: aload #13
    //   710: iload #4
    //   712: faload
    //   713: f2d
    //   714: invokevirtual put : (D)Lorg/json/JSONArray;
    //   717: pop
    //   718: iload #4
    //   720: iconst_1
    //   721: iadd
    //   722: istore #4
    //   724: goto -> 700
    //   727: goto -> 79
    //   730: aload #14
    //   732: instanceof [D
    //   735: ifeq -> 790
    //   738: ldc 'double[]'
    //   740: astore #12
    //   742: aload #14
    //   744: checkcast [D
    //   747: checkcast [D
    //   750: astore #13
    //   752: aload #13
    //   754: arraylength
    //   755: istore #5
    //   757: iload #9
    //   759: istore #4
    //   761: iload #4
    //   763: iload #5
    //   765: if_icmpge -> 787
    //   768: aload_2
    //   769: aload #13
    //   771: iload #4
    //   773: daload
    //   774: invokevirtual put : (D)Lorg/json/JSONArray;
    //   777: pop
    //   778: iload #4
    //   780: iconst_1
    //   781: iadd
    //   782: istore #4
    //   784: goto -> 761
    //   787: goto -> 79
    //   790: aload #14
    //   792: instanceof [Z
    //   795: ifeq -> 850
    //   798: ldc 'bool[]'
    //   800: astore #12
    //   802: aload #14
    //   804: checkcast [Z
    //   807: checkcast [Z
    //   810: astore #13
    //   812: aload #13
    //   814: arraylength
    //   815: istore #5
    //   817: iload #10
    //   819: istore #4
    //   821: iload #4
    //   823: iload #5
    //   825: if_icmpge -> 847
    //   828: aload_2
    //   829: aload #13
    //   831: iload #4
    //   833: baload
    //   834: invokevirtual put : (Z)Lorg/json/JSONArray;
    //   837: pop
    //   838: iload #4
    //   840: iconst_1
    //   841: iadd
    //   842: istore #4
    //   844: goto -> 821
    //   847: goto -> 79
    //   850: aload #14
    //   852: instanceof [C
    //   855: ifeq -> 913
    //   858: ldc 'char[]'
    //   860: astore #12
    //   862: aload #14
    //   864: checkcast [C
    //   867: checkcast [C
    //   870: astore #13
    //   872: aload #13
    //   874: arraylength
    //   875: istore #5
    //   877: iload #11
    //   879: istore #4
    //   881: iload #4
    //   883: iload #5
    //   885: if_icmpge -> 910
    //   888: aload_2
    //   889: aload #13
    //   891: iload #4
    //   893: caload
    //   894: invokestatic valueOf : (C)Ljava/lang/String;
    //   897: invokevirtual put : (Ljava/lang/Object;)Lorg/json/JSONArray;
    //   900: pop
    //   901: iload #4
    //   903: iconst_1
    //   904: iadd
    //   905: istore #4
    //   907: goto -> 881
    //   910: goto -> 79
    //   913: aload #14
    //   915: instanceof java/util/List
    //   918: ifeq -> 990
    //   921: ldc 'stringList'
    //   923: astore #13
    //   925: aload #14
    //   927: checkcast java/util/List
    //   930: invokeinterface iterator : ()Ljava/util/Iterator;
    //   935: astore #16
    //   937: aload #16
    //   939: invokeinterface hasNext : ()Z
    //   944: ifeq -> 983
    //   947: aload #16
    //   949: invokeinterface next : ()Ljava/lang/Object;
    //   954: checkcast java/lang/String
    //   957: astore #14
    //   959: aload #14
    //   961: astore #12
    //   963: aload #14
    //   965: ifnonnull -> 973
    //   968: getstatic org/json/JSONObject.NULL : Ljava/lang/Object;
    //   971: astore #12
    //   973: aload_2
    //   974: aload #12
    //   976: invokevirtual put : (Ljava/lang/Object;)Lorg/json/JSONArray;
    //   979: pop
    //   980: goto -> 937
    //   983: aload #13
    //   985: astore #12
    //   987: goto -> 79
    //   990: aconst_null
    //   991: astore_2
    //   992: goto -> 79
  }
  
  public static void b(Bundle paramBundle, long paramLong) {
    bqx.a(paramBundle, "bundle");
    paramBundle.putLong("com.facebook.TokenCachingStrategy.LastRefreshDate", paramLong);
  }
  
  public static void b(Bundle paramBundle, String paramString) {
    bqx.a(paramBundle, "bundle");
    paramBundle.putString("com.facebook.TokenCachingStrategy.ApplicationId", paramString);
  }
  
  public static void b(Bundle paramBundle, Collection<String> paramCollection) {
    bqx.a(paramBundle, "bundle");
    bqx.a(paramCollection, "value");
    paramBundle.putStringArrayList("com.facebook.TokenCachingStrategy.DeclinedPermissions", new ArrayList<String>(paramCollection));
  }
  
  public static void b(Bundle paramBundle, Date paramDate) {
    bqx.a(paramBundle, "bundle");
    bqx.a(paramDate, "value");
    a(paramBundle, "com.facebook.TokenCachingStrategy.LastRefreshDate", paramDate);
  }
  
  public static boolean b(Bundle paramBundle) {
    if (paramBundle != null) {
      String str = paramBundle.getString("com.facebook.TokenCachingStrategy.Token");
      if (str != null && str.length() != 0 && paramBundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0L) != 0L)
        return true; 
    } 
    return false;
  }
  
  public static String c(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    return paramBundle.getString("com.facebook.TokenCachingStrategy.Token");
  }
  
  public static Date c(Bundle paramBundle, String paramString) {
    if (paramBundle != null) {
      long l = paramBundle.getLong(paramString, Long.MIN_VALUE);
      if (l != Long.MIN_VALUE)
        return new Date(l); 
    } 
    return null;
  }
  
  public static Date d(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    return c(paramBundle, "com.facebook.TokenCachingStrategy.ExpirationDate");
  }
  
  public static long e(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    return paramBundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate");
  }
  
  public static Set<String> f(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    ArrayList<? extends String> arrayList = paramBundle.getStringArrayList("com.facebook.TokenCachingStrategy.Permissions");
    return (arrayList == null) ? null : new HashSet<String>(arrayList);
  }
  
  public static bgy g(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    return paramBundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource") ? (bgy)paramBundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource") : (paramBundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO") ? bgy.FACEBOOK_APPLICATION_WEB : bgy.WEB_VIEW);
  }
  
  public static Date h(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    return c(paramBundle, "com.facebook.TokenCachingStrategy.LastRefreshDate");
  }
  
  public static long i(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    return paramBundle.getLong("com.facebook.TokenCachingStrategy.LastRefreshDate");
  }
  
  public static String j(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    return paramBundle.getString("com.facebook.TokenCachingStrategy.ApplicationId");
  }
  
  public Bundle a() {
    Bundle bundle = new Bundle();
    for (String str : this.I.getAll().keySet()) {
      try {
        a(str, bundle);
      } catch (JSONException jSONException) {
        bpu.a(bjb.CACHE, 5, k, "Error reading cached value for key: '" + str + "' -- " + jSONException);
        return null;
      } 
    } 
    return (Bundle)jSONException;
  }
  
  public void a(Bundle paramBundle) {
    bqx.a(paramBundle, "bundle");
    SharedPreferences.Editor editor = this.I.edit();
    for (String str : paramBundle.keySet()) {
      try {
        a(str, paramBundle, editor);
      } catch (JSONException jSONException) {
        bpu.a(bjb.CACHE, 5, k, "Error processing value for key: '" + str + "' -- " + jSONException);
        return;
      } 
    } 
    editor.apply();
  }
  
  public void b() {
    this.I.edit().clear().apply();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bja.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */