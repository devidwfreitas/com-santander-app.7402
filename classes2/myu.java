import android.util.Log;
import java.io.InputStream;
import java.util.Vector;

public class myu {
  private static myu b;
  
  private static String c = "";
  
  private final String a = "LogServerUtil";
  
  private Vector<myw> d = new Vector<myw>();
  
  private boolean e = false;
  
  private boolean f = false;
  
  public static myu a() {
    if (b == null)
      b = new myu(); 
    return b;
  }
  
  private void a(int paramInt) {
    myw myw = this.d.get(paramInt);
    Log.d("LogServerUtil", "Request (" + paramInt + ") to: " + myw.c());
    Log.d("LogServerUtil", "Request (" + paramInt + ") : " + myw.a());
  }
  
  private void a(String paramString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: getstatic myu.c : Ljava/lang/String;
    //   6: ifnull -> 18
    //   9: getstatic myu.c : Ljava/lang/String;
    //   12: invokevirtual length : ()I
    //   15: ifne -> 66
    //   18: new java/util/Date
    //   21: dup
    //   22: invokespecial <init> : ()V
    //   25: astore_2
    //   26: new java/text/SimpleDateFormat
    //   29: dup
    //   30: invokespecial <init> : ()V
    //   33: astore_3
    //   34: aload_3
    //   35: ldc 'yyyy_MM_dd_hh_mm'
    //   37: invokevirtual applyPattern : (Ljava/lang/String;)V
    //   40: new java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial <init> : ()V
    //   47: aload_3
    //   48: aload_2
    //   49: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   52: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc '.txt'
    //   57: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual toString : ()Ljava/lang/String;
    //   63: putstatic myu.c : Ljava/lang/String;
    //   66: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   69: astore_2
    //   70: new java/io/File
    //   73: dup
    //   74: new java/lang/StringBuilder
    //   77: dup
    //   78: invokespecial <init> : ()V
    //   81: aload_2
    //   82: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   85: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: ldc '/SantanderBrasil'
    //   90: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual toString : ()Ljava/lang/String;
    //   96: getstatic myu.c : Ljava/lang/String;
    //   99: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;)V
    //   102: astore #5
    //   104: new java/io/InputStreamReader
    //   107: dup
    //   108: new java/io/FileInputStream
    //   111: dup
    //   112: aload #5
    //   114: invokespecial <init> : (Ljava/io/File;)V
    //   117: ldc 'UTF-8'
    //   119: invokespecial <init> : (Ljava/io/InputStream;Ljava/lang/String;)V
    //   122: astore #6
    //   124: new java/io/StringWriter
    //   127: dup
    //   128: invokespecial <init> : ()V
    //   131: astore_2
    //   132: aload #6
    //   134: aload_2
    //   135: invokestatic copy : (Ljava/io/Reader;Ljava/io/Writer;)I
    //   138: pop
    //   139: aload_2
    //   140: invokevirtual toString : ()Ljava/lang/String;
    //   143: astore_2
    //   144: aload_2
    //   145: astore_3
    //   146: aload #6
    //   148: ifnull -> 162
    //   151: iconst_0
    //   152: ifeq -> 255
    //   155: aload #6
    //   157: invokevirtual close : ()V
    //   160: aload_2
    //   161: astore_3
    //   162: new java/io/OutputStreamWriter
    //   165: dup
    //   166: new java/io/FileOutputStream
    //   169: dup
    //   170: aload #5
    //   172: invokespecial <init> : (Ljava/io/File;)V
    //   175: ldc 'UTF-8'
    //   177: invokespecial <init> : (Ljava/io/OutputStream;Ljava/lang/String;)V
    //   180: astore #5
    //   182: aload #5
    //   184: new java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial <init> : ()V
    //   191: aload_3
    //   192: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: ldc '\\r\\n'
    //   197: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload_1
    //   201: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: invokevirtual toString : ()Ljava/lang/String;
    //   207: invokevirtual write : (Ljava/lang/String;)V
    //   210: aload #5
    //   212: invokevirtual flush : ()V
    //   215: aload #5
    //   217: ifnull -> 229
    //   220: iconst_0
    //   221: ifeq -> 325
    //   224: aload #5
    //   226: invokevirtual close : ()V
    //   229: return
    //   230: astore_3
    //   231: new java/lang/NullPointerException
    //   234: dup
    //   235: invokespecial <init> : ()V
    //   238: athrow
    //   239: astore_3
    //   240: ldc 'LogServerUtil'
    //   242: aload_3
    //   243: invokevirtual getMessage : ()Ljava/lang/String;
    //   246: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   249: pop
    //   250: aload_2
    //   251: astore_3
    //   252: goto -> 162
    //   255: aload #6
    //   257: invokevirtual close : ()V
    //   260: aload_2
    //   261: astore_3
    //   262: goto -> 162
    //   265: astore_2
    //   266: aload_2
    //   267: athrow
    //   268: astore_3
    //   269: aload #6
    //   271: ifnull -> 283
    //   274: aload_2
    //   275: ifnull -> 296
    //   278: aload #6
    //   280: invokevirtual close : ()V
    //   283: aload_3
    //   284: athrow
    //   285: astore #6
    //   287: aload_2
    //   288: aload #6
    //   290: invokevirtual addSuppressed : (Ljava/lang/Throwable;)V
    //   293: goto -> 283
    //   296: aload #6
    //   298: invokevirtual close : ()V
    //   301: goto -> 283
    //   304: astore_1
    //   305: new java/lang/NullPointerException
    //   308: dup
    //   309: invokespecial <init> : ()V
    //   312: athrow
    //   313: astore_1
    //   314: ldc 'LogServerUtil'
    //   316: aload_1
    //   317: invokevirtual getMessage : ()Ljava/lang/String;
    //   320: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   323: pop
    //   324: return
    //   325: aload #5
    //   327: invokevirtual close : ()V
    //   330: return
    //   331: astore_2
    //   332: aload_2
    //   333: athrow
    //   334: astore_1
    //   335: aload #5
    //   337: ifnull -> 349
    //   340: aload_2
    //   341: ifnull -> 360
    //   344: aload #5
    //   346: invokevirtual close : ()V
    //   349: aload_1
    //   350: athrow
    //   351: astore_3
    //   352: aload_2
    //   353: aload_3
    //   354: invokevirtual addSuppressed : (Ljava/lang/Throwable;)V
    //   357: goto -> 349
    //   360: aload #5
    //   362: invokevirtual close : ()V
    //   365: goto -> 349
    //   368: astore_1
    //   369: aload #4
    //   371: astore_2
    //   372: goto -> 335
    //   375: astore_3
    //   376: aconst_null
    //   377: astore_2
    //   378: goto -> 269
    //   381: astore_3
    //   382: ldc ''
    //   384: astore_2
    //   385: goto -> 240
    // Exception table:
    //   from	to	target	type
    //   104	124	381	java/io/IOException
    //   124	144	265	java/lang/Throwable
    //   124	144	375	finally
    //   155	160	230	java/lang/Throwable
    //   155	160	239	java/io/IOException
    //   162	182	313	java/io/IOException
    //   182	215	331	java/lang/Throwable
    //   182	215	368	finally
    //   224	229	304	java/lang/Throwable
    //   224	229	313	java/io/IOException
    //   231	239	239	java/io/IOException
    //   255	260	239	java/io/IOException
    //   266	268	268	finally
    //   278	283	285	java/lang/Throwable
    //   278	283	381	java/io/IOException
    //   283	285	381	java/io/IOException
    //   287	293	381	java/io/IOException
    //   296	301	381	java/io/IOException
    //   305	313	313	java/io/IOException
    //   325	330	313	java/io/IOException
    //   332	334	334	finally
    //   344	349	351	java/lang/Throwable
    //   344	349	313	java/io/IOException
    //   349	351	313	java/io/IOException
    //   352	357	313	java/io/IOException
    //   360	365	313	java/io/IOException
  }
  
  private void b(int paramInt) {
    myw myw = this.d.get(paramInt);
    Log.d("LogServerUtil", "Response (" + paramInt + ") : " + myw.b());
  }
  
  private void c(int paramInt) {
    myw myw = this.d.get(paramInt);
    a("Request (" + paramInt + ") to: " + myw.c());
    a("Request (" + paramInt + ") : " + myw.a());
  }
  
  private void d(int paramInt) {
    myw myw = this.d.get(paramInt);
    a("Response (" + paramInt + ") : " + myw.b());
  }
  
  public int a(String paramString1, String paramString2) {
    myw myw = new myw(this, null);
    myw.c(paramString2);
    myw.a(paramString1);
    int i = this.d.size();
    this.d.add(myw);
    if (this.e)
      a(i); 
    if (this.f)
      c(i); 
    return i;
  }
  
  public InputStream a(InputStream paramInputStream, int paramInt) {
    // Byte code:
    //   0: new java/io/BufferedReader
    //   3: dup
    //   4: new java/io/InputStreamReader
    //   7: dup
    //   8: aload_1
    //   9: invokespecial <init> : (Ljava/io/InputStream;)V
    //   12: invokespecial <init> : (Ljava/io/Reader;)V
    //   15: astore #4
    //   17: ldc ''
    //   19: astore_1
    //   20: aload #4
    //   22: invokevirtual readLine : ()Ljava/lang/String;
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull -> 54
    //   30: new java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial <init> : ()V
    //   37: aload_1
    //   38: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: aload_3
    //   42: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual toString : ()Ljava/lang/String;
    //   48: astore_3
    //   49: aload_3
    //   50: astore_1
    //   51: goto -> 20
    //   54: aload #4
    //   56: invokevirtual close : ()V
    //   59: iload_2
    //   60: aload_0
    //   61: getfield d : Ljava/util/Vector;
    //   64: invokevirtual size : ()I
    //   67: if_icmpge -> 109
    //   70: aload_0
    //   71: getfield d : Ljava/util/Vector;
    //   74: iload_2
    //   75: invokevirtual get : (I)Ljava/lang/Object;
    //   78: checkcast myw
    //   81: aload_1
    //   82: invokevirtual b : (Ljava/lang/String;)V
    //   85: aload_0
    //   86: getfield e : Z
    //   89: ifeq -> 97
    //   92: aload_0
    //   93: iload_2
    //   94: invokespecial b : (I)V
    //   97: aload_0
    //   98: getfield f : Z
    //   101: ifeq -> 109
    //   104: aload_0
    //   105: iload_2
    //   106: invokespecial d : (I)V
    //   109: new java/io/ByteArrayInputStream
    //   112: dup
    //   113: aload_1
    //   114: ldc 'UTF-8'
    //   116: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   119: invokespecial <init> : ([B)V
    //   122: astore_1
    //   123: aload_1
    //   124: areturn
    //   125: astore_3
    //   126: ldc 'Error'
    //   128: aload_3
    //   129: invokevirtual getMessage : ()Ljava/lang/String;
    //   132: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   135: pop
    //   136: goto -> 109
    //   139: astore_1
    //   140: aconst_null
    //   141: areturn
    // Exception table:
    //   from	to	target	type
    //   20	26	125	java/io/IOException
    //   30	49	125	java/io/IOException
    //   54	97	125	java/io/IOException
    //   97	109	125	java/io/IOException
    //   109	123	139	java/io/UnsupportedEncodingException
  }
  
  public void a(String paramString1, String paramString2, String paramString3) {
    if (this.e) {
      Log.d("LogServerUtil", "Request (" + paramString3 + ") to: " + paramString2);
      Log.d("LogServerUtil", "Request (" + paramString3 + ") : " + paramString1);
    } 
    if (this.f) {
      a("Request (" + paramString3 + ") to: " + paramString2);
      a("Request (" + paramString3 + ") : " + paramString1);
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public void b(String paramString1, String paramString2) {
    if (this.e)
      Log.d("LogServerUtil", "Response (" + paramString2 + ") : " + paramString1); 
    if (this.f)
      a("Response (" + paramString2 + ") : " + paramString1); 
  }
  
  public void b(boolean paramBoolean) {
    this.f = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */