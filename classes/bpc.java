import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import java.util.HashMap;
import java.util.Map;

public class bpc {
  private static final int a = 8;
  
  private static final int b = 2;
  
  private static Handler c;
  
  private static bri d = new bri(8);
  
  private static bri e = new bri(2);
  
  private static final Map<bph, bpg> f = new HashMap<bph, bpg>();
  
  private static Handler a() {
    // Byte code:
    //   0: ldc bpc
    //   2: monitorenter
    //   3: getstatic bpc.c : Landroid/os/Handler;
    //   6: ifnonnull -> 22
    //   9: new android/os/Handler
    //   12: dup
    //   13: invokestatic getMainLooper : ()Landroid/os/Looper;
    //   16: invokespecial <init> : (Landroid/os/Looper;)V
    //   19: putstatic bpc.c : Landroid/os/Handler;
    //   22: getstatic bpc.c : Landroid/os/Handler;
    //   25: astore_0
    //   26: ldc bpc
    //   28: monitorexit
    //   29: aload_0
    //   30: areturn
    //   31: astore_0
    //   32: ldc bpc
    //   34: monitorexit
    //   35: aload_0
    //   36: athrow
    // Exception table:
    //   from	to	target	type
    //   3	22	31	finally
    //   22	26	31	finally
  }
  
  private static bpg a(bph parambph) {
    synchronized (f) {
      return f.remove(parambph);
    } 
  }
  
  public static void a(Context paramContext) {
    bpn.b(paramContext);
    bqp.b();
  }
  
  private static void a(bph parambph, Exception paramException, Bitmap paramBitmap, boolean paramBoolean) {
    bpg bpg = a(parambph);
    if (bpg != null && !bpg.c) {
      bpi bpi = bpg.b;
      bpl bpl = bpi.c();
      if (bpl != null)
        a().post(new bpd(bpi, paramException, paramBoolean, paramBitmap, bpl)); 
    } 
  }
  
  public static void a(bpi parambpi) {
    if (parambpi == null)
      return; 
    bph bph = new bph(parambpi.b(), parambpi.e());
    synchronized (f) {
      bpg bpg = f.get(bph);
      if (bpg != null) {
        bpg.b = parambpi;
        bpg.c = false;
        bpg.a.c();
      } else {
        a(parambpi, bph, parambpi.d());
      } 
      return;
    } 
  }
  
  private static void a(bpi parambpi, bph parambph) {
    a(parambpi, parambph, d, new bpf(parambpi.a(), parambph));
  }
  
  private static void a(bpi parambpi, bph parambph, bri parambri, Runnable paramRunnable) {
    synchronized (f) {
      bpg bpg = new bpg(null);
      bpg.b = parambpi;
      f.put(parambph, bpg);
      bpg.a = parambri.a(paramRunnable);
      return;
    } 
  }
  
  private static void a(bpi parambpi, bph parambph, boolean paramBoolean) {
    a(parambpi, parambph, e, new bpe(parambpi.a(), parambph, paramBoolean));
  }
  
  private static void b(bph parambph, Context paramContext) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #10
    //   3: aconst_null
    //   4: astore #8
    //   6: aconst_null
    //   7: astore #9
    //   9: iconst_1
    //   10: istore_3
    //   11: iconst_1
    //   12: istore_2
    //   13: new java/net/URL
    //   16: dup
    //   17: aload_0
    //   18: getfield a : Landroid/net/Uri;
    //   21: invokevirtual toString : ()Ljava/lang/String;
    //   24: invokespecial <init> : (Ljava/lang/String;)V
    //   27: invokestatic openConnection : (Ljava/net/URL;)Ljava/net/URLConnection;
    //   30: checkcast java/net/HttpURLConnection
    //   33: astore #5
    //   35: aload #5
    //   37: iconst_0
    //   38: invokevirtual setInstanceFollowRedirects : (Z)V
    //   41: aload #5
    //   43: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   46: lookupswitch default -> 483, 200 -> 313, 301 -> 221, 302 -> 221
    //   80: aload #5
    //   82: invokevirtual getErrorStream : ()Ljava/io/InputStream;
    //   85: astore #6
    //   87: aload #6
    //   89: astore #7
    //   91: aload #6
    //   93: astore #8
    //   95: new java/lang/StringBuilder
    //   98: dup
    //   99: invokespecial <init> : ()V
    //   102: astore #11
    //   104: aload #6
    //   106: ifnull -> 406
    //   109: aload #6
    //   111: astore #7
    //   113: aload #6
    //   115: astore #8
    //   117: new java/io/InputStreamReader
    //   120: dup
    //   121: aload #6
    //   123: invokespecial <init> : (Ljava/io/InputStream;)V
    //   126: astore_1
    //   127: aload #6
    //   129: astore #7
    //   131: aload #6
    //   133: astore #8
    //   135: sipush #128
    //   138: newarray char
    //   140: astore #12
    //   142: aload #6
    //   144: astore #7
    //   146: aload #6
    //   148: astore #8
    //   150: aload_1
    //   151: aload #12
    //   153: iconst_0
    //   154: aload #12
    //   156: arraylength
    //   157: invokevirtual read : ([CII)I
    //   160: istore #4
    //   162: iload #4
    //   164: ifle -> 349
    //   167: aload #6
    //   169: astore #7
    //   171: aload #6
    //   173: astore #8
    //   175: aload #11
    //   177: aload #12
    //   179: iconst_0
    //   180: iload #4
    //   182: invokevirtual append : ([CII)Ljava/lang/StringBuilder;
    //   185: pop
    //   186: goto -> 142
    //   189: astore_1
    //   190: aload #7
    //   192: astore #6
    //   194: aload #6
    //   196: invokestatic a : (Ljava/io/Closeable;)V
    //   199: aload #5
    //   201: invokestatic a : (Ljava/net/URLConnection;)V
    //   204: aload #9
    //   206: astore #7
    //   208: iload_2
    //   209: ifeq -> 220
    //   212: aload_0
    //   213: aload_1
    //   214: aload #7
    //   216: iconst_0
    //   217: invokestatic a : (Lbph;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    //   220: return
    //   221: aload #5
    //   223: ldc 'location'
    //   225: invokevirtual getHeaderField : (Ljava/lang/String;)Ljava/lang/String;
    //   228: astore_1
    //   229: aload_1
    //   230: invokestatic a : (Ljava/lang/String;)Z
    //   233: ifne -> 469
    //   236: aload_1
    //   237: invokestatic parse : (Ljava/lang/String;)Landroid/net/Uri;
    //   240: astore_1
    //   241: aload_0
    //   242: getfield a : Landroid/net/Uri;
    //   245: aload_1
    //   246: invokestatic a : (Landroid/net/Uri;Landroid/net/Uri;)V
    //   249: aload_0
    //   250: invokestatic a : (Lbph;)Lbpg;
    //   253: astore #6
    //   255: aload #6
    //   257: ifnull -> 289
    //   260: aload #6
    //   262: getfield c : Z
    //   265: ifne -> 289
    //   268: aload #6
    //   270: getfield b : Lbpi;
    //   273: new bph
    //   276: dup
    //   277: aload_1
    //   278: aload_0
    //   279: getfield b : Ljava/lang/Object;
    //   282: invokespecial <init> : (Landroid/net/Uri;Ljava/lang/Object;)V
    //   285: iconst_0
    //   286: invokestatic a : (Lbpi;Lbph;Z)V
    //   289: iconst_0
    //   290: istore_2
    //   291: aconst_null
    //   292: astore_1
    //   293: aconst_null
    //   294: astore #6
    //   296: aload #10
    //   298: astore #7
    //   300: aload #6
    //   302: invokestatic a : (Ljava/io/Closeable;)V
    //   305: aload #5
    //   307: invokestatic a : (Ljava/net/URLConnection;)V
    //   310: goto -> 208
    //   313: aload_1
    //   314: aload #5
    //   316: invokestatic a : (Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    //   319: astore #6
    //   321: aload #6
    //   323: astore #7
    //   325: aload #6
    //   327: astore #8
    //   329: aload #6
    //   331: invokestatic decodeStream : (Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   334: astore_1
    //   335: aconst_null
    //   336: astore #8
    //   338: aload_1
    //   339: astore #7
    //   341: iload_3
    //   342: istore_2
    //   343: aload #8
    //   345: astore_1
    //   346: goto -> 300
    //   349: aload #6
    //   351: astore #7
    //   353: aload #6
    //   355: astore #8
    //   357: aload_1
    //   358: invokestatic a : (Ljava/io/Closeable;)V
    //   361: aload #6
    //   363: astore #7
    //   365: aload #6
    //   367: astore #8
    //   369: new bhp
    //   372: dup
    //   373: aload #11
    //   375: invokevirtual toString : ()Ljava/lang/String;
    //   378: invokespecial <init> : (Ljava/lang/String;)V
    //   381: astore_1
    //   382: iload_3
    //   383: istore_2
    //   384: aload #10
    //   386: astore #7
    //   388: goto -> 300
    //   391: astore_0
    //   392: aload #5
    //   394: astore_1
    //   395: aload #8
    //   397: invokestatic a : (Ljava/io/Closeable;)V
    //   400: aload_1
    //   401: invokestatic a : (Ljava/net/URLConnection;)V
    //   404: aload_0
    //   405: athrow
    //   406: aload #6
    //   408: astore #7
    //   410: aload #6
    //   412: astore #8
    //   414: aload #11
    //   416: aload_1
    //   417: getstatic bjx.com_facebook_image_download_unknown_error : I
    //   420: invokevirtual getString : (I)Ljava/lang/String;
    //   423: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: pop
    //   427: goto -> 361
    //   430: astore_0
    //   431: aconst_null
    //   432: astore_1
    //   433: goto -> 395
    //   436: astore_0
    //   437: aload #5
    //   439: astore_1
    //   440: goto -> 395
    //   443: astore_1
    //   444: aconst_null
    //   445: astore #6
    //   447: aconst_null
    //   448: astore #5
    //   450: goto -> 194
    //   453: astore_1
    //   454: aconst_null
    //   455: astore #6
    //   457: goto -> 194
    //   460: astore_1
    //   461: aconst_null
    //   462: astore #6
    //   464: iconst_0
    //   465: istore_2
    //   466: goto -> 194
    //   469: iconst_0
    //   470: istore_2
    //   471: aconst_null
    //   472: astore_1
    //   473: aconst_null
    //   474: astore #6
    //   476: aload #10
    //   478: astore #7
    //   480: goto -> 300
    //   483: goto -> 80
    // Exception table:
    //   from	to	target	type
    //   13	35	443	java/io/IOException
    //   13	35	430	finally
    //   35	80	453	java/io/IOException
    //   35	80	436	finally
    //   80	87	453	java/io/IOException
    //   80	87	436	finally
    //   95	104	189	java/io/IOException
    //   95	104	391	finally
    //   117	127	189	java/io/IOException
    //   117	127	391	finally
    //   135	142	189	java/io/IOException
    //   135	142	391	finally
    //   150	162	189	java/io/IOException
    //   150	162	391	finally
    //   175	186	189	java/io/IOException
    //   175	186	391	finally
    //   221	255	460	java/io/IOException
    //   221	255	436	finally
    //   260	289	460	java/io/IOException
    //   260	289	436	finally
    //   313	321	453	java/io/IOException
    //   313	321	436	finally
    //   329	335	189	java/io/IOException
    //   329	335	391	finally
    //   357	361	189	java/io/IOException
    //   357	361	391	finally
    //   369	382	189	java/io/IOException
    //   369	382	391	finally
    //   414	427	189	java/io/IOException
    //   414	427	391	finally
  }
  
  private static void b(bph parambph, Context paramContext, boolean paramBoolean) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: iload_2
    //   3: ifeq -> 100
    //   6: aload_0
    //   7: getfield a : Landroid/net/Uri;
    //   10: invokestatic a : (Landroid/net/Uri;)Landroid/net/Uri;
    //   13: astore #4
    //   15: aload #4
    //   17: ifnull -> 100
    //   20: aload #4
    //   22: aload_1
    //   23: invokestatic a : (Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;
    //   26: astore #4
    //   28: iload_3
    //   29: istore_2
    //   30: aload #4
    //   32: ifnull -> 37
    //   35: iconst_1
    //   36: istore_2
    //   37: iload_2
    //   38: ifne -> 51
    //   41: aload_0
    //   42: getfield a : Landroid/net/Uri;
    //   45: aload_1
    //   46: invokestatic a : (Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;
    //   49: astore #4
    //   51: aload #4
    //   53: ifnull -> 75
    //   56: aload #4
    //   58: invokestatic decodeStream : (Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   61: astore_1
    //   62: aload #4
    //   64: invokestatic a : (Ljava/io/Closeable;)V
    //   67: aload_0
    //   68: aconst_null
    //   69: aload_1
    //   70: iload_2
    //   71: invokestatic a : (Lbph;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    //   74: return
    //   75: aload_0
    //   76: invokestatic a : (Lbph;)Lbpg;
    //   79: astore_1
    //   80: aload_1
    //   81: ifnull -> 74
    //   84: aload_1
    //   85: getfield c : Z
    //   88: ifne -> 74
    //   91: aload_1
    //   92: getfield b : Lbpi;
    //   95: aload_0
    //   96: invokestatic a : (Lbpi;Lbph;)V
    //   99: return
    //   100: iconst_0
    //   101: istore_2
    //   102: aconst_null
    //   103: astore #4
    //   105: goto -> 37
  }
  
  public static boolean b(bpi parambpi) {
    null = new bph(parambpi.b(), parambpi.e());
    synchronized (f) {
      bpg bpg = f.get(null);
      if (bpg != null) {
        if (bpg.a.a()) {
          f.remove(null);
          return true;
        } 
        bpg.c = true;
        return true;
      } 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{bpi}, name=parambpi} */
    return bool;
  }
  
  public static void c(bpi parambpi) {
    null = new bph(parambpi.b(), parambpi.e());
    synchronized (f) {
      bpg bpg = f.get(null);
      if (bpg != null)
        bpg.a.c(); 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */