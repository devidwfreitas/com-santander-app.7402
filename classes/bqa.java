import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

public final class bqa {
  public static final String A = "com.facebook.platform.protocol.RESULT_ARGS";
  
  public static final String B = "app_name";
  
  public static final String C = "action_id";
  
  public static final String D = "error";
  
  public static final String E = "com.facebook.platform.extra.DID_COMPLETE";
  
  public static final String F = "com.facebook.platform.extra.COMPLETION_GESTURE";
  
  public static final String G = "didComplete";
  
  public static final String H = "completionGesture";
  
  public static final int I = 65536;
  
  public static final int J = 65537;
  
  static final int K = 65538;
  
  static final int L = 65539;
  
  public static final int M = 65540;
  
  public static final int N = 65541;
  
  public static final int O = 65542;
  
  public static final int P = 65543;
  
  public static final int Q = 65544;
  
  public static final int R = 65545;
  
  public static final int S = 65546;
  
  public static final int T = 65547;
  
  static final String U = "com.facebook.platform.extra.PROTOCOL_VERSIONS";
  
  public static final String V = "com.facebook.platform.action.request.FEED_DIALOG";
  
  public static final String W = "com.facebook.platform.action.request.MESSAGE_DIALOG";
  
  public static final String X = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
  
  public static final String Y = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
  
  public static final String Z = "com.facebook.platform.action.request.LIKE_DIALOG";
  
  public static final int a = -1;
  
  public static final String aA = "ProtocolError";
  
  public static final String aB = "UserCanceled";
  
  public static final String aC = "ApplicationError";
  
  public static final String aD = "NetworkError";
  
  public static final String aE = "PermissionDenied";
  
  public static final String aF = "ServiceDisabled";
  
  public static final String aG = "url";
  
  public static final String aH = "action";
  
  public static final String aI = "params";
  
  public static final String aJ = "is_fallback";
  
  public static final String aK = "only_me";
  
  public static final String aL = "friends";
  
  public static final String aM = "everyone";
  
  private static final String aN = bqa.class.getName();
  
  private static final String aO = "com.facebook.katana.ProxyAuth";
  
  private static final String aP = "com.facebook.katana.platform.TokenRefreshService";
  
  private static final String aQ = "content://";
  
  private static final String aR = ".provider.PlatformProvider";
  
  private static final String aS = ".provider.PlatformProvider/versions";
  
  private static final String aT = "version";
  
  private static List<bqf> aU = e();
  
  private static Map<String, List<bqf>> aV = f();
  
  private static AtomicBoolean aW = new AtomicBoolean(false);
  
  private static final List<Integer> aX = Arrays.asList(new Integer[] { 
        Integer.valueOf(20160327), Integer.valueOf(20141218), Integer.valueOf(20141107), Integer.valueOf(20141028), Integer.valueOf(20141001), Integer.valueOf(20140701), Integer.valueOf(20140324), Integer.valueOf(20140204), Integer.valueOf(20131107), Integer.valueOf(20130618), 
        Integer.valueOf(20130502), Integer.valueOf(20121101) });
  
  public static final String aa = "com.facebook.platform.action.request.APPINVITES_DIALOG";
  
  public static final String ab = "com.facebook.platform.extra.PERMISSIONS";
  
  public static final String ac = "com.facebook.platform.extra.APPLICATION_ID";
  
  public static final String ad = "com.facebook.platform.extra.APPLICATION_NAME";
  
  public static final String ae = "com.facebook.platform.extra.USER_ID";
  
  public static final String af = "com.facebook.platform.extra.LOGGER_REF";
  
  public static final String ag = "com.facebook.platform.extra.ACCESS_TOKEN";
  
  public static final String ah = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH";
  
  public static final String ai = "access_token";
  
  public static final String aj = "signed request";
  
  public static final String ak = "expires_seconds_since_epoch";
  
  public static final String al = "permissions";
  
  public static final String am = "fbsdk:create_object";
  
  public static final String an = "user_generated";
  
  public static final String ao = "url";
  
  public static final String ap = "com.facebook.platform.status.ERROR_TYPE";
  
  public static final String aq = "com.facebook.platform.status.ERROR_DESCRIPTION";
  
  public static final String ar = "com.facebook.platform.status.ERROR_CODE";
  
  public static final String as = "com.facebook.platform.status.ERROR_SUBCODE";
  
  public static final String at = "com.facebook.platform.status.ERROR_JSON";
  
  public static final String au = "error_type";
  
  public static final String av = "error_description";
  
  public static final String aw = "error_code";
  
  public static final String ax = "error_subcode";
  
  public static final String ay = "error_json";
  
  public static final String az = "UnknownError";
  
  public static final String b = "scope";
  
  public static final String c = "client_id";
  
  public static final String d = "e2e";
  
  public static final String e = "facebook_sdk_version";
  
  static final String f = "com.facebook.platform.PLATFORM_ACTIVITY";
  
  static final String g = "com.facebook.platform.PLATFORM_SERVICE";
  
  public static final int h = 20121101;
  
  public static final int i = 20130502;
  
  public static final int j = 20130618;
  
  public static final int k = 20131107;
  
  public static final int l = 20140204;
  
  public static final int m = 20140324;
  
  public static final int n = 20140701;
  
  public static final int o = 20141001;
  
  public static final int p = 20141028;
  
  public static final int q = 20141107;
  
  public static final int r = 20141218;
  
  public static final int s = 20160327;
  
  public static final int t = 20170411;
  
  public static final String u = "com.facebook.platform.protocol.PROTOCOL_VERSION";
  
  public static final String v = "com.facebook.platform.protocol.PROTOCOL_ACTION";
  
  public static final String w = "com.facebook.platform.protocol.CALL_ID";
  
  public static final String x = "com.facebook.platform.extra.INSTALLDATA_PACKAGE";
  
  public static final String y = "com.facebook.platform.protocol.BRIDGE_ARGS";
  
  public static final String z = "com.facebook.platform.protocol.METHOD_ARGS";
  
  public static final int a() {
    return ((Integer)aX.get(0)).intValue();
  }
  
  public static int a(Intent paramIntent) {
    return paramIntent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
  }
  
  public static int a(TreeSet<Integer> paramTreeSet, int paramInt, int[] paramArrayOfint) {
    int i = paramArrayOfint.length;
    Iterator<Integer> iterator = paramTreeSet.descendingIterator();
    int j = -1;
    i--;
    while (true) {
      if (iterator.hasNext()) {
        int k = ((Integer)iterator.next()).intValue();
        j = Math.max(j, k);
        while (i >= 0 && paramArrayOfint[i] > k)
          i--; 
        if (i >= 0) {
          if (paramArrayOfint[i] == k)
            return (i % 2 == 0) ? Math.min(j, paramInt) : -1; 
          continue;
        } 
      } 
      return -1;
    } 
  }
  
  public static Intent a(Context paramContext) {
    for (bqf bqf : aU) {
      Intent intent = b(paramContext, (new Intent()).setClassName(bqf.a(), "com.facebook.katana.platform.TokenRefreshService"), bqf);
      if (intent != null)
        return intent; 
    } 
    return null;
  }
  
  static Intent a(Context paramContext, Intent paramIntent, bqf parambqf) {
    if (paramIntent == null)
      return null; 
    ResolveInfo resolveInfo = paramContext.getPackageManager().resolveActivity(paramIntent, 0);
    return (resolveInfo == null) ? null : (!parambqf.a(paramContext, resolveInfo.activityInfo.packageName) ? null : paramIntent);
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, bqg parambqg, Bundle paramBundle) {
    if (parambqg != null) {
      bqf bqf = bqg.a(parambqg);
      if (bqf != null) {
        Intent intent = a(paramContext, (new Intent()).setAction("com.facebook.platform.PLATFORM_ACTIVITY").setPackage(bqf.a()).addCategory("android.intent.category.DEFAULT"), bqf);
        if (intent != null) {
          a(intent, paramString1, paramString2, bqg.b(parambqg), paramBundle);
          return intent;
        } 
      } 
    } 
    return null;
  }
  
  public static Intent a(Context paramContext, String paramString1, Collection<String> paramCollection, String paramString2, boolean paramBoolean1, boolean paramBoolean2, brn parambrn, String paramString3) {
    bqc bqc = new bqc(null);
    return a(paramContext, a(bqc, paramString1, paramCollection, paramString2, paramBoolean1, paramBoolean2, parambrn, paramString3), bqc);
  }
  
  public static Intent a(Intent paramIntent, Bundle paramBundle, bhp parambhp) {
    UUID uUID = b(paramIntent);
    if (uUID == null)
      return null; 
    Intent intent2 = new Intent();
    intent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", a(paramIntent));
    Bundle bundle = new Bundle();
    bundle.putString("action_id", uUID.toString());
    if (parambhp != null)
      bundle.putBundle("error", a(parambhp)); 
    intent2.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle);
    Intent intent1 = intent2;
    if (paramBundle != null) {
      intent2.putExtra("com.facebook.platform.protocol.RESULT_ARGS", paramBundle);
      return intent2;
    } 
    return intent1;
  }
  
  private static Intent a(bqf parambqf, String paramString1, Collection<String> paramCollection, String paramString2, boolean paramBoolean1, boolean paramBoolean2, brn parambrn, String paramString3) {
    String str = parambqf.b();
    if (str == null)
      return null; 
    Intent intent = (new Intent()).setClassName(parambqf.a(), str).putExtra("client_id", paramString1);
    intent.putExtra("facebook_sdk_version", bhv.j());
    if (!bqq.a(paramCollection))
      intent.putExtra("scope", TextUtils.join(",", paramCollection)); 
    if (!bqq.a(paramString2))
      intent.putExtra("e2e", paramString2); 
    intent.putExtra("state", paramString3);
    intent.putExtra("response_type", "token,signed_request");
    intent.putExtra("return_scopes", "true");
    if (paramBoolean2)
      intent.putExtra("default_audience", parambrn.getNativeProtocolAudience()); 
    intent.putExtra("legacy_override", bhv.i());
    intent.putExtra("auth_type", "rerequest");
    return intent;
  }
  
  public static Bundle a(bhp parambhp) {
    if (parambhp == null)
      return null; 
    Bundle bundle2 = new Bundle();
    bundle2.putString("error_description", parambhp.toString());
    Bundle bundle1 = bundle2;
    if (parambhp instanceof bhr) {
      bundle2.putString("error_type", "UserCanceled");
      return bundle2;
    } 
    return bundle1;
  }
  
  public static bhp a(Bundle paramBundle) {
    if (paramBundle == null)
      return null; 
    String str2 = paramBundle.getString("error_type");
    String str1 = str2;
    if (str2 == null)
      str1 = paramBundle.getString("com.facebook.platform.status.ERROR_TYPE"); 
    String str3 = paramBundle.getString("error_description");
    str2 = str3;
    if (str3 == null)
      str2 = paramBundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION"); 
    return (str1 != null && str1.equalsIgnoreCase("UserCanceled")) ? new bhr(str2) : new bhp(str2);
  }
  
  public static bqg a(String paramString, int[] paramArrayOfint) {
    return a(aV.get(paramString), paramArrayOfint);
  }
  
  private static bqg a(List<bqf> paramList, int[] paramArrayOfint) {
    b();
    if (paramList == null)
      return bqg.a(); 
    for (bqf bqf : paramList) {
      int i = a(bqf.c(), a(), paramArrayOfint);
      if (i != -1)
        return bqg.a(bqf, i); 
    } 
    return bqg.a();
  }
  
  public static void a(Intent paramIntent, String paramString1, String paramString2, int paramInt, Bundle paramBundle) {
    Bundle bundle;
    String str2 = bhv.l();
    String str1 = bhv.m();
    paramIntent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", paramInt).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", paramString2).putExtra("com.facebook.platform.extra.APPLICATION_ID", str2);
    if (a(paramInt)) {
      Bundle bundle1 = new Bundle();
      bundle1.putString("action_id", paramString1);
      bqq.a(bundle1, "app_name", str1);
      paramIntent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle1);
      bundle = paramBundle;
      if (paramBundle == null)
        bundle = new Bundle(); 
      paramIntent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", bundle);
      return;
    } 
    paramIntent.putExtra("com.facebook.platform.protocol.CALL_ID", (String)bundle);
    if (!bqq.a(str1))
      paramIntent.putExtra("com.facebook.platform.extra.APPLICATION_NAME", str1); 
    paramIntent.putExtras(paramBundle);
  }
  
  public static boolean a(int paramInt) {
    return (aX.contains(Integer.valueOf(paramInt)) && paramInt >= 20140701);
  }
  
  public static int b(int paramInt) {
    return a(aU, new int[] { paramInt }).c();
  }
  
  public static Intent b(Context paramContext) {
    for (bqf bqf : aU) {
      Intent intent = b(paramContext, (new Intent("com.facebook.platform.PLATFORM_SERVICE")).setPackage(bqf.a()).addCategory("android.intent.category.DEFAULT"), bqf);
      if (intent != null)
        return intent; 
    } 
    return null;
  }
  
  static Intent b(Context paramContext, Intent paramIntent, bqf parambqf) {
    if (paramIntent == null)
      return null; 
    ResolveInfo resolveInfo = paramContext.getPackageManager().resolveService(paramIntent, 0);
    return (resolveInfo == null) ? null : (!parambqf.a(paramContext, resolveInfo.serviceInfo.packageName) ? null : paramIntent);
  }
  
  public static Intent b(Context paramContext, String paramString1, Collection<String> paramCollection, String paramString2, boolean paramBoolean1, boolean paramBoolean2, brn parambrn, String paramString3) {
    for (bqf bqf : aU) {
      Intent intent = a(paramContext, a(bqf, paramString1, paramCollection, paramString2, paramBoolean1, paramBoolean2, parambrn, paramString3), bqf);
      if (intent != null)
        return intent; 
    } 
    return null;
  }
  
  private static TreeSet<Integer> b(bqf parambqf) {
    // Byte code:
    //   0: new java/util/TreeSet
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_2
    //   8: invokestatic h : ()Landroid/content/Context;
    //   11: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   14: astore_1
    //   15: aload_0
    //   16: invokestatic c : (Lbqf;)Landroid/net/Uri;
    //   19: astore_3
    //   20: invokestatic h : ()Landroid/content/Context;
    //   23: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   26: astore #4
    //   28: new java/lang/StringBuilder
    //   31: dup
    //   32: invokespecial <init> : ()V
    //   35: aload_0
    //   36: invokevirtual a : ()Ljava/lang/String;
    //   39: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc '.provider.PlatformProvider'
    //   44: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual toString : ()Ljava/lang/String;
    //   50: astore_0
    //   51: aload #4
    //   53: aload_0
    //   54: iconst_0
    //   55: invokevirtual resolveContentProvider : (Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   58: astore_0
    //   59: aload_0
    //   60: ifnull -> 172
    //   63: aload_1
    //   64: aload_3
    //   65: iconst_1
    //   66: anewarray java/lang/String
    //   69: dup
    //   70: iconst_0
    //   71: ldc 'version'
    //   73: aastore
    //   74: aconst_null
    //   75: aconst_null
    //   76: aconst_null
    //   77: invokevirtual query : (Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   80: astore_0
    //   81: aload_0
    //   82: astore_1
    //   83: aload_0
    //   84: ifnull -> 174
    //   87: aload_0
    //   88: astore_1
    //   89: aload_0
    //   90: invokeinterface moveToNext : ()Z
    //   95: ifeq -> 174
    //   98: aload_2
    //   99: aload_0
    //   100: aload_0
    //   101: ldc 'version'
    //   103: invokeinterface getColumnIndex : (Ljava/lang/String;)I
    //   108: invokeinterface getInt : (I)I
    //   113: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   116: invokevirtual add : (Ljava/lang/Object;)Z
    //   119: pop
    //   120: goto -> 87
    //   123: astore_2
    //   124: aload_0
    //   125: astore_1
    //   126: aload_2
    //   127: astore_0
    //   128: aload_1
    //   129: ifnull -> 138
    //   132: aload_1
    //   133: invokeinterface close : ()V
    //   138: aload_0
    //   139: athrow
    //   140: astore_0
    //   141: getstatic bqa.aN : Ljava/lang/String;
    //   144: ldc_w 'Failed to query content resolver.'
    //   147: aload_0
    //   148: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   151: pop
    //   152: aconst_null
    //   153: astore_0
    //   154: goto -> 59
    //   157: getstatic bqa.aN : Ljava/lang/String;
    //   160: ldc_w 'Failed to query content resolver.'
    //   163: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   166: pop
    //   167: aconst_null
    //   168: astore_0
    //   169: goto -> 81
    //   172: aconst_null
    //   173: astore_1
    //   174: aload_1
    //   175: ifnull -> 184
    //   178: aload_1
    //   179: invokeinterface close : ()V
    //   184: aload_2
    //   185: areturn
    //   186: astore_0
    //   187: goto -> 157
    //   190: astore_0
    //   191: aconst_null
    //   192: astore_1
    //   193: goto -> 128
    //   196: astore_0
    //   197: goto -> 157
    // Exception table:
    //   from	to	target	type
    //   20	51	190	finally
    //   51	59	140	java/lang/RuntimeException
    //   51	59	190	finally
    //   63	81	196	java/lang/NullPointerException
    //   63	81	186	java/lang/SecurityException
    //   63	81	190	finally
    //   89	120	123	finally
    //   141	152	190	finally
    //   157	167	190	finally
  }
  
  public static UUID b(Intent paramIntent) {
    if (paramIntent != null) {
      Bundle bundle;
      String str;
      if (a(a(paramIntent))) {
        bundle = paramIntent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
        if (bundle != null) {
          str = bundle.getString("action_id");
        } else {
          bundle = null;
        } 
      } else {
        str = bundle.getStringExtra("com.facebook.platform.protocol.CALL_ID");
      } 
      if (str != null)
        try {
          return UUID.fromString(str);
        } catch (IllegalArgumentException illegalArgumentException) {
          return null;
        }  
    } 
    return null;
  }
  
  public static void b() {
    if (!aW.compareAndSet(false, true))
      return; 
    bhv.f().execute(new bqb());
  }
  
  private static Uri c(bqf parambqf) {
    return Uri.parse("content://" + parambqf.a() + ".provider.PlatformProvider/versions");
  }
  
  public static Bundle c(Intent paramIntent) {
    return !a(a(paramIntent)) ? null : paramIntent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
  }
  
  public static Bundle d(Intent paramIntent) {
    return !a(a(paramIntent)) ? paramIntent.getExtras() : paramIntent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
  }
  
  public static Bundle e(Intent paramIntent) {
    int i = a(paramIntent);
    Bundle bundle = paramIntent.getExtras();
    return (!a(i) || bundle == null) ? bundle : bundle.getBundle("com.facebook.platform.protocol.RESULT_ARGS");
  }
  
  private static List<bqf> e() {
    ArrayList<bqd> arrayList = new ArrayList();
    arrayList.add(new bqd(null));
    arrayList.add(new bqh(null));
    return (List)arrayList;
  }
  
  private static Map<String, List<bqf>> f() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    ArrayList<bqe> arrayList = new ArrayList();
    arrayList.add(new bqe(null));
    hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", aU);
    hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", aU);
    hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", aU);
    hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", aU);
    hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
    hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
    return (Map)hashMap;
  }
  
  public static boolean f(Intent paramIntent) {
    Bundle bundle = c(paramIntent);
    return (bundle != null) ? bundle.containsKey("error") : paramIntent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
  }
  
  public static Bundle g(Intent paramIntent) {
    if (!f(paramIntent))
      return null; 
    Bundle bundle = c(paramIntent);
    return (bundle != null) ? bundle.getBundle("error") : paramIntent.getExtras();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */