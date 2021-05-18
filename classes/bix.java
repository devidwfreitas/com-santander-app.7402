import com.ca.android.app.CaMDOHTTPClient;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

public class bix {
  public static final String a = "FACEBOOK_NON_JSON_RESULT";
  
  public static final String b = "success";
  
  private static final String i = "code";
  
  private static final String j = "body";
  
  private static final String k = "Response";
  
  private final HttpURLConnection c;
  
  private final JSONObject d;
  
  private final JSONArray e;
  
  private final FacebookRequestError f;
  
  private final String g;
  
  private final GraphRequest h;
  
  bix(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, FacebookRequestError paramFacebookRequestError) {
    this(paramGraphRequest, paramHttpURLConnection, null, null, null, paramFacebookRequestError);
  }
  
  bix(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, String paramString, JSONArray paramJSONArray) {
    this(paramGraphRequest, paramHttpURLConnection, paramString, null, paramJSONArray, null);
  }
  
  bix(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, String paramString, JSONObject paramJSONObject) {
    this(paramGraphRequest, paramHttpURLConnection, paramString, paramJSONObject, null, null);
  }
  
  bix(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, String paramString, JSONObject paramJSONObject, JSONArray paramJSONArray, FacebookRequestError paramFacebookRequestError) {
    this.h = paramGraphRequest;
    this.c = paramHttpURLConnection;
    this.g = paramString;
    this.d = paramJSONObject;
    this.e = paramJSONArray;
    this.f = paramFacebookRequestError;
  }
  
  private static bix a(GraphRequest paramGraphRequest, HttpURLConnection paramHttpURLConnection, Object paramObject1, Object paramObject2) {
    Object object = paramObject1;
    if (paramObject1 instanceof JSONObject) {
      paramObject1 = paramObject1;
      paramObject2 = FacebookRequestError.a((JSONObject)paramObject1, paramObject2, paramHttpURLConnection);
      if (paramObject2 != null) {
        if (paramObject2.c() == 190 && bqq.a(paramGraphRequest.f()))
          AccessToken.a(null); 
        return new bix(paramGraphRequest, paramHttpURLConnection, (FacebookRequestError)paramObject2);
      } 
      paramObject1 = bqq.a((JSONObject)paramObject1, "body", "FACEBOOK_NON_JSON_RESULT");
      if (paramObject1 instanceof JSONObject)
        return new bix(paramGraphRequest, paramHttpURLConnection, paramObject1.toString(), (JSONObject)paramObject1); 
      if (paramObject1 instanceof JSONArray)
        return new bix(paramGraphRequest, paramHttpURLConnection, paramObject1.toString(), (JSONArray)paramObject1); 
      object = JSONObject.NULL;
    } 
    if (object == JSONObject.NULL)
      return new bix(paramGraphRequest, paramHttpURLConnection, object.toString(), (JSONObject)null); 
    throw new bhp("Got unexpected object type in response, class: " + object.getClass().getSimpleName());
  }
  
  static List<bix> a(InputStream paramInputStream, HttpURLConnection paramHttpURLConnection, biu parambiu) {
    String str = bqq.a(paramInputStream);
    bpu.a(bjb.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", new Object[] { Integer.valueOf(str.length()), str });
    return a(str, paramHttpURLConnection, parambiu);
  }
  
  static List<bix> a(String paramString, HttpURLConnection paramHttpURLConnection, biu parambiu) {
    List<bix> list = a(paramHttpURLConnection, parambiu, (new JSONTokener(paramString)).nextValue());
    bpu.a(bjb.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", new Object[] { parambiu.b(), Integer.valueOf(paramString.length()), list });
    return list;
  }
  
  public static List<bix> a(HttpURLConnection paramHttpURLConnection, biu parambiu) {
    InputStream inputStream5 = null;
    InputStream inputStream6 = null;
    InputStream inputStream1 = null;
    InputStream inputStream3 = inputStream1;
    InputStream inputStream4 = inputStream5;
    InputStream inputStream2 = inputStream6;
    try {
      if (CaMDOHTTPClient.getResponseCode(paramHttpURLConnection) >= 400) {
        inputStream3 = inputStream1;
        inputStream4 = inputStream5;
        inputStream2 = inputStream6;
        inputStream1 = paramHttpURLConnection.getErrorStream();
      } else {
        inputStream3 = inputStream1;
        inputStream4 = inputStream5;
        inputStream2 = inputStream6;
        inputStream1 = paramHttpURLConnection.getInputStream();
      } 
      inputStream3 = inputStream1;
      inputStream4 = inputStream1;
      inputStream2 = inputStream1;
      return a(inputStream1, paramHttpURLConnection, parambiu);
    } catch (bhp bhp) {
      inputStream2 = inputStream3;
      bpu.a(bjb.REQUESTS, "Response", "Response <Error>: %s", new Object[] { bhp });
      inputStream2 = inputStream3;
      null = a(parambiu, paramHttpURLConnection, bhp);
      return null;
    } catch (Exception exception) {
      inputStream2 = inputStream4;
      bpu.a(bjb.REQUESTS, "Response", "Response <Error>: %s", new Object[] { exception });
      inputStream2 = inputStream4;
      null = a(parambiu, (HttpURLConnection)null, new bhp(exception));
      return null;
    } finally {
      bqq.a(inputStream2);
    } 
  }
  
  private static List<bix> a(HttpURLConnection paramHttpURLConnection, List<GraphRequest> paramList, Object paramObject) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: aload_1
    //   4: invokeinterface size : ()I
    //   9: istore #5
    //   11: new java/util/ArrayList
    //   14: dup
    //   15: iload #5
    //   17: invokespecial <init> : (I)V
    //   20: astore #7
    //   22: iload #5
    //   24: iconst_1
    //   25: if_icmpne -> 197
    //   28: aload_1
    //   29: iconst_0
    //   30: invokeinterface get : (I)Ljava/lang/Object;
    //   35: checkcast com/facebook/GraphRequest
    //   38: astore #8
    //   40: new org/json/JSONObject
    //   43: dup
    //   44: invokespecial <init> : ()V
    //   47: astore #9
    //   49: aload #9
    //   51: ldc 'body'
    //   53: aload_2
    //   54: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   57: pop
    //   58: aload_0
    //   59: ifnull -> 124
    //   62: aload_0
    //   63: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   66: istore_3
    //   67: aload #9
    //   69: ldc 'code'
    //   71: iload_3
    //   72: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   75: pop
    //   76: new org/json/JSONArray
    //   79: dup
    //   80: invokespecial <init> : ()V
    //   83: astore #6
    //   85: aload #6
    //   87: aload #9
    //   89: invokevirtual put : (Ljava/lang/Object;)Lorg/json/JSONArray;
    //   92: pop
    //   93: aload #6
    //   95: instanceof org/json/JSONArray
    //   98: ifeq -> 114
    //   101: aload #6
    //   103: checkcast org/json/JSONArray
    //   106: invokevirtual length : ()I
    //   109: iload #5
    //   111: if_icmpeq -> 203
    //   114: new bhp
    //   117: dup
    //   118: ldc 'Unexpected number of results'
    //   120: invokespecial <init> : (Ljava/lang/String;)V
    //   123: athrow
    //   124: sipush #200
    //   127: istore_3
    //   128: goto -> 67
    //   131: astore #6
    //   133: aload #7
    //   135: new bix
    //   138: dup
    //   139: aload #8
    //   141: aload_0
    //   142: new com/facebook/FacebookRequestError
    //   145: dup
    //   146: aload_0
    //   147: aload #6
    //   149: invokespecial <init> : (Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    //   152: invokespecial <init> : (Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    //   155: invokeinterface add : (Ljava/lang/Object;)Z
    //   160: pop
    //   161: aload_2
    //   162: astore #6
    //   164: goto -> 93
    //   167: astore #6
    //   169: aload #7
    //   171: new bix
    //   174: dup
    //   175: aload #8
    //   177: aload_0
    //   178: new com/facebook/FacebookRequestError
    //   181: dup
    //   182: aload_0
    //   183: aload #6
    //   185: invokespecial <init> : (Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    //   188: invokespecial <init> : (Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    //   191: invokeinterface add : (Ljava/lang/Object;)Z
    //   196: pop
    //   197: aload_2
    //   198: astore #6
    //   200: goto -> 93
    //   203: aload #6
    //   205: checkcast org/json/JSONArray
    //   208: astore #6
    //   210: iload #4
    //   212: istore_3
    //   213: iload_3
    //   214: aload #6
    //   216: invokevirtual length : ()I
    //   219: if_icmpge -> 328
    //   222: aload_1
    //   223: iload_3
    //   224: invokeinterface get : (I)Ljava/lang/Object;
    //   229: checkcast com/facebook/GraphRequest
    //   232: astore #8
    //   234: aload #7
    //   236: aload #8
    //   238: aload_0
    //   239: aload #6
    //   241: iload_3
    //   242: invokevirtual get : (I)Ljava/lang/Object;
    //   245: aload_2
    //   246: invokestatic a : (Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lbix;
    //   249: invokeinterface add : (Ljava/lang/Object;)Z
    //   254: pop
    //   255: iload_3
    //   256: iconst_1
    //   257: iadd
    //   258: istore_3
    //   259: goto -> 213
    //   262: astore #9
    //   264: aload #7
    //   266: new bix
    //   269: dup
    //   270: aload #8
    //   272: aload_0
    //   273: new com/facebook/FacebookRequestError
    //   276: dup
    //   277: aload_0
    //   278: aload #9
    //   280: invokespecial <init> : (Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    //   283: invokespecial <init> : (Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    //   286: invokeinterface add : (Ljava/lang/Object;)Z
    //   291: pop
    //   292: goto -> 255
    //   295: astore #9
    //   297: aload #7
    //   299: new bix
    //   302: dup
    //   303: aload #8
    //   305: aload_0
    //   306: new com/facebook/FacebookRequestError
    //   309: dup
    //   310: aload_0
    //   311: aload #9
    //   313: invokespecial <init> : (Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    //   316: invokespecial <init> : (Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    //   319: invokeinterface add : (Ljava/lang/Object;)Z
    //   324: pop
    //   325: goto -> 255
    //   328: aload #7
    //   330: areturn
    // Exception table:
    //   from	to	target	type
    //   40	58	131	org/json/JSONException
    //   40	58	167	java/io/IOException
    //   62	67	131	org/json/JSONException
    //   62	67	167	java/io/IOException
    //   67	93	131	org/json/JSONException
    //   67	93	167	java/io/IOException
    //   234	255	262	org/json/JSONException
    //   234	255	295	bhp
  }
  
  public static List<bix> a(List<GraphRequest> paramList, HttpURLConnection paramHttpURLConnection, bhp parambhp) {
    int j = paramList.size();
    ArrayList<bix> arrayList = new ArrayList(j);
    for (int i = 0; i < j; i++)
      arrayList.add(new bix(paramList.get(i), paramHttpURLConnection, new FacebookRequestError(paramHttpURLConnection, parambhp))); 
    return arrayList;
  }
  
  public final FacebookRequestError a() {
    return this.f;
  }
  
  public GraphRequest a(biy parambiy) {
    // Byte code:
    //   0: aload_0
    //   1: getfield d : Lorg/json/JSONObject;
    //   4: ifnull -> 103
    //   7: aload_0
    //   8: getfield d : Lorg/json/JSONObject;
    //   11: ldc_w 'paging'
    //   14: invokevirtual optJSONObject : (Ljava/lang/String;)Lorg/json/JSONObject;
    //   17: astore_2
    //   18: aload_2
    //   19: ifnull -> 103
    //   22: aload_1
    //   23: getstatic biy.NEXT : Lbiy;
    //   26: if_acmpne -> 46
    //   29: aload_2
    //   30: ldc_w 'next'
    //   33: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   36: astore_1
    //   37: aload_1
    //   38: invokestatic a : (Ljava/lang/String;)Z
    //   41: ifeq -> 57
    //   44: aconst_null
    //   45: areturn
    //   46: aload_2
    //   47: ldc_w 'previous'
    //   50: invokevirtual optString : (Ljava/lang/String;)Ljava/lang/String;
    //   53: astore_1
    //   54: goto -> 37
    //   57: aload_1
    //   58: ifnull -> 75
    //   61: aload_1
    //   62: aload_0
    //   63: getfield h : Lcom/facebook/GraphRequest;
    //   66: invokevirtual p : ()Ljava/lang/String;
    //   69: invokevirtual equals : (Ljava/lang/Object;)Z
    //   72: ifne -> 44
    //   75: new com/facebook/GraphRequest
    //   78: dup
    //   79: aload_0
    //   80: getfield h : Lcom/facebook/GraphRequest;
    //   83: invokevirtual f : ()Lcom/facebook/AccessToken;
    //   86: new java/net/URL
    //   89: dup
    //   90: aload_1
    //   91: invokespecial <init> : (Ljava/lang/String;)V
    //   94: invokespecial <init> : (Lcom/facebook/AccessToken;Ljava/net/URL;)V
    //   97: astore_1
    //   98: aload_1
    //   99: areturn
    //   100: astore_1
    //   101: aconst_null
    //   102: areturn
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -> 37
    // Exception table:
    //   from	to	target	type
    //   75	98	100	java/net/MalformedURLException
  }
  
  public final JSONObject b() {
    return this.d;
  }
  
  public final JSONArray c() {
    return this.e;
  }
  
  public final HttpURLConnection d() {
    return this.c;
  }
  
  public GraphRequest e() {
    return this.h;
  }
  
  public String f() {
    return this.g;
  }
  
  public String toString() {
    String str;
    try {
      char c;
      Locale locale = Locale.US;
      if (this.c != null) {
        c = CaMDOHTTPClient.getResponseCode(this.c);
      } else {
        c = 'È';
      } 
      str = String.format(locale, "%d", new Object[] { Integer.valueOf(c) });
    } catch (IOException iOException) {
      str = "unknown";
    } 
    return "{Response: " + " responseCode: " + str + ", graphObject: " + this.d + ", error: " + this.f + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */