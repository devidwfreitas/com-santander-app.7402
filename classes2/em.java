import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class em {
  private static final String a = "user_agent";
  
  private static final String b = "version";
  
  private static final String c = "referer_app_link";
  
  private static final String d = "app_name";
  
  private static final String e = "package";
  
  private static final String f = "1.0";
  
  private static ep g;
  
  private final ek h;
  
  private final Bundle i;
  
  private final Bundle j;
  
  public em(ek paramek, Bundle paramBundle1, Bundle paramBundle2) {
    if (paramek == null)
      throw new IllegalArgumentException("appLink must not be null."); 
    Bundle bundle = paramBundle1;
    if (paramBundle1 == null)
      bundle = new Bundle(); 
    paramBundle1 = paramBundle2;
    if (paramBundle2 == null)
      paramBundle1 = new Bundle(); 
    this.h = paramek;
    this.i = bundle;
    this.j = paramBundle1;
  }
  
  public static eo a(Context paramContext, ek paramek) {
    return (new em(paramek, null, null)).a(paramContext);
  }
  
  public static fd<eo> a(Context paramContext, Uri paramUri) {
    return a(paramContext, paramUri, c(paramContext));
  }
  
  public static fd<eo> a(Context paramContext, Uri paramUri, ep paramep) {
    return paramep.a(paramUri).c(new en(paramContext), fd.b);
  }
  
  public static fd<eo> a(Context paramContext, String paramString) {
    return a(paramContext, paramString, c(paramContext));
  }
  
  public static fd<eo> a(Context paramContext, String paramString, ep paramep) {
    return a(paramContext, Uri.parse(paramString), paramep);
  }
  
  public static fd<eo> a(Context paramContext, URL paramURL) {
    return a(paramContext, paramURL, c(paramContext));
  }
  
  public static fd<eo> a(Context paramContext, URL paramURL, ep paramep) {
    return a(paramContext, Uri.parse(paramURL.toString()), paramep);
  }
  
  private Object a(Object paramObject) {
    int i = 0;
    int j = 0;
    int k = 0;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    byte b = 0;
    if (paramObject instanceof Bundle)
      return a((Bundle)paramObject); 
    if (paramObject instanceof CharSequence)
      return paramObject.toString(); 
    if (paramObject instanceof List) {
      JSONArray jSONArray = new JSONArray();
      paramObject = ((List)paramObject).iterator();
      while (paramObject.hasNext())
        jSONArray.put(a(paramObject.next())); 
      return jSONArray;
    } 
    if (paramObject instanceof android.util.SparseArray) {
      JSONArray jSONArray = new JSONArray();
      paramObject = paramObject;
      for (i = b; i < paramObject.size(); i++)
        jSONArray.put(paramObject.keyAt(i), a(paramObject.valueAt(i))); 
      return jSONArray;
    } 
    if (paramObject instanceof Character)
      return paramObject.toString(); 
    Object object = paramObject;
    if (!(paramObject instanceof Boolean)) {
      if (paramObject instanceof Number)
        return (paramObject instanceof Double || paramObject instanceof Float) ? Double.valueOf(((Number)paramObject).doubleValue()) : Long.valueOf(((Number)paramObject).longValue()); 
      if (paramObject instanceof boolean[]) {
        object = new JSONArray();
        paramObject = paramObject;
        j = paramObject.length;
        while (i < j) {
          object.put(a(Boolean.valueOf(paramObject[i])));
          i++;
        } 
        return object;
      } 
      if (paramObject instanceof char[]) {
        object = new JSONArray();
        paramObject = paramObject;
        k = paramObject.length;
        for (i = j; i < k; i++)
          object.put(a(Character.valueOf(paramObject[i]))); 
        return object;
      } 
      if (paramObject instanceof CharSequence[]) {
        object = new JSONArray();
        paramObject = paramObject;
        j = paramObject.length;
        for (i = k; i < j; i++)
          object.put(a(paramObject[i])); 
        return object;
      } 
      if (paramObject instanceof double[]) {
        object = new JSONArray();
        paramObject = paramObject;
        j = paramObject.length;
        for (i = bool1; i < j; i++)
          object.put(a(Double.valueOf(paramObject[i]))); 
        return object;
      } 
      if (paramObject instanceof float[]) {
        object = new JSONArray();
        paramObject = paramObject;
        j = paramObject.length;
        for (i = bool2; i < j; i++)
          object.put(a(Float.valueOf(paramObject[i]))); 
        return object;
      } 
      if (paramObject instanceof int[]) {
        object = new JSONArray();
        paramObject = paramObject;
        j = paramObject.length;
        for (i = bool3; i < j; i++)
          object.put(a(Integer.valueOf(paramObject[i]))); 
        return object;
      } 
      if (paramObject instanceof long[]) {
        object = new JSONArray();
        paramObject = paramObject;
        j = paramObject.length;
        for (i = bool4; i < j; i++)
          object.put(a(Long.valueOf(paramObject[i]))); 
        return object;
      } 
      if (paramObject instanceof short[]) {
        object = new JSONArray();
        paramObject = paramObject;
        j = paramObject.length;
        for (i = bool5; i < j; i++)
          object.put(a(Short.valueOf(paramObject[i]))); 
        return object;
      } 
      if (paramObject instanceof String[]) {
        object = new JSONArray();
        paramObject = paramObject;
        j = paramObject.length;
        for (i = bool6; i < j; i++)
          object.put(a(paramObject[i])); 
        return object;
      } 
      return null;
    } 
    return object;
  }
  
  private JSONObject a(Bundle paramBundle) {
    JSONObject jSONObject = new JSONObject();
    for (String str : paramBundle.keySet())
      jSONObject.put(str, a(paramBundle.get(str))); 
    return jSONObject;
  }
  
  private void a(Context paramContext, Intent paramIntent, eo parameo, JSONException paramJSONException) {
    String str;
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    if (paramJSONException != null)
      hashMap.put("error", paramJSONException.getLocalizedMessage()); 
    if (parameo.isSucceeded()) {
      str = "1";
    } else {
      str = "0";
    } 
    hashMap.put("success", str);
    hashMap.put("type", parameo.getCode());
    fc.a(paramContext, "al_nav_out", paramIntent, (Map)hashMap);
  }
  
  public static void a(ep paramep) {
    g = paramep;
  }
  
  private Bundle b(Context paramContext) {
    Bundle bundle1 = new Bundle();
    Bundle bundle2 = new Bundle();
    if (paramContext != null) {
      String str = paramContext.getPackageName();
      if (str != null)
        bundle2.putString("package", str); 
      ApplicationInfo applicationInfo = paramContext.getApplicationInfo();
      if (applicationInfo != null) {
        String str1 = paramContext.getString(applicationInfo.labelRes);
        if (str1 != null)
          bundle2.putString("app_name", str1); 
      } 
    } 
    bundle1.putAll(b());
    bundle1.putString("target_url", a().a().toString());
    bundle1.putString("version", "1.0");
    bundle1.putString("user_agent", "Bolts Android 1.4.0");
    bundle1.putBundle("referer_app_link", bundle2);
    bundle1.putBundle("extras", c());
    return bundle1;
  }
  
  private static ep c(Context paramContext) {
    return (d() != null) ? d() : new fz(paramContext);
  }
  
  public static ep d() {
    return g;
  }
  
  public ek a() {
    return this.h;
  }
  
  public eo a(Context paramContext) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   4: astore_3
    //   5: aload_0
    //   6: aload_1
    //   7: invokespecial b : (Landroid/content/Context;)Landroid/os/Bundle;
    //   10: astore #4
    //   12: aload_0
    //   13: invokevirtual a : ()Lek;
    //   16: invokevirtual b : ()Ljava/util/List;
    //   19: invokeinterface iterator : ()Ljava/util/Iterator;
    //   24: astore #5
    //   26: aload #5
    //   28: invokeinterface hasNext : ()Z
    //   33: ifeq -> 267
    //   36: aload #5
    //   38: invokeinterface next : ()Ljava/lang/Object;
    //   43: checkcast el
    //   46: astore #6
    //   48: new android/content/Intent
    //   51: dup
    //   52: ldc_w 'android.intent.action.VIEW'
    //   55: invokespecial <init> : (Ljava/lang/String;)V
    //   58: astore_2
    //   59: aload #6
    //   61: invokevirtual a : ()Landroid/net/Uri;
    //   64: ifnull -> 168
    //   67: aload_2
    //   68: aload #6
    //   70: invokevirtual a : ()Landroid/net/Uri;
    //   73: invokevirtual setData : (Landroid/net/Uri;)Landroid/content/Intent;
    //   76: pop
    //   77: aload_2
    //   78: aload #6
    //   80: invokevirtual d : ()Ljava/lang/String;
    //   83: invokevirtual setPackage : (Ljava/lang/String;)Landroid/content/Intent;
    //   86: pop
    //   87: aload #6
    //   89: invokevirtual c : ()Ljava/lang/String;
    //   92: ifnull -> 110
    //   95: aload_2
    //   96: aload #6
    //   98: invokevirtual d : ()Ljava/lang/String;
    //   101: aload #6
    //   103: invokevirtual c : ()Ljava/lang/String;
    //   106: invokevirtual setClassName : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   109: pop
    //   110: aload_2
    //   111: ldc_w 'al_applink_data'
    //   114: aload #4
    //   116: invokevirtual putExtra : (Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    //   119: pop
    //   120: aload_3
    //   121: aload_2
    //   122: ldc_w 65536
    //   125: invokevirtual resolveActivity : (Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    //   128: ifnull -> 26
    //   131: getstatic eo.FAILED : Leo;
    //   134: astore_3
    //   135: aload_2
    //   136: ifnull -> 183
    //   139: getstatic eo.APP : Leo;
    //   142: astore #4
    //   144: aload_2
    //   145: astore_3
    //   146: aload #4
    //   148: astore_2
    //   149: aload_0
    //   150: aload_1
    //   151: aload_3
    //   152: aload_2
    //   153: aconst_null
    //   154: invokespecial a : (Landroid/content/Context;Landroid/content/Intent;Leo;Lorg/json/JSONException;)V
    //   157: aload_3
    //   158: ifnull -> 166
    //   161: aload_1
    //   162: aload_3
    //   163: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   166: aload_2
    //   167: areturn
    //   168: aload_2
    //   169: aload_0
    //   170: getfield h : Lek;
    //   173: invokevirtual a : ()Landroid/net/Uri;
    //   176: invokevirtual setData : (Landroid/net/Uri;)Landroid/content/Intent;
    //   179: pop
    //   180: goto -> 77
    //   183: aload_0
    //   184: invokevirtual a : ()Lek;
    //   187: invokevirtual c : ()Landroid/net/Uri;
    //   190: astore #5
    //   192: aload #5
    //   194: ifnull -> 260
    //   197: aload_0
    //   198: aload #4
    //   200: invokespecial a : (Landroid/os/Bundle;)Lorg/json/JSONObject;
    //   203: astore_3
    //   204: new android/content/Intent
    //   207: dup
    //   208: ldc_w 'android.intent.action.VIEW'
    //   211: aload #5
    //   213: invokevirtual buildUpon : ()Landroid/net/Uri$Builder;
    //   216: ldc_w 'al_applink_data'
    //   219: aload_3
    //   220: invokevirtual toString : ()Ljava/lang/String;
    //   223: invokevirtual appendQueryParameter : (Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   226: invokevirtual build : ()Landroid/net/Uri;
    //   229: invokespecial <init> : (Ljava/lang/String;Landroid/net/Uri;)V
    //   232: astore_3
    //   233: getstatic eo.WEB : Leo;
    //   236: astore_2
    //   237: goto -> 149
    //   240: astore_3
    //   241: aload_0
    //   242: aload_1
    //   243: aload_2
    //   244: getstatic eo.FAILED : Leo;
    //   247: aload_3
    //   248: invokespecial a : (Landroid/content/Context;Landroid/content/Intent;Leo;Lorg/json/JSONException;)V
    //   251: new java/lang/RuntimeException
    //   254: dup
    //   255: aload_3
    //   256: invokespecial <init> : (Ljava/lang/Throwable;)V
    //   259: athrow
    //   260: aload_3
    //   261: astore_2
    //   262: aconst_null
    //   263: astore_3
    //   264: goto -> 149
    //   267: aconst_null
    //   268: astore_2
    //   269: goto -> 131
    // Exception table:
    //   from	to	target	type
    //   197	204	240	org/json/JSONException
  }
  
  public Bundle b() {
    return this.j;
  }
  
  public Bundle c() {
    return this.i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\em.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */