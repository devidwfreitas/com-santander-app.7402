import android.content.Context;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class cmh {
  private final Object a = new Object();
  
  private final List<cmg> b;
  
  private Context c;
  
  private boolean d = true;
  
  private boolean e = false;
  
  private cml f;
  
  public cmh(Context paramContext) {
    this.c = paramContext;
    this.f = new cml(paramContext);
    this.b = new LinkedList<cmg>();
    (new Thread(new cmk(this))).start();
    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
    long l = cmn.b(paramContext) + 300000L - cmn.a();
    cmj cmj = new cmj(this, null);
    if (l <= 0L)
      l = 0L; 
    scheduledThreadPoolExecutor.scheduleAtFixedRate(cmj, l, 300000L, TimeUnit.MILLISECONDS);
  }
  
  protected int a(cmg paramcmg) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: getfield g : Ljava/lang/String;
    //   6: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   9: astore #5
    //   11: aload #5
    //   13: invokevirtual length : ()I
    //   16: ifeq -> 155
    //   19: ldc 'Pinging: '
    //   21: aload #5
    //   23: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   26: astore #5
    //   28: ldc 'GoogleConversionReporter'
    //   30: aload #5
    //   32: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   35: pop
    //   36: aconst_null
    //   37: astore #5
    //   39: aload_1
    //   40: getfield g : Ljava/lang/String;
    //   43: astore #6
    //   45: iconst_0
    //   46: istore_2
    //   47: iload_2
    //   48: iconst_5
    //   49: if_icmpge -> 308
    //   52: new java/net/URL
    //   55: dup
    //   56: aload #6
    //   58: invokespecial <init> : (Ljava/lang/String;)V
    //   61: invokestatic openConnection : (Ljava/net/URL;)Ljava/net/URLConnection;
    //   64: checkcast java/net/HttpURLConnection
    //   67: astore #6
    //   69: aload #6
    //   71: iconst_0
    //   72: invokevirtual setInstanceFollowRedirects : (Z)V
    //   75: aload #6
    //   77: ldc 60000
    //   79: invokevirtual setConnectTimeout : (I)V
    //   82: aload #6
    //   84: ldc 60000
    //   86: invokevirtual setReadTimeout : (I)V
    //   89: aload #6
    //   91: iconst_0
    //   92: invokevirtual setUseCaches : (Z)V
    //   95: aload #6
    //   97: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   100: istore #4
    //   102: sipush #300
    //   105: iload #4
    //   107: if_icmpgt -> 194
    //   110: iload #4
    //   112: sipush #400
    //   115: if_icmpge -> 194
    //   118: aload #6
    //   120: ldc 'Location'
    //   122: invokevirtual getHeaderField : (Ljava/lang/String;)Ljava/lang/String;
    //   125: astore #7
    //   127: aload #7
    //   129: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   132: ifeq -> 169
    //   135: ldc 'GoogleConversionReporter'
    //   137: ldc 'Unable to follow redirect, no Location header.'
    //   139: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   142: pop
    //   143: aload #6
    //   145: ifnull -> 153
    //   148: aload #6
    //   150: invokevirtual disconnect : ()V
    //   153: iconst_0
    //   154: ireturn
    //   155: new java/lang/String
    //   158: dup
    //   159: ldc 'Pinging: '
    //   161: invokespecial <init> : (Ljava/lang/String;)V
    //   164: astore #5
    //   166: goto -> 28
    //   169: aload #6
    //   171: ifnull -> 179
    //   174: aload #6
    //   176: invokevirtual disconnect : ()V
    //   179: iload_2
    //   180: iconst_1
    //   181: iadd
    //   182: istore_2
    //   183: aload #6
    //   185: astore #5
    //   187: aload #7
    //   189: astore #6
    //   191: goto -> 47
    //   194: ldc 'GoogleConversionReporter'
    //   196: new java/lang/StringBuilder
    //   199: dup
    //   200: bipush #33
    //   202: invokespecial <init> : (I)V
    //   205: ldc 'Receive response code '
    //   207: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: iload #4
    //   212: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   215: invokevirtual toString : ()Ljava/lang/String;
    //   218: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   221: pop
    //   222: iload_3
    //   223: istore_2
    //   224: sipush #200
    //   227: iload #4
    //   229: if_icmpgt -> 244
    //   232: iload_3
    //   233: istore_2
    //   234: iload #4
    //   236: sipush #300
    //   239: if_icmpge -> 244
    //   242: iconst_2
    //   243: istore_2
    //   244: iload_2
    //   245: iconst_2
    //   246: if_icmpne -> 254
    //   249: aload_0
    //   250: aload_1
    //   251: invokevirtual b : (Lcmg;)V
    //   254: aload #6
    //   256: ifnull -> 264
    //   259: aload #6
    //   261: invokevirtual disconnect : ()V
    //   264: iload_2
    //   265: ireturn
    //   266: astore #5
    //   268: aload #6
    //   270: astore_1
    //   271: ldc 'GoogleConversionReporter'
    //   273: ldc 'Error sending ping'
    //   275: aload #5
    //   277: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   280: pop
    //   281: aload_1
    //   282: ifnull -> 289
    //   285: aload_1
    //   286: invokevirtual disconnect : ()V
    //   289: iconst_0
    //   290: ireturn
    //   291: astore_1
    //   292: aload #6
    //   294: astore #5
    //   296: aload #5
    //   298: ifnull -> 306
    //   301: aload #5
    //   303: invokevirtual disconnect : ()V
    //   306: aload_1
    //   307: athrow
    //   308: ldc 'GoogleConversionReporter'
    //   310: ldc 'Ping failed; too many redirects.'
    //   312: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   315: pop
    //   316: iconst_1
    //   317: ireturn
    //   318: astore #6
    //   320: aload_1
    //   321: astore #5
    //   323: aload #6
    //   325: astore_1
    //   326: goto -> 296
    //   329: astore_1
    //   330: goto -> 296
    //   333: astore #6
    //   335: aload #5
    //   337: astore_1
    //   338: aload #6
    //   340: astore #5
    //   342: goto -> 271
    // Exception table:
    //   from	to	target	type
    //   52	69	333	java/io/IOException
    //   52	69	329	finally
    //   69	102	266	java/io/IOException
    //   69	102	291	finally
    //   118	143	266	java/io/IOException
    //   118	143	291	finally
    //   194	222	266	java/io/IOException
    //   194	222	291	finally
    //   249	254	266	java/io/IOException
    //   249	254	291	finally
    //   271	281	318	finally
  }
  
  protected void a(Runnable paramRunnable) {
    (new Thread(paramRunnable)).start();
  }
  
  public void a(String paramString, cms paramcms, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    // Byte code:
    //   0: new cmg
    //   3: dup
    //   4: aload_1
    //   5: aload_2
    //   6: iload_3
    //   7: iload #4
    //   9: invokespecial <init> : (Ljava/lang/String;Lcms;ZZ)V
    //   12: astore_2
    //   13: aload_0
    //   14: getfield a : Ljava/lang/Object;
    //   17: astore_1
    //   18: aload_1
    //   19: monitorenter
    //   20: iload #5
    //   22: ifne -> 41
    //   25: aload_0
    //   26: new cmi
    //   29: dup
    //   30: aload_0
    //   31: aload_2
    //   32: invokespecial <init> : (Lcmh;Lcmg;)V
    //   35: invokevirtual a : (Ljava/lang/Runnable;)V
    //   38: aload_1
    //   39: monitorexit
    //   40: return
    //   41: aload_0
    //   42: getfield f : Lcml;
    //   45: aload_2
    //   46: invokevirtual b : (Lcmg;)V
    //   49: aload_0
    //   50: getfield e : Z
    //   53: ifeq -> 89
    //   56: aload_0
    //   57: getfield c : Landroid/content/Context;
    //   60: invokestatic d : (Landroid/content/Context;)Z
    //   63: ifeq -> 89
    //   66: aload_0
    //   67: getfield b : Ljava/util/List;
    //   70: aload_2
    //   71: invokeinterface add : (Ljava/lang/Object;)Z
    //   76: pop
    //   77: aload_0
    //   78: iconst_1
    //   79: putfield d : Z
    //   82: aload_0
    //   83: getfield a : Ljava/lang/Object;
    //   86: invokevirtual notify : ()V
    //   89: aload_1
    //   90: monitorexit
    //   91: return
    //   92: astore_2
    //   93: aload_1
    //   94: monitorexit
    //   95: aload_2
    //   96: athrow
    // Exception table:
    //   from	to	target	type
    //   25	40	92	finally
    //   41	89	92	finally
    //   89	91	92	finally
    //   93	95	92	finally
  }
  
  protected void b(cmg paramcmg) {
    if (!paramcmg.b && paramcmg.a)
      cmn.a(this.c, paramcmg.e, paramcmg.f); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */