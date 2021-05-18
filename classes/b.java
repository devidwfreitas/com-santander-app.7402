import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.List;
import org.json.JSONObject;

public class b implements dv<JSONObject> {
  private static String a(Context paramContext, String paramString, int paramInt) {
    TelephonyManager telephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try {
      Object object = Class.forName(telephonyManager.getClass().getName()).getMethod(paramString, new Class[] { int.class }).invoke(telephonyManager, new Object[] { Integer.valueOf(paramInt) });
      if (object != null)
        return object.toString(); 
    } catch (Exception exception) {
      throw new e(paramString);
    } 
    return null;
  }
  
  static JSONObject a(Context paramContext) {
    // Byte code:
    //   0: aload_0
    //   1: ldc 'phone'
    //   3: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   6: checkcast android/telephony/TelephonyManager
    //   9: astore #5
    //   11: new org/json/JSONObject
    //   14: dup
    //   15: invokespecial <init> : ()V
    //   18: astore #4
    //   20: aload_0
    //   21: ldc 'phone'
    //   23: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   26: checkcast android/telephony/TelephonyManager
    //   29: astore #6
    //   31: new java/util/ArrayList
    //   34: dup
    //   35: invokespecial <init> : ()V
    //   38: astore #7
    //   40: new java/util/ArrayList
    //   43: dup
    //   44: invokespecial <init> : ()V
    //   47: astore #8
    //   49: getstatic android/os/Build$VERSION.SDK_INT : I
    //   52: bipush #22
    //   54: if_icmplt -> 477
    //   57: aload_0
    //   58: ldc 'telephony_subscription_service'
    //   60: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   63: checkcast android/telephony/SubscriptionManager
    //   66: astore_2
    //   67: aload_2
    //   68: invokevirtual getActiveSubscriptionInfoCount : ()I
    //   71: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   74: astore #9
    //   76: aload_2
    //   77: invokevirtual getActiveSubscriptionInfoCountMax : ()I
    //   80: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   83: astore #10
    //   85: aload_0
    //   86: aload #5
    //   88: aload #4
    //   90: aload #7
    //   92: aload #8
    //   94: invokestatic a : (Landroid/content/Context;Landroid/telephony/TelephonyManager;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    //   97: aload_2
    //   98: invokevirtual getActiveSubscriptionInfoList : ()Ljava/util/List;
    //   101: astore_2
    //   102: aload_2
    //   103: ifnull -> 186
    //   106: aload_2
    //   107: invokeinterface size : ()I
    //   112: ifle -> 186
    //   115: aload #7
    //   117: invokeinterface clear : ()V
    //   122: aload_2
    //   123: invokeinterface iterator : ()Ljava/util/Iterator;
    //   128: astore #11
    //   130: aload #11
    //   132: invokeinterface hasNext : ()Z
    //   137: ifne -> 267
    //   140: aload #4
    //   142: ldc 'a'
    //   144: aload #7
    //   146: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   149: pop
    //   150: aload #9
    //   152: ifnull -> 168
    //   155: aload #4
    //   157: ldc 'b'
    //   159: aload #9
    //   161: invokevirtual intValue : ()I
    //   164: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   167: pop
    //   168: aload #10
    //   170: ifnull -> 186
    //   173: aload #4
    //   175: ldc 'c'
    //   177: aload #10
    //   179: invokevirtual intValue : ()I
    //   182: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   185: pop
    //   186: aload #8
    //   188: invokeinterface size : ()I
    //   193: ifle -> 208
    //   196: aload #8
    //   198: new c
    //   201: dup
    //   202: invokespecial <init> : ()V
    //   205: invokestatic sort : (Ljava/util/List;Ljava/util/Comparator;)V
    //   208: aload #4
    //   210: ldc 'd'
    //   212: new org/json/JSONArray
    //   215: dup
    //   216: aload #8
    //   218: invokespecial <init> : (Ljava/util/Collection;)V
    //   221: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   224: pop
    //   225: aload #7
    //   227: invokeinterface size : ()I
    //   232: ifle -> 498
    //   235: aload #7
    //   237: new d
    //   240: dup
    //   241: invokespecial <init> : ()V
    //   244: invokestatic sort : (Ljava/util/List;Ljava/util/Comparator;)V
    //   247: aload #4
    //   249: ldc 'a'
    //   251: new org/json/JSONArray
    //   254: dup
    //   255: aload #7
    //   257: invokespecial <init> : (Ljava/util/Collection;)V
    //   260: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   263: pop
    //   264: aload #4
    //   266: areturn
    //   267: aload #11
    //   269: invokeinterface next : ()Ljava/lang/Object;
    //   274: checkcast android/telephony/SubscriptionInfo
    //   277: astore_2
    //   278: aload_2
    //   279: invokevirtual getDisplayName : ()Ljava/lang/CharSequence;
    //   282: astore_3
    //   283: aload_2
    //   284: invokevirtual getIccId : ()Ljava/lang/String;
    //   287: astore #13
    //   289: aload_2
    //   290: invokevirtual getNumber : ()Ljava/lang/String;
    //   293: astore #14
    //   295: new org/json/JSONObject
    //   298: dup
    //   299: invokespecial <init> : ()V
    //   302: astore #12
    //   304: aload #12
    //   306: ldc 'a'
    //   308: aload_3
    //   309: invokeinterface toString : ()Ljava/lang/String;
    //   314: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   317: pop
    //   318: aload #12
    //   320: ldc 'b'
    //   322: aload #14
    //   324: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   327: pop
    //   328: aload #12
    //   330: ldc 'c'
    //   332: aload #13
    //   334: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   337: pop
    //   338: aload_2
    //   339: invokevirtual getSimSlotIndex : ()I
    //   342: istore_1
    //   343: getstatic android/os/Build$VERSION.SDK_INT : I
    //   346: bipush #23
    //   348: if_icmplt -> 399
    //   351: aload #6
    //   353: iload_1
    //   354: invokevirtual getDeviceId : (I)Ljava/lang/String;
    //   357: astore_2
    //   358: aload #8
    //   360: aload_2
    //   361: invokeinterface contains : (Ljava/lang/Object;)Z
    //   366: ifne -> 378
    //   369: aload #8
    //   371: aload_2
    //   372: invokeinterface add : (Ljava/lang/Object;)Z
    //   377: pop
    //   378: aload #7
    //   380: aload #12
    //   382: invokeinterface add : (Ljava/lang/Object;)Z
    //   387: pop
    //   388: goto -> 130
    //   391: astore_0
    //   392: aload_0
    //   393: invokevirtual printStackTrace : ()V
    //   396: aload #4
    //   398: areturn
    //   399: aconst_null
    //   400: astore_3
    //   401: iload_1
    //   402: ifne -> 411
    //   405: aload #5
    //   407: invokevirtual getDeviceId : ()Ljava/lang/String;
    //   410: astore_3
    //   411: aload_3
    //   412: astore_2
    //   413: aload_3
    //   414: ifnonnull -> 425
    //   417: aload_0
    //   418: ldc 'getDeviceIdGemini'
    //   420: iload_1
    //   421: invokestatic a : (Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    //   424: astore_2
    //   425: aload_2
    //   426: astore_3
    //   427: aload_2
    //   428: ifnonnull -> 434
    //   431: ldc ''
    //   433: astore_3
    //   434: aload #8
    //   436: aload_3
    //   437: invokeinterface contains : (Ljava/lang/Object;)Z
    //   442: ifne -> 378
    //   445: aload #8
    //   447: aload_3
    //   448: invokeinterface add : (Ljava/lang/Object;)Z
    //   453: pop
    //   454: goto -> 378
    //   457: astore_0
    //   458: aload_0
    //   459: invokevirtual printStackTrace : ()V
    //   462: aload #4
    //   464: areturn
    //   465: astore_2
    //   466: aload_0
    //   467: ldc 'getDeviceId'
    //   469: iload_1
    //   470: invokestatic a : (Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    //   473: astore_2
    //   474: goto -> 425
    //   477: aload_0
    //   478: aload #5
    //   480: aload #4
    //   482: aload #7
    //   484: aload #8
    //   486: invokestatic a : (Landroid/content/Context;Landroid/telephony/TelephonyManager;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    //   489: goto -> 186
    //   492: astore_2
    //   493: aload_3
    //   494: astore_2
    //   495: goto -> 425
    //   498: aload #4
    //   500: areturn
    // Exception table:
    //   from	to	target	type
    //   40	102	391	org/json/JSONException
    //   40	102	457	java/lang/Exception
    //   106	130	391	org/json/JSONException
    //   106	130	457	java/lang/Exception
    //   130	150	391	org/json/JSONException
    //   130	150	457	java/lang/Exception
    //   155	168	391	org/json/JSONException
    //   155	168	457	java/lang/Exception
    //   173	186	391	org/json/JSONException
    //   173	186	457	java/lang/Exception
    //   186	208	391	org/json/JSONException
    //   186	208	457	java/lang/Exception
    //   208	264	391	org/json/JSONException
    //   208	264	457	java/lang/Exception
    //   267	378	391	org/json/JSONException
    //   267	378	457	java/lang/Exception
    //   378	388	391	org/json/JSONException
    //   378	388	457	java/lang/Exception
    //   405	411	391	org/json/JSONException
    //   405	411	457	java/lang/Exception
    //   417	425	465	e
    //   417	425	391	org/json/JSONException
    //   417	425	457	java/lang/Exception
    //   434	454	391	org/json/JSONException
    //   434	454	457	java/lang/Exception
    //   466	474	492	e
    //   466	474	391	org/json/JSONException
    //   466	474	457	java/lang/Exception
    //   477	489	391	org/json/JSONException
    //   477	489	457	java/lang/Exception
  }
  
  private static void a(Context paramContext, TelephonyManager paramTelephonyManager, JSONObject paramJSONObject, List<JSONObject> paramList, List<String> paramList1) {
    byte b1 = 1;
    int i = 0;
    while (true) {
      Integer integer1;
      Integer integer2;
      String str2;
      if (i >= 2) {
        if (b1) {
          i = 2;
        } else {
          i = 1;
        } 
        integer1 = Integer.valueOf(i);
        if (b1) {
          b1 = 2;
        } else {
          b1 = 1;
        } 
        integer2 = Integer.valueOf(b1);
        if (integer1 != null)
          paramJSONObject.put("b", integer1.intValue()); 
        if (integer2 != null)
          paramJSONObject.put("c", integer2.intValue()); 
        return;
      } 
      JSONObject jSONObject = new JSONObject();
      String str5 = null;
      String str4 = null;
      String str3 = null;
      if (i == 0) {
        str4 = integer2.getSimSerialNumber();
        str5 = integer2.getLine1Number();
        str3 = integer2.getDeviceId();
      } 
      String str1 = str3;
      if (str3 == null)
        try {
          str1 = a((Context)integer1, "getDeviceIdGemini", i);
        } catch (e e1) {} 
      e e2 = e1;
      byte b2 = b1;
      if (e1 == null) {
        String str = "";
        str2 = str;
        b2 = b1;
        if (i == 1) {
          b2 = 0;
          str2 = str;
        } 
      } 
      if (b2 != 0) {
        jSONObject.put("a", "");
        jSONObject.put("b", str5);
        jSONObject.put("c", str4);
        paramList1.add(str2);
      } 
      paramList.add(jSONObject);
      i++;
      b1 = b2;
    } 
  }
  
  public JSONObject a(Object paramObject) {
    return a((Context)paramObject);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */