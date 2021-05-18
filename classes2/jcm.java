import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.santander.app.MinhaConta;
import java.util.ArrayList;
import java.util.Collections;

public class jcm implements jck {
  private miq a;
  
  private jcl b;
  
  private String c;
  
  private Activity d;
  
  private naf e = new naf();
  
  public jcm(jcl paramjcl, Activity paramActivity) {
    this.b = paramjcl;
    this.a = miq.C();
    this.d = paramActivity;
  }
  
  private gkv<jcg> c() {
    return new jcn(this);
  }
  
  private jcv d() {
    // Byte code:
    //   0: ldc ''
    //   2: astore #6
    //   4: ldc ''
    //   6: astore_1
    //   7: ldc ''
    //   9: astore #12
    //   11: invokestatic randomUUID : ()Ljava/util/UUID;
    //   14: invokevirtual toString : ()Ljava/lang/String;
    //   17: astore #14
    //   19: ldc '2'
    //   21: astore #9
    //   23: ldc ''
    //   25: astore #11
    //   27: ldc ''
    //   29: astore #10
    //   31: aload #9
    //   33: astore #4
    //   35: aload #12
    //   37: astore #5
    //   39: aload_1
    //   40: astore_2
    //   41: aload #11
    //   43: astore #8
    //   45: aload_0
    //   46: getfield e : Lnaf;
    //   49: invokestatic b : ()Landroid/content/Context;
    //   52: invokevirtual getPackageManager : ()Landroid/content/pm/PackageManager;
    //   55: invokestatic b : ()Landroid/content/Context;
    //   58: invokevirtual getPackageName : ()Ljava/lang/String;
    //   61: iconst_0
    //   62: invokevirtual getPackageInfo : (Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   65: getfield versionName : Ljava/lang/String;
    //   68: ldc 'UTF-8'
    //   70: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   73: invokevirtual b : ([B)Ljava/lang/String;
    //   76: astore_3
    //   77: aload #9
    //   79: astore #4
    //   81: aload #12
    //   83: astore #5
    //   85: aload_1
    //   86: astore_2
    //   87: aload_3
    //   88: astore #6
    //   90: aload #11
    //   92: astore #8
    //   94: aload_0
    //   95: getfield e : Lnaf;
    //   98: aload_0
    //   99: getfield a : Lmiq;
    //   102: invokevirtual k : ()Lfwv;
    //   105: invokevirtual e : ()Ljava/lang/String;
    //   108: ldc 'UTF-8'
    //   110: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   113: invokevirtual b : ([B)Ljava/lang/String;
    //   116: astore #7
    //   118: aload #7
    //   120: ifnull -> 154
    //   123: aload #7
    //   125: astore_1
    //   126: aload #9
    //   128: astore #4
    //   130: aload #12
    //   132: astore #5
    //   134: aload #7
    //   136: astore_2
    //   137: aload_3
    //   138: astore #6
    //   140: aload #11
    //   142: astore #8
    //   144: aload #7
    //   146: ldc ''
    //   148: invokevirtual equals : (Ljava/lang/Object;)Z
    //   151: ifeq -> 202
    //   154: aload #9
    //   156: astore #4
    //   158: aload #12
    //   160: astore #5
    //   162: aload #7
    //   164: astore_2
    //   165: aload_3
    //   166: astore #6
    //   168: aload #11
    //   170: astore #8
    //   172: aload_0
    //   173: getfield a : Lmiq;
    //   176: invokevirtual k : ()Lfwv;
    //   179: pop
    //   180: aload #9
    //   182: astore #4
    //   184: aload #12
    //   186: astore #5
    //   188: aload #7
    //   190: astore_2
    //   191: aload_3
    //   192: astore #6
    //   194: aload #11
    //   196: astore #8
    //   198: invokestatic a : ()Ljava/lang/String;
    //   201: astore_1
    //   202: aload #9
    //   204: astore #4
    //   206: aload #12
    //   208: astore #5
    //   210: aload_1
    //   211: astore_2
    //   212: aload_3
    //   213: astore #6
    //   215: aload #11
    //   217: astore #8
    //   219: new java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial <init> : ()V
    //   226: ldc 'ANDROID  '
    //   228: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: aload_0
    //   232: getfield a : Lmiq;
    //   235: invokevirtual k : ()Lfwv;
    //   238: invokevirtual h : ()Ljava/lang/String;
    //   241: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: invokevirtual toString : ()Ljava/lang/String;
    //   247: astore #13
    //   249: aload #13
    //   251: astore #7
    //   253: aload #9
    //   255: astore #4
    //   257: aload #12
    //   259: astore #5
    //   261: aload_1
    //   262: astore_2
    //   263: aload_3
    //   264: astore #6
    //   266: aload #11
    //   268: astore #8
    //   270: aload #13
    //   272: invokevirtual length : ()I
    //   275: bipush #32
    //   277: if_icmple -> 307
    //   280: aload #9
    //   282: astore #4
    //   284: aload #12
    //   286: astore #5
    //   288: aload_1
    //   289: astore_2
    //   290: aload_3
    //   291: astore #6
    //   293: aload #11
    //   295: astore #8
    //   297: aload #13
    //   299: iconst_0
    //   300: bipush #32
    //   302: invokevirtual substring : (II)Ljava/lang/String;
    //   305: astore #7
    //   307: aload #9
    //   309: astore #4
    //   311: aload #12
    //   313: astore #5
    //   315: aload_1
    //   316: astore_2
    //   317: aload_3
    //   318: astore #6
    //   320: aload #11
    //   322: astore #8
    //   324: aload_0
    //   325: getfield e : Lnaf;
    //   328: aload #7
    //   330: ldc 'UTF-8'
    //   332: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   335: invokevirtual b : ([B)Ljava/lang/String;
    //   338: astore #7
    //   340: aload #9
    //   342: astore #4
    //   344: aload #7
    //   346: astore #5
    //   348: aload_1
    //   349: astore_2
    //   350: aload_3
    //   351: astore #6
    //   353: aload #11
    //   355: astore #8
    //   357: aload_0
    //   358: getfield e : Lnaf;
    //   361: ldc '2'
    //   363: invokevirtual getBytes : ()[B
    //   366: invokevirtual b : ([B)Ljava/lang/String;
    //   369: astore #9
    //   371: aload #9
    //   373: astore #4
    //   375: aload #7
    //   377: astore #5
    //   379: aload_1
    //   380: astore_2
    //   381: aload_3
    //   382: astore #6
    //   384: aload #11
    //   386: astore #8
    //   388: new mzk
    //   391: dup
    //   392: aload_0
    //   393: getfield d : Landroid/app/Activity;
    //   396: invokespecial <init> : (Landroid/app/Activity;)V
    //   399: invokevirtual b : ()Ljava/lang/String;
    //   402: astore #11
    //   404: aload #9
    //   406: astore #4
    //   408: aload #7
    //   410: astore #5
    //   412: aload_1
    //   413: astore_2
    //   414: aload_3
    //   415: astore #6
    //   417: aload #11
    //   419: astore #8
    //   421: aload_0
    //   422: getfield e : Lnaf;
    //   425: aload #11
    //   427: invokevirtual getBytes : ()[B
    //   430: invokevirtual b : ([B)Ljava/lang/String;
    //   433: astore #11
    //   435: aload #11
    //   437: astore_2
    //   438: aload_0
    //   439: getfield e : Lnaf;
    //   442: invokestatic a : ()Ljava/lang/String;
    //   445: invokevirtual getBytes : ()[B
    //   448: invokevirtual b : ([B)Ljava/lang/String;
    //   451: astore #6
    //   453: aload #7
    //   455: astore #5
    //   457: aload #9
    //   459: astore #4
    //   461: new java/lang/StringBuilder
    //   464: dup
    //   465: invokespecial <init> : ()V
    //   468: aload #14
    //   470: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   473: ldc '|'
    //   475: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: aload_3
    //   479: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: ldc '|'
    //   484: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   487: aload_1
    //   488: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   491: ldc '|'
    //   493: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   496: aload #5
    //   498: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: ldc '|ANDROID|'
    //   503: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   506: getstatic android/os/Build$VERSION.RELEASE : Ljava/lang/String;
    //   509: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: ldc '|'
    //   514: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: ldc 'SMP'
    //   519: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: invokevirtual toString : ()Ljava/lang/String;
    //   525: astore_3
    //   526: new jcv
    //   529: dup
    //   530: invokespecial <init> : ()V
    //   533: astore #5
    //   535: aload #5
    //   537: aload_3
    //   538: invokevirtual c : (Ljava/lang/String;)V
    //   541: aload #5
    //   543: aload_1
    //   544: invokevirtual d : (Ljava/lang/String;)V
    //   547: aload #5
    //   549: aload_0
    //   550: getfield c : Ljava/lang/String;
    //   553: invokevirtual e : (Ljava/lang/String;)V
    //   556: aload #5
    //   558: aload_0
    //   559: getfield a : Lmiq;
    //   562: invokevirtual i : ()Ljava/lang/String;
    //   565: invokevirtual a : (Ljava/lang/String;)V
    //   568: aload #5
    //   570: aload #4
    //   572: invokevirtual h : (Ljava/lang/String;)V
    //   575: aload #5
    //   577: aload_2
    //   578: invokevirtual f : (Ljava/lang/String;)V
    //   581: aload #5
    //   583: aload_0
    //   584: invokevirtual b : ()Ljava/lang/String;
    //   587: invokevirtual g : (Ljava/lang/String;)V
    //   590: aload #5
    //   592: aload #6
    //   594: invokevirtual i : (Ljava/lang/String;)V
    //   597: aload #5
    //   599: areturn
    //   600: astore #7
    //   602: aload #6
    //   604: astore_3
    //   605: aload_2
    //   606: astore_1
    //   607: aload #8
    //   609: astore_2
    //   610: ldc 'Error'
    //   612: aload #7
    //   614: invokevirtual getMessage : ()Ljava/lang/String;
    //   617: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   620: pop
    //   621: aload #10
    //   623: astore #6
    //   625: goto -> 461
    //   628: astore #6
    //   630: aload #9
    //   632: astore #4
    //   634: aload #7
    //   636: astore #5
    //   638: aload #6
    //   640: astore #7
    //   642: goto -> 610
    // Exception table:
    //   from	to	target	type
    //   45	77	600	java/lang/Exception
    //   94	118	600	java/lang/Exception
    //   144	154	600	java/lang/Exception
    //   172	180	600	java/lang/Exception
    //   198	202	600	java/lang/Exception
    //   219	249	600	java/lang/Exception
    //   270	280	600	java/lang/Exception
    //   297	307	600	java/lang/Exception
    //   324	340	600	java/lang/Exception
    //   357	371	600	java/lang/Exception
    //   388	404	600	java/lang/Exception
    //   421	435	600	java/lang/Exception
    //   438	453	628	java/lang/Exception
  }
  
  public String a() {
    return this.c;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(jcv paramjcv) {
    (new jct(c(), d())).execute((Object[])new jcv[0]);
  }
  
  public String b() {
    Context context = MinhaConta.b();
    ArrayList<String> arrayList = new ArrayList();
    mzl mzl = (new mzk(this.d)).a();
    String str = "";
    try {
      String str1 = (context.getPackageManager().getPackageInfo(context.getPackageName(), 0)).versionName;
      str = str1;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      Log.e("VERSION NAME", nameNotFoundException.toString());
    } 
    String[] arrayOfString = myz.a((Context)this.d);
    arrayList.add("A");
    arrayList.add(mzl.u());
    arrayList.add(mzl.d());
    arrayList.add(mzl.b());
    arrayList.add(mzl.p());
    arrayList.add(String.valueOf(mzl.g()));
    arrayList.add("0");
    arrayList.add(str);
    Collections.addAll(arrayList, arrayOfString);
    str = TextUtils.join("|", arrayList);
    try {
      return this.e.b(str.getBytes());
    } catch (Exception exception) {
      return "";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jcm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */