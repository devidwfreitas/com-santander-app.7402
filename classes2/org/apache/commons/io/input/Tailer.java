package org.apache.commons.io.input;

import java.io.File;
import java.io.RandomAccessFile;

public class Tailer implements Runnable {
  private static final int DEFAULT_BUFSIZE = 4096;
  
  private static final int DEFAULT_DELAY_MILLIS = 1000;
  
  private static final String RAF_MODE = "r";
  
  private final long delayMillis;
  
  private final boolean end;
  
  private final File file;
  
  private final byte[] inbuf;
  
  private final TailerListener listener;
  
  private final boolean reOpen;
  
  private volatile boolean run = true;
  
  public Tailer(File paramFile, TailerListener paramTailerListener) {
    this(paramFile, paramTailerListener, 1000L);
  }
  
  public Tailer(File paramFile, TailerListener paramTailerListener, long paramLong) {
    this(paramFile, paramTailerListener, paramLong, false);
  }
  
  public Tailer(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean) {
    this(paramFile, paramTailerListener, paramLong, paramBoolean, 4096);
  }
  
  public Tailer(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean, int paramInt) {
    this(paramFile, paramTailerListener, paramLong, paramBoolean, false, paramInt);
  }
  
  public Tailer(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean1, boolean paramBoolean2) {
    this(paramFile, paramTailerListener, paramLong, paramBoolean1, paramBoolean2, 4096);
  }
  
  public Tailer(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean1, boolean paramBoolean2, int paramInt) {
    this.file = paramFile;
    this.delayMillis = paramLong;
    this.end = paramBoolean1;
    this.inbuf = new byte[paramInt];
    this.listener = paramTailerListener;
    paramTailerListener.init(this);
    this.reOpen = paramBoolean2;
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener) {
    return create(paramFile, paramTailerListener, 1000L, false);
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener, long paramLong) {
    return create(paramFile, paramTailerListener, paramLong, false);
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean) {
    return create(paramFile, paramTailerListener, paramLong, paramBoolean, 4096);
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean, int paramInt) {
    Tailer tailer = new Tailer(paramFile, paramTailerListener, paramLong, paramBoolean, paramInt);
    Thread thread = new Thread(tailer);
    thread.setDaemon(true);
    thread.start();
    return tailer;
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean1, boolean paramBoolean2) {
    return create(paramFile, paramTailerListener, paramLong, paramBoolean1, paramBoolean2, 4096);
  }
  
  public static Tailer create(File paramFile, TailerListener paramTailerListener, long paramLong, boolean paramBoolean1, boolean paramBoolean2, int paramInt) {
    Tailer tailer = new Tailer(paramFile, paramTailerListener, paramLong, paramBoolean1, paramBoolean2, paramInt);
    Thread thread = new Thread(tailer);
    thread.setDaemon(true);
    thread.start();
    return tailer;
  }
  
  private long readLines(RandomAccessFile paramRandomAccessFile) {
    StringBuilder stringBuilder = new StringBuilder();
    long l1 = paramRandomAccessFile.getFilePointer();
    boolean bool = false;
    long l2 = l1;
    while (this.run) {
      int i = paramRandomAccessFile.read(this.inbuf);
      if (i != -1) {
        int j = 0;
        while (j < i) {
          byte b = this.inbuf[j];
          switch (b) {
            case 10:
              this.listener.handle(stringBuilder.toString());
              stringBuilder.setLength(0);
              l1 = j + l2 + 1L;
              bool = false;
              j++;
              break;
            case 13:
              if (bool)
                stringBuilder.append('\r'); 
              bool = true;
              j++;
              break;
          } 
        } 
        l2 = paramRandomAccessFile.getFilePointer();
      } 
    } 
    paramRandomAccessFile.seek(l1);
    return l1;
  }
  
  public long getDelay() {
    return this.delayMillis;
  }
  
  public File getFile() {
    return this.file;
  }
  
  public void run() {
    // Byte code:
    //   0: aconst_null
    //   1: astore #12
    //   3: lconst_0
    //   4: lstore_3
    //   5: lconst_0
    //   6: lstore #5
    //   8: aload #12
    //   10: astore #13
    //   12: aload #12
    //   14: astore #11
    //   16: aload_0
    //   17: getfield run : Z
    //   20: istore #9
    //   22: aload #12
    //   24: astore #10
    //   26: lload_3
    //   27: lstore_1
    //   28: lload #5
    //   30: lstore #7
    //   32: iload #9
    //   34: ifeq -> 232
    //   37: aload #12
    //   39: astore #10
    //   41: lload_3
    //   42: lstore_1
    //   43: lload #5
    //   45: lstore #7
    //   47: aload #12
    //   49: ifnonnull -> 232
    //   52: aload #12
    //   54: astore #13
    //   56: aload #12
    //   58: astore #11
    //   60: new java/io/RandomAccessFile
    //   63: dup
    //   64: aload_0
    //   65: getfield file : Ljava/io/File;
    //   68: ldc 'r'
    //   70: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   73: astore #10
    //   75: aload #10
    //   77: astore #12
    //   79: aload #12
    //   81: ifnonnull -> 156
    //   84: aload #12
    //   86: astore #13
    //   88: aload #12
    //   90: astore #11
    //   92: aload_0
    //   93: getfield delayMillis : J
    //   96: invokestatic sleep : (J)V
    //   99: goto -> 8
    //   102: astore #10
    //   104: goto -> 8
    //   107: astore #10
    //   109: aload #12
    //   111: astore #13
    //   113: aload #12
    //   115: astore #11
    //   117: aload_0
    //   118: getfield listener : Lorg/apache/commons/io/input/TailerListener;
    //   121: invokeinterface fileNotFound : ()V
    //   126: goto -> 79
    //   129: astore #12
    //   131: aload #13
    //   133: astore #10
    //   135: aload #10
    //   137: astore #11
    //   139: aload_0
    //   140: getfield listener : Lorg/apache/commons/io/input/TailerListener;
    //   143: aload #12
    //   145: invokeinterface handle : (Ljava/lang/Exception;)V
    //   150: aload #10
    //   152: invokestatic closeQuietly : (Ljava/io/Closeable;)V
    //   155: return
    //   156: aload #12
    //   158: astore #13
    //   160: aload #12
    //   162: astore #11
    //   164: aload_0
    //   165: getfield end : Z
    //   168: ifeq -> 227
    //   171: aload #12
    //   173: astore #13
    //   175: aload #12
    //   177: astore #11
    //   179: aload_0
    //   180: getfield file : Ljava/io/File;
    //   183: invokevirtual length : ()J
    //   186: lstore_3
    //   187: aload #12
    //   189: astore #13
    //   191: aload #12
    //   193: astore #11
    //   195: invokestatic currentTimeMillis : ()J
    //   198: lstore #5
    //   200: aload #12
    //   202: astore #13
    //   204: aload #12
    //   206: astore #11
    //   208: aload #12
    //   210: lload_3
    //   211: invokevirtual seek : (J)V
    //   214: goto -> 8
    //   217: astore #10
    //   219: aload #11
    //   221: invokestatic closeQuietly : (Ljava/io/Closeable;)V
    //   224: aload #10
    //   226: athrow
    //   227: lconst_0
    //   228: lstore_3
    //   229: goto -> 187
    //   232: aload #10
    //   234: astore #13
    //   236: aload #10
    //   238: astore #11
    //   240: aload_0
    //   241: getfield run : Z
    //   244: ifeq -> 549
    //   247: aload #10
    //   249: astore #13
    //   251: aload #10
    //   253: astore #11
    //   255: aload_0
    //   256: getfield file : Ljava/io/File;
    //   259: lload #7
    //   261: invokestatic isFileNewer : (Ljava/io/File;J)Z
    //   264: istore #9
    //   266: aload #10
    //   268: astore #13
    //   270: aload #10
    //   272: astore #11
    //   274: aload_0
    //   275: getfield file : Ljava/io/File;
    //   278: invokevirtual length : ()J
    //   281: lstore_3
    //   282: lload_3
    //   283: lload_1
    //   284: lcmp
    //   285: ifge -> 356
    //   288: aload #10
    //   290: astore #13
    //   292: aload #10
    //   294: astore #11
    //   296: aload_0
    //   297: getfield listener : Lorg/apache/commons/io/input/TailerListener;
    //   300: invokeinterface fileRotated : ()V
    //   305: aload #10
    //   307: astore #13
    //   309: aload #10
    //   311: astore #11
    //   313: new java/io/RandomAccessFile
    //   316: dup
    //   317: aload_0
    //   318: getfield file : Ljava/io/File;
    //   321: ldc 'r'
    //   323: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   326: astore #12
    //   328: aload #10
    //   330: invokestatic closeQuietly : (Ljava/io/Closeable;)V
    //   333: lconst_0
    //   334: lstore_1
    //   335: aload #12
    //   337: astore #10
    //   339: goto -> 232
    //   342: astore #11
    //   344: aload_0
    //   345: getfield listener : Lorg/apache/commons/io/input/TailerListener;
    //   348: invokeinterface fileNotFound : ()V
    //   353: goto -> 232
    //   356: lload_3
    //   357: lload_1
    //   358: lcmp
    //   359: ifle -> 497
    //   362: aload #10
    //   364: astore #13
    //   366: aload #10
    //   368: astore #11
    //   370: aload_0
    //   371: aload #10
    //   373: invokespecial readLines : (Ljava/io/RandomAccessFile;)J
    //   376: lstore_1
    //   377: aload #10
    //   379: astore #13
    //   381: aload #10
    //   383: astore #11
    //   385: invokestatic currentTimeMillis : ()J
    //   388: lstore_3
    //   389: aload #10
    //   391: astore #13
    //   393: aload #10
    //   395: astore #11
    //   397: aload_0
    //   398: getfield reOpen : Z
    //   401: ifeq -> 417
    //   404: aload #10
    //   406: astore #13
    //   408: aload #10
    //   410: astore #11
    //   412: aload #10
    //   414: invokestatic closeQuietly : (Ljava/io/Closeable;)V
    //   417: aload #10
    //   419: astore #13
    //   421: aload #10
    //   423: astore #11
    //   425: aload_0
    //   426: getfield delayMillis : J
    //   429: invokestatic sleep : (J)V
    //   432: aload #10
    //   434: astore #13
    //   436: aload #10
    //   438: astore #11
    //   440: aload_0
    //   441: getfield run : Z
    //   444: ifeq -> 629
    //   447: aload #10
    //   449: astore #13
    //   451: aload #10
    //   453: astore #11
    //   455: aload_0
    //   456: getfield reOpen : Z
    //   459: ifeq -> 629
    //   462: aload #10
    //   464: astore #13
    //   466: aload #10
    //   468: astore #11
    //   470: new java/io/RandomAccessFile
    //   473: dup
    //   474: aload_0
    //   475: getfield file : Ljava/io/File;
    //   478: ldc 'r'
    //   480: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   483: astore #10
    //   485: aload #10
    //   487: lload_1
    //   488: invokevirtual seek : (J)V
    //   491: lload_3
    //   492: lstore #7
    //   494: goto -> 232
    //   497: lload #7
    //   499: lstore_3
    //   500: iload #9
    //   502: ifeq -> 389
    //   505: aload #10
    //   507: astore #13
    //   509: aload #10
    //   511: astore #11
    //   513: aload #10
    //   515: lconst_0
    //   516: invokevirtual seek : (J)V
    //   519: aload #10
    //   521: astore #13
    //   523: aload #10
    //   525: astore #11
    //   527: aload_0
    //   528: aload #10
    //   530: invokespecial readLines : (Ljava/io/RandomAccessFile;)J
    //   533: lstore_1
    //   534: aload #10
    //   536: astore #13
    //   538: aload #10
    //   540: astore #11
    //   542: invokestatic currentTimeMillis : ()J
    //   545: lstore_3
    //   546: goto -> 389
    //   549: aload #10
    //   551: invokestatic closeQuietly : (Ljava/io/Closeable;)V
    //   554: return
    //   555: astore #10
    //   557: aload #12
    //   559: astore #11
    //   561: goto -> 219
    //   564: astore #12
    //   566: aload #10
    //   568: astore #11
    //   570: aload #12
    //   572: astore #10
    //   574: goto -> 219
    //   577: astore #12
    //   579: aload #10
    //   581: astore #11
    //   583: aload #12
    //   585: astore #10
    //   587: goto -> 219
    //   590: astore #11
    //   592: aload #12
    //   594: astore #10
    //   596: aload #11
    //   598: astore #12
    //   600: goto -> 135
    //   603: astore #12
    //   605: goto -> 135
    //   608: astore #12
    //   610: goto -> 135
    //   613: astore #11
    //   615: goto -> 432
    //   618: astore #10
    //   620: aload #12
    //   622: astore #10
    //   624: lconst_0
    //   625: lstore_1
    //   626: goto -> 344
    //   629: goto -> 491
    // Exception table:
    //   from	to	target	type
    //   16	22	129	java/lang/Exception
    //   16	22	217	finally
    //   60	75	107	java/io/FileNotFoundException
    //   60	75	129	java/lang/Exception
    //   60	75	217	finally
    //   92	99	102	java/lang/InterruptedException
    //   92	99	129	java/lang/Exception
    //   92	99	217	finally
    //   117	126	129	java/lang/Exception
    //   117	126	217	finally
    //   139	150	217	finally
    //   164	171	129	java/lang/Exception
    //   164	171	217	finally
    //   179	187	129	java/lang/Exception
    //   179	187	217	finally
    //   195	200	129	java/lang/Exception
    //   195	200	217	finally
    //   208	214	129	java/lang/Exception
    //   208	214	217	finally
    //   240	247	129	java/lang/Exception
    //   240	247	217	finally
    //   255	266	129	java/lang/Exception
    //   255	266	217	finally
    //   274	282	129	java/lang/Exception
    //   274	282	217	finally
    //   296	305	129	java/lang/Exception
    //   296	305	217	finally
    //   313	328	342	java/io/FileNotFoundException
    //   313	328	129	java/lang/Exception
    //   313	328	217	finally
    //   328	333	618	java/io/FileNotFoundException
    //   328	333	590	java/lang/Exception
    //   328	333	555	finally
    //   344	353	603	java/lang/Exception
    //   344	353	564	finally
    //   370	377	129	java/lang/Exception
    //   370	377	217	finally
    //   385	389	129	java/lang/Exception
    //   385	389	217	finally
    //   397	404	129	java/lang/Exception
    //   397	404	217	finally
    //   412	417	129	java/lang/Exception
    //   412	417	217	finally
    //   425	432	613	java/lang/InterruptedException
    //   425	432	129	java/lang/Exception
    //   425	432	217	finally
    //   440	447	129	java/lang/Exception
    //   440	447	217	finally
    //   455	462	129	java/lang/Exception
    //   455	462	217	finally
    //   470	485	129	java/lang/Exception
    //   470	485	217	finally
    //   485	491	608	java/lang/Exception
    //   485	491	577	finally
    //   513	519	129	java/lang/Exception
    //   513	519	217	finally
    //   527	534	129	java/lang/Exception
    //   527	534	217	finally
    //   542	546	129	java/lang/Exception
    //   542	546	217	finally
  }
  
  public void stop() {
    this.run = false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\Tailer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */