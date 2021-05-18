public class mzw {
  private String a;
  
  public mzw(String paramString) {
    this.a = paramString;
  }
  
  public String a() {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: new java/net/URL
    //   6: dup
    //   7: aload_0
    //   8: getfield a : Ljava/lang/String;
    //   11: invokespecial <init> : (Ljava/lang/String;)V
    //   14: invokestatic openConnection : (Ljava/net/URL;)Ljava/net/URLConnection;
    //   17: checkcast java/net/HttpURLConnection
    //   20: astore_2
    //   21: aload_2
    //   22: ldc 'GET'
    //   24: invokevirtual setRequestMethod : (Ljava/lang/String;)V
    //   27: aload_2
    //   28: invokestatic connect : (Ljava/net/HttpURLConnection;)V
    //   31: aload_2
    //   32: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   35: astore_3
    //   36: new java/lang/StringBuffer
    //   39: dup
    //   40: invokespecial <init> : ()V
    //   43: astore #5
    //   45: aload_3
    //   46: ifnonnull -> 84
    //   49: aload_2
    //   50: ifnull -> 57
    //   53: aload_2
    //   54: invokevirtual disconnect : ()V
    //   57: iconst_0
    //   58: ifeq -> 69
    //   61: new java/lang/NullPointerException
    //   64: dup
    //   65: invokespecial <init> : ()V
    //   68: athrow
    //   69: aconst_null
    //   70: areturn
    //   71: astore_2
    //   72: ldc 'WebClienteGet'
    //   74: ldc 'Error closing stream'
    //   76: aload_2
    //   77: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   80: pop
    //   81: goto -> 69
    //   84: new java/io/BufferedReader
    //   87: dup
    //   88: new java/io/InputStreamReader
    //   91: dup
    //   92: aload_3
    //   93: invokespecial <init> : (Ljava/io/InputStream;)V
    //   96: invokespecial <init> : (Ljava/io/Reader;)V
    //   99: astore_3
    //   100: aload_3
    //   101: invokevirtual readLine : ()Ljava/lang/String;
    //   104: astore #4
    //   106: aload #4
    //   108: ifnull -> 182
    //   111: aload #5
    //   113: new java/lang/StringBuilder
    //   116: dup
    //   117: invokespecial <init> : ()V
    //   120: aload #4
    //   122: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: ldc '\\n'
    //   127: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: invokevirtual toString : ()Ljava/lang/String;
    //   133: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   136: pop
    //   137: goto -> 100
    //   140: astore #5
    //   142: aload_3
    //   143: astore #4
    //   145: aload_2
    //   146: astore_3
    //   147: aload #4
    //   149: astore_2
    //   150: aload #5
    //   152: astore #4
    //   154: ldc 'WebClienteGet'
    //   156: ldc 'Error '
    //   158: aload #4
    //   160: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   163: pop
    //   164: aload_3
    //   165: ifnull -> 172
    //   168: aload_3
    //   169: invokevirtual disconnect : ()V
    //   172: aload_2
    //   173: ifnull -> 180
    //   176: aload_2
    //   177: invokevirtual close : ()V
    //   180: aconst_null
    //   181: areturn
    //   182: aload #5
    //   184: invokevirtual length : ()I
    //   187: istore_1
    //   188: iload_1
    //   189: ifne -> 223
    //   192: aload_2
    //   193: ifnull -> 200
    //   196: aload_2
    //   197: invokevirtual disconnect : ()V
    //   200: aload_3
    //   201: ifnull -> 208
    //   204: aload_3
    //   205: invokevirtual close : ()V
    //   208: aconst_null
    //   209: areturn
    //   210: astore_2
    //   211: ldc 'WebClienteGet'
    //   213: ldc 'Error closing stream'
    //   215: aload_2
    //   216: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   219: pop
    //   220: goto -> 208
    //   223: aload #5
    //   225: invokevirtual toString : ()Ljava/lang/String;
    //   228: astore #4
    //   230: aload_2
    //   231: ifnull -> 238
    //   234: aload_2
    //   235: invokevirtual disconnect : ()V
    //   238: aload_3
    //   239: ifnull -> 246
    //   242: aload_3
    //   243: invokevirtual close : ()V
    //   246: aload #4
    //   248: areturn
    //   249: astore_2
    //   250: ldc 'WebClienteGet'
    //   252: ldc 'Error closing stream'
    //   254: aload_2
    //   255: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   258: pop
    //   259: goto -> 246
    //   262: astore_2
    //   263: ldc 'WebClienteGet'
    //   265: ldc 'Error closing stream'
    //   267: aload_2
    //   268: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   271: pop
    //   272: goto -> 180
    //   275: astore_2
    //   276: aconst_null
    //   277: astore_3
    //   278: aload_3
    //   279: ifnull -> 286
    //   282: aload_3
    //   283: invokevirtual disconnect : ()V
    //   286: aload #4
    //   288: ifnull -> 296
    //   291: aload #4
    //   293: invokevirtual close : ()V
    //   296: aload_2
    //   297: athrow
    //   298: astore_3
    //   299: ldc 'WebClienteGet'
    //   301: ldc 'Error closing stream'
    //   303: aload_3
    //   304: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   307: pop
    //   308: goto -> 296
    //   311: astore #5
    //   313: aload_2
    //   314: astore_3
    //   315: aload #5
    //   317: astore_2
    //   318: goto -> 278
    //   321: astore #4
    //   323: aload_2
    //   324: astore #5
    //   326: aload #4
    //   328: astore_2
    //   329: aload_3
    //   330: astore #4
    //   332: aload #5
    //   334: astore_3
    //   335: goto -> 278
    //   338: astore #5
    //   340: aload_2
    //   341: astore #4
    //   343: aload #5
    //   345: astore_2
    //   346: goto -> 278
    //   349: astore #4
    //   351: aconst_null
    //   352: astore_2
    //   353: aconst_null
    //   354: astore_3
    //   355: goto -> 154
    //   358: astore #4
    //   360: aload_2
    //   361: astore_3
    //   362: aconst_null
    //   363: astore_2
    //   364: goto -> 154
    // Exception table:
    //   from	to	target	type
    //   3	21	349	java/io/IOException
    //   3	21	275	finally
    //   21	45	358	java/io/IOException
    //   21	45	311	finally
    //   61	69	71	java/io/IOException
    //   84	100	358	java/io/IOException
    //   84	100	311	finally
    //   100	106	140	java/io/IOException
    //   100	106	321	finally
    //   111	137	140	java/io/IOException
    //   111	137	321	finally
    //   154	164	338	finally
    //   176	180	262	java/io/IOException
    //   182	188	140	java/io/IOException
    //   182	188	321	finally
    //   204	208	210	java/io/IOException
    //   223	230	140	java/io/IOException
    //   223	230	321	finally
    //   242	246	249	java/io/IOException
    //   291	296	298	java/io/IOException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */