import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.santander.app.ExitActivity;
import com.santander.app.MinhaConta;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.UUID;

public class hbk extends hbm {
  private Activity b;
  
  private mzl c;
  
  private naf d = new naf();
  
  private String a(String paramString1, String paramString2, String paramString3, String paramString4) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lmiq;
    //   4: invokevirtual k : ()Lfwv;
    //   7: astore #5
    //   9: new naf
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: astore #7
    //   18: aload #7
    //   20: aload #5
    //   22: invokevirtual e : ()Ljava/lang/String;
    //   25: ldc 'UTF-8'
    //   27: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   30: invokevirtual b : ([B)Ljava/lang/String;
    //   33: astore #6
    //   35: aload #6
    //   37: ifnull -> 54
    //   40: aload #6
    //   42: astore #5
    //   44: aload #6
    //   46: ldc ''
    //   48: invokevirtual equals : (Ljava/lang/Object;)Z
    //   51: ifeq -> 59
    //   54: invokestatic a : ()Ljava/lang/String;
    //   57: astore #5
    //   59: aload #7
    //   61: aload_1
    //   62: ldc 'UTF-8'
    //   64: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   67: invokevirtual b : ([B)Ljava/lang/String;
    //   70: astore_1
    //   71: new java/lang/StringBuilder
    //   74: dup
    //   75: invokespecial <init> : ()V
    //   78: ldc '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="http://webservice.mbb.app.bsbr.altec.com/">'
    //   80: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: ldc '<soapenv:Header/>'
    //   85: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: ldc '<soapenv:Body>'
    //   90: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc '<web:autenticarUsuario>'
    //   95: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: ldc '<arg0>'
    //   100: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc '<arg0>'
    //   105: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: aload_2
    //   109: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: ldc '|'
    //   114: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload_1
    //   118: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: ldc '|'
    //   123: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload #5
    //   128: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc '</arg0>'
    //   133: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc '<connUuid>'
    //   138: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload_0
    //   142: getfield a : Lmiq;
    //   145: invokevirtual i : ()Ljava/lang/String;
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc '</connUuid>'
    //   153: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc '<arg3>'
    //   158: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_0
    //   162: getfield a : Lmiq;
    //   165: invokevirtual j : ()Ljava/lang/String;
    //   168: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: ldc '</arg3>'
    //   173: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: ldc '<dadosDispositivo>'
    //   178: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: aload_0
    //   182: invokespecial e : ()Ljava/lang/String;
    //   185: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: ldc '</dadosDispositivo>'
    //   190: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: ldc '<versao>'
    //   195: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: aload_0
    //   199: getfield d : Lnaf;
    //   202: ldc '5'
    //   204: invokevirtual getBytes : ()[B
    //   207: invokevirtual b : ([B)Ljava/lang/String;
    //   210: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: ldc '</versao>'
    //   215: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc '<dataLynx>'
    //   220: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: aload_0
    //   224: invokevirtual c : ()Ljava/lang/String;
    //   227: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: ldc '</dataLynx>'
    //   232: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: ldc '<deviceToken>'
    //   237: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: astore_2
    //   241: ldc ''
    //   243: aload_3
    //   244: invokevirtual equals : (Ljava/lang/Object;)Z
    //   247: ifeq -> 423
    //   250: ldc ''
    //   252: astore_1
    //   253: aload_2
    //   254: aload_1
    //   255: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: ldc '</deviceToken>'
    //   260: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: astore_1
    //   264: aload #4
    //   266: ifnull -> 306
    //   269: ldc ''
    //   271: aload #4
    //   273: invokevirtual equals : (Ljava/lang/Object;)Z
    //   276: ifne -> 306
    //   279: aload_1
    //   280: ldc '<dlbpk>'
    //   282: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: aload_0
    //   286: getfield d : Lnaf;
    //   289: aload #4
    //   291: invokevirtual getBytes : ()[B
    //   294: invokevirtual b : ([B)Ljava/lang/String;
    //   297: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: ldc '</dlbpk>'
    //   302: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: pop
    //   306: aload_1
    //   307: ldc '</arg0>'
    //   309: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: ldc '</web:autenticarUsuario>'
    //   314: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc '</soapenv:Body>'
    //   319: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: ldc '</soapenv:Envelope>'
    //   324: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: pop
    //   328: aload_1
    //   329: invokevirtual toString : ()Ljava/lang/String;
    //   332: astore_1
    //   333: aload_1
    //   334: ldc '</connUuid>'
    //   336: new java/lang/StringBuilder
    //   339: dup
    //   340: invokespecial <init> : ()V
    //   343: ldc '</connUuid><arg2>'
    //   345: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: aload_0
    //   349: aload_1
    //   350: ldc 'arg3'
    //   352: invokevirtual a : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   355: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: ldc '</arg2>'
    //   360: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: invokevirtual toString : ()Ljava/lang/String;
    //   366: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   369: ldc 'connUuid'
    //   371: ldc 'arg1'
    //   373: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   376: ldc 'dataLynx'
    //   378: ldc 'arg4'
    //   380: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   383: ldc 'versao'
    //   385: ldc 'arg5'
    //   387: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   390: ldc 'dadosDispositivo'
    //   392: ldc 'arg6'
    //   394: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   397: ldc 'deviceToken'
    //   399: ldc 'arg7'
    //   401: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   404: ldc 'dlbpk'
    //   406: ldc 'arg8'
    //   408: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   411: areturn
    //   412: astore_1
    //   413: ldc ''
    //   415: astore #5
    //   417: ldc ''
    //   419: astore_1
    //   420: goto -> 71
    //   423: aload_0
    //   424: getfield d : Lnaf;
    //   427: aload_3
    //   428: invokevirtual getBytes : ()[B
    //   431: invokevirtual b : ([B)Ljava/lang/String;
    //   434: astore_1
    //   435: goto -> 253
    // Exception table:
    //   from	to	target	type
    //   9	35	412	java/lang/Exception
    //   44	54	412	java/lang/Exception
    //   54	59	412	java/lang/Exception
    //   59	71	412	java/lang/Exception
  }
  
  private String b(String paramString1, String paramString2) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lmiq;
    //   4: invokevirtual k : ()Lfwv;
    //   7: astore #6
    //   9: new naf
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: astore #7
    //   18: aload #7
    //   20: aload_1
    //   21: ldc 'UTF-8'
    //   23: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   26: invokevirtual b : ([B)Ljava/lang/String;
    //   29: astore_3
    //   30: aload_3
    //   31: astore_1
    //   32: aload #7
    //   34: invokestatic b : ()Landroid/content/Context;
    //   37: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   40: invokestatic b : ()Landroid/content/Context;
    //   43: invokevirtual getPackageName : ()Ljava/lang/String;
    //   46: iconst_0
    //   47: invokevirtual getPackageInfo : (Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   50: getfield versionName : Ljava/lang/String;
    //   53: ldc 'UTF-8'
    //   55: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   58: invokevirtual b : ([B)Ljava/lang/String;
    //   61: astore #5
    //   63: aload #7
    //   65: aload #6
    //   67: invokevirtual e : ()Ljava/lang/String;
    //   70: ldc 'UTF-8'
    //   72: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   75: invokevirtual b : ([B)Ljava/lang/String;
    //   78: astore #4
    //   80: aload #4
    //   82: ifnull -> 98
    //   85: aload #4
    //   87: astore_3
    //   88: aload #4
    //   90: ldc ''
    //   92: invokevirtual equals : (Ljava/lang/Object;)Z
    //   95: ifeq -> 102
    //   98: invokestatic a : ()Ljava/lang/String;
    //   101: astore_3
    //   102: new java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial <init> : ()V
    //   109: ldc 'ANDROID  '
    //   111: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: aload #6
    //   116: invokevirtual h : ()Ljava/lang/String;
    //   119: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual toString : ()Ljava/lang/String;
    //   125: astore #6
    //   127: aload #6
    //   129: astore #4
    //   131: aload #6
    //   133: invokevirtual length : ()I
    //   136: bipush #32
    //   138: if_icmple -> 151
    //   141: aload #6
    //   143: iconst_0
    //   144: bipush #32
    //   146: invokevirtual substring : (II)Ljava/lang/String;
    //   149: astore #4
    //   151: aload #7
    //   153: aload #4
    //   155: ldc 'UTF-8'
    //   157: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   160: invokevirtual b : ([B)Ljava/lang/String;
    //   163: astore #4
    //   165: new java/lang/StringBuilder
    //   168: dup
    //   169: invokespecial <init> : ()V
    //   172: ldc '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="http://webservice.mbb.app.bsbr.altec.com/">'
    //   174: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: ldc '<soapenv:Header/>'
    //   179: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: ldc '<soapenv:Body>'
    //   184: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: ldc '<web:obterUsuarioCpfNovo>'
    //   189: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc '<arg0>'
    //   194: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: ldc '<arg0>'
    //   199: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: aload_1
    //   203: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc '|'
    //   208: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: aload_2
    //   212: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: ldc '|'
    //   217: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: aload #5
    //   222: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: ldc '|'
    //   227: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: aload_3
    //   231: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc '|'
    //   236: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: aload #4
    //   241: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: ldc '|ANDROID|'
    //   246: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: getstatic android/os/Build$VERSION.RELEASE : Ljava/lang/String;
    //   252: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: ldc '|'
    //   257: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: ldc 'SMP'
    //   262: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: ldc '</arg0>'
    //   267: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: ldc '<arg1>'
    //   272: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: aload_0
    //   276: getfield a : Lmiq;
    //   279: invokevirtual i : ()Ljava/lang/String;
    //   282: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: ldc '</arg1>'
    //   287: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: ldc '</arg0>'
    //   292: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: ldc '</web:obterUsuarioCpfNovo>'
    //   297: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: ldc '</soapenv:Body>'
    //   302: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   305: ldc '</soapenv:Envelope>'
    //   307: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: invokevirtual toString : ()Ljava/lang/String;
    //   313: astore_1
    //   314: aload_1
    //   315: ldc '</arg1>'
    //   317: new java/lang/StringBuilder
    //   320: dup
    //   321: invokespecial <init> : ()V
    //   324: ldc '</arg1><arg2>'
    //   326: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: aload_0
    //   330: aload_1
    //   331: invokevirtual b : (Ljava/lang/String;)Ljava/lang/String;
    //   334: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: ldc '</arg2>'
    //   339: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: invokevirtual toString : ()Ljava/lang/String;
    //   345: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   348: areturn
    //   349: astore_3
    //   350: ldc ''
    //   352: astore #5
    //   354: ldc ''
    //   356: astore_3
    //   357: ldc ''
    //   359: astore #4
    //   361: goto -> 165
    //   364: astore_3
    //   365: goto -> 350
    // Exception table:
    //   from	to	target	type
    //   9	30	349	java/lang/Exception
    //   32	80	364	java/lang/Exception
    //   88	98	364	java/lang/Exception
    //   98	102	364	java/lang/Exception
    //   102	127	364	java/lang/Exception
    //   131	151	364	java/lang/Exception
    //   151	165	364	java/lang/Exception
  }
  
  private String d(String paramString1, String paramString2) {
    return "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:getSegmentoCliente>" + "<SegmentoNMRequest>" + "<connUuid>" + this.a.i() + "</connUuid>" + "<tokenSessao>" + paramString1 + "</tokenSessao>" + "<tokenTransacao>" + paramString2 + "</tokenTransacao>" + "</SegmentoNMRequest>" + "</web:getSegmentoCliente>" + "</soapenv:Body>" + "</soapenv:Envelope>";
  }
  
  private void d() {
    if (MinhaConta.h())
      return; 
    Context context = MinhaConta.b();
    aqt.a();
    if (MinhaConta.c()) {
      MinhaConta.a(context.getResources().getString(2131297202), true);
      return;
    } 
    Intent intent = new Intent(context, ExitActivity.class);
    intent.addFlags(268435456);
    intent.addFlags(67108864);
    intent.putExtra("errorMessage", context.getResources().getString(2131297202));
    intent.putExtra("showHome", true);
    context.startActivity(intent);
  }
  
  private String e() {
    String str = (new mzk(this.b)).b();
    try {
      return this.d.b(str.getBytes());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  private String e(String paramString) {
    paramString = "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:web=\"http://webservice.mbb.app.bsbr.altec.com/\">" + "<soapenv:Header/>" + "<soapenv:Body>" + "<web:prepararPerfilDispositivo>" + "<arg0>" + "<arg1>" + this.a.i() + "</arg1>" + "<arg0>" + paramString + "</arg0>" + "<arg3>" + this.a.j() + "</arg3>" + "</arg0>" + "</web:prepararPerfilDispositivo>" + "</soapenv:Body>" + "</soapenv:Envelope>";
    return paramString.replace("</arg1>", "</arg1><arg2>" + a(paramString.replace("arg1", "arg"), "arg3") + "</arg2>");
  }
  
  private boolean e(String paramString1, String paramString2) {
    if (this.a.h() != null)
      try {
        boolean bool = this.d.c(Base64.decode(paramString2, 0)).equals(this.d.a(paramString1));
        return bool;
      } catch (Exception exception) {
        return false;
      }  
    return false;
  }
  
  private String f(String paramString) {
    if (this.a.h() == null)
      return ""; 
    try {
      paramString = this.d.a(paramString);
      return this.d.b(paramString.getBytes("UTF-8"));
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public fwr a(String paramString) {
    try {
      String str = UUID.randomUUID().toString();
      paramString = b(paramString, str);
      paramString = jcd.a(has.f(), paramString, "", true);
      if (paramString != null) {
        fwr fwr;
        jzv jzv;
        InputStream inputStream = c(paramString, "UTF-8");
        try {
          jzv = new jzv(inputStream);
          jzv.b();
          fwr fwr1 = jzv.a();
          if (jzv.a() != null) {
            fwr fwr2;
            String str1;
            if (jzv.a().hasFaultError()) {
              fwr2 = jzv.a();
              return fwr2;
            } 
            HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
            hashMap.put("<arg0>", "<requestId>");
            hashMap.put("</arg0>", "</requestId>");
            hashMap.put("<arg1>", "<codErro>");
            hashMap.put("</arg1>", "</codErro>");
            hashMap.put("<arg2>", "<msgErro>");
            hashMap.put("</arg2>", "</msgErro>");
            hashMap.put("<arg3>", "<segmentoNome>");
            hashMap.put("</arg3>", "</segmentoNome>");
            hashMap.put("<arg4>", "<dataHash>");
            hashMap.put("</arg4>", "</dataHash>");
            hashMap.put("<arg5>", "<tokenSession>");
            hashMap.put("</arg5>", "</tokenSession>");
            for (String str2 : hashMap.keySet())
              str1 = fwr2.replace(str2, (CharSequence)hashMap.get(str2)); 
            c(str1);
            if (!mxj.a(str1, "//requestId").equals(str))
              throw new hbo(); 
            this.a.b(fwr1.a());
          } 
        } finally {
          inputStream.close();
        } 
        inputStream.close();
        return fwr;
      } 
    } catch (hbo hbo) {
      d();
      throw hbo;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fwr fwr = new fwr();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fwr.setError(fvu);
      return fwr;
    } 
    return null;
  }
  
  public String a(String paramString1, String paramString2) {
    HashSet<String> hashSet = new HashSet();
    hashSet.add("arg2");
    hashSet.add(paramString2);
    return f(mxj.a(paramString1, "//soapenv:Body", hashSet).toString());
  }
  
  public mir a(Activity paramActivity, String paramString1, String paramString2, String paramString3) {
    this.b = paramActivity;
    try {
      String str = UUID.randomUUID().toString();
      paramString1 = a(paramString1, str, paramString2, paramString3);
      paramString1 = jcd.a(has.f(), paramString1, "", false);
      if (paramString1 != null) {
        boolean bool;
        c(paramString1);
        if (!mxj.a(paramString1, "//requestId").equals(str))
          throw new hbo(); 
        this.a.a(null);
        mzd<iow> mzd = new mzd();
        iow iow = mzd.a(iow.class, mzd.a(paramString1, "return", Boolean.valueOf(false)));
        this.a.f().a(iow);
        miq miq = this.a;
        if (miq.C().f().h() != null && miq.C().f().h().equals("2")) {
          bool = true;
        } else {
          bool = false;
        } 
        miq.a(bool);
        this.a.d(false);
      } 
    } catch (hbo hbo) {
      d();
      throw hbo;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      this.a.a(fvu);
    } 
    return this.a.f();
  }
  
  public void a() {
    try {
      String str = e(UUID.randomUUID().toString());
      jcd.a(has.f(), str, "", true);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return;
    } 
  }
  
  public fty b() {
    try {
      String str = d(this.a.j(), this.a.f().m());
      str = jcd.a(has.E(), str, "", true);
      if (str != null) {
        InputStream inputStream = c(str, "UTF-8");
        try {
          kaq kaq = new kaq(inputStream);
          kaq.b();
          return kaq.a();
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      Log.e("Error", exception.getMessage());
      fty fty = new fty();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fty.setError(fvu);
      return fty;
    } 
    return null;
  }
  
  public String b(String paramString) {
    HashSet<String> hashSet = new HashSet();
    hashSet.add("arg2");
    return f(mxj.a(paramString, "//soapenv:Body", hashSet).toString());
  }
  
  public String c() {
    Context context = MinhaConta.b();
    ArrayList<String> arrayList = new ArrayList();
    this.c = (new mzk(this.b)).a();
    String str1 = "";
    try {
      String str = (context.getPackageManager().getPackageInfo(context.getPackageName(), 0)).versionName;
      str1 = str;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("VERSION NAME", nameNotFoundException.toString());
    } 
    String[] arrayOfString = myz.a((Context)this.b);
    arrayOfString[2] = mza.a(true);
    String str2 = this.c.d().replace("|", "");
    arrayList.add("A");
    arrayList.add(this.c.u());
    arrayList.add(str2);
    arrayList.add(this.c.b());
    arrayList.add(this.c.p());
    arrayList.add(String.valueOf(this.c.g()));
    arrayList.add("0");
    arrayList.add(str1);
    Collections.addAll(arrayList, arrayOfString);
    str1 = TextUtils.join("|", arrayList);
    try {
      return this.d.b(str1.getBytes());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public void c(String paramString) {
    HashSet<String> hashSet = new HashSet();
    hashSet.add("tokenSession");
    hashSet.add("tokenSessao");
    hashSet.add("tokenTransacao");
    hashSet.add("dataHash");
    hashSet.add("hash");
    if (!e(mxj.a(paramString, "//soapenv:Body", hashSet).toString(), mxj.a(paramString, "//dataHash")))
      throw new hbo(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */