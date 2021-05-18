import android.content.Context;
import java.util.Map;
import java.util.concurrent.TimeUnit;

class blg {
  private static final String a = "AppEventsLogger.persistedsessioninfo";
  
  private static final Object b = new Object();
  
  private static boolean c = false;
  
  private static boolean d = false;
  
  private static Map<bkf, bli> e;
  
  private static final Runnable f = new blh();
  
  private static bli a(Context paramContext, bkf parambkf) {
    b(paramContext);
    bli bli2 = e.get(parambkf);
    bli bli1 = bli2;
    if (bli2 == null) {
      bli1 = new bli();
      e.put(parambkf, bli1);
    } 
    return bli1;
  }
  
  private static void a() {
    if (!c) {
      c = true;
      bla.m().schedule(f, 30L, TimeUnit.SECONDS);
    } 
  }
  
  static void a(Context paramContext) {
    // Byte code:
    //   0: getstatic blg.b : Ljava/lang/Object;
    //   3: astore #4
    //   5: aload #4
    //   7: monitorenter
    //   8: getstatic blg.c : Z
    //   11: istore_1
    //   12: iload_1
    //   13: ifeq -> 69
    //   16: new java/io/ObjectOutputStream
    //   19: dup
    //   20: new java/io/BufferedOutputStream
    //   23: dup
    //   24: aload_0
    //   25: ldc 'AppEventsLogger.persistedsessioninfo'
    //   27: iconst_0
    //   28: invokevirtual openFileOutput : (Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   31: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   34: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   37: astore_2
    //   38: aload_2
    //   39: astore_0
    //   40: aload_2
    //   41: getstatic blg.e : Ljava/util/Map;
    //   44: invokevirtual writeObject : (Ljava/lang/Object;)V
    //   47: aload_2
    //   48: astore_0
    //   49: iconst_0
    //   50: putstatic blg.c : Z
    //   53: aload_2
    //   54: astore_0
    //   55: getstatic bjb.APP_EVENTS : Lbjb;
    //   58: ldc 'AppEvents'
    //   60: ldc 'App session info saved'
    //   62: invokestatic a : (Lbjb;Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload_2
    //   66: invokestatic a : (Ljava/io/Closeable;)V
    //   69: aload #4
    //   71: monitorexit
    //   72: return
    //   73: astore_3
    //   74: aconst_null
    //   75: astore_2
    //   76: aload_2
    //   77: astore_0
    //   78: invokestatic l : ()Ljava/lang/String;
    //   81: new java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial <init> : ()V
    //   88: ldc 'Got unexpected exception while writing app session info: '
    //   90: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload_3
    //   94: invokevirtual toString : ()Ljava/lang/String;
    //   97: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual toString : ()Ljava/lang/String;
    //   103: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   106: pop
    //   107: aload_2
    //   108: invokestatic a : (Ljava/io/Closeable;)V
    //   111: goto -> 69
    //   114: astore_0
    //   115: aload #4
    //   117: monitorexit
    //   118: aload_0
    //   119: athrow
    //   120: astore_2
    //   121: aconst_null
    //   122: astore_0
    //   123: aload_0
    //   124: invokestatic a : (Ljava/io/Closeable;)V
    //   127: aload_2
    //   128: athrow
    //   129: astore_2
    //   130: goto -> 123
    //   133: astore_3
    //   134: goto -> 76
    // Exception table:
    //   from	to	target	type
    //   8	12	114	finally
    //   16	38	73	java/lang/Exception
    //   16	38	120	finally
    //   40	47	133	java/lang/Exception
    //   40	47	129	finally
    //   49	53	133	java/lang/Exception
    //   49	53	129	finally
    //   55	65	133	java/lang/Exception
    //   55	65	129	finally
    //   65	69	114	finally
    //   69	72	114	finally
    //   78	107	129	finally
    //   107	111	114	finally
    //   115	118	114	finally
    //   123	129	114	finally
  }
  
  static void a(Context paramContext, bkf parambkf, bla parambla, long paramLong) {
    synchronized (b) {
      a(paramContext, parambkf).a(parambla, paramLong);
      a();
      return;
    } 
  }
  
  static void a(Context paramContext, bkf parambkf, bla parambla, long paramLong, String paramString) {
    synchronized (b) {
      a(paramContext, parambkf).a(parambla, paramLong, paramString);
      a();
      return;
    } 
  }
  
  private static void b(Context paramContext) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic blg.b : Ljava/lang/Object;
    //   5: astore #5
    //   7: aload #5
    //   9: monitorenter
    //   10: getstatic blg.d : Z
    //   13: istore_1
    //   14: iload_1
    //   15: ifne -> 91
    //   18: new java/io/ObjectInputStream
    //   21: dup
    //   22: aload_0
    //   23: ldc 'AppEventsLogger.persistedsessioninfo'
    //   25: invokevirtual openFileInput : (Ljava/lang/String;)Ljava/io/FileInputStream;
    //   28: invokespecial <init> : (Ljava/io/InputStream;)V
    //   31: astore_2
    //   32: aload_2
    //   33: astore_3
    //   34: aload_2
    //   35: invokevirtual readObject : ()Ljava/lang/Object;
    //   38: checkcast java/util/HashMap
    //   41: putstatic blg.e : Ljava/util/Map;
    //   44: aload_2
    //   45: astore_3
    //   46: getstatic bjb.APP_EVENTS : Lbjb;
    //   49: ldc 'AppEvents'
    //   51: ldc 'App session info loaded'
    //   53: invokestatic a : (Lbjb;Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload_2
    //   57: invokestatic a : (Ljava/io/Closeable;)V
    //   60: aload_0
    //   61: ldc 'AppEventsLogger.persistedsessioninfo'
    //   63: invokevirtual deleteFile : (Ljava/lang/String;)Z
    //   66: pop
    //   67: getstatic blg.e : Ljava/util/Map;
    //   70: ifnonnull -> 83
    //   73: new java/util/HashMap
    //   76: dup
    //   77: invokespecial <init> : ()V
    //   80: putstatic blg.e : Ljava/util/Map;
    //   83: iconst_1
    //   84: putstatic blg.d : Z
    //   87: iconst_0
    //   88: putstatic blg.c : Z
    //   91: aload #5
    //   93: monitorexit
    //   94: return
    //   95: aload_2
    //   96: invokestatic a : (Ljava/io/Closeable;)V
    //   99: aload_0
    //   100: ldc 'AppEventsLogger.persistedsessioninfo'
    //   102: invokevirtual deleteFile : (Ljava/lang/String;)Z
    //   105: pop
    //   106: getstatic blg.e : Ljava/util/Map;
    //   109: ifnonnull -> 122
    //   112: new java/util/HashMap
    //   115: dup
    //   116: invokespecial <init> : ()V
    //   119: putstatic blg.e : Ljava/util/Map;
    //   122: iconst_1
    //   123: putstatic blg.d : Z
    //   126: iconst_0
    //   127: putstatic blg.c : Z
    //   130: goto -> 91
    //   133: astore_0
    //   134: aload #5
    //   136: monitorexit
    //   137: aload_0
    //   138: athrow
    //   139: astore #4
    //   141: aconst_null
    //   142: astore_2
    //   143: aload_2
    //   144: astore_3
    //   145: invokestatic l : ()Ljava/lang/String;
    //   148: new java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial <init> : ()V
    //   155: ldc 'Got unexpected exception restoring app session info: '
    //   157: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: aload #4
    //   162: invokevirtual toString : ()Ljava/lang/String;
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual toString : ()Ljava/lang/String;
    //   171: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   174: pop
    //   175: aload_2
    //   176: invokestatic a : (Ljava/io/Closeable;)V
    //   179: aload_0
    //   180: ldc 'AppEventsLogger.persistedsessioninfo'
    //   182: invokevirtual deleteFile : (Ljava/lang/String;)Z
    //   185: pop
    //   186: getstatic blg.e : Ljava/util/Map;
    //   189: ifnonnull -> 202
    //   192: new java/util/HashMap
    //   195: dup
    //   196: invokespecial <init> : ()V
    //   199: putstatic blg.e : Ljava/util/Map;
    //   202: iconst_1
    //   203: putstatic blg.d : Z
    //   206: iconst_0
    //   207: putstatic blg.c : Z
    //   210: goto -> 91
    //   213: aload_3
    //   214: invokestatic a : (Ljava/io/Closeable;)V
    //   217: aload_0
    //   218: ldc 'AppEventsLogger.persistedsessioninfo'
    //   220: invokevirtual deleteFile : (Ljava/lang/String;)Z
    //   223: pop
    //   224: getstatic blg.e : Ljava/util/Map;
    //   227: ifnonnull -> 240
    //   230: new java/util/HashMap
    //   233: dup
    //   234: invokespecial <init> : ()V
    //   237: putstatic blg.e : Ljava/util/Map;
    //   240: iconst_1
    //   241: putstatic blg.d : Z
    //   244: iconst_0
    //   245: putstatic blg.c : Z
    //   248: aload_2
    //   249: athrow
    //   250: astore_2
    //   251: goto -> 213
    //   254: astore #4
    //   256: goto -> 143
    //   259: astore_3
    //   260: goto -> 95
    //   263: astore_2
    //   264: aload_3
    //   265: astore_2
    //   266: goto -> 95
    //   269: astore_2
    //   270: aconst_null
    //   271: astore_3
    //   272: goto -> 213
    // Exception table:
    //   from	to	target	type
    //   10	14	133	finally
    //   18	32	263	java/io/FileNotFoundException
    //   18	32	139	java/lang/Exception
    //   18	32	269	finally
    //   34	44	259	java/io/FileNotFoundException
    //   34	44	254	java/lang/Exception
    //   34	44	250	finally
    //   46	56	259	java/io/FileNotFoundException
    //   46	56	254	java/lang/Exception
    //   46	56	250	finally
    //   56	83	133	finally
    //   83	91	133	finally
    //   91	94	133	finally
    //   95	122	133	finally
    //   122	130	133	finally
    //   134	137	133	finally
    //   145	175	250	finally
    //   175	202	133	finally
    //   202	210	133	finally
    //   213	240	133	finally
    //   240	250	133	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */