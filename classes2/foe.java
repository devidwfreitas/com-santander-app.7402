import android.util.Log;
import java.io.InputStream;
import java.util.HashSet;
import java.util.UUID;

public class foe extends hbm {
  private naf b = new naf();
  
  private String a(String paramString1, String paramString2) {
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
    //   187: ldc '<web:obterUsuarioPorCpf>'
    //   189: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc '<UsuarioCpfRequest>'
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
    //   290: ldc '</UsuarioCpfRequest>'
    //   292: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: ldc '</web:obterUsuarioPorCpf>'
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
    //   331: invokevirtual a : (Ljava/lang/String;)Ljava/lang/String;
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
  
  private String b(String paramString) {
    if (this.a.h() == null)
      return ""; 
    try {
      paramString = this.b.a(paramString);
      return this.b.b(paramString.getBytes("UTF-8"));
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public fny a(fnx paramfnx) {
    try {
      String str2 = UUID.randomUUID().toString();
      String str1 = a(paramfnx.a(), str2);
      str1 = jcd.a(has.G(), str1, "", true);
      if (str1 != null) {
        InputStream inputStream = c(str1, "UTF-8");
        try {
          foa foa = new foa(inputStream);
          foa.b();
          fny fny2 = foa.a();
          if (foa.a() != null) {
            if (foa.a().hasFaultError()) {
              fny1 = foa.a();
              return fny1;
            } 
            this.a.b(fny2.g());
            this.a.f().g(fny2.f());
          } 
          fny fny1 = fny1.a();
          return fny1;
        } finally {
          inputStream.close();
        } 
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      fny fny = new fny();
      fvu fvu = new fvu();
      fvu.setFaultstring(exception.getMessage());
      fny.setError(fvu);
      return fny;
    } 
    return null;
  }
  
  public String a(String paramString) {
    HashSet<String> hashSet = new HashSet();
    hashSet.add("arg2");
    return b(mxj.a(paramString, "//soapenv:Body", hashSet).toString());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\foe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */