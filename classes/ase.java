import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.app.NotificationCompat;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ase {
  private static final String a = "[ChatUtil]";
  
  public static long a(Date paramDate1, Date paramDate2, TimeUnit paramTimeUnit) {
    Date date = paramDate2;
    if (paramDate2 == null)
      date = Calendar.getInstance().getTime(); 
    return paramTimeUnit.convert(date.getTime() - paramDate1.getTime(), TimeUnit.MILLISECONDS);
  }
  
  public static apu a(Object paramObject) {
    // Byte code:
    //   0: aload_0
    //   1: ifnull -> 83
    //   4: iconst_0
    //   5: istore_1
    //   6: iload_1
    //   7: invokestatic values : ()[Lapu;
    //   10: arraylength
    //   11: if_icmpge -> 85
    //   14: invokestatic values : ()[Lapu;
    //   17: iload_1
    //   18: aaload
    //   19: invokevirtual getValue : ()Ljava/lang/String;
    //   22: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   25: aload_0
    //   26: invokevirtual toString : ()Ljava/lang/String;
    //   29: invokevirtual trim : ()Ljava/lang/String;
    //   32: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   35: ifeq -> 76
    //   38: invokestatic values : ()[Lapu;
    //   41: iload_1
    //   42: aaload
    //   43: astore_2
    //   44: aload_2
    //   45: astore_3
    //   46: aload_2
    //   47: ifnonnull -> 74
    //   50: aload_2
    //   51: astore_3
    //   52: aload_0
    //   53: invokevirtual toString : ()Ljava/lang/String;
    //   56: invokevirtual trim : ()Ljava/lang/String;
    //   59: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   62: ldc 'file'
    //   64: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   67: ifeq -> 74
    //   70: getstatic apu.FileTransfer : Lapu;
    //   73: astore_3
    //   74: aload_3
    //   75: areturn
    //   76: iload_1
    //   77: iconst_1
    //   78: iadd
    //   79: istore_1
    //   80: goto -> 6
    //   83: aconst_null
    //   84: areturn
    //   85: aconst_null
    //   86: astore_2
    //   87: goto -> 44
  }
  
  public static aqa a(File paramFile) {
    aqa aqa2 = null;
    aqa aqa1 = aqa2;
    if (paramFile != null) {
      String str = paramFile.getName().toUpperCase();
      str = str.substring(str.lastIndexOf(".") + 1);
      aqa1 = aqa2;
      if (Arrays.<String>asList(aps.bO).contains(str.toLowerCase()))
        aqa1 = aqa.valueOf(str); 
    } 
    return aqa1;
  }
  
  public static ark a(String paramString, arj paramarj) {
    ard ard = ard.a();
    if (paramarj != null) {
      aqb aqb1 = aqb.User;
      apu apu1 = apu.TextMessageSent;
      if (b(paramString))
        paramString = ""; 
      return new ark(0L, aqb1, apu1, paramString, aqb.User.getValue(), a(ard.s(), a().getTime(), TimeUnit.SECONDS), "0", paramarj);
    } 
    aqb aqb = aqb.User;
    apu apu = apu.TextMessageSent;
    if (b(paramString))
      paramString = ""; 
    return new ark(0L, aqb, apu, paramString, aqb.User.getValue(), a(ard.s(), a().getTime(), TimeUnit.SECONDS), "0");
  }
  
  public static ark a(JSONObject paramJSONObject) {
    if (paramJSONObject != null) {
      apu apu = a(a("event", paramJSONObject, false));
      if (apu == apu.SessionDisconnected)
        return e(d(a("msg", paramJSONObject, false))); 
      long l = e(a("id", paramJSONObject, true));
      aqb aqb = c(a("source", paramJSONObject, false));
      if (apu != apu.FileTransfer) {
        String str1 = d(a("msg", paramJSONObject, false));
        return new ark(l, aqb, apu, str1, d(a("nickname", paramJSONObject, false)), e(a("time", paramJSONObject, true)), d(a("peerId", paramJSONObject, false)));
      } 
      String str = "";
      return new ark(l, aqb, apu, str, d(a("nickname", paramJSONObject, false)), e(a("time", paramJSONObject, true)), d(a("peerId", paramJSONObject, false)));
    } 
    return null;
  }
  
  public static Object a(String paramString, Object paramObject, boolean paramBoolean) {
    if (paramObject != null) {
      Log.i("[ChatUtil]", "getJsonValue: " + String.valueOf(paramObject));
      try {
        return a(paramString, new JSONObject(String.valueOf(paramObject).trim()), paramBoolean);
      } catch (JSONException jSONException) {
        Log.i("[ChatUtil]", "getJsonValue JSONException: " + String.valueOf(paramObject));
        return "";
      } 
    } 
    return "";
  }
  
  private static Object a(String paramString, JSONObject paramJSONObject, boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      Integer integer = Integer.valueOf(0);
    } else {
      str = "";
    } 
    try {
      return paramJSONObject.get(paramString);
    } catch (JSONException jSONException) {
      Log.e("[ChatUtil]", "transcriptParser erro in getJsonValue for key '" + paramString + "': ".concat(jSONException.getMessage()).concat(" in data ").concat(paramJSONObject.toString()), (Throwable)jSONException);
      return str;
    } 
  }
  
  public static String a(Activity paramActivity) {
    return (paramActivity != null) ? ((ActivityManager.RunningTaskInfo)((ActivityManager)paramActivity.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getClassName() : null;
  }
  
  public static String a(ark paramark) {
    return (paramark != null) ? paramark.e() : "";
  }
  
  public static String a(InputStream paramInputStream) {
    return a(paramInputStream, (String)null);
  }
  
  public static String a(InputStream paramInputStream, String paramString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore #4
    //   5: aconst_null
    //   6: astore_3
    //   7: aload_0
    //   8: ifnull -> 171
    //   11: new java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial <init> : ()V
    //   18: astore #5
    //   20: new java/io/BufferedReader
    //   23: dup
    //   24: new java/io/InputStreamReader
    //   27: dup
    //   28: aload_0
    //   29: invokespecial <init> : (Ljava/io/InputStream;)V
    //   32: invokespecial <init> : (Ljava/io/Reader;)V
    //   35: astore_2
    //   36: aload_2
    //   37: invokevirtual readLine : ()Ljava/lang/String;
    //   40: astore_3
    //   41: aload_3
    //   42: ifnull -> 173
    //   45: aload #5
    //   47: aload_3
    //   48: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: pop
    //   52: goto -> 36
    //   55: astore_3
    //   56: aload_2
    //   57: ifnull -> 64
    //   60: aload_2
    //   61: invokevirtual close : ()V
    //   64: aload_0
    //   65: ifnull -> 72
    //   68: aload_0
    //   69: invokevirtual close : ()V
    //   72: aload_1
    //   73: ifnull -> 268
    //   76: ldc '[ChatUtil]'
    //   78: new java/lang/StringBuilder
    //   81: dup
    //   82: invokespecial <init> : ()V
    //   85: ldc_w 'readBufferStream'
    //   88: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: ldc_w 'line.separator'
    //   94: invokestatic getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   97: ldc_w 'from: ['
    //   100: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   103: aload_1
    //   104: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   107: new java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial <init> : ()V
    //   114: ldc_w '] '
    //   117: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: ldc_w 'line.separator'
    //   123: invokestatic getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   126: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: invokevirtual toString : ()Ljava/lang/String;
    //   132: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   135: ldc_w 'data: ['
    //   138: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   141: aload #5
    //   143: invokevirtual toString : ()Ljava/lang/String;
    //   146: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   149: ldc_w '] '
    //   152: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   155: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual toString : ()Ljava/lang/String;
    //   161: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   164: pop
    //   165: aload #5
    //   167: invokevirtual toString : ()Ljava/lang/String;
    //   170: astore_2
    //   171: aload_2
    //   172: areturn
    //   173: aload_2
    //   174: ifnull -> 181
    //   177: aload_2
    //   178: invokevirtual close : ()V
    //   181: aload_0
    //   182: ifnull -> 72
    //   185: aload_0
    //   186: invokevirtual close : ()V
    //   189: goto -> 72
    //   192: astore_0
    //   193: aload_0
    //   194: invokevirtual printStackTrace : ()V
    //   197: goto -> 72
    //   200: astore_0
    //   201: aload_0
    //   202: invokevirtual printStackTrace : ()V
    //   205: goto -> 72
    //   208: astore_2
    //   209: aload #4
    //   211: astore_2
    //   212: aload_2
    //   213: ifnull -> 220
    //   216: aload_2
    //   217: invokevirtual close : ()V
    //   220: aload_0
    //   221: ifnull -> 72
    //   224: aload_0
    //   225: invokevirtual close : ()V
    //   228: goto -> 72
    //   231: astore_0
    //   232: aload_0
    //   233: invokevirtual printStackTrace : ()V
    //   236: goto -> 72
    //   239: astore_1
    //   240: aconst_null
    //   241: astore_2
    //   242: aload_2
    //   243: ifnull -> 250
    //   246: aload_2
    //   247: invokevirtual close : ()V
    //   250: aload_0
    //   251: ifnull -> 258
    //   254: aload_0
    //   255: invokevirtual close : ()V
    //   258: aload_1
    //   259: athrow
    //   260: astore_0
    //   261: aload_0
    //   262: invokevirtual printStackTrace : ()V
    //   265: goto -> 258
    //   268: ldc '[ChatUtil]'
    //   270: ldc_w 'readBufferStream: '
    //   273: aload #5
    //   275: invokevirtual toString : ()Ljava/lang/String;
    //   278: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   281: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   284: pop
    //   285: goto -> 165
    //   288: astore_2
    //   289: goto -> 181
    //   292: astore_2
    //   293: goto -> 64
    //   296: astore_2
    //   297: goto -> 220
    //   300: astore_2
    //   301: goto -> 250
    //   304: astore_1
    //   305: goto -> 242
    //   308: astore_3
    //   309: goto -> 212
    //   312: astore_2
    //   313: aload_3
    //   314: astore_2
    //   315: goto -> 56
    // Exception table:
    //   from	to	target	type
    //   20	36	312	java/io/IOException
    //   20	36	208	java/lang/Exception
    //   20	36	239	finally
    //   36	41	55	java/io/IOException
    //   36	41	308	java/lang/Exception
    //   36	41	304	finally
    //   45	52	55	java/io/IOException
    //   45	52	308	java/lang/Exception
    //   45	52	304	finally
    //   60	64	292	java/lang/Exception
    //   68	72	200	java/lang/Exception
    //   177	181	288	java/lang/Exception
    //   185	189	192	java/lang/Exception
    //   216	220	296	java/lang/Exception
    //   224	228	231	java/lang/Exception
    //   246	250	300	java/lang/Exception
    //   254	258	260	java/lang/Exception
  }
  
  public static String a(Integer paramInteger) {
    return (paramInteger != null) ? paramInteger.toString() : "";
  }
  
  public static String a(Long paramLong) {
    return (paramLong != null) ? paramLong.toString() : "";
  }
  
  public static String a(String paramString) {
    return (paramString != null) ? paramString : "";
  }
  
  public static String a(String paramString, ard paramard) {
    String str = paramString;
    if (paramString != null) {
      str = paramString;
      if (paramard != null)
        str = paramString.replace("{reason}", a(paramard.m())).replace("{app}", a(paramard.n())).replace("{position}", a(paramard.p())); 
    } 
    return str;
  }
  
  public static String a(String paramString1, String paramString2) {
    if (paramString2 != null)
      try {
        JSONObject jSONObject = new JSONObject(paramString2);
        return (jSONObject.get(paramString1) != null) ? jSONObject.get(paramString1).toString() : "";
      } catch (Exception exception) {
        Log.e("[ChatUtil]", "jsonGetValue error get value from key " + a(paramString1) + ": ".concat(exception.getMessage()), exception);
      }  
    return null;
  }
  
  public static String a(String paramString1, String paramString2, String paramString3, String paramString4) {
    String str = paramString1;
    if (paramString1 != null)
      str = paramString1.replace("{reason}", a(paramString2)).replace("{app}", a(paramString3)).replace("{position}", a(paramString4)); 
    return str;
  }
  
  public static String a(HttpURLConnection paramHttpURLConnection, String paramString) {
    List<String> list = paramHttpURLConnection.getHeaderFields().get(paramString);
    return (list != null && list.size() > 0) ? list.get(0) : "";
  }
  
  public static String a(byte[] paramArrayOfbyte) {
    return (paramArrayOfbyte != null) ? Arrays.toString(paramArrayOfbyte) : "";
  }
  
  public static HttpURLConnection a(String paramString, apz paramapz, InputStream paramInputStream) {
    if (paramString != null) {
      Log.d("[ChatUtil]", "getHttpURLConnection to:  ".concat(paramString));
      HttpURLConnection httpURLConnection = ash.a(paramString, paramInputStream);
      if (httpURLConnection != null) {
        if (paramapz != null) {
          if (paramapz.toString().equals(apz.POST.name()))
            a(httpURLConnection); 
          httpURLConnection.setRequestMethod(paramapz.name());
          return httpURLConnection;
        } 
      } else {
        return httpURLConnection;
      } 
      httpURLConnection.setRequestMethod(apz.GET.name());
      return httpURLConnection;
    } 
    Log.e("[ChatUtil]", "getHttpURLConnection to: NULL");
    return null;
  }
  
  public static HttpURLConnection a(String paramString1, apz paramapz, String paramString2, int paramInt, InputStream paramInputStream) {
    return a(paramString1, paramapz, paramString2, paramInt, paramInputStream, null, null, true, null, false);
  }
  
  public static HttpURLConnection a(String paramString1, apz paramapz, String paramString2, int paramInt, InputStream paramInputStream, String paramString3, String paramString4, boolean paramBoolean1, String paramString5, boolean paramBoolean2) {
    HttpURLConnection httpURLConnection2;
    if (paramBoolean2) {
      Log.d("[ChatUtil]", "getHttpURLConnection to endSession");
      httpURLConnection2 = a(paramString1, paramapz, paramInputStream);
      httpURLConnection1 = httpURLConnection2;
      if (httpURLConnection2 != null) {
        if (!b(paramString4)) {
          httpURLConnection2.setRequestProperty("RequestSignature", paramString4);
          Log.d("[ChatUtil]", "RequestSignature".concat(":").concat(paramString4));
        } 
        httpURLConnection1 = httpURLConnection2;
        if (!b(paramString5)) {
          httpURLConnection2.setRequestProperty("ChatSessionId", paramString5);
          Log.d("[ChatUtil]", "ChatSessionId".concat(":").concat(paramString5));
          httpURLConnection1 = httpURLConnection2;
        } 
      } 
      return httpURLConnection1;
    } 
    HttpURLConnection httpURLConnection3 = a((String)httpURLConnection1, (apz)httpURLConnection2, paramInputStream);
    Log.d("[ChatUtil]", "==> HEADER");
    Log.d("[ChatUtil]", "HTTP_METHOD:".concat(httpURLConnection2.name()));
    HttpURLConnection httpURLConnection1 = httpURLConnection3;
    if (httpURLConnection3 != null) {
      if (paramBoolean1)
        a(httpURLConnection3); 
      if (!b(paramString2)) {
        httpURLConnection3.setRequestProperty("SessionToken", paramString2);
        Log.d("[ChatUtil]", "*" + "SessionToken".concat(":").concat(paramString2));
      } 
      if (!b(paramString3)) {
        httpURLConnection3.setRequestProperty("Authorization", "Basic".concat(" ").concat(paramString3));
        Log.d("[ChatUtil]", "Authorization".concat(":").concat("Basic".concat(" ").concat(paramString3)));
      } 
      if (!b(paramString4)) {
        httpURLConnection3.setRequestProperty("RequestSignature", paramString4);
        Log.d("[ChatUtil]", "RequestSignature".concat(":").concat(paramString4));
      } 
      if (!b(paramString5)) {
        httpURLConnection3.setRequestProperty("ChatSessionId", paramString5);
        Log.d("[ChatUtil]", "ChatSessionId".concat(":").concat(paramString5));
      } 
      if (httpURLConnection2 == apz.POST)
        httpURLConnection3.setDoOutput(true); 
      httpURLConnection3.setConnectTimeout(30000);
      Log.d("[ChatUtil]", "ConnectTimeout ".concat(String.valueOf(30000)));
      Log.d("[ChatUtil]", "Connection ReadTimeout ".concat(String.valueOf(paramInt)));
      if (paramInt > 0) {
        httpURLConnection3.setReadTimeout(paramInt);
        return httpURLConnection3;
      } 
      httpURLConnection3.setReadTimeout(15000);
      return httpURLConnection3;
    } 
    return httpURLConnection1;
  }
  
  public static HttpURLConnection a(String paramString1, apz paramapz, String paramString2, int paramInt, InputStream paramInputStream, boolean paramBoolean, String paramString3) {
    return a(paramString1, paramapz, paramString2, paramInt, paramInputStream, null, null, paramBoolean, paramString3, false);
  }
  
  public static Calendar a() {
    return Calendar.getInstance(Locale.getDefault());
  }
  
  public static List<ark> a(List<ark> paramList) {
    ArrayList<ark> arrayList = new ArrayList();
    if (paramList != null && paramList.size() > 0)
      for (ark ark : paramList) {
        if (ark.b() == aqb.Agent && (ark.c() == apu.TypingStarted || ark.c() == apu.TypingStopped) && !ark.i())
          arrayList.add(ark); 
      }  
    return arrayList;
  }
  
  public static void a(int paramInt) {
    long l = (paramInt * 1000);
    try {
      Thread.sleep(l);
      return;
    } catch (InterruptedException interruptedException) {
      Log.e("[ChatUtil]", "wait interruped");
      return;
    } 
  }
  
  public static void a(Activity paramActivity, String paramString1, long paramLong, String paramString2, Intent paramIntent) {
    NotificationCompat.Builder builder = (new NotificationCompat.Builder((Context)paramActivity)).setSmallIcon(aph.ico_squad_chat).setContentTitle(paramString1).setContentText(paramString2);
    if (paramIntent != null)
      builder.setContentIntent(PendingIntent.getActivity((Context)paramActivity, 0, paramIntent, 134217728)); 
    ((NotificationManager)paramActivity.getSystemService("notification")).notify((int)paramLong, builder.build());
  }
  
  public static void a(@NonNull Activity paramActivity, @NonNull String paramString1, @NonNull String paramString2, @NonNull String paramString3, @NonNull DialogInterface.OnClickListener paramOnClickListener1, @NonNull DialogInterface.OnClickListener paramOnClickListener2) {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)paramActivity);
    builder.setTitle(paramString1).setMessage(paramString2).setCancelable(false).setPositiveButton(paramString3, paramOnClickListener1).setNegativeButton("Cancelar", paramOnClickListener2);
    builder.create().show();
  }
  
  public static void a(Context paramContext) {
    Log.d("[ChatUtil]", "loadNewInstanceChat init.");
    if (paramContext != null) {
      (new Handler(Looper.getMainLooper())).post(new asg());
    } else {
      Log.e("[ChatUtil]", "Erro to open a new chat window, activity base is null.");
    } 
    Log.d("[ChatUtil]", "loadNewInstanceChat end.");
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3) {
    a(paramContext, paramString1, paramString2, paramString3, (DialogInterface.OnClickListener)null);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener) {
    a(paramContext, paramString1, paramString2, paramString3, paramOnClickListener, true);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener, boolean paramBoolean) {
    if (!b(paramString2)) {
      AlertDialog.Builder builder = new AlertDialog.Builder(paramContext);
      builder.setTitle(paramString1);
      builder.setMessage(paramString2).setCancelable(false).setPositiveButton(paramString3, paramOnClickListener);
      if (paramOnClickListener != null && paramBoolean)
        builder.setNegativeButton("Cancelar", null); 
      builder.create().show();
    } 
  }
  
  public static void a(ard paramard) {
    if (paramard != null && !f(paramard.r()))
      paramard.b(e("Chat indisponível, por favor, reconecte")); 
  }
  
  public static void a(String paramString1, String paramString2, Context paramContext) {
    a(paramString1, paramString2, paramContext, false);
  }
  
  public static void a(String paramString1, String paramString2, Context paramContext, boolean paramBoolean) {
    if (!b(paramString2)) {
      AlertDialog.Builder builder = new AlertDialog.Builder(paramContext);
      builder.setTitle(paramString1);
      builder.setMessage(paramString2).setCancelable(false).setPositiveButton("OK", new asf(paramBoolean, paramContext));
      builder.create().show();
    } 
  }
  
  public static void a(String paramString, HttpURLConnection paramHttpURLConnection) {
    OutputStream outputStream2 = null;
    OutputStream outputStream3 = null;
    OutputStream outputStream4 = null;
    OutputStream outputStream5 = null;
    OutputStream outputStream1 = null;
    if (paramString != null) {
      OutputStream outputStream6 = outputStream2;
      OutputStream outputStream7 = outputStream3;
      OutputStream outputStream8 = outputStream4;
      outputStream1 = outputStream5;
      try {
        Log.d("[ChatUtil]", "writeJsonBody: ".concat(paramString));
        outputStream6 = outputStream2;
        outputStream7 = outputStream3;
        outputStream8 = outputStream4;
        outputStream1 = outputStream5;
        byte[] arrayOfByte = paramString.getBytes("UTF-8");
        outputStream6 = outputStream2;
        outputStream7 = outputStream3;
        outputStream8 = outputStream4;
        outputStream1 = outputStream5;
        OutputStream outputStream = paramHttpURLConnection.getOutputStream();
        outputStream6 = outputStream;
        outputStream7 = outputStream;
        outputStream8 = outputStream;
        outputStream1 = outputStream;
        outputStream.write(arrayOfByte);
        outputStream1 = outputStream;
        return;
      } catch (UnsupportedEncodingException unsupportedEncodingException) {
        outputStream1 = outputStream6;
        Log.e("[ChatUtil]", "writeJsonBody Erro ao tentar converter em bytes (UTF-8) o texto: ".concat((String)null).concat(" | ").concat(unsupportedEncodingException.getMessage()), unsupportedEncodingException);
        return;
      } catch (IOException iOException) {
        outputStream1 = outputStream7;
        Log.e("[ChatUtil]", "writeJsonBody Erro ao tentar escrever o conteudo json na requisicao (httpURLConnection): ".concat(" | ").concat(iOException.getMessage()), iOException);
        return;
      } catch (Exception exception) {
        outputStream1 = outputStream8;
        Log.e("[ChatUtil]", "writeJsonBody Erro generico ao tentar escrever o conteudo json na requisicao (httpURLConnection): ".concat(" | ").concat(exception.getMessage()), exception);
        return;
      } finally {
        if (outputStream1 != null)
          try {
            outputStream1.close();
          } catch (IOException iOException) {
            Log.e("[ChatUtil]", "writeJsonBody Erro IOException metodo close do OutputStream", iOException);
          }  
      } 
    } 
    if (outputStream1 != null)
      try {
        outputStream1.close();
        return;
      } catch (IOException iOException) {
        Log.e("[ChatUtil]", "writeJsonBody Erro IOException metodo close do OutputStream", iOException);
        return;
      }  
  }
  
  private static void a(HttpURLConnection paramHttpURLConnection) {
    paramHttpURLConnection.setRequestProperty("Accept", "application/json");
    Log.d("[ChatUtil]", "Accept".concat(":").concat("application/json"));
    paramHttpURLConnection.setRequestProperty("Content-Type", "application/json");
    Log.d("[ChatUtil]", "Content-Type".concat(":").concat("application/json"));
  }
  
  public static NetworkInfo b(Context paramContext) {
    return (paramContext != null) ? ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo() : null;
  }
  
  public static apy b(Object paramObject) {
    if (paramObject != null) {
      for (int i = 0; i < (apy.values()).length; i++) {
        if (apy.values()[i].getValue().toLowerCase().equalsIgnoreCase(paramObject.toString().trim()))
          return apy.values()[i]; 
      } 
    } else {
      return null;
    } 
    return null;
  }
  
  public static arj b(ark paramark) {
    return (paramark.l() != null && !paramark.l().l() && !paramark.l().g() && !paramark.l().e() && !paramark.l().n() && paramark.l().a() == null && paramark.l().k()) ? paramark.l() : null;
  }
  
  public static String b(@NonNull String paramString1, @NonNull String paramString2) {
    if (paramString1 != null && paramString2 != null)
      try {
        SecretKeySpec secretKeySpec = new SecretKeySpec(paramString2.getBytes(), "HmacSHA1");
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(secretKeySpec);
        String str = Base64.encodeToString(mac.doFinal(paramString1.getBytes()), 0);
        Log.d("ContentValues", "securitySignatureParam String: " + paramString1);
        Log.d("ContentValues", "securitySignatureParam key: " + paramString2);
        Log.d("ContentValues", "securitySignatureParam result: " + str);
        return str;
      } catch (Exception exception) {
        Log.e("[ChatUtil]", "securitySignatureParam error " + exception.getMessage(), exception);
      }  
    return "";
  }
  
  private static String b(byte[] paramArrayOfbyte) {
    Formatter formatter = new Formatter();
    int j = paramArrayOfbyte.length;
    for (int i = 0; i < j; i++) {
      formatter.format("%02x", new Object[] { Byte.valueOf(paramArrayOfbyte[i]) });
    } 
    return formatter.toString();
  }
  
  public static List<ark> b(List<ark> paramList) {
    ArrayList<ark> arrayList = new ArrayList();
    for (ark ark : paramList) {
      if (ark.c() == apu.TypingStopped)
        arrayList.add(ark); 
    } 
    return arrayList;
  }
  
  public static void b() {
    for (ark ark : ard.a().r()) {
      if (!ark.j())
        ark.h(true); 
    } 
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2, String paramString3) {
    Log.d("[ChatUtil]", "Notifica evento app");
    Intent intent = new Intent();
    intent.setAction(paramString3);
    intent.addCategory("android.intent.category.DEFAULT");
    intent.putExtra(paramString1, paramString2);
    paramContext.sendBroadcast(intent);
  }
  
  public static void b(ard paramard) {
    if (paramard != null && paramard.r() != null) {
      Log.d("[ChatUtil]", " cleanEvents getTranscripts size: ".concat(String.valueOf(paramard.r().size())));
      ArrayList<ark> arrayList = new ArrayList();
      for (ark ark : paramard.r()) {
        if (ark.c() == apu.TypingStarted || ark.c() == apu.TypingStopped)
          arrayList.add(ark); 
      } 
      synchronized (new Object()) {
        paramard.r().removeAll(arrayList);
        Log.d("[ChatUtil]", " cleanEvents getTranscripts size: ".concat(String.valueOf(paramard.r().size())));
        return;
      } 
    } 
  }
  
  public static boolean b(File paramFile) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: ldc '[ChatUtil]'
    //   4: ldc_w 'Check isFilePermitted init.'
    //   7: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_0
    //   12: ifnonnull -> 17
    //   15: iload_2
    //   16: ireturn
    //   17: aload_0
    //   18: invokestatic a : (Ljava/io/File;)Laqa;
    //   21: astore #5
    //   23: aload #5
    //   25: ifnonnull -> 43
    //   28: iconst_0
    //   29: ifeq -> 15
    //   32: new java/lang/NullPointerException
    //   35: dup
    //   36: invokespecial <init> : ()V
    //   39: athrow
    //   40: astore_0
    //   41: iconst_0
    //   42: ireturn
    //   43: new java/io/FileInputStream
    //   46: dup
    //   47: aload_0
    //   48: invokespecial <init> : (Ljava/io/File;)V
    //   51: astore #4
    //   53: aload #4
    //   55: astore_0
    //   56: aload #5
    //   58: invokevirtual getValue : ()[B
    //   61: arraylength
    //   62: newarray byte
    //   64: astore #6
    //   66: aload #4
    //   68: astore_0
    //   69: aload #4
    //   71: aload #6
    //   73: invokevirtual read : ([B)I
    //   76: istore_1
    //   77: iload_1
    //   78: iconst_2
    //   79: if_icmpge -> 97
    //   82: aload #4
    //   84: ifnull -> 15
    //   87: aload #4
    //   89: invokevirtual close : ()V
    //   92: iconst_0
    //   93: ireturn
    //   94: astore_0
    //   95: iconst_0
    //   96: ireturn
    //   97: aload #4
    //   99: astore_0
    //   100: aload #6
    //   102: aload #5
    //   104: invokevirtual getValue : ()[B
    //   107: invokestatic equals : ([B[B)Z
    //   110: istore_3
    //   111: iload_3
    //   112: istore_2
    //   113: aload #4
    //   115: ifnull -> 15
    //   118: aload #4
    //   120: invokevirtual close : ()V
    //   123: iload_3
    //   124: ireturn
    //   125: astore_0
    //   126: iload_3
    //   127: ireturn
    //   128: astore #5
    //   130: aconst_null
    //   131: astore #4
    //   133: aload #4
    //   135: astore_0
    //   136: ldc '[ChatUtil]'
    //   138: ldc_w 'Check isFilePermitted FileNotFoundException.'
    //   141: aload #5
    //   143: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   146: pop
    //   147: aload #4
    //   149: ifnull -> 15
    //   152: aload #4
    //   154: invokevirtual close : ()V
    //   157: iconst_0
    //   158: ireturn
    //   159: astore_0
    //   160: iconst_0
    //   161: ireturn
    //   162: astore #5
    //   164: aconst_null
    //   165: astore #4
    //   167: aload #4
    //   169: astore_0
    //   170: ldc '[ChatUtil]'
    //   172: ldc_w 'Check isFilePermitted IOException.'
    //   175: aload #5
    //   177: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   180: pop
    //   181: aload #4
    //   183: ifnull -> 15
    //   186: aload #4
    //   188: invokevirtual close : ()V
    //   191: iconst_0
    //   192: ireturn
    //   193: astore_0
    //   194: iconst_0
    //   195: ireturn
    //   196: astore #4
    //   198: aconst_null
    //   199: astore_0
    //   200: aload_0
    //   201: ifnull -> 208
    //   204: aload_0
    //   205: invokevirtual close : ()V
    //   208: aload #4
    //   210: athrow
    //   211: astore_0
    //   212: goto -> 208
    //   215: astore #4
    //   217: goto -> 200
    //   220: astore #5
    //   222: goto -> 167
    //   225: astore #5
    //   227: goto -> 133
    // Exception table:
    //   from	to	target	type
    //   17	23	128	java/io/FileNotFoundException
    //   17	23	162	java/io/IOException
    //   17	23	196	finally
    //   32	40	40	java/io/IOException
    //   43	53	128	java/io/FileNotFoundException
    //   43	53	162	java/io/IOException
    //   43	53	196	finally
    //   56	66	225	java/io/FileNotFoundException
    //   56	66	220	java/io/IOException
    //   56	66	215	finally
    //   69	77	225	java/io/FileNotFoundException
    //   69	77	220	java/io/IOException
    //   69	77	215	finally
    //   87	92	94	java/io/IOException
    //   100	111	225	java/io/FileNotFoundException
    //   100	111	220	java/io/IOException
    //   100	111	215	finally
    //   118	123	125	java/io/IOException
    //   136	147	215	finally
    //   152	157	159	java/io/IOException
    //   170	181	215	finally
    //   186	191	193	java/io/IOException
    //   204	208	211	java/io/IOException
  }
  
  public static boolean b(String paramString) {
    return (paramString == null || paramString.trim().equals(""));
  }
  
  public static aqb c(Object paramObject) {
    if (paramObject != null) {
      for (int i = 0; i < (aqb.values()).length; i++) {
        if (aqb.values()[i].getValue().toLowerCase().equalsIgnoreCase(paramObject.toString().trim()))
          return aqb.values()[i]; 
      } 
    } else {
      return null;
    } 
    return null;
  }
  
  public static List<ark> c(String paramString) {
    try {
      if (!b(paramString)) {
        ArrayList<ark> arrayList = new ArrayList();
        try {
          arrayList.add(a(new JSONObject(paramString)));
          return arrayList;
        } catch (JSONException jSONException) {}
        Log.e("[ChatUtil]", "loadTranscripts Erro JSONException: ".concat(paramString), (Throwable)jSONException);
        return arrayList;
      } 
    } catch (JSONException jSONException) {
      List list = null;
      Log.e("[ChatUtil]", "loadTranscripts Erro JSONException: ".concat(paramString), (Throwable)jSONException);
      return list;
    } 
    return null;
  }
  
  public static List<ark> c(List<ark> paramList) {
    ArrayList<ark> arrayList2 = new ArrayList();
    ArrayList<ark> arrayList1 = new ArrayList();
    for (ark ark : paramList) {
      if (ark.c() == apu.TypingStarted)
        arrayList2.add(ark); 
      if (ark.c() == apu.TypingStopped)
        arrayList1.add(ark); 
    } 
    if (arrayList2.size() > 0) {
      if (arrayList1.size() > 0) {
        paramList = new ArrayList<ark>();
        for (ark ark : arrayList2) {
          Iterator<ark> iterator = arrayList1.iterator();
          boolean bool = false;
          while (iterator.hasNext()) {
            ark ark1 = iterator.next();
            if (a(ark).equals(a(ark1)))
              bool = true; 
          } 
          if (!bool)
            paramList.add(ark); 
        } 
        return paramList;
      } 
      return arrayList2;
    } 
    return arrayList2;
  }
  
  public static boolean c(ard paramard) {
    boolean bool = true;
    if (paramard == null)
      bool = false; 
    if (b(paramard.j()))
      bool = false; 
    return (paramard.k() != 0) ? false : bool;
  }
  
  public static String d(Object paramObject) {
    return (paramObject != null) ? paramObject.toString() : "";
  }
  
  public static String d(List<ark> paramList) {
    Log.d("[ChatUtil]", "getTypingNames ini ");
    String str1 = "";
    String str2 = str1;
    if (paramList != null) {
      str2 = str1;
      if (paramList.size() > 0) {
        Log.d("[ChatUtil]", "getTypingNames has transcript size: " + paramList.size());
        HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
        for (ark ark : paramList)
          hashMap.put(a(ark), ark.d()); 
        for (Map.Entry<Object, Object> entry : hashMap.entrySet())
          str1 = str1 + d(entry.getKey()) + " " + d(entry.getValue()) + "; "; 
        String str = str1.trim();
        str2 = str.substring(0, str.length() - 1);
      } 
    } 
    Log.d("[ChatUtil]", "getTypingNames end retorno: " + str2);
    return str2;
  }
  
  public static List<ark> d(String paramString) {
    Object object1 = null;
    Object object2 = null;
    try {
      if (!b(paramString)) {
        object1 = new ArrayList();
        try {
          JSONArray jSONArray = (new JSONObject(paramString)).getJSONArray("transcriptEvents");
          if (jSONArray.length() > 0)
            for (int i = 0; i < jSONArray.length(); i++) {
              object2 = jSONArray.get(i);
              if (object2 != null) {
                ark ark = a((JSONObject)object2);
                ark.d(object2.toString());
                object1.add(ark);
              } 
            }  
        } catch (JSONException jSONException) {
          Log.e("[ChatUtil]", "loadTranscripts Erro JSONException: ".concat(paramString), (Throwable)jSONException);
          return (List<ark>)object1;
        } 
      } else {
        return (List<ark>)object1;
      } 
    } catch (JSONException jSONException) {
      object1 = object2;
      Log.e("[ChatUtil]", "loadTranscripts Erro JSONException: ".concat(paramString), (Throwable)jSONException);
      return (List<ark>)object1;
    } 
    return (List<ark>)object1;
  }
  
  public static boolean d(ard paramard) {
    boolean bool = true;
    if (paramard == null)
      bool = false; 
    if (b(paramard.j()))
      bool = false; 
    return f(paramard.r()) ? false : bool;
  }
  
  public static long e(Object paramObject) {
    long l = 0L;
    if (paramObject != null)
      try {
        return Long.parseLong(paramObject.toString());
      } catch (NumberFormatException numberFormatException) {
        return 0L;
      }  
    return l;
  }
  
  public static ark e(String paramString) {
    aqb aqb = aqb.Agent;
    apu apu = apu.SessionDisconnected;
    if (b(paramString))
      paramString = ""; 
    return new ark(-1L, aqb, apu, paramString, aqb.Agent.getValue(), 0L, "0");
  }
  
  public static String e(List<ark> paramList) {
    ArrayList<String> arrayList = new ArrayList();
    if (paramList != null && paramList.size() > 0)
      for (ark ark : paramList) {
        if (ark.b() == aqb.Agent && ark.c() == apu.AgentJoined)
          arrayList.add(a(ark)); 
        if (arrayList.size() > 0 && ark.b() == aqb.Agent && ark.c() == apu.AgentLeft)
          arrayList.remove(a(ark)); 
      }  
    StringBuilder stringBuilder = new StringBuilder();
    Iterator<String> iterator = arrayList.iterator();
    while (iterator.hasNext())
      stringBuilder.append(((String)iterator.next()).concat("; ")); 
    String str2 = stringBuilder.toString().trim();
    String str1 = str2;
    if (str2.endsWith(";"))
      str1 = str2.substring(0, str2.length() - 1); 
    Log.d("[ChatUtil]", "Lista de gerentes: ".concat(str1));
    return str1;
  }
  
  public static int f(Object paramObject) {
    int i = 0;
    if (paramObject != null)
      try {
        return Integer.parseInt(paramObject.toString());
      } catch (NumberFormatException numberFormatException) {
        return 0;
      }  
    return i;
  }
  
  public static boolean f(String paramString) {
    return (!b(paramString) && paramString.length() <= 500L);
  }
  
  public static boolean f(List<ark> paramList) {
    if (paramList != null && paramList.size() > 0) {
      Iterator<ark> iterator = paramList.iterator();
      while (iterator.hasNext()) {
        if (((ark)iterator.next()).c() == apu.SessionDisconnected)
          return true; 
      } 
    } 
    return false;
  }
  
  public static String g(String paramString) {
    // Byte code:
    //   0: new java/net/URI
    //   3: dup
    //   4: aload_0
    //   5: invokespecial <init> : (Ljava/lang/String;)V
    //   8: astore_0
    //   9: aload_0
    //   10: invokevirtual getHost : ()Ljava/lang/String;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull -> 48
    //   18: aload_1
    //   19: astore_0
    //   20: aload_1
    //   21: ldc_w 'www.'
    //   24: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   27: ifeq -> 36
    //   30: aload_1
    //   31: iconst_4
    //   32: invokevirtual substring : (I)Ljava/lang/String;
    //   35: astore_0
    //   36: aload_0
    //   37: areturn
    //   38: astore_0
    //   39: aload_0
    //   40: invokevirtual printStackTrace : ()V
    //   43: aconst_null
    //   44: astore_0
    //   45: goto -> 9
    //   48: ldc '[ChatUtil]'
    //   50: new java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial <init> : ()V
    //   57: ldc_w 'hostname: '
    //   60: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: aload_1
    //   64: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: invokevirtual toString : ()Ljava/lang/String;
    //   70: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   73: pop
    //   74: aload_1
    //   75: areturn
    // Exception table:
    //   from	to	target	type
    //   0	9	38	java/net/URISyntaxException
  }
  
  public static boolean g(Object paramObject) {
    boolean bool = false;
    if (paramObject != null)
      try {
        return Boolean.parseBoolean(paramObject.toString().trim().toLowerCase());
      } catch (RuntimeException runtimeException) {
        return false;
      }  
    return bool;
  }
  
  public static boolean g(List<ark> paramList) {
    if (paramList != null && paramList.size() > 0)
      for (ark ark : paramList) {
        if (ark.c() == apu.AgentJoined && ark.b() == aqb.Agent)
          return true; 
      }  
    return false;
  }
  
  public static boolean h(List<ark> paramList) {
    if (paramList != null && paramList.size() > 0)
      for (ark ark : paramList) {
        if (ark.c() == apu.TextMessageSent && ark.b() == aqb.Agent && !ark.i())
          return true; 
      }  
    return false;
  }
  
  public static boolean i(List<ark> paramList) {
    if (paramList != null && paramList.size() > 0)
      for (ark ark : paramList) {
        if ((ark.b() == aqb.Agent && ark.c() == apu.TextMessageSent) || (ark.b() == aqb.User && ark.c() == apu.TextMessageSent) || (ark.b() == aqb.Agent && ark.c() == apu.FileTransfer) || (ark.b() == aqb.User && ark.c() == apu.FileTransfer))
          return true; 
      }  
    return false;
  }
  
  public static ark j(List<ark> paramList) {
    ark ark = new ark();
    if (paramList != null && paramList.size() > 0)
      for (ark ark1 : paramList) {
        if (ark1.c() == apu.TextMessageSent && ark1.b() == aqb.Agent && !ark1.i())
          return ark1; 
      }  
    return ark;
  }
  
  public static boolean k(List<ark> paramList) {
    boolean bool;
    if (paramList != null && paramList.size() > 0) {
      Iterator<ark> iterator = paramList.iterator();
      bool = false;
      while (iterator.hasNext()) {
        ark ark = iterator.next();
        if (ark.c() != apu.SessionDisconnected) {
          if (((ark.c() == apu.TextMessageSent || ark.c() == apu.SessionDisconnected || (ark.c() == apu.TypingStarted && ark.b() == aqb.Agent) || (ark.c() == apu.TypingStopped && ark.b() == aqb.Agent) || (ark.c() == apu.AgentJoined && ark.b() == aqb.Agent) || (ark.c() == apu.AgentLeft && ark.b() == aqb.Agent) || (ark.c() == apu.FileTransfer && ark.b() == aqb.Agent)) && !ark.i() && ark.b() != aqb.External) || ark.q()) {
            Log.d("[ChatUtil]", "=>> hasNewEvent: " + ark);
            return true;
          } 
          if (ark.q())
            bool = true; 
          continue;
        } 
        return false;
      } 
    } else {
      return false;
    } 
    return bool;
  }
  
  public static List<ark> l(List<ark> paramList) {
    ArrayList<ark> arrayList = new ArrayList();
    try {
      Iterator<ark> iterator = paramList.iterator();
      while (iterator.hasNext())
        arrayList.add((ark)((ark)iterator.next()).clone()); 
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      Log.e("[ChatUtil]", "Erro cloneTranscript ", cloneNotSupportedException);
    } 
    return arrayList;
  }
  
  public static List<ark> m(List<ark> paramList) {
    ArrayList<ark> arrayList = new ArrayList();
    if (paramList != null && paramList.size() > 0)
      for (ark ark : paramList) {
        if (ark.m() && !ark.p())
          arrayList.add(ark); 
      }  
    return arrayList;
  }
  
  public static List<arj> n(List<ark> paramList) {
    ArrayList<arj> arrayList = new ArrayList();
    if (paramList != null && paramList.size() > 0)
      for (ark ark : paramList) {
        if (ark.l() != null && !ark.l().l() && !ark.l().g() && !ark.l().e() && !ark.l().n() && !ark.l().o() && b(ark.l().a()) && ark.l().k())
          arrayList.add(ark.l()); 
      }  
    return arrayList;
  }
  
  public static long o(List<ark> paramList) {
    Iterator<ark> iterator = paramList.iterator();
    long l = 0L;
    while (iterator.hasNext()) {
      if (((ark)iterator.next()).a() > 0L)
        l = 1L + l; 
    } 
    return l;
  }
  
  public static long p(List<ark> paramList) {
    long l;
    if (paramList != null) {
      Iterator<ark> iterator = paramList.iterator();
      long l1 = 0L;
      while (true) {
        l = l1;
        if (iterator.hasNext()) {
          ark ark = iterator.next();
          if (l1 < ark.a())
            l1 = ark.a(); 
          continue;
        } 
        break;
      } 
    } else {
      l = 0L;
    } 
    return l;
  }
  
  public static void q(List<ark> paramList) {
    if (paramList != null)
      for (ark ark : paramList) {
        if (ark.c() == apu.AgentJoined && ark.b() == aqb.Agent) {
          ark.a(true);
          break;
        } 
      }  
  }
  
  public static ark r(List<ark> paramList) {
    if (paramList != null && paramList.size() > 0)
      for (ark ark : paramList) {
        if (ark.c() == apu.AgentJoined && ark.b() == aqb.Agent)
          return ark; 
      }  
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */