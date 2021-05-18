import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class bmi {
  public static final String a = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
  
  public static final String b = "referer_data";
  
  public static final String c = "extras";
  
  public static final String d = "com.facebook.platform.APPLINK_NATIVE_CLASS";
  
  public static final String e = "com.facebook.platform.APPLINK_NATIVE_URL";
  
  static final String f = "com.facebook.platform.APPLINK_ARGS";
  
  private static final String g = "al_applink_data";
  
  private static final String h = "bridge_args";
  
  private static final String i = "method_args";
  
  private static final String j = "version";
  
  private static final String k = "method";
  
  private static final String l = "DEFERRED_APP_LINK";
  
  private static final String m = "%s/activities";
  
  private static final String n = "applink_args";
  
  private static final String o = "applink_class";
  
  private static final String p = "click_time";
  
  private static final String q = "applink_url";
  
  private static final String r = "target_url";
  
  private static final String s = "ref";
  
  private static final String t = "fb_ref";
  
  private static final String u = "deeplink_context";
  
  private static final String v = "promo_code";
  
  private static final String w = bmi.class.getCanonicalName();
  
  private Bundle A;
  
  private String B;
  
  private String x;
  
  private Uri y;
  
  private JSONObject z;
  
  private static Bundle a(JSONObject paramJSONObject) {
    Bundle bundle = new Bundle();
    Iterator<String> iterator = paramJSONObject.keys();
    while (iterator.hasNext()) {
      String str = iterator.next();
      Object object = paramJSONObject.get(str);
      if (object instanceof JSONObject) {
        bundle.putBundle(str, a((JSONObject)object));
        continue;
      } 
      if (object instanceof org.json.JSONArray) {
        object = object;
        if (object.length() == 0) {
          bundle.putStringArray(str, new String[0]);
          continue;
        } 
        Object object1 = object.get(0);
        if (object1 instanceof JSONObject) {
          object1 = new Bundle[object.length()];
          for (int j = 0; j < object.length(); j++)
            object1[j] = a(object.getJSONObject(j)); 
          bundle.putParcelableArray(str, (Parcelable[])object1);
          continue;
        } 
        if (object1 instanceof org.json.JSONArray)
          throw new bhp("Nested arrays are not supported."); 
        object1 = new String[object.length()];
        for (int i = 0; i < object.length(); i++)
          object1[i] = object.get(i).toString(); 
        bundle.putStringArray(str, (String[])object1);
        continue;
      } 
      bundle.putString(str, object.toString());
    } 
    return bundle;
  }
  
  public static bmi a(Activity paramActivity) {
    bqx.a(paramActivity, "activity");
    Intent intent = paramActivity.getIntent();
    if (intent == null)
      return null; 
    bmi bmi2 = a(intent);
    bmi bmi1 = bmi2;
    if (bmi2 == null)
      bmi1 = a(intent.getStringExtra("com.facebook.platform.APPLINK_ARGS")); 
    bmi2 = bmi1;
    return (bmi1 == null) ? a(intent.getData()) : bmi2;
  }
  
  public static bmi a(Intent paramIntent) {
    if (paramIntent != null) {
      Bundle bundle = paramIntent.getBundleExtra("al_applink_data");
      if (bundle != null) {
        bmi bmi1 = new bmi();
        bmi1.y = paramIntent.getData();
        if (bmi1.y == null) {
          String str = bundle.getString("target_url");
          if (str != null)
            bmi1.y = Uri.parse(str); 
        } 
        bmi1.A = bundle;
        bmi1.z = null;
        Bundle bundle1 = bundle.getBundle("referer_data");
        if (bundle1 != null)
          bmi1.x = bundle1.getString("fb_ref"); 
        bundle1 = bundle.getBundle("extras");
        if (bundle1 != null) {
          String str = bundle1.getString("deeplink_context");
          if (str != null)
            try {
              JSONObject jSONObject = new JSONObject(str);
              if (jSONObject.has("promo_code"))
                bmi1.B = jSONObject.getString("promo_code"); 
            } catch (JSONException jSONException) {
              Log.d(w, "Unable to parse deeplink_context JSON", (Throwable)jSONException);
            }  
        } 
        return bmi1;
      } 
    } 
    return null;
  }
  
  private static bmi a(Uri paramUri) {
    if (paramUri == null)
      return null; 
    bmi bmi1 = new bmi();
    bmi1.y = paramUri;
    return bmi1;
  }
  
  private static bmi a(String paramString) {
    if (paramString != null)
      try {
        JSONObject jSONObject = new JSONObject(paramString);
        paramString = jSONObject.getString("version");
        if (jSONObject.getJSONObject("bridge_args").getString("method").equals("applink") && paramString.equals("2")) {
          bmi bmi1 = new bmi();
          bmi1.z = jSONObject.getJSONObject("method_args");
          if (bmi1.z.has("ref")) {
            bmi1.x = bmi1.z.getString("ref");
          } else if (bmi1.z.has("referer_data")) {
            jSONObject = bmi1.z.getJSONObject("referer_data");
            if (jSONObject.has("fb_ref"))
              bmi1.x = jSONObject.getString("fb_ref"); 
          } 
          if (bmi1.z.has("target_url"))
            bmi1.y = Uri.parse(bmi1.z.getString("target_url")); 
          if (bmi1.z.has("extras")) {
            jSONObject = bmi1.z.getJSONObject("extras");
            if (jSONObject.has("deeplink_context")) {
              jSONObject = jSONObject.getJSONObject("deeplink_context");
              if (jSONObject.has("promo_code"))
                bmi1.B = jSONObject.getString("promo_code"); 
            } 
          } 
          bmi1.A = a(bmi1.z);
          return bmi1;
        } 
        return null;
      } catch (JSONException jSONException) {
        Log.d(w, "Unable to parse AppLink JSON", (Throwable)jSONException);
        return null;
      } catch (bhp bhp) {
        Log.d(w, "Unable to parse AppLink JSON", bhp);
        return null;
      }  
    return null;
  }
  
  public static void a(Context paramContext, bmk parambmk) {
    a(paramContext, null, parambmk);
  }
  
  public static void a(Context paramContext, String paramString, bmk parambmk) {
    bqx.a(paramContext, "context");
    bqx.a(parambmk, "completionHandler");
    String str = paramString;
    if (paramString == null)
      str = bqq.a(paramContext); 
    bqx.a(str, "applicationId");
    paramContext = paramContext.getApplicationContext();
    bhv.f().execute(new bmj(paramContext, str, parambmk));
  }
  
  private static void c(Context paramContext, String paramString, bmk parambmk) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #6
    //   3: aconst_null
    //   4: astore #5
    //   6: new org/json/JSONObject
    //   9: dup
    //   10: invokespecial <init> : ()V
    //   13: astore #7
    //   15: aload #7
    //   17: ldc_w 'event'
    //   20: ldc 'DEFERRED_APP_LINK'
    //   22: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   25: pop
    //   26: aload #7
    //   28: aload_0
    //   29: invokestatic a : (Landroid/content/Context;)Lbmv;
    //   32: aload_0
    //   33: invokestatic d : (Landroid/content/Context;)Ljava/lang/String;
    //   36: aload_0
    //   37: invokestatic b : (Landroid/content/Context;)Z
    //   40: invokestatic a : (Lorg/json/JSONObject;Lbmv;Ljava/lang/String;Z)V
    //   43: aload #7
    //   45: invokestatic h : ()Landroid/content/Context;
    //   48: invokestatic a : (Lorg/json/JSONObject;Landroid/content/Context;)V
    //   51: aload #7
    //   53: ldc_w 'application_package_name'
    //   56: aload_0
    //   57: invokevirtual getPackageName : ()Ljava/lang/String;
    //   60: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   63: pop
    //   64: ldc '%s/activities'
    //   66: iconst_1
    //   67: anewarray java/lang/Object
    //   70: dup
    //   71: iconst_0
    //   72: aload_1
    //   73: aastore
    //   74: invokestatic format : (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   77: astore_1
    //   78: aload #6
    //   80: astore_0
    //   81: aconst_null
    //   82: aload_1
    //   83: aload #7
    //   85: aconst_null
    //   86: invokestatic a : (Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lbim;)Lcom/facebook/GraphRequest;
    //   89: invokevirtual m : ()Lbix;
    //   92: invokevirtual b : ()Lorg/json/JSONObject;
    //   95: astore #8
    //   97: aload #5
    //   99: astore_1
    //   100: aload #8
    //   102: ifnull -> 366
    //   105: aload #6
    //   107: astore_0
    //   108: aload #8
    //   110: ldc 'applink_args'
    //   112: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   115: astore #9
    //   117: aload #6
    //   119: astore_0
    //   120: aload #8
    //   122: ldc 'click_time'
    //   124: ldc2_w -1
    //   127: invokevirtual optLong : (Ljava/lang/String;J)J
    //   130: lstore_3
    //   131: aload #6
    //   133: astore_0
    //   134: aload #8
    //   136: ldc 'applink_class'
    //   138: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   141: astore #7
    //   143: aload #6
    //   145: astore_0
    //   146: aload #8
    //   148: ldc 'applink_url'
    //   150: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   153: astore #8
    //   155: aload #5
    //   157: astore_1
    //   158: aload #6
    //   160: astore_0
    //   161: aload #9
    //   163: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   166: ifne -> 366
    //   169: aload #6
    //   171: astore_0
    //   172: aload #9
    //   174: invokestatic a : (Ljava/lang/String;)Lbmi;
    //   177: astore #5
    //   179: lload_3
    //   180: ldc2_w -1
    //   183: lcmp
    //   184: ifeq -> 241
    //   187: aload #5
    //   189: astore_0
    //   190: aload #5
    //   192: getfield z : Lorg/json/JSONObject;
    //   195: ifnull -> 213
    //   198: aload #5
    //   200: astore_0
    //   201: aload #5
    //   203: getfield z : Lorg/json/JSONObject;
    //   206: ldc 'com.facebook.platform.APPLINK_TAP_TIME_UTC'
    //   208: lload_3
    //   209: invokevirtual put : (Ljava/lang/String;J)Lorg/json/JSONObject;
    //   212: pop
    //   213: aload #5
    //   215: astore_0
    //   216: aload #5
    //   218: getfield A : Landroid/os/Bundle;
    //   221: ifnull -> 241
    //   224: aload #5
    //   226: astore_0
    //   227: aload #5
    //   229: getfield A : Landroid/os/Bundle;
    //   232: ldc 'com.facebook.platform.APPLINK_TAP_TIME_UTC'
    //   234: lload_3
    //   235: invokestatic toString : (J)Ljava/lang/String;
    //   238: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   241: aload #7
    //   243: ifnull -> 299
    //   246: aload #5
    //   248: astore_0
    //   249: aload #5
    //   251: getfield z : Lorg/json/JSONObject;
    //   254: ifnull -> 273
    //   257: aload #5
    //   259: astore_0
    //   260: aload #5
    //   262: getfield z : Lorg/json/JSONObject;
    //   265: ldc 'com.facebook.platform.APPLINK_NATIVE_CLASS'
    //   267: aload #7
    //   269: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   272: pop
    //   273: aload #5
    //   275: astore_0
    //   276: aload #5
    //   278: getfield A : Landroid/os/Bundle;
    //   281: ifnull -> 299
    //   284: aload #5
    //   286: astore_0
    //   287: aload #5
    //   289: getfield A : Landroid/os/Bundle;
    //   292: ldc 'com.facebook.platform.APPLINK_NATIVE_CLASS'
    //   294: aload #7
    //   296: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   299: aload #5
    //   301: astore_1
    //   302: aload #8
    //   304: ifnull -> 366
    //   307: aload #5
    //   309: astore_0
    //   310: aload #5
    //   312: getfield z : Lorg/json/JSONObject;
    //   315: ifnull -> 334
    //   318: aload #5
    //   320: astore_0
    //   321: aload #5
    //   323: getfield z : Lorg/json/JSONObject;
    //   326: ldc 'com.facebook.platform.APPLINK_NATIVE_URL'
    //   328: aload #8
    //   330: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   333: pop
    //   334: aload #5
    //   336: astore_1
    //   337: aload #5
    //   339: astore_0
    //   340: aload #5
    //   342: getfield A : Landroid/os/Bundle;
    //   345: ifnull -> 366
    //   348: aload #5
    //   350: astore_0
    //   351: aload #5
    //   353: getfield A : Landroid/os/Bundle;
    //   356: ldc 'com.facebook.platform.APPLINK_NATIVE_URL'
    //   358: aload #8
    //   360: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   363: aload #5
    //   365: astore_1
    //   366: aload_2
    //   367: aload_1
    //   368: invokeinterface a : (Lbmi;)V
    //   373: return
    //   374: astore_0
    //   375: new bhp
    //   378: dup
    //   379: ldc_w 'An error occurred while preparing deferred app link'
    //   382: aload_0
    //   383: invokespecial <init> : (Ljava/lang/String;Ljava/lang/Throwable;)V
    //   386: athrow
    //   387: astore_0
    //   388: aload #5
    //   390: astore_0
    //   391: getstatic bmi.w : Ljava/lang/String;
    //   394: ldc_w 'Unable to put tap time in AppLinkData.arguments'
    //   397: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   400: pop
    //   401: goto -> 241
    //   404: astore_1
    //   405: getstatic bmi.w : Ljava/lang/String;
    //   408: ldc_w 'Unable to fetch deferred applink from server'
    //   411: invokestatic c : (Ljava/lang/String;Ljava/lang/String;)V
    //   414: aload_0
    //   415: astore_1
    //   416: goto -> 366
    //   419: astore_0
    //   420: aload #5
    //   422: astore_0
    //   423: getstatic bmi.w : Ljava/lang/String;
    //   426: ldc_w 'Unable to put tap time in AppLinkData.arguments'
    //   429: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   432: pop
    //   433: goto -> 299
    //   436: astore_0
    //   437: aload #5
    //   439: astore_0
    //   440: getstatic bmi.w : Ljava/lang/String;
    //   443: ldc_w 'Unable to put tap time in AppLinkData.arguments'
    //   446: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   449: pop
    //   450: aload #5
    //   452: astore_1
    //   453: goto -> 366
    // Exception table:
    //   from	to	target	type
    //   15	64	374	org/json/JSONException
    //   81	97	404	java/lang/Exception
    //   108	117	404	java/lang/Exception
    //   120	131	404	java/lang/Exception
    //   134	143	404	java/lang/Exception
    //   146	155	404	java/lang/Exception
    //   161	169	404	java/lang/Exception
    //   172	179	404	java/lang/Exception
    //   190	198	387	org/json/JSONException
    //   190	198	404	java/lang/Exception
    //   201	213	387	org/json/JSONException
    //   201	213	404	java/lang/Exception
    //   216	224	387	org/json/JSONException
    //   216	224	404	java/lang/Exception
    //   227	241	387	org/json/JSONException
    //   227	241	404	java/lang/Exception
    //   249	257	419	org/json/JSONException
    //   249	257	404	java/lang/Exception
    //   260	273	419	org/json/JSONException
    //   260	273	404	java/lang/Exception
    //   276	284	419	org/json/JSONException
    //   276	284	404	java/lang/Exception
    //   287	299	419	org/json/JSONException
    //   287	299	404	java/lang/Exception
    //   310	318	436	org/json/JSONException
    //   310	318	404	java/lang/Exception
    //   321	334	436	org/json/JSONException
    //   321	334	404	java/lang/Exception
    //   340	348	436	org/json/JSONException
    //   340	348	404	java/lang/Exception
    //   351	363	436	org/json/JSONException
    //   351	363	404	java/lang/Exception
    //   391	401	404	java/lang/Exception
    //   423	433	404	java/lang/Exception
    //   440	450	404	java/lang/Exception
  }
  
  public Uri a() {
    return this.y;
  }
  
  public String b() {
    return this.x;
  }
  
  public String c() {
    return this.B;
  }
  
  public Bundle d() {
    return this.A;
  }
  
  public Bundle e() {
    return (this.A != null) ? this.A.getBundle("referer_data") : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */