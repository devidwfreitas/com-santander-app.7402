import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class bkd {
  private static final String b = "TestUserManager";
  
  private String c;
  
  private String d;
  
  private Map<String, JSONObject> e;
  
  static {
    boolean bool;
    if (!bkd.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
  
  public bkd(String paramString1, String paramString2) {
    if (bqq.a(paramString2) || bqq.a(paramString1))
      throw new bhp("Must provide app ID and secret"); 
    this.c = paramString1;
    this.d = paramString2;
  }
  
  private AccessToken a(List<String> paramList, bke parambke, String paramString) {
    d();
    if (bqq.a(paramList))
      paramList = Arrays.asList(new String[] { "email", "publish_actions" }); 
    if (parambke == bke.PRIVATE) {
      jSONObject = c(paramList, parambke, paramString);
      return new AccessToken(jSONObject.optString("access_token"), this.d, jSONObject.optString("id"), paramList, null, bgy.TEST_USER, null, null);
    } 
    JSONObject jSONObject = b(paramList, (bke)jSONObject, paramString);
    return new AccessToken(jSONObject.optString("access_token"), this.d, jSONObject.optString("id"), paramList, null, bgy.TEST_USER, null, null);
  }
  
  private String a(long paramLong) {
    String str = Long.toString(paramLong);
    StringBuilder stringBuilder = new StringBuilder("Perm");
    char[] arrayOfChar = str.toCharArray();
    int j = arrayOfChar.length;
    int i = 0;
    char c;
    for (c = Character.MIN_VALUE; i < j; c = c1) {
      char c2 = arrayOfChar[i];
      char c1 = c2;
      if (c2 == c)
        c1 = (char)(c2 + 10); 
      stringBuilder.append((char)(c1 + 97 - 48));
      i++;
    } 
    return stringBuilder.toString();
  }
  
  private JSONObject a(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield e : Ljava/util/Map;
    //   6: invokeinterface values : ()Ljava/util/Collection;
    //   11: invokeinterface iterator : ()Ljava/util/Iterator;
    //   16: astore #4
    //   18: aload #4
    //   20: invokeinterface hasNext : ()Z
    //   25: ifeq -> 60
    //   28: aload #4
    //   30: invokeinterface next : ()Ljava/lang/Object;
    //   35: checkcast org/json/JSONObject
    //   38: astore_3
    //   39: aload_3
    //   40: ldc 'name'
    //   42: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   45: aload_1
    //   46: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   49: istore_2
    //   50: iload_2
    //   51: ifeq -> 18
    //   54: aload_3
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: areturn
    //   60: aconst_null
    //   61: astore_1
    //   62: goto -> 56
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    // Exception table:
    //   from	to	target	type
    //   2	18	65	finally
    //   18	50	65	finally
  }
  
  private void a(JSONArray paramJSONArray, JSONObject paramJSONObject) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_3
    //   4: iload_3
    //   5: aload_1
    //   6: invokevirtual length : ()I
    //   9: if_icmpge -> 80
    //   12: aload_1
    //   13: iload_3
    //   14: invokevirtual optJSONObject : (I)Lorg/json/JSONObject;
    //   17: astore #4
    //   19: aload_2
    //   20: aload #4
    //   22: ldc 'id'
    //   24: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   27: invokevirtual optJSONObject : (Ljava/lang/String;)Lorg/json/JSONObject;
    //   30: astore #5
    //   32: aload #4
    //   34: ldc 'name'
    //   36: aload #5
    //   38: ldc 'name'
    //   40: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   43: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   46: pop
    //   47: aload_0
    //   48: aload #4
    //   50: invokespecial a : (Lorg/json/JSONObject;)V
    //   53: iload_3
    //   54: iconst_1
    //   55: iadd
    //   56: istore_3
    //   57: goto -> 4
    //   60: astore #5
    //   62: ldc 'TestUserManager'
    //   64: ldc 'Could not set name'
    //   66: aload #5
    //   68: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   71: pop
    //   72: goto -> 47
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    //   80: aload_0
    //   81: monitorexit
    //   82: return
    // Exception table:
    //   from	to	target	type
    //   4	32	75	finally
    //   32	47	60	org/json/JSONException
    //   32	47	75	finally
    //   47	53	75	finally
    //   62	72	75	finally
  }
  
  private void a(JSONObject paramJSONObject) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield e : Ljava/util/Map;
    //   6: aload_1
    //   7: ldc 'id'
    //   9: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   12: aload_1
    //   13: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   18: pop
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Exception table:
    //   from	to	target	type
    //   2	19	22	finally
  }
  
  private String b(List<String> paramList, String paramString) {
    long l2 = c(paramList).hashCode();
    if (paramString != null) {
      long l = paramString.hashCode() & 0xFFFFFFFFL;
      return a(l ^ l2 & 0xFFFFFFFFL);
    } 
    long l1 = 0L;
    return a(l1 ^ l2 & 0xFFFFFFFFL);
  }
  
  private JSONObject b(List<String> paramList, bke parambke, String paramString) {
    JSONObject jSONObject = a(b(paramList, paramString));
    return (jSONObject != null) ? jSONObject : c(paramList, parambke, paramString);
  }
  
  private String c(List<String> paramList) {
    return TextUtils.join(",", paramList);
  }
  
  private JSONObject c(List<String> paramList, bke parambke, String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString("installed", "true");
    bundle.putString("permissions", c(paramList));
    bundle.putString("access_token", c());
    if (parambke == bke.SHARED)
      bundle.putString("name", String.format("Shared %s Testuser", new Object[] { b(paramList, paramString) })); 
    bix bix = (new GraphRequest(null, String.format("%s/accounts/test-users", new Object[] { this.d }), bundle, biz.POST)).m();
    FacebookRequestError facebookRequestError = bix.a();
    JSONObject jSONObject = bix.b();
    if (facebookRequestError != null)
      return null; 
    if (!a && jSONObject == null)
      throw new AssertionError(); 
    if (parambke == bke.SHARED) {
      try {
        jSONObject.put("name", bundle.getString("name"));
      } catch (JSONException jSONException) {
        Log.e("TestUserManager", "Could not set name", (Throwable)jSONException);
      } 
      a(jSONObject);
    } 
    return jSONObject;
  }
  
  private void d() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield e : Ljava/util/Map;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: new java/util/HashMap
    //   18: dup
    //   19: invokespecial <init> : ()V
    //   22: putfield e : Ljava/util/Map;
    //   25: aload_0
    //   26: getfield d : Ljava/lang/String;
    //   29: invokestatic e : (Ljava/lang/String;)V
    //   32: new android/os/Bundle
    //   35: dup
    //   36: invokespecial <init> : ()V
    //   39: astore_1
    //   40: aload_1
    //   41: ldc 'access_token'
    //   43: aload_0
    //   44: invokevirtual c : ()Ljava/lang/String;
    //   47: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   50: new com/facebook/GraphRequest
    //   53: dup
    //   54: aconst_null
    //   55: ldc_w 'app/accounts/test-users'
    //   58: aload_1
    //   59: aconst_null
    //   60: invokespecial <init> : (Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V
    //   63: astore_1
    //   64: aload_1
    //   65: ldc_w 'testUsers'
    //   68: invokevirtual c : (Ljava/lang/String;)V
    //   71: aload_1
    //   72: iconst_0
    //   73: invokevirtual b : (Z)V
    //   76: new android/os/Bundle
    //   79: dup
    //   80: invokespecial <init> : ()V
    //   83: astore_2
    //   84: aload_2
    //   85: ldc 'access_token'
    //   87: aload_0
    //   88: invokevirtual c : ()Ljava/lang/String;
    //   91: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   94: aload_2
    //   95: ldc_w 'ids'
    //   98: ldc_w '{result=testUsers:$.data.*.id}'
    //   101: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   104: aload_2
    //   105: ldc_w 'fields'
    //   108: ldc 'name'
    //   110: invokevirtual putString : (Ljava/lang/String;Ljava/lang/String;)V
    //   113: new com/facebook/GraphRequest
    //   116: dup
    //   117: aconst_null
    //   118: ldc_w ''
    //   121: aload_2
    //   122: aconst_null
    //   123: invokespecial <init> : (Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;)V
    //   126: astore_2
    //   127: aload_2
    //   128: ldc_w 'testUsers'
    //   131: invokevirtual d : (Ljava/lang/String;)V
    //   134: iconst_2
    //   135: anewarray com/facebook/GraphRequest
    //   138: dup
    //   139: iconst_0
    //   140: aload_1
    //   141: aastore
    //   142: dup
    //   143: iconst_1
    //   144: aload_2
    //   145: aastore
    //   146: invokestatic b : ([Lcom/facebook/GraphRequest;)Ljava/util/List;
    //   149: astore_1
    //   150: aload_1
    //   151: ifnull -> 164
    //   154: aload_1
    //   155: invokeinterface size : ()I
    //   160: iconst_2
    //   161: if_icmpeq -> 180
    //   164: new bhp
    //   167: dup
    //   168: ldc_w 'Unexpected number of results from TestUsers batch query'
    //   171: invokespecial <init> : (Ljava/lang/String;)V
    //   174: athrow
    //   175: astore_1
    //   176: aload_0
    //   177: monitorexit
    //   178: aload_1
    //   179: athrow
    //   180: aload_0
    //   181: aload_1
    //   182: iconst_0
    //   183: invokeinterface get : (I)Ljava/lang/Object;
    //   188: checkcast bix
    //   191: invokevirtual b : ()Lorg/json/JSONObject;
    //   194: ldc_w 'data'
    //   197: invokevirtual optJSONArray : (Ljava/lang/String;)Lorg/json/JSONArray;
    //   200: aload_1
    //   201: iconst_1
    //   202: invokeinterface get : (I)Ljava/lang/Object;
    //   207: checkcast bix
    //   210: invokevirtual b : ()Lorg/json/JSONObject;
    //   213: invokespecial a : (Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    //   216: goto -> 11
    // Exception table:
    //   from	to	target	type
    //   2	7	175	finally
    //   14	150	175	finally
    //   154	164	175	finally
    //   164	175	175	finally
    //   180	216	175	finally
  }
  
  public AccessToken a(List<String> paramList) {
    return a(paramList, bke.PRIVATE, null);
  }
  
  public AccessToken a(List<String> paramList, String paramString) {
    return a(paramList, bke.SHARED, paramString);
  }
  
  public String a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield d : Ljava/lang/String;
    //   6: astore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: aload_1
    //   10: areturn
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally
  }
  
  public AccessToken b(List<String> paramList) {
    return a(paramList, (String)null);
  }
  
  public String b() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield c : Ljava/lang/String;
    //   6: astore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: aload_1
    //   10: areturn
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	7	11	finally
  }
  
  final String c() {
    return this.d + "|" + this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bkd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */