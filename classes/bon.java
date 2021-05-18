import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

public final class bon {
  static final String a = bon.class.getSimpleName();
  
  private static final String b = "key";
  
  private static final String c = "tag";
  
  private static final AtomicLong d = new AtomicLong();
  
  private final String e;
  
  private final bow f;
  
  private final File g;
  
  private boolean h;
  
  private boolean i;
  
  private final Object j;
  
  private AtomicLong k = new AtomicLong(0L);
  
  public bon(String paramString, bow parambow) {
    this.e = paramString;
    this.f = parambow;
    this.g = new File(bhv.q(), paramString);
    this.j = new Object();
    if (this.g.mkdirs() || this.g.isDirectory())
      bor.a(this.g); 
  }
  
  private void a(String paramString, File paramFile) {
    if (!paramFile.renameTo(new File(this.g, bqq.b(paramString))))
      paramFile.delete(); 
    e();
  }
  
  private void e() {
    synchronized (this.j) {
      if (!this.h) {
        this.h = true;
        bhv.f().execute(new boq(this));
      } 
      return;
    } 
  }
  
  private void f() {
    // Byte code:
    //   0: aload_0
    //   1: getfield j : Ljava/lang/Object;
    //   4: astore #11
    //   6: aload #11
    //   8: monitorenter
    //   9: aload_0
    //   10: iconst_0
    //   11: putfield h : Z
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield i : Z
    //   19: aload #11
    //   21: monitorexit
    //   22: getstatic bjb.CACHE : Lbjb;
    //   25: getstatic bon.a : Ljava/lang/String;
    //   28: ldc 'trim started'
    //   30: invokestatic a : (Lbjb;Ljava/lang/String;Ljava/lang/String;)V
    //   33: new java/util/PriorityQueue
    //   36: dup
    //   37: invokespecial <init> : ()V
    //   40: astore #11
    //   42: lconst_0
    //   43: lstore_3
    //   44: lconst_0
    //   45: lstore #7
    //   47: aload_0
    //   48: getfield g : Ljava/io/File;
    //   51: invokestatic a : ()Ljava/io/FilenameFilter;
    //   54: invokevirtual listFiles : (Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   57: astore #12
    //   59: lload #7
    //   61: lstore #5
    //   63: lload_3
    //   64: lstore #9
    //   66: aload #12
    //   68: ifnull -> 363
    //   71: aload #12
    //   73: arraylength
    //   74: istore_2
    //   75: iconst_0
    //   76: istore_1
    //   77: lload #7
    //   79: lstore #5
    //   81: lload_3
    //   82: lstore #9
    //   84: iload_1
    //   85: iload_2
    //   86: if_icmpge -> 363
    //   89: aload #12
    //   91: iload_1
    //   92: aaload
    //   93: astore #13
    //   95: new box
    //   98: dup
    //   99: aload #13
    //   101: invokespecial <init> : (Ljava/io/File;)V
    //   104: astore #14
    //   106: aload #11
    //   108: aload #14
    //   110: invokevirtual add : (Ljava/lang/Object;)Z
    //   113: pop
    //   114: getstatic bjb.CACHE : Lbjb;
    //   117: getstatic bon.a : Ljava/lang/String;
    //   120: new java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial <init> : ()V
    //   127: ldc '  trim considering time='
    //   129: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: aload #14
    //   134: invokevirtual b : ()J
    //   137: invokestatic valueOf : (J)Ljava/lang/Long;
    //   140: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   143: ldc ' name='
    //   145: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: aload #14
    //   150: invokevirtual a : ()Ljava/io/File;
    //   153: invokevirtual getName : ()Ljava/lang/String;
    //   156: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokevirtual toString : ()Ljava/lang/String;
    //   162: invokestatic a : (Lbjb;Ljava/lang/String;Ljava/lang/String;)V
    //   165: aload #13
    //   167: invokevirtual length : ()J
    //   170: lstore #5
    //   172: iload_1
    //   173: iconst_1
    //   174: iadd
    //   175: istore_1
    //   176: lconst_1
    //   177: lload #7
    //   179: ladd
    //   180: lstore #7
    //   182: lload #5
    //   184: lload_3
    //   185: ladd
    //   186: lstore_3
    //   187: goto -> 77
    //   190: astore #12
    //   192: aload #11
    //   194: monitorexit
    //   195: aload #12
    //   197: athrow
    //   198: lload #9
    //   200: aload_0
    //   201: getfield f : Lbow;
    //   204: invokevirtual a : ()I
    //   207: i2l
    //   208: lcmp
    //   209: ifgt -> 225
    //   212: lload_3
    //   213: aload_0
    //   214: getfield f : Lbow;
    //   217: invokevirtual b : ()I
    //   220: i2l
    //   221: lcmp
    //   222: ifle -> 293
    //   225: aload #11
    //   227: invokevirtual remove : ()Ljava/lang/Object;
    //   230: checkcast box
    //   233: invokevirtual a : ()Ljava/io/File;
    //   236: astore #12
    //   238: getstatic bjb.CACHE : Lbjb;
    //   241: getstatic bon.a : Ljava/lang/String;
    //   244: new java/lang/StringBuilder
    //   247: dup
    //   248: invokespecial <init> : ()V
    //   251: ldc '  trim removing '
    //   253: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: aload #12
    //   258: invokevirtual getName : ()Ljava/lang/String;
    //   261: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual toString : ()Ljava/lang/String;
    //   267: invokestatic a : (Lbjb;Ljava/lang/String;Ljava/lang/String;)V
    //   270: lload #9
    //   272: aload #12
    //   274: invokevirtual length : ()J
    //   277: lsub
    //   278: lstore #9
    //   280: aload #12
    //   282: invokevirtual delete : ()Z
    //   285: pop
    //   286: lload_3
    //   287: lconst_1
    //   288: lsub
    //   289: lstore_3
    //   290: goto -> 198
    //   293: aload_0
    //   294: getfield j : Ljava/lang/Object;
    //   297: astore #11
    //   299: aload #11
    //   301: monitorenter
    //   302: aload_0
    //   303: iconst_0
    //   304: putfield i : Z
    //   307: aload_0
    //   308: getfield j : Ljava/lang/Object;
    //   311: invokevirtual notifyAll : ()V
    //   314: aload #11
    //   316: monitorexit
    //   317: return
    //   318: astore #12
    //   320: aload #11
    //   322: monitorexit
    //   323: aload #12
    //   325: athrow
    //   326: astore #12
    //   328: aload_0
    //   329: getfield j : Ljava/lang/Object;
    //   332: astore #11
    //   334: aload #11
    //   336: monitorenter
    //   337: aload_0
    //   338: iconst_0
    //   339: putfield i : Z
    //   342: aload_0
    //   343: getfield j : Ljava/lang/Object;
    //   346: invokevirtual notifyAll : ()V
    //   349: aload #11
    //   351: monitorexit
    //   352: aload #12
    //   354: athrow
    //   355: astore #12
    //   357: aload #11
    //   359: monitorexit
    //   360: aload #12
    //   362: athrow
    //   363: lload #5
    //   365: lstore_3
    //   366: goto -> 198
    // Exception table:
    //   from	to	target	type
    //   9	22	190	finally
    //   22	42	326	finally
    //   47	59	326	finally
    //   71	75	326	finally
    //   95	172	326	finally
    //   192	195	190	finally
    //   198	225	326	finally
    //   225	286	326	finally
    //   302	317	318	finally
    //   320	323	318	finally
    //   337	352	355	finally
    //   357	360	355	finally
  }
  
  long a() {
    synchronized (this.j) {
      while (true) {
        if (!this.h) {
          boolean bool = this.i;
          if (!bool) {
            null = this.g.listFiles();
            long l1 = 0L;
            long l2 = l1;
            if (null != null) {
              int j = null.length;
              int i = 0;
              while (true) {
                l2 = l1;
                if (i < j) {
                  l2 = null[i].length();
                  i++;
                  l1 = l2 + l1;
                  continue;
                } 
                break;
              } 
            } 
            return l2;
          } 
        } 
        try {
          this.j.wait();
        } catch (InterruptedException interruptedException) {}
      } 
    } 
  }
  
  public InputStream a(String paramString) {
    return a(paramString, (String)null);
  }
  
  public InputStream a(String paramString, InputStream paramInputStream) {
    return new bov(paramInputStream, b(paramString));
  }
  
  public InputStream a(String paramString1, String paramString2) {
    File file = new File(this.g, bqq.b(paramString1));
    try {
      FileInputStream fileInputStream = new FileInputStream(file);
      BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream, 8192);
      try {
        JSONObject jSONObject = boz.a(bufferedInputStream);
        if (jSONObject == null)
          return null; 
        String str = jSONObject.optString("key");
        if (str != null) {
          boolean bool = str.equals(paramString1);
          if (bool) {
            paramString1 = jSONObject.optString("tag", null);
            if (paramString2 != null || paramString1 == null) {
              if (paramString2 != null) {
                bool = paramString2.equals(paramString1);
                if (!bool)
                  return null; 
              } 
            } else {
              return null;
            } 
            long l = (new Date()).getTime();
            bpu.a(bjb.CACHE, a, "Setting lastModified to " + Long.valueOf(l) + " for " + file.getName());
            return bufferedInputStream;
          } 
        } 
        return null;
      } finally {
        bufferedInputStream.close();
      } 
    } catch (IOException iOException) {
      return null;
    } 
  }
  
  public OutputStream b(String paramString) {
    return b(paramString, null);
  }
  
  public OutputStream b(String paramString1, String paramString2) {
    File file = bor.b(this.g);
    file.delete();
    if (!file.createNewFile())
      throw new IOException("Could not create file at " + file.getAbsolutePath()); 
    try {
      FileOutputStream fileOutputStream = new FileOutputStream(file);
      BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new bou(fileOutputStream, new boo(this, System.currentTimeMillis(), file, paramString1)), 8192);
      try {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", paramString1);
        if (!bqq.a(paramString2))
          jSONObject.put("tag", paramString2); 
        return bufferedOutputStream;
      } catch (JSONException jSONException) {
        bpu.a(bjb.CACHE, 5, a, "Error creating JSON header for cache file: " + jSONException);
        throw new IOException(jSONException.getMessage());
      } finally {
        bufferedOutputStream.close();
      } 
    } catch (FileNotFoundException fileNotFoundException) {
      bpu.a(bjb.CACHE, 5, a, "Error creating buffer output stream: " + fileNotFoundException);
      throw new IOException(fileNotFoundException.getMessage());
    } 
  }
  
  public void b() {
    File[] arrayOfFile = this.g.listFiles(bor.a());
    this.k.set(System.currentTimeMillis());
    if (arrayOfFile != null)
      bhv.f().execute(new bop(this, arrayOfFile)); 
  }
  
  public String c() {
    return this.g.getPath();
  }
  
  public String toString() {
    return "{FileLruCache: tag:" + this.e + " file:" + this.g.getName() + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bon.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */