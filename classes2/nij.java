class nij implements Runnable {
  nij(nii paramnii) {}
  
  public void run() {
    // Byte code:
    //   0: new java/net/URL
    //   3: dup
    //   4: aload_0
    //   5: getfield a : Lnii;
    //   8: invokestatic a : (Lnii;)Ljava/lang/String;
    //   11: invokespecial <init> : (Ljava/lang/String;)V
    //   14: invokestatic openConnection : (Ljava/net/URL;)Ljava/net/URLConnection;
    //   17: checkcast java/net/HttpURLConnection
    //   20: astore_3
    //   21: aload_3
    //   22: astore_2
    //   23: aload_3
    //   24: aload_0
    //   25: getfield a : Lnii;
    //   28: invokestatic b : (Lnii;)Ljava/lang/String;
    //   31: invokevirtual setRequestMethod : (Ljava/lang/String;)V
    //   34: aload_3
    //   35: astore_2
    //   36: aload_3
    //   37: ldc 'Accept-Encoding'
    //   39: ldc '*'
    //   41: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   44: aload_3
    //   45: astore_2
    //   46: aload_0
    //   47: getfield a : Lnii;
    //   50: invokestatic c : (Lnii;)Ljava/util/Map;
    //   53: ifnull -> 178
    //   56: aload_3
    //   57: astore_2
    //   58: aload_0
    //   59: getfield a : Lnii;
    //   62: invokestatic c : (Lnii;)Ljava/util/Map;
    //   65: invokeinterface entrySet : ()Ljava/util/Set;
    //   70: invokeinterface iterator : ()Ljava/util/Iterator;
    //   75: astore #4
    //   77: aload_3
    //   78: astore_2
    //   79: aload #4
    //   81: invokeinterface hasNext : ()Z
    //   86: ifeq -> 178
    //   89: aload_3
    //   90: astore_2
    //   91: aload #4
    //   93: invokeinterface next : ()Ljava/lang/Object;
    //   98: checkcast java/util/Map$Entry
    //   101: astore #5
    //   103: aload_3
    //   104: astore_2
    //   105: aload_3
    //   106: aload #5
    //   108: invokeinterface getKey : ()Ljava/lang/Object;
    //   113: checkcast java/lang/String
    //   116: aload #5
    //   118: invokeinterface getValue : ()Ljava/lang/Object;
    //   123: checkcast java/lang/String
    //   126: invokevirtual setRequestProperty : (Ljava/lang/String;Ljava/lang/String;)V
    //   129: goto -> 77
    //   132: astore #4
    //   134: aload_3
    //   135: astore_2
    //   136: aload_0
    //   137: getfield a : Lnii;
    //   140: invokestatic e : (Lnii;)Lnik;
    //   143: ifnull -> 169
    //   146: aload_3
    //   147: astore_2
    //   148: aload_0
    //   149: getfield a : Lnii;
    //   152: invokestatic e : (Lnii;)Lnik;
    //   155: aload_0
    //   156: getfield a : Lnii;
    //   159: invokestatic a : (Lnii;)Ljava/lang/String;
    //   162: aload #4
    //   164: invokeinterface a : (Ljava/lang/String;Ljava/lang/Throwable;)V
    //   169: aload_3
    //   170: ifnull -> 177
    //   173: aload_3
    //   174: invokevirtual disconnect : ()V
    //   177: return
    //   178: aload_3
    //   179: astore_2
    //   180: ldc 'HEAD'
    //   182: aload_0
    //   183: getfield a : Lnii;
    //   186: invokestatic b : (Lnii;)Ljava/lang/String;
    //   189: invokevirtual equals : (Ljava/lang/Object;)Z
    //   192: ifne -> 310
    //   195: iconst_1
    //   196: istore_1
    //   197: aload_3
    //   198: astore_2
    //   199: aload_3
    //   200: iload_1
    //   201: invokevirtual setDoInput : (Z)V
    //   204: aload_3
    //   205: astore_2
    //   206: aload_0
    //   207: getfield a : Lnii;
    //   210: invokestatic d : (Lnii;)Ljava/lang/String;
    //   213: ifnull -> 315
    //   216: aload_3
    //   217: astore_2
    //   218: aload_3
    //   219: iconst_1
    //   220: invokevirtual setDoOutput : (Z)V
    //   223: aload_3
    //   224: astore_2
    //   225: new java/io/DataOutputStream
    //   228: dup
    //   229: aload_3
    //   230: invokevirtual getOutputStream : ()Ljava/io/OutputStream;
    //   233: invokespecial <init> : (Ljava/io/OutputStream;)V
    //   236: astore #4
    //   238: aload_3
    //   239: astore_2
    //   240: aload #4
    //   242: aload_0
    //   243: getfield a : Lnii;
    //   246: invokestatic d : (Lnii;)Ljava/lang/String;
    //   249: ldc 'UTF-8'
    //   251: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   254: invokevirtual write : ([B)V
    //   257: aload_3
    //   258: astore_2
    //   259: aload #4
    //   261: invokevirtual close : ()V
    //   264: aload_3
    //   265: astore_2
    //   266: aload_3
    //   267: invokestatic connect : (Ljava/net/HttpURLConnection;)V
    //   270: iload_1
    //   271: ifeq -> 342
    //   274: aload_3
    //   275: astore_2
    //   276: aload_3
    //   277: invokevirtual getInputStream : ()Ljava/io/InputStream;
    //   280: invokestatic a : (Ljava/io/InputStream;)[B
    //   283: astore #4
    //   285: aload_3
    //   286: astore_2
    //   287: aload_0
    //   288: getfield a : Lnii;
    //   291: invokestatic e : (Lnii;)Lnik;
    //   294: astore #5
    //   296: aload #5
    //   298: ifnonnull -> 348
    //   301: aload_3
    //   302: ifnull -> 177
    //   305: aload_3
    //   306: invokevirtual disconnect : ()V
    //   309: return
    //   310: iconst_0
    //   311: istore_1
    //   312: goto -> 197
    //   315: aload_3
    //   316: astore_2
    //   317: aload_3
    //   318: iconst_0
    //   319: invokevirtual setDoOutput : (Z)V
    //   322: goto -> 264
    //   325: astore #4
    //   327: aload_2
    //   328: astore_3
    //   329: aload #4
    //   331: astore_2
    //   332: aload_3
    //   333: ifnull -> 340
    //   336: aload_3
    //   337: invokevirtual disconnect : ()V
    //   340: aload_2
    //   341: athrow
    //   342: aconst_null
    //   343: astore #4
    //   345: goto -> 285
    //   348: aload_3
    //   349: astore_2
    //   350: aload_0
    //   351: getfield a : Lnii;
    //   354: invokestatic e : (Lnii;)Lnik;
    //   357: aload_0
    //   358: getfield a : Lnii;
    //   361: invokestatic a : (Lnii;)Ljava/lang/String;
    //   364: aload_0
    //   365: getfield a : Lnii;
    //   368: invokestatic b : (Lnii;)Ljava/lang/String;
    //   371: aload_3
    //   372: invokestatic getResponseCode : (Ljava/net/HttpURLConnection;)I
    //   375: aload_3
    //   376: invokevirtual getHeaderFields : ()Ljava/util/Map;
    //   379: aload #4
    //   381: invokeinterface a : (Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;[B)V
    //   386: aload_3
    //   387: ifnull -> 177
    //   390: aload_3
    //   391: invokevirtual disconnect : ()V
    //   394: return
    //   395: astore_2
    //   396: aconst_null
    //   397: astore_3
    //   398: goto -> 332
    //   401: astore #4
    //   403: aconst_null
    //   404: astore_3
    //   405: goto -> 134
    // Exception table:
    //   from	to	target	type
    //   0	21	401	java/lang/Throwable
    //   0	21	395	finally
    //   23	34	132	java/lang/Throwable
    //   23	34	325	finally
    //   36	44	132	java/lang/Throwable
    //   36	44	325	finally
    //   46	56	132	java/lang/Throwable
    //   46	56	325	finally
    //   58	77	132	java/lang/Throwable
    //   58	77	325	finally
    //   79	89	132	java/lang/Throwable
    //   79	89	325	finally
    //   91	103	132	java/lang/Throwable
    //   91	103	325	finally
    //   105	129	132	java/lang/Throwable
    //   105	129	325	finally
    //   136	146	325	finally
    //   148	169	325	finally
    //   180	195	132	java/lang/Throwable
    //   180	195	325	finally
    //   199	204	132	java/lang/Throwable
    //   199	204	325	finally
    //   206	216	132	java/lang/Throwable
    //   206	216	325	finally
    //   218	223	132	java/lang/Throwable
    //   218	223	325	finally
    //   225	238	132	java/lang/Throwable
    //   225	238	325	finally
    //   240	257	132	java/lang/Throwable
    //   240	257	325	finally
    //   259	264	132	java/lang/Throwable
    //   259	264	325	finally
    //   266	270	132	java/lang/Throwable
    //   266	270	325	finally
    //   276	285	132	java/lang/Throwable
    //   276	285	325	finally
    //   287	296	132	java/lang/Throwable
    //   287	296	325	finally
    //   317	322	132	java/lang/Throwable
    //   317	322	325	finally
    //   350	386	132	java/lang/Throwable
    //   350	386	325	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nij.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */