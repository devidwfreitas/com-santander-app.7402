package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import bgs;
import bhp;
import bhv;
import bie;
import bif;
import big;
import bih;
import bii;
import bij;
import bik;
import bil;
import bim;
import bin;
import bio;
import bip;
import bis;
import bit;
import biu;
import biv;
import bix;
import biz;
import bjb;
import bmv;
import bpp;
import bpu;
import bqn;
import bqq;
import bqx;
import byr;
import bys;
import com.ca.android.app.CaMDOHTTPClient;
import com.facebook.share.model.ShareOpenGraphObject;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GraphRequest {
  private static final String A = "file";
  
  private static final String B = "attached_files";
  
  private static final String C = "yyyy-MM-dd'T'HH:mm:ssZ";
  
  private static final String D = "debug";
  
  private static final String E = "info";
  
  private static final String F = "warning";
  
  private static final String G = "__debug__";
  
  private static final String H = "messages";
  
  private static final String I = "message";
  
  private static final String J = "type";
  
  private static final String K = "link";
  
  private static final String L = "picture";
  
  private static final String M = "caption";
  
  private static final String N = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f";
  
  private static final String O = "%s/%s";
  
  private static String P;
  
  private static Pattern Q;
  
  public static final int a = 50;
  
  private static volatile String ae;
  
  public static final String b = GraphRequest.class.getSimpleName();
  
  public static final String c = "access_token";
  
  public static final String d = "fields";
  
  private static final String e = "/videos";
  
  private static final String f = "me";
  
  private static final String g = "me/friends";
  
  private static final String h = "me/photos";
  
  private static final String i = "search";
  
  private static final String j = "FBAndroidSDK";
  
  private static final String k = "User-Agent";
  
  private static final String l = "Content-Type";
  
  private static final String m = "Accept-Language";
  
  private static final String n = "Content-Encoding";
  
  private static final String o = "format";
  
  private static final String p = "json";
  
  private static final String q = "sdk";
  
  private static final String r = "android";
  
  private static final String s = "name";
  
  private static final String t = "omit_response_on_success";
  
  private static final String u = "depends_on";
  
  private static final String v = "batch_app_id";
  
  private static final String w = "relative_url";
  
  private static final String x = "body";
  
  private static final String y = "method";
  
  private static final String z = "batch";
  
  private AccessToken R;
  
  private biz S;
  
  private String T;
  
  private JSONObject U;
  
  private String V;
  
  private String W;
  
  private boolean X = true;
  
  private Bundle Y;
  
  private bim Z;
  
  private String aa;
  
  private Object ab;
  
  private String ac;
  
  private boolean ad = false;
  
  static {
    Q = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
  }
  
  public GraphRequest() {
    this(null, null, null, null, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString) {
    this(paramAccessToken, paramString, null, null, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString, Bundle paramBundle, biz parambiz) {
    this(paramAccessToken, paramString, paramBundle, parambiz, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString, Bundle paramBundle, biz parambiz, bim parambim) {
    this(paramAccessToken, paramString, paramBundle, parambiz, parambim, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString1, Bundle paramBundle, biz parambiz, bim parambim, String paramString2) {
    this.R = paramAccessToken;
    this.T = paramString1;
    this.ac = paramString2;
    a(parambim);
    a(parambiz);
    if (paramBundle != null) {
      this.Y = new Bundle(paramBundle);
    } else {
      this.Y = new Bundle();
    } 
    if (this.ac == null)
      this.ac = bhv.i(); 
  }
  
  public GraphRequest(AccessToken paramAccessToken, URL paramURL) {
    this.R = paramAccessToken;
    this.aa = paramURL.toString();
    a(biz.GET);
    this.Y = new Bundle();
  }
  
  public static bit a(Handler paramHandler, HttpURLConnection paramHttpURLConnection, biu parambiu) {
    bqx.a(paramHttpURLConnection, "connection");
    bit bit = new bit(paramHttpURLConnection, parambiu);
    parambiu.a(paramHandler);
    bit.executeOnExecutor(bhv.f(), (Object[])new Void[0]);
    return bit;
  }
  
  public static bix a(GraphRequest paramGraphRequest) {
    List<bix> list = b(new GraphRequest[] { paramGraphRequest });
    if (list == null || list.size() != 1)
      throw new bhp("invalid state: expected a single response"); 
    return list.get(0);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, Context paramContext, bim parambim) {
    return a(paramAccessToken, paramContext, (String)null, parambim);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, Context paramContext, String paramString, bim parambim) {
    if (paramString == null && paramAccessToken != null)
      paramString = paramAccessToken.i(); 
    String str = paramString;
    if (paramString == null)
      str = bqq.a(paramContext); 
    if (str == null)
      throw new bhp("Facebook App ID cannot be determined"); 
    str = str + "/custom_audience_third_party_id";
    bmv bmv = bmv.a(paramContext);
    Bundle bundle = new Bundle();
    if (paramAccessToken == null) {
      if (bmv == null)
        throw new bhp("There is no access token and attribution identifiers could not be retrieved"); 
      if (bmv.a() != null) {
        paramString = bmv.a();
      } else {
        paramString = bmv.b();
      } 
      if (bmv.a() != null)
        bundle.putString("udid", paramString); 
    } 
    if (bhv.b(paramContext) || (bmv != null && bmv.d()))
      bundle.putString("limit_event_usage", "1"); 
    return new GraphRequest(paramAccessToken, str, bundle, biz.GET, parambim);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, Location paramLocation, int paramInt1, int paramInt2, String paramString, bin parambin) {
    if (paramLocation == null && bqq.a(paramString))
      throw new bhp("Either location or searchText must be specified."); 
    Bundle bundle = new Bundle(5);
    bundle.putString("type", "place");
    bundle.putInt("limit", paramInt2);
    if (paramLocation != null) {
      bundle.putString("center", String.format(Locale.US, "%f,%f", new Object[] { Double.valueOf(paramLocation.getLatitude()), Double.valueOf(paramLocation.getLongitude()) }));
      bundle.putInt("distance", paramInt1);
    } 
    if (!bqq.a(paramString))
      bundle.putString("q", paramString); 
    big big = new big(parambin);
    return new GraphRequest(paramAccessToken, "search", bundle, biz.GET, (bim)big);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, bin parambin) {
    return new GraphRequest(paramAccessToken, "me/friends", null, null, (bim)new bif(parambin));
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, bio parambio) {
    return new GraphRequest(paramAccessToken, "me", null, null, (bim)new bie(parambio));
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString1, Bitmap paramBitmap, String paramString2, Bundle paramBundle, bim parambim) {
    paramString1 = f(paramString1);
    Bundle bundle = new Bundle();
    if (paramBundle != null)
      bundle.putAll(paramBundle); 
    bundle.putParcelable("picture", (Parcelable)paramBitmap);
    if (paramString2 != null && !paramString2.isEmpty())
      bundle.putString("caption", paramString2); 
    return new GraphRequest(paramAccessToken, paramString1, bundle, biz.POST, parambim);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString1, Uri paramUri, String paramString2, Bundle paramBundle, bim parambim) {
    paramString1 = f(paramString1);
    if (bqq.d(paramUri))
      return a(paramAccessToken, paramString1, new File(paramUri.getPath()), paramString2, paramBundle, parambim); 
    if (!bqq.c(paramUri))
      throw new bhp("The photo Uri must be either a file:// or content:// Uri"); 
    Bundle bundle = new Bundle();
    if (paramBundle != null)
      bundle.putAll(paramBundle); 
    bundle.putParcelable("picture", (Parcelable)paramUri);
    if (paramString2 != null && !paramString2.isEmpty())
      bundle.putString("caption", paramString2); 
    return new GraphRequest(paramAccessToken, paramString1, bundle, biz.POST, parambim);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString, bim parambim) {
    return new GraphRequest(paramAccessToken, paramString, null, biz.DELETE, parambim);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString1, File paramFile, String paramString2, Bundle paramBundle, bim parambim) {
    paramString1 = f(paramString1);
    ParcelFileDescriptor parcelFileDescriptor = ParcelFileDescriptor.open(paramFile, 268435456);
    Bundle bundle = new Bundle();
    if (paramBundle != null)
      bundle.putAll(paramBundle); 
    bundle.putParcelable("picture", (Parcelable)parcelFileDescriptor);
    if (paramString2 != null && !paramString2.isEmpty())
      bundle.putString("caption", paramString2); 
    return new GraphRequest(paramAccessToken, paramString1, bundle, biz.POST, parambim);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString, JSONObject paramJSONObject, bim parambim) {
    GraphRequest graphRequest = new GraphRequest(paramAccessToken, paramString, null, biz.POST, parambim);
    graphRequest.a(paramJSONObject);
    return graphRequest;
  }
  
  public static GraphRequest a(ShareOpenGraphObject paramShareOpenGraphObject) {
    String str = paramShareOpenGraphObject.j("type");
    if (str == null)
      str = paramShareOpenGraphObject.j("og:type"); 
    if (str == null)
      throw new bhp("Open graph object type cannot be null"); 
    try {
      JSONObject jSONObject = (JSONObject)byr.a(paramShareOpenGraphObject, (bys)new bik());
      Bundle bundle = new Bundle();
      bundle.putString("object", jSONObject.toString());
      str = String.format(Locale.ROOT, "%s/%s", new Object[] { "me", "objects/" + str });
      return new GraphRequest(AccessToken.a(), str, bundle, biz.POST);
    } catch (JSONException jSONException) {
      throw new bhp(jSONException.getMessage());
    } 
  }
  
  public static HttpURLConnection a(biu parambiu) {
    d(parambiu);
    try {
      URL uRL;
      if (parambiu.size() == 1) {
        uRL = new URL(parambiu.b(0).p());
      } else {
        uRL = new URL(bqn.b());
      } 
      HttpURLConnection httpURLConnection2 = null;
      HttpURLConnection httpURLConnection1 = null;
      try {
        HttpURLConnection httpURLConnection = a(uRL);
        httpURLConnection1 = httpURLConnection;
        httpURLConnection2 = httpURLConnection;
        a(parambiu, httpURLConnection);
        return httpURLConnection;
      } catch (IOException iOException) {
        httpURLConnection1 = httpURLConnection2;
      } catch (JSONException jSONException) {}
    } catch (MalformedURLException malformedURLException) {
      throw new bhp("could not construct URL for request", malformedURLException);
    } 
  }
  
  private static HttpURLConnection a(URL paramURL) {
    HttpURLConnection httpURLConnection = (HttpURLConnection)CaMDOHTTPClient.openConnection(paramURL);
    httpURLConnection.setRequestProperty("User-Agent", t());
    httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
    httpURLConnection.setChunkedStreamingMode(0);
    return httpURLConnection;
  }
  
  public static HttpURLConnection a(Collection<GraphRequest> paramCollection) {
    bqx.d(paramCollection, "requests");
    return a(new biu(paramCollection));
  }
  
  public static HttpURLConnection a(GraphRequest... paramVarArgs) {
    return a(Arrays.asList(paramVarArgs));
  }
  
  public static List<bix> a(HttpURLConnection paramHttpURLConnection, biu parambiu) {
    List<bix> list = bix.a(paramHttpURLConnection, parambiu);
    bqq.a(paramHttpURLConnection);
    int i = parambiu.size();
    if (i != list.size())
      throw new bhp(String.format(Locale.US, "Received %d responses while expecting %d", new Object[] { Integer.valueOf(list.size()), Integer.valueOf(i) })); 
    a(parambiu, list);
    bgs.a().d();
    return list;
  }
  
  public static List<bix> a(HttpURLConnection paramHttpURLConnection, Collection<GraphRequest> paramCollection) {
    return a(paramHttpURLConnection, new biu(paramCollection));
  }
  
  private static void a(Bundle paramBundle, bis parambis, GraphRequest paramGraphRequest) {
    for (String str : paramBundle.keySet()) {
      Object object = paramBundle.get(str);
      if (e(object))
        parambis.a(str, object, paramGraphRequest); 
    } 
  }
  
  private static void a(bis parambis, Collection<GraphRequest> paramCollection, Map<String, bil> paramMap) {
    JSONArray jSONArray = new JSONArray();
    Iterator<GraphRequest> iterator = paramCollection.iterator();
    while (iterator.hasNext())
      ((GraphRequest)iterator.next()).a(jSONArray, paramMap); 
    parambis.a("batch", jSONArray, paramCollection);
  }
  
  private static void a(biu parambiu, bpu parambpu, int paramInt, URL paramURL, OutputStream paramOutputStream, boolean paramBoolean) {
    GraphRequest graphRequest;
    bis bis = new bis(paramOutputStream, parambpu, paramBoolean);
    if (paramInt == 1) {
      graphRequest = parambiu.b(0);
      HashMap<Object, Object> hashMap1 = new HashMap<Object, Object>();
      for (String str1 : graphRequest.Y.keySet()) {
        Object object = graphRequest.Y.get(str1);
        if (d(object))
          hashMap1.put(str1, new bil(graphRequest, object)); 
      } 
      if (parambpu != null)
        parambpu.c("  Parameters:\n"); 
      a(graphRequest.Y, bis, graphRequest);
      if (parambpu != null)
        parambpu.c("  Attachments:\n"); 
      a((Map)hashMap1, bis);
      if (graphRequest.U != null)
        a(graphRequest.U, paramURL.getPath(), (bip)bis); 
      return;
    } 
    String str = g((biu)graphRequest);
    if (bqq.a(str))
      throw new bhp("App ID was not specified at the request or Settings."); 
    bis.a("batch_app_id", str);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    a(bis, (Collection<GraphRequest>)graphRequest, (Map)hashMap);
    if (parambpu != null)
      parambpu.c("  Attachments:\n"); 
    a((Map)hashMap, bis);
  }
  
  static final void a(biu parambiu, HttpURLConnection paramHttpURLConnection) {
    // Byte code:
    //   0: new bpu
    //   3: dup
    //   4: getstatic bjb.REQUESTS : Lbjb;
    //   7: ldc_w 'Request'
    //   10: invokespecial <init> : (Lbjb;Ljava/lang/String;)V
    //   13: astore #7
    //   15: aload_0
    //   16: invokevirtual size : ()I
    //   19: istore_3
    //   20: aload_0
    //   21: invokestatic f : (Lbiu;)Z
    //   24: istore #4
    //   26: iload_3
    //   27: iconst_1
    //   28: if_icmpne -> 166
    //   31: aload_0
    //   32: iconst_0
    //   33: invokevirtual b : (I)Lcom/facebook/GraphRequest;
    //   36: getfield S : Lbiz;
    //   39: astore #5
    //   41: aload_1
    //   42: aload #5
    //   44: invokevirtual name : ()Ljava/lang/String;
    //   47: invokevirtual setRequestMethod : (Ljava/lang/String;)V
    //   50: aload_1
    //   51: iload #4
    //   53: invokestatic a : (Ljava/net/HttpURLConnection;Z)V
    //   56: aload_1
    //   57: invokevirtual getURL : ()Ljava/net/URL;
    //   60: astore #8
    //   62: aload #7
    //   64: ldc_w 'Request:\\n'
    //   67: invokevirtual c : (Ljava/lang/String;)V
    //   70: aload #7
    //   72: ldc_w 'Id'
    //   75: aload_0
    //   76: invokevirtual b : ()Ljava/lang/String;
    //   79: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   82: aload #7
    //   84: ldc_w 'URL'
    //   87: aload #8
    //   89: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   92: aload #7
    //   94: ldc_w 'Method'
    //   97: aload_1
    //   98: invokevirtual getRequestMethod : ()Ljava/lang/String;
    //   101: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   104: aload #7
    //   106: ldc 'User-Agent'
    //   108: aload_1
    //   109: ldc 'User-Agent'
    //   111: invokevirtual getRequestProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   114: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   117: aload #7
    //   119: ldc 'Content-Type'
    //   121: aload_1
    //   122: ldc 'Content-Type'
    //   124: invokevirtual getRequestProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   127: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   130: aload_1
    //   131: aload_0
    //   132: invokevirtual a : ()I
    //   135: invokevirtual setConnectTimeout : (I)V
    //   138: aload_1
    //   139: aload_0
    //   140: invokevirtual a : ()I
    //   143: invokevirtual setReadTimeout : (I)V
    //   146: aload #5
    //   148: getstatic biz.POST : Lbiz;
    //   151: if_acmpne -> 174
    //   154: iconst_1
    //   155: istore_2
    //   156: iload_2
    //   157: ifne -> 179
    //   160: aload #7
    //   162: invokevirtual c : ()V
    //   165: return
    //   166: getstatic biz.POST : Lbiz;
    //   169: astore #5
    //   171: goto -> 41
    //   174: iconst_0
    //   175: istore_2
    //   176: goto -> 156
    //   179: aload_1
    //   180: iconst_1
    //   181: invokevirtual setDoOutput : (Z)V
    //   184: new java/io/BufferedOutputStream
    //   187: dup
    //   188: aload_1
    //   189: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   192: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   195: astore #6
    //   197: aload #6
    //   199: astore_1
    //   200: iload #4
    //   202: ifeq -> 219
    //   205: aload #6
    //   207: astore #5
    //   209: new java/util/zip/GZIPOutputStream
    //   212: dup
    //   213: aload #6
    //   215: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   218: astore_1
    //   219: aload_1
    //   220: astore #5
    //   222: aload_0
    //   223: invokestatic e : (Lbiu;)Z
    //   226: ifeq -> 342
    //   229: aload_1
    //   230: astore #5
    //   232: new bjk
    //   235: dup
    //   236: aload_0
    //   237: invokevirtual c : ()Landroid/os/Handler;
    //   240: invokespecial <init> : (Landroid/os/Handler;)V
    //   243: astore #6
    //   245: aload_1
    //   246: astore #5
    //   248: aload_0
    //   249: aconst_null
    //   250: iload_3
    //   251: aload #8
    //   253: aload #6
    //   255: iload #4
    //   257: invokestatic a : (Lbiu;Lbpu;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   260: aload_1
    //   261: astore #5
    //   263: aload #6
    //   265: invokevirtual a : ()I
    //   268: istore_2
    //   269: aload_1
    //   270: astore #5
    //   272: new bjl
    //   275: dup
    //   276: aload_1
    //   277: aload_0
    //   278: aload #6
    //   280: invokevirtual b : ()Ljava/util/Map;
    //   283: iload_2
    //   284: i2l
    //   285: invokespecial <init> : (Ljava/io/OutputStream;Lbiu;Ljava/util/Map;J)V
    //   288: astore_1
    //   289: aload_0
    //   290: aload #7
    //   292: iload_3
    //   293: aload #8
    //   295: aload_1
    //   296: iload #4
    //   298: invokestatic a : (Lbiu;Lbpu;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   301: aload_1
    //   302: ifnull -> 309
    //   305: aload_1
    //   306: invokevirtual close : ()V
    //   309: aload #7
    //   311: invokevirtual c : ()V
    //   314: return
    //   315: astore_0
    //   316: aconst_null
    //   317: astore #5
    //   319: aload #5
    //   321: ifnull -> 329
    //   324: aload #5
    //   326: invokevirtual close : ()V
    //   329: aload_0
    //   330: athrow
    //   331: astore_0
    //   332: goto -> 319
    //   335: astore_0
    //   336: aload_1
    //   337: astore #5
    //   339: goto -> 319
    //   342: goto -> 289
    // Exception table:
    //   from	to	target	type
    //   184	197	315	finally
    //   209	219	331	finally
    //   222	229	331	finally
    //   232	245	331	finally
    //   248	260	331	finally
    //   263	269	331	finally
    //   272	289	331	finally
    //   289	301	335	finally
  }
  
  static void a(biu parambiu, List<bix> paramList) {
    Handler handler;
    bii bii;
    int j = parambiu.size();
    ArrayList<Pair> arrayList = new ArrayList();
    for (int i = 0; i < j; i++) {
      GraphRequest graphRequest = parambiu.b(i);
      if (graphRequest.Z != null)
        arrayList.add(new Pair(graphRequest.Z, paramList.get(i))); 
    } 
    if (arrayList.size() > 0) {
      bii = new bii(arrayList, parambiu);
      handler = parambiu.c();
      if (handler == null) {
        bii.run();
        return;
      } 
    } else {
      return;
    } 
    handler.post((Runnable)bii);
  }
  
  private static void a(String paramString, Object paramObject, bip parambip, boolean paramBoolean) {
    Iterator<String> iterator;
    Class<?> clazz = paramObject.getClass();
    if (JSONObject.class.isAssignableFrom(clazz)) {
      paramObject = paramObject;
      if (paramBoolean) {
        iterator = paramObject.keys();
        while (iterator.hasNext()) {
          String str = iterator.next();
          a(String.format("%s[%s]", new Object[] { paramString, str }), paramObject.opt(str), parambip, paramBoolean);
        } 
      } else {
        if (paramObject.has("id")) {
          a(paramString, paramObject.optString("id"), parambip, paramBoolean);
          return;
        } 
        if (paramObject.has("url")) {
          a(paramString, paramObject.optString("url"), parambip, paramBoolean);
          return;
        } 
        if (paramObject.has("fbsdk:create_object")) {
          a(paramString, paramObject.toString(), parambip, paramBoolean);
          return;
        } 
      } 
      return;
    } 
    if (JSONArray.class.isAssignableFrom((Class<?>)iterator)) {
      paramObject = paramObject;
      int j = paramObject.length();
      int i = 0;
      while (true) {
        if (i < j) {
          a(String.format(Locale.ROOT, "%s[%d]", new Object[] { paramString, Integer.valueOf(i) }), paramObject.opt(i), parambip, paramBoolean);
          i++;
          continue;
        } 
        return;
      } 
    } 
    if (String.class.isAssignableFrom((Class<?>)iterator) || Number.class.isAssignableFrom((Class<?>)iterator) || Boolean.class.isAssignableFrom((Class<?>)iterator)) {
      parambip.a(paramString, paramObject.toString());
      return;
    } 
    if (Date.class.isAssignableFrom((Class<?>)iterator)) {
      paramObject = paramObject;
      parambip.a(paramString, (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US)).format((Date)paramObject));
      return;
    } 
  }
  
  private static void a(HttpURLConnection paramHttpURLConnection, boolean paramBoolean) {
    if (paramBoolean) {
      paramHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      paramHttpURLConnection.setRequestProperty("Content-Encoding", "gzip");
      return;
    } 
    paramHttpURLConnection.setRequestProperty("Content-Type", s());
  }
  
  private static void a(Map<String, bil> paramMap, bis parambis) {
    for (String str : paramMap.keySet()) {
      bil bil = paramMap.get(str);
      if (d(bil.b()))
        parambis.a(str, bil.b(), bil.a()); 
    } 
  }
  
  private void a(JSONArray paramJSONArray, Map<String, bil> paramMap) {
    JSONObject jSONObject = new JSONObject();
    if (this.V != null) {
      jSONObject.put("name", this.V);
      jSONObject.put("omit_response_on_success", this.X);
    } 
    if (this.W != null)
      jSONObject.put("depends_on", this.W); 
    String str = o();
    jSONObject.put("relative_url", str);
    jSONObject.put("method", this.S);
    if (this.R != null)
      bpu.a(this.R.c()); 
    ArrayList<String> arrayList = new ArrayList();
    for (String str1 : this.Y.keySet()) {
      Object object = this.Y.get(str1);
      if (d(object)) {
        String str2 = String.format(Locale.ROOT, "%s%d", new Object[] { "file", Integer.valueOf(paramMap.size()) });
        arrayList.add(str2);
        paramMap.put(str2, new bil(this, object));
      } 
    } 
    if (!arrayList.isEmpty())
      jSONObject.put("attached_files", TextUtils.join(",", arrayList)); 
    if (this.U != null) {
      ArrayList arrayList1 = new ArrayList();
      a(this.U, str, (bip)new bij(this, arrayList1));
      jSONObject.put("body", TextUtils.join("&", arrayList1));
    } 
    paramJSONArray.put(jSONObject);
  }
  
  private static void a(JSONObject paramJSONObject, String paramString, bip parambip) {
    boolean bool;
    if (h(paramString)) {
      bool = paramString.indexOf(":");
      int i = paramString.indexOf("?");
      if (bool > 3 && (i == -1 || bool < i)) {
        bool = true;
      } else {
        bool = false;
      } 
    } else {
      bool = false;
    } 
    Iterator<String> iterator = paramJSONObject.keys();
    while (iterator.hasNext()) {
      boolean bool1;
      String str = iterator.next();
      Object object = paramJSONObject.opt(str);
      if (bool && str.equalsIgnoreCase("image")) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      a(str, object, parambip, bool1);
    } 
  }
  
  public static bit b(HttpURLConnection paramHttpURLConnection, biu parambiu) {
    return a((Handler)null, paramHttpURLConnection, parambiu);
  }
  
  public static GraphRequest b(AccessToken paramAccessToken, String paramString, bim parambim) {
    return new GraphRequest(paramAccessToken, paramString, null, null, parambim);
  }
  
  public static List<bix> b(biu parambiu) {
    HttpURLConnection httpURLConnection2 = null;
    bqx.d((Collection)parambiu, "requests");
    HttpURLConnection httpURLConnection1 = httpURLConnection2;
    try {
      HttpURLConnection httpURLConnection = a(parambiu);
      httpURLConnection2 = httpURLConnection;
      httpURLConnection1 = httpURLConnection2;
      null = a(httpURLConnection2, parambiu);
      return null;
    } catch (Exception exception) {
      httpURLConnection1 = httpURLConnection2;
      List<bix> list = bix.a(null.d(), null, new bhp(exception));
      httpURLConnection1 = httpURLConnection2;
      a((biu)null, list);
      return list;
    } finally {
      bqq.a(httpURLConnection1);
    } 
  }
  
  public static List<bix> b(Collection<GraphRequest> paramCollection) {
    return b(new biu(paramCollection));
  }
  
  public static List<bix> b(GraphRequest... paramVarArgs) {
    bqx.a(paramVarArgs, "requests");
    return b(Arrays.asList(paramVarArgs));
  }
  
  static final boolean b(GraphRequest paramGraphRequest) {
    String str2 = paramGraphRequest.d();
    if (bqq.a(str2))
      return true; 
    String str1 = str2;
    if (str2.startsWith("v"))
      str1 = str2.substring(1); 
    String[] arrayOfString = str1.split("\\.");
    return ((arrayOfString.length >= 2 && Integer.parseInt(arrayOfString[0]) > 2) || (Integer.parseInt(arrayOfString[0]) >= 2 && Integer.parseInt(arrayOfString[1]) >= 4));
  }
  
  public static bit c(biu parambiu) {
    bqx.d((Collection)parambiu, "requests");
    bit bit = new bit(parambiu);
    bit.executeOnExecutor(bhv.f(), (Object[])new Void[0]);
    return bit;
  }
  
  public static bit c(Collection<GraphRequest> paramCollection) {
    return c(new biu(paramCollection));
  }
  
  public static bit c(GraphRequest... paramVarArgs) {
    bqx.a(paramVarArgs, "requests");
    return c(Arrays.asList(paramVarArgs));
  }
  
  static final void d(biu parambiu) {
    for (GraphRequest graphRequest : parambiu) {
      if (biz.GET.equals(graphRequest.c()) && b(graphRequest)) {
        Bundle bundle = graphRequest.e();
        if (!bundle.containsKey("fields") || bqq.a(bundle.getString("fields")))
          bpu.a(bjb.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", new Object[] { graphRequest.b() }); 
      } 
    } 
  }
  
  private static boolean d(Object paramObject) {
    return (paramObject instanceof Bitmap || paramObject instanceof byte[] || paramObject instanceof Uri || paramObject instanceof ParcelFileDescriptor || paramObject instanceof GraphRequest$ParcelableResourceWithMimeType);
  }
  
  public static final void e(String paramString) {
    P = paramString;
  }
  
  private static boolean e(biu parambiu) {
    Iterator iterator2 = parambiu.e().iterator();
    while (iterator2.hasNext()) {
      if ((biv)iterator2.next() instanceof biw)
        return true; 
    } 
    Iterator iterator1 = parambiu.iterator();
    while (iterator1.hasNext()) {
      if (((GraphRequest)iterator1.next()).k() instanceof biq)
        return true; 
    } 
    return false;
  }
  
  private static boolean e(Object paramObject) {
    return (paramObject instanceof String || paramObject instanceof Boolean || paramObject instanceof Number || paramObject instanceof Date);
  }
  
  private static String f(Object paramObject) {
    if (paramObject instanceof String)
      return (String)paramObject; 
    if (paramObject instanceof Boolean || paramObject instanceof Number)
      return paramObject.toString(); 
    if (paramObject instanceof Date)
      return (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US)).format(paramObject); 
    throw new IllegalArgumentException("Unsupported parameter type.");
  }
  
  private static String f(String paramString) {
    String str = paramString;
    if (paramString == null)
      str = "me/photos"; 
    return str;
  }
  
  private static boolean f(biu parambiu) {
    for (GraphRequest graphRequest : parambiu) {
      for (String str : graphRequest.Y.keySet()) {
        if (d(graphRequest.Y.get(str)))
          return false; 
      } 
    } 
    return true;
  }
  
  private static String g(biu parambiu) {
    if (!bqq.a(parambiu.f()))
      return parambiu.f(); 
    Iterator iterator = parambiu.iterator();
    while (iterator.hasNext()) {
      AccessToken accessToken = ((GraphRequest)iterator.next()).R;
      if (accessToken != null) {
        String str = accessToken.i();
        if (str != null)
          return str; 
      } 
    } 
    return !bqq.a(P) ? P : bhv.l();
  }
  
  private String g(String paramString) {
    Uri.Builder builder = Uri.parse(paramString).buildUpon();
    for (String str : this.Y.keySet()) {
      Object object2 = this.Y.get(str);
      Object object1 = object2;
      if (object2 == null)
        object1 = ""; 
      if (e(object1)) {
        builder.appendQueryParameter(str, f(object1).toString());
        continue;
      } 
      if (this.S == biz.GET)
        throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", new Object[] { object1.getClass().getSimpleName() })); 
    } 
    return builder.toString();
  }
  
  private static boolean h(String paramString) {
    Matcher matcher = Q.matcher(paramString);
    if (matcher.matches())
      paramString = matcher.group(1); 
    return (paramString.startsWith("me/") || paramString.startsWith("/me/"));
  }
  
  public static final String j() {
    return P;
  }
  
  private void q() {
    if (this.R != null) {
      if (!this.Y.containsKey("access_token")) {
        String str = this.R.c();
        bpu.a(str);
        this.Y.putString("access_token", str);
      } 
    } else if (!this.ad && !this.Y.containsKey("access_token")) {
      String str1 = bhv.l();
      String str2 = bhv.n();
      if (!bqq.a(str1) && !bqq.a(str2)) {
        str1 = str1 + "|" + str2;
        this.Y.putString("access_token", str1);
      } else {
        Log.d(b, "Warning: Request without access token missing application ID or client token.");
      } 
    } 
    this.Y.putString("sdk", "android");
    this.Y.putString("format", "json");
    if (bhv.c(bjb.GRAPH_API_DEBUG_INFO)) {
      this.Y.putString("debug", "info");
      return;
    } 
    if (bhv.c(bjb.GRAPH_API_DEBUG_WARNING)) {
      this.Y.putString("debug", "warning");
      return;
    } 
  }
  
  private String r() {
    return Q.matcher(this.T).matches() ? this.T : String.format("%s/%s", new Object[] { this.ac, this.T });
  }
  
  private static String s() {
    return String.format("multipart/form-data; boundary=%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
  }
  
  private static String t() {
    if (ae == null) {
      ae = String.format("%s.%s", new Object[] { "FBAndroidSDK", "4.22.1" });
      String str = bpp.a();
      if (!bqq.a(str))
        ae = String.format(Locale.ROOT, "%s/%s", new Object[] { ae, str }); 
    } 
    return ae;
  }
  
  public final JSONObject a() {
    return this.U;
  }
  
  public final void a(Bundle paramBundle) {
    this.Y = paramBundle;
  }
  
  public final void a(bim parambim) {
    if (bhv.c(bjb.GRAPH_API_DEBUG_INFO) || bhv.c(bjb.GRAPH_API_DEBUG_WARNING)) {
      this.Z = (bim)new bih(this, parambim);
      return;
    } 
    this.Z = parambim;
  }
  
  public final void a(biz parambiz) {
    if (this.aa != null && parambiz != biz.GET)
      throw new bhp("Can't change HTTP method on request with overridden URL."); 
    if (parambiz == null)
      parambiz = biz.GET; 
    this.S = parambiz;
  }
  
  public final void a(AccessToken paramAccessToken) {
    this.R = paramAccessToken;
  }
  
  public final void a(Object paramObject) {
    this.ab = paramObject;
  }
  
  public final void a(String paramString) {
    this.T = paramString;
  }
  
  public final void a(JSONObject paramJSONObject) {
    this.U = paramJSONObject;
  }
  
  public final void a(boolean paramBoolean) {
    this.ad = paramBoolean;
  }
  
  public final String b() {
    return this.T;
  }
  
  public final void b(String paramString) {
    this.ac = paramString;
  }
  
  public final void b(boolean paramBoolean) {
    this.X = paramBoolean;
  }
  
  public final biz c() {
    return this.S;
  }
  
  public final void c(String paramString) {
    this.V = paramString;
  }
  
  public final String d() {
    return this.ac;
  }
  
  public final void d(String paramString) {
    this.W = paramString;
  }
  
  public final Bundle e() {
    return this.Y;
  }
  
  public final AccessToken f() {
    return this.R;
  }
  
  public final String g() {
    return this.V;
  }
  
  public final String h() {
    return this.W;
  }
  
  public final boolean i() {
    return this.X;
  }
  
  public final bim k() {
    return this.Z;
  }
  
  public final Object l() {
    return this.ab;
  }
  
  public final bix m() {
    return a(this);
  }
  
  public final bit n() {
    return c(new GraphRequest[] { this });
  }
  
  final String o() {
    if (this.aa != null)
      throw new bhp("Can't override URL for a batch request"); 
    String str = String.format("%s/%s", new Object[] { bqn.b(), r() });
    q();
    Uri uri = Uri.parse(g(str));
    return String.format("%s?%s", new Object[] { uri.getPath(), uri.getQuery() });
  }
  
  public final String p() {
    if (this.aa != null)
      return this.aa.toString(); 
    if (c() == biz.POST && this.T != null && this.T.endsWith("/videos")) {
      String str1 = bqn.c();
      str1 = String.format("%s/%s", new Object[] { str1, r() });
      q();
      return g(str1);
    } 
    String str = bqn.b();
    str = String.format("%s/%s", new Object[] { str, r() });
    q();
    return g(str);
  }
  
  public String toString() {
    StringBuilder stringBuilder = (new StringBuilder()).append("{Request: ").append(" accessToken: ");
    if (this.R == null) {
      String str = "null";
      return stringBuilder.append(str).append(", graphPath: ").append(this.T).append(", graphObject: ").append(this.U).append(", httpMethod: ").append(this.S).append(", parameters: ").append(this.Y).append("}").toString();
    } 
    AccessToken accessToken = this.R;
    return stringBuilder.append(accessToken).append(", graphPath: ").append(this.T).append(", graphObject: ").append(this.U).append(", httpMethod: ").append(this.S).append(", parameters: ").append(this.Y).append("}").toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\GraphRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */