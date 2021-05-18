import android.os.SystemClock;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class dss implements dpr {
  private final Map<String, dsu> a = new LinkedHashMap<String, dsu>(16, 0.75F, true);
  
  private long b = 0L;
  
  private final File c;
  
  private final int d;
  
  public dss(File paramFile) {
    this(paramFile, 5242880);
  }
  
  public dss(File paramFile, int paramInt) {
    this.c = paramFile;
    this.d = paramInt;
  }
  
  static int a(InputStream paramInputStream) {
    return e(paramInputStream) << 0 | 0x0 | e(paramInputStream) << 8 | e(paramInputStream) << 16 | e(paramInputStream) << 24;
  }
  
  private void a(int paramInt) {
    if (this.b + paramInt >= this.d) {
      if (dsm.b)
        dsm.a("Pruning old cache entries.", new Object[0]); 
      long l1 = this.b;
      long l2 = SystemClock.elapsedRealtime();
      Iterator<Map.Entry> iterator = this.a.entrySet().iterator();
      int i = 0;
      while (true) {
        if (iterator.hasNext()) {
          dsu dsu = (dsu)((Map.Entry)iterator.next()).getValue();
          if (c(dsu.b).delete()) {
            this.b -= dsu.a;
          } else {
            dsm.b("Could not delete cache entry for key=%s, filename=%s", new Object[] { dsu.b, d(dsu.b) });
          } 
          iterator.remove();
          i++;
          if ((float)(this.b + paramInt) < this.d * 0.9F) {
            if (dsm.b) {
              dsm.a("pruned %d files, %d bytes, %d ms", new Object[] { Integer.valueOf(i), Long.valueOf(this.b - l1), Long.valueOf(SystemClock.elapsedRealtime() - l2) });
              return;
            } 
            return;
          } 
          continue;
        } 
        if (dsm.b) {
          dsm.a("pruned %d files, %d bytes, %d ms", new Object[] { Integer.valueOf(i), Long.valueOf(this.b - l1), Long.valueOf(SystemClock.elapsedRealtime() - l2) });
          return;
        } 
        return;
      } 
    } 
  }
  
  static void a(OutputStream paramOutputStream, int paramInt) {
    paramOutputStream.write(paramInt >> 0 & 0xFF);
    paramOutputStream.write(paramInt >> 8 & 0xFF);
    paramOutputStream.write(paramInt >> 16 & 0xFF);
    paramOutputStream.write(paramInt >> 24 & 0xFF);
  }
  
  static void a(OutputStream paramOutputStream, long paramLong) {
    paramOutputStream.write((byte)(int)(paramLong >>> 0L));
    paramOutputStream.write((byte)(int)(paramLong >>> 8L));
    paramOutputStream.write((byte)(int)(paramLong >>> 16L));
    paramOutputStream.write((byte)(int)(paramLong >>> 24L));
    paramOutputStream.write((byte)(int)(paramLong >>> 32L));
    paramOutputStream.write((byte)(int)(paramLong >>> 40L));
    paramOutputStream.write((byte)(int)(paramLong >>> 48L));
    paramOutputStream.write((byte)(int)(paramLong >>> 56L));
  }
  
  static void a(OutputStream paramOutputStream, String paramString) {
    byte[] arrayOfByte = paramString.getBytes("UTF-8");
    a(paramOutputStream, arrayOfByte.length);
    paramOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
  }
  
  private void a(String paramString, dsu paramdsu) {
    if (!this.a.containsKey(paramString)) {
      this.b += paramdsu.a;
    } else {
      dsu dsu1 = this.a.get(paramString);
      long l = this.b;
      this.b = paramdsu.a - dsu1.a + l;
    } 
    this.a.put(paramString, paramdsu);
  }
  
  static void a(Map<String, String> paramMap, OutputStream paramOutputStream) {
    if (paramMap != null) {
      a(paramOutputStream, paramMap.size());
      for (Map.Entry<String, String> entry : paramMap.entrySet()) {
        a(paramOutputStream, (String)entry.getKey());
        a(paramOutputStream, (String)entry.getValue());
      } 
    } else {
      a(paramOutputStream, 0);
    } 
  }
  
  private static byte[] a(InputStream paramInputStream, int paramInt) {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt) {
      int j = paramInputStream.read(arrayOfByte, i, paramInt - i);
      if (j != -1)
        i += j; 
    } 
    if (i != paramInt)
      throw new IOException("Expected " + paramInt + " bytes, read " + i + " bytes"); 
    return arrayOfByte;
  }
  
  static long b(InputStream paramInputStream) {
    return 0x0L | (e(paramInputStream) & 0xFFL) << 0L | (e(paramInputStream) & 0xFFL) << 8L | (e(paramInputStream) & 0xFFL) << 16L | (e(paramInputStream) & 0xFFL) << 24L | (e(paramInputStream) & 0xFFL) << 32L | (e(paramInputStream) & 0xFFL) << 40L | (e(paramInputStream) & 0xFFL) << 48L | (e(paramInputStream) & 0xFFL) << 56L;
  }
  
  static String c(InputStream paramInputStream) {
    return new String(a(paramInputStream, (int)b(paramInputStream)), "UTF-8");
  }
  
  private String d(String paramString) {
    int i = paramString.length() / 2;
    int j = paramString.substring(0, i).hashCode();
    return String.valueOf(j) + String.valueOf(paramString.substring(i).hashCode());
  }
  
  static Map<String, String> d(InputStream paramInputStream) {
    Map<?, ?> map;
    int j = a(paramInputStream);
    if (j == 0) {
      map = Collections.emptyMap();
    } else {
      map = new HashMap<Object, Object>(j);
    } 
    for (int i = 0; i < j; i++)
      map.put(c(paramInputStream).intern(), c(paramInputStream).intern()); 
    return (Map)map;
  }
  
  private static int e(InputStream paramInputStream) {
    int i = paramInputStream.read();
    if (i == -1)
      throw new EOFException(); 
    return i;
  }
  
  private void e(String paramString) {
    dsu dsu = this.a.get(paramString);
    if (dsu != null) {
      this.b -= dsu.a;
      this.a.remove(paramString);
    } 
  }
  
  public dps a(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield a : Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   12: checkcast dsu
    //   15: astore #4
    //   17: aload #4
    //   19: ifnonnull -> 28
    //   22: aconst_null
    //   23: astore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_1
    //   27: areturn
    //   28: aload_0
    //   29: aload_1
    //   30: invokevirtual c : (Ljava/lang/String;)Ljava/io/File;
    //   33: astore #5
    //   35: new dsv
    //   38: dup
    //   39: new java/io/BufferedInputStream
    //   42: dup
    //   43: new java/io/FileInputStream
    //   46: dup
    //   47: aload #5
    //   49: invokespecial <init> : (Ljava/io/File;)V
    //   52: invokespecial <init> : (Ljava/io/InputStream;)V
    //   55: aconst_null
    //   56: invokespecial <init> : (Ljava/io/InputStream;Ldst;)V
    //   59: astore_3
    //   60: aload_3
    //   61: astore_2
    //   62: aload_3
    //   63: invokestatic a : (Ljava/io/InputStream;)Ldsu;
    //   66: pop
    //   67: aload_3
    //   68: astore_2
    //   69: aload #4
    //   71: aload_3
    //   72: aload #5
    //   74: invokevirtual length : ()J
    //   77: aload_3
    //   78: invokestatic a : (Ldsv;)I
    //   81: i2l
    //   82: lsub
    //   83: l2i
    //   84: invokestatic a : (Ljava/io/InputStream;I)[B
    //   87: invokevirtual a : ([B)Ldps;
    //   90: astore #4
    //   92: aload #4
    //   94: astore_1
    //   95: aload_3
    //   96: invokevirtual close : ()V
    //   99: goto -> 24
    //   102: astore_1
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -> 24
    //   108: astore #4
    //   110: aconst_null
    //   111: astore_3
    //   112: aload_3
    //   113: astore_2
    //   114: ldc_w '%s: %s'
    //   117: iconst_2
    //   118: anewarray java/lang/Object
    //   121: dup
    //   122: iconst_0
    //   123: aload #5
    //   125: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   128: aastore
    //   129: dup
    //   130: iconst_1
    //   131: aload #4
    //   133: invokevirtual toString : ()Ljava/lang/String;
    //   136: aastore
    //   137: invokestatic b : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   140: aload_3
    //   141: astore_2
    //   142: aload_0
    //   143: aload_1
    //   144: invokevirtual b : (Ljava/lang/String;)V
    //   147: aload_3
    //   148: ifnull -> 155
    //   151: aload_3
    //   152: invokevirtual close : ()V
    //   155: aconst_null
    //   156: astore_1
    //   157: goto -> 24
    //   160: astore_1
    //   161: aconst_null
    //   162: astore_1
    //   163: goto -> 24
    //   166: astore_1
    //   167: aconst_null
    //   168: astore_2
    //   169: aload_2
    //   170: ifnull -> 177
    //   173: aload_2
    //   174: invokevirtual close : ()V
    //   177: aload_1
    //   178: athrow
    //   179: astore_1
    //   180: aload_0
    //   181: monitorexit
    //   182: aload_1
    //   183: athrow
    //   184: astore_1
    //   185: aconst_null
    //   186: astore_1
    //   187: goto -> 24
    //   190: astore_1
    //   191: goto -> 169
    //   194: astore #4
    //   196: goto -> 112
    // Exception table:
    //   from	to	target	type
    //   2	17	179	finally
    //   28	35	179	finally
    //   35	60	108	java/io/IOException
    //   35	60	166	finally
    //   62	67	194	java/io/IOException
    //   62	67	190	finally
    //   69	92	194	java/io/IOException
    //   69	92	190	finally
    //   95	99	102	java/io/IOException
    //   95	99	179	finally
    //   114	140	190	finally
    //   142	147	190	finally
    //   151	155	160	java/io/IOException
    //   151	155	179	finally
    //   173	177	184	java/io/IOException
    //   173	177	179	finally
    //   177	179	179	finally
  }
  
  public void a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield c : Ljava/io/File;
    //   6: invokevirtual exists : ()Z
    //   9: ifne -> 45
    //   12: aload_0
    //   13: getfield c : Ljava/io/File;
    //   16: invokevirtual mkdirs : ()Z
    //   19: ifne -> 42
    //   22: ldc_w 'Unable to create cache dir %s'
    //   25: iconst_1
    //   26: anewarray java/lang/Object
    //   29: dup
    //   30: iconst_0
    //   31: aload_0
    //   32: getfield c : Ljava/io/File;
    //   35: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   38: aastore
    //   39: invokestatic c : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: getfield c : Ljava/io/File;
    //   49: invokevirtual listFiles : ()[Ljava/io/File;
    //   52: astore #5
    //   54: aload #5
    //   56: ifnull -> 42
    //   59: aload #5
    //   61: arraylength
    //   62: istore_2
    //   63: iconst_0
    //   64: istore_1
    //   65: iload_1
    //   66: iload_2
    //   67: if_icmpge -> 42
    //   70: aload #5
    //   72: iload_1
    //   73: aaload
    //   74: astore #6
    //   76: aconst_null
    //   77: astore_3
    //   78: new java/io/BufferedInputStream
    //   81: dup
    //   82: new java/io/FileInputStream
    //   85: dup
    //   86: aload #6
    //   88: invokespecial <init> : (Ljava/io/File;)V
    //   91: invokespecial <init> : (Ljava/io/InputStream;)V
    //   94: astore #4
    //   96: aload #4
    //   98: astore_3
    //   99: aload #4
    //   101: invokestatic a : (Ljava/io/InputStream;)Ldsu;
    //   104: astore #7
    //   106: aload #4
    //   108: astore_3
    //   109: aload #7
    //   111: aload #6
    //   113: invokevirtual length : ()J
    //   116: putfield a : J
    //   119: aload #4
    //   121: astore_3
    //   122: aload_0
    //   123: aload #7
    //   125: getfield b : Ljava/lang/String;
    //   128: aload #7
    //   130: invokespecial a : (Ljava/lang/String;Ldsu;)V
    //   133: aload #4
    //   135: invokevirtual close : ()V
    //   138: iload_1
    //   139: iconst_1
    //   140: iadd
    //   141: istore_1
    //   142: goto -> 65
    //   145: astore_3
    //   146: aconst_null
    //   147: astore #4
    //   149: aload #6
    //   151: ifnull -> 163
    //   154: aload #4
    //   156: astore_3
    //   157: aload #6
    //   159: invokevirtual delete : ()Z
    //   162: pop
    //   163: aload #4
    //   165: ifnull -> 138
    //   168: aload #4
    //   170: invokevirtual close : ()V
    //   173: goto -> 138
    //   176: astore_3
    //   177: goto -> 138
    //   180: astore #5
    //   182: aload_3
    //   183: astore #4
    //   185: aload #5
    //   187: astore_3
    //   188: aload #4
    //   190: ifnull -> 198
    //   193: aload #4
    //   195: invokevirtual close : ()V
    //   198: aload_3
    //   199: athrow
    //   200: astore_3
    //   201: aload_0
    //   202: monitorexit
    //   203: aload_3
    //   204: athrow
    //   205: astore_3
    //   206: goto -> 138
    //   209: astore #4
    //   211: goto -> 198
    //   214: astore #5
    //   216: aload_3
    //   217: astore #4
    //   219: aload #5
    //   221: astore_3
    //   222: goto -> 188
    //   225: astore_3
    //   226: goto -> 149
    // Exception table:
    //   from	to	target	type
    //   2	42	200	finally
    //   45	54	200	finally
    //   59	63	200	finally
    //   78	96	145	java/io/IOException
    //   78	96	180	finally
    //   99	106	225	java/io/IOException
    //   99	106	214	finally
    //   109	119	225	java/io/IOException
    //   109	119	214	finally
    //   122	133	225	java/io/IOException
    //   122	133	214	finally
    //   133	138	205	java/io/IOException
    //   133	138	200	finally
    //   157	163	214	finally
    //   168	173	176	java/io/IOException
    //   168	173	200	finally
    //   193	198	209	java/io/IOException
    //   193	198	200	finally
    //   198	200	200	finally
  }
  
  public void a(String paramString, dps paramdps) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_2
    //   4: getfield a : [B
    //   7: arraylength
    //   8: invokespecial a : (I)V
    //   11: aload_0
    //   12: aload_1
    //   13: invokevirtual c : (Ljava/lang/String;)Ljava/io/File;
    //   16: astore_3
    //   17: new java/io/BufferedOutputStream
    //   20: dup
    //   21: new java/io/FileOutputStream
    //   24: dup
    //   25: aload_3
    //   26: invokespecial <init> : (Ljava/io/File;)V
    //   29: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   32: astore #4
    //   34: new dsu
    //   37: dup
    //   38: aload_1
    //   39: aload_2
    //   40: invokespecial <init> : (Ljava/lang/String;Ldps;)V
    //   43: astore #5
    //   45: aload #5
    //   47: aload #4
    //   49: invokevirtual a : (Ljava/io/OutputStream;)Z
    //   52: ifne -> 113
    //   55: aload #4
    //   57: invokevirtual close : ()V
    //   60: ldc_w 'Failed to write header for %s'
    //   63: iconst_1
    //   64: anewarray java/lang/Object
    //   67: dup
    //   68: iconst_0
    //   69: aload_3
    //   70: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   73: aastore
    //   74: invokestatic b : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   77: new java/io/IOException
    //   80: dup
    //   81: invokespecial <init> : ()V
    //   84: athrow
    //   85: astore_1
    //   86: aload_3
    //   87: invokevirtual delete : ()Z
    //   90: ifne -> 110
    //   93: ldc_w 'Could not clean up file %s'
    //   96: iconst_1
    //   97: anewarray java/lang/Object
    //   100: dup
    //   101: iconst_0
    //   102: aload_3
    //   103: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   106: aastore
    //   107: invokestatic b : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   110: aload_0
    //   111: monitorexit
    //   112: return
    //   113: aload #4
    //   115: aload_2
    //   116: getfield a : [B
    //   119: invokevirtual write : ([B)V
    //   122: aload #4
    //   124: invokevirtual close : ()V
    //   127: aload_0
    //   128: aload_1
    //   129: aload #5
    //   131: invokespecial a : (Ljava/lang/String;Ldsu;)V
    //   134: goto -> 110
    //   137: astore_1
    //   138: aload_0
    //   139: monitorexit
    //   140: aload_1
    //   141: athrow
    // Exception table:
    //   from	to	target	type
    //   2	17	137	finally
    //   17	85	85	java/io/IOException
    //   17	85	137	finally
    //   86	110	137	finally
    //   113	134	85	java/io/IOException
    //   113	134	137	finally
  }
  
  public void b(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual c : (Ljava/lang/String;)Ljava/io/File;
    //   7: invokevirtual delete : ()Z
    //   10: istore_2
    //   11: aload_0
    //   12: aload_1
    //   13: invokespecial e : (Ljava/lang/String;)V
    //   16: iload_2
    //   17: ifne -> 41
    //   20: ldc 'Could not delete cache entry for key=%s, filename=%s'
    //   22: iconst_2
    //   23: anewarray java/lang/Object
    //   26: dup
    //   27: iconst_0
    //   28: aload_1
    //   29: aastore
    //   30: dup
    //   31: iconst_1
    //   32: aload_0
    //   33: aload_1
    //   34: invokespecial d : (Ljava/lang/String;)Ljava/lang/String;
    //   37: aastore
    //   38: invokestatic b : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   41: aload_0
    //   42: monitorexit
    //   43: return
    //   44: astore_1
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_1
    //   48: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	44	finally
    //   20	41	44	finally
  }
  
  public File c(String paramString) {
    return new File(this.c, d(paramString));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */