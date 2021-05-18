import org.json.JSONException;
import org.json.JSONObject;

public class bpb {
  private static final String[] a = new String[] { "yyyy-MM-dd'T'HH:mm:ssZ", "yyyy-MM-dd'T'HH:mm:ss", "yyyy-MM-dd" };
  
  public static JSONObject a(String paramString) {
    JSONObject jSONObject = new JSONObject();
    if (paramString != null)
      try {
        jSONObject.put("type", paramString);
        return jSONObject;
      } catch (JSONException jSONException) {
        throw new bhp("An error occurred while setting up the open graph action", jSONException);
      }  
    return jSONObject;
  }
  
  public static JSONObject a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, JSONObject paramJSONObject, String paramString6) {
    // Byte code:
    //   0: new org/json/JSONObject
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #7
    //   9: aload_0
    //   10: ifnull -> 22
    //   13: aload #7
    //   15: ldc 'type'
    //   17: aload_0
    //   18: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   21: pop
    //   22: aload #7
    //   24: ldc 'title'
    //   26: aload_1
    //   27: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   30: pop
    //   31: aload_2
    //   32: ifnull -> 74
    //   35: new org/json/JSONObject
    //   38: dup
    //   39: invokespecial <init> : ()V
    //   42: astore_0
    //   43: aload_0
    //   44: ldc 'url'
    //   46: aload_2
    //   47: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   50: pop
    //   51: new org/json/JSONArray
    //   54: dup
    //   55: invokespecial <init> : ()V
    //   58: astore_1
    //   59: aload_1
    //   60: aload_0
    //   61: invokevirtual put : (Ljava/lang/Object;)Lorg/json/JSONArray;
    //   64: pop
    //   65: aload #7
    //   67: ldc 'image'
    //   69: aload_1
    //   70: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   73: pop
    //   74: aload #7
    //   76: ldc 'url'
    //   78: aload_3
    //   79: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   82: pop
    //   83: aload #7
    //   85: ldc 'description'
    //   87: aload #4
    //   89: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   92: pop
    //   93: aload #7
    //   95: ldc 'fbsdk:create_object'
    //   97: iconst_1
    //   98: invokevirtual put : (Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   101: pop
    //   102: aload #5
    //   104: ifnull -> 117
    //   107: aload #7
    //   109: ldc 'data'
    //   111: aload #5
    //   113: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   116: pop
    //   117: aload #6
    //   119: ifnull -> 132
    //   122: aload #7
    //   124: ldc 'id'
    //   126: aload #6
    //   128: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   131: pop
    //   132: aload #7
    //   134: areturn
    //   135: astore_0
    //   136: new bhp
    //   139: dup
    //   140: ldc 'An error occurred while setting up the graph object'
    //   142: aload_0
    //   143: invokespecial <init> : (Ljava/lang/String;Ljava/lang/Throwable;)V
    //   146: athrow
    // Exception table:
    //   from	to	target	type
    //   13	22	135	org/json/JSONException
    //   22	31	135	org/json/JSONException
    //   35	74	135	org/json/JSONException
    //   74	102	135	org/json/JSONException
    //   107	117	135	org/json/JSONException
    //   122	132	135	org/json/JSONException
  }
  
  public static boolean a(JSONObject paramJSONObject) {
    return (paramJSONObject != null) ? paramJSONObject.optBoolean("fbsdk:create_object") : false;
  }
  
  public static JSONObject b(String paramString) {
    return a(paramString, null, null, null, null, null, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */