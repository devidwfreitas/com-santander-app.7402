public final class ewh extends ewx {
  private static final char[] a = new char[] { 'A', 'B', 'C', 'D' };
  
  private static final char[] b = new char[] { 'T', 'N', '*', 'E' };
  
  private static final char[] c = new char[] { '/', ':', '+', '.' };
  
  private static final char d = a[0];
  
  public boolean[] a(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual length : ()I
    //   4: iconst_2
    //   5: if_icmpge -> 108
    //   8: new java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: getstatic ewh.d : C
    //   18: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   21: aload_1
    //   22: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: getstatic ewh.d : C
    //   28: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   31: invokevirtual toString : ()Ljava/lang/String;
    //   34: astore #14
    //   36: bipush #20
    //   38: istore #4
    //   40: iconst_1
    //   41: istore #5
    //   43: iload #5
    //   45: aload #14
    //   47: invokevirtual length : ()I
    //   50: iconst_1
    //   51: isub
    //   52: if_icmpge -> 379
    //   55: aload #14
    //   57: iload #5
    //   59: invokevirtual charAt : (I)C
    //   62: invokestatic isDigit : (C)Z
    //   65: ifne -> 92
    //   68: aload #14
    //   70: iload #5
    //   72: invokevirtual charAt : (I)C
    //   75: bipush #45
    //   77: if_icmpeq -> 92
    //   80: aload #14
    //   82: iload #5
    //   84: invokevirtual charAt : (I)C
    //   87: bipush #36
    //   89: if_icmpne -> 315
    //   92: iload #4
    //   94: bipush #9
    //   96: iadd
    //   97: istore #4
    //   99: iload #5
    //   101: iconst_1
    //   102: iadd
    //   103: istore #5
    //   105: goto -> 43
    //   108: aload_1
    //   109: iconst_0
    //   110: invokevirtual charAt : (I)C
    //   113: invokestatic toUpperCase : (C)C
    //   116: istore_2
    //   117: aload_1
    //   118: aload_1
    //   119: invokevirtual length : ()I
    //   122: iconst_1
    //   123: isub
    //   124: invokevirtual charAt : (I)C
    //   127: invokestatic toUpperCase : (C)C
    //   130: istore_3
    //   131: getstatic ewh.a : [C
    //   134: iload_2
    //   135: invokestatic a : ([CC)Z
    //   138: istore #10
    //   140: getstatic ewh.a : [C
    //   143: iload_3
    //   144: invokestatic a : ([CC)Z
    //   147: istore #11
    //   149: getstatic ewh.b : [C
    //   152: iload_2
    //   153: invokestatic a : ([CC)Z
    //   156: istore #12
    //   158: getstatic ewh.b : [C
    //   161: iload_3
    //   162: invokestatic a : ([CC)Z
    //   165: istore #13
    //   167: iload #10
    //   169: ifeq -> 207
    //   172: aload_1
    //   173: astore #14
    //   175: iload #11
    //   177: ifne -> 36
    //   180: new java/lang/IllegalArgumentException
    //   183: dup
    //   184: new java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial <init> : ()V
    //   191: ldc 'Invalid start/end guards: '
    //   193: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: aload_1
    //   197: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual toString : ()Ljava/lang/String;
    //   203: invokespecial <init> : (Ljava/lang/String;)V
    //   206: athrow
    //   207: iload #12
    //   209: ifeq -> 247
    //   212: aload_1
    //   213: astore #14
    //   215: iload #13
    //   217: ifne -> 36
    //   220: new java/lang/IllegalArgumentException
    //   223: dup
    //   224: new java/lang/StringBuilder
    //   227: dup
    //   228: invokespecial <init> : ()V
    //   231: ldc 'Invalid start/end guards: '
    //   233: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: aload_1
    //   237: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: invokevirtual toString : ()Ljava/lang/String;
    //   243: invokespecial <init> : (Ljava/lang/String;)V
    //   246: athrow
    //   247: iload #11
    //   249: ifne -> 257
    //   252: iload #13
    //   254: ifeq -> 284
    //   257: new java/lang/IllegalArgumentException
    //   260: dup
    //   261: new java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial <init> : ()V
    //   268: ldc 'Invalid start/end guards: '
    //   270: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: aload_1
    //   274: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: invokevirtual toString : ()Ljava/lang/String;
    //   280: invokespecial <init> : (Ljava/lang/String;)V
    //   283: athrow
    //   284: new java/lang/StringBuilder
    //   287: dup
    //   288: invokespecial <init> : ()V
    //   291: getstatic ewh.d : C
    //   294: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   297: aload_1
    //   298: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: getstatic ewh.d : C
    //   304: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   307: invokevirtual toString : ()Ljava/lang/String;
    //   310: astore #14
    //   312: goto -> 36
    //   315: getstatic ewh.c : [C
    //   318: aload #14
    //   320: iload #5
    //   322: invokevirtual charAt : (I)C
    //   325: invokestatic a : ([CC)Z
    //   328: ifeq -> 341
    //   331: iload #4
    //   333: bipush #10
    //   335: iadd
    //   336: istore #4
    //   338: goto -> 99
    //   341: new java/lang/IllegalArgumentException
    //   344: dup
    //   345: new java/lang/StringBuilder
    //   348: dup
    //   349: invokespecial <init> : ()V
    //   352: ldc 'Cannot encode : ''
    //   354: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   357: aload #14
    //   359: iload #5
    //   361: invokevirtual charAt : (I)C
    //   364: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   367: bipush #39
    //   369: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   372: invokevirtual toString : ()Ljava/lang/String;
    //   375: invokespecial <init> : (Ljava/lang/String;)V
    //   378: athrow
    //   379: aload #14
    //   381: invokevirtual length : ()I
    //   384: iconst_1
    //   385: isub
    //   386: iload #4
    //   388: iadd
    //   389: newarray boolean
    //   391: astore_1
    //   392: iconst_0
    //   393: istore #7
    //   395: iconst_0
    //   396: istore #5
    //   398: iload #7
    //   400: aload #14
    //   402: invokevirtual length : ()I
    //   405: if_icmpge -> 678
    //   408: aload #14
    //   410: iload #7
    //   412: invokevirtual charAt : (I)C
    //   415: invokestatic toUpperCase : (C)C
    //   418: istore #6
    //   420: iload #7
    //   422: ifeq -> 441
    //   425: iload #6
    //   427: istore #4
    //   429: iload #7
    //   431: aload #14
    //   433: invokevirtual length : ()I
    //   436: iconst_1
    //   437: isub
    //   438: if_icmpne -> 488
    //   441: iload #6
    //   443: lookupswitch default -> 484, 42 -> 604, 69 -> 611, 78 -> 597, 84 -> 590
    //   484: iload #6
    //   486: istore #4
    //   488: iconst_0
    //   489: istore #6
    //   491: iload #6
    //   493: getstatic ewg.a : [C
    //   496: arraylength
    //   497: if_icmpge -> 680
    //   500: iload #4
    //   502: getstatic ewg.a : [C
    //   505: iload #6
    //   507: caload
    //   508: if_icmpne -> 618
    //   511: getstatic ewg.b : [I
    //   514: iload #6
    //   516: iaload
    //   517: istore #8
    //   519: iconst_0
    //   520: istore #9
    //   522: iconst_0
    //   523: istore #6
    //   525: iconst_1
    //   526: istore #10
    //   528: iload #5
    //   530: istore #4
    //   532: iload #9
    //   534: bipush #7
    //   536: if_icmpge -> 642
    //   539: aload_1
    //   540: iload #4
    //   542: iload #10
    //   544: bastore
    //   545: iload #4
    //   547: iconst_1
    //   548: iadd
    //   549: istore #4
    //   551: iload #8
    //   553: bipush #6
    //   555: iload #9
    //   557: isub
    //   558: ishr
    //   559: iconst_1
    //   560: iand
    //   561: ifeq -> 570
    //   564: iload #6
    //   566: iconst_1
    //   567: if_icmpne -> 633
    //   570: iload #10
    //   572: ifne -> 627
    //   575: iconst_1
    //   576: istore #10
    //   578: iload #9
    //   580: iconst_1
    //   581: iadd
    //   582: istore #9
    //   584: iconst_0
    //   585: istore #6
    //   587: goto -> 532
    //   590: bipush #65
    //   592: istore #4
    //   594: goto -> 488
    //   597: bipush #66
    //   599: istore #4
    //   601: goto -> 488
    //   604: bipush #67
    //   606: istore #4
    //   608: goto -> 488
    //   611: bipush #68
    //   613: istore #4
    //   615: goto -> 488
    //   618: iload #6
    //   620: iconst_1
    //   621: iadd
    //   622: istore #6
    //   624: goto -> 491
    //   627: iconst_0
    //   628: istore #10
    //   630: goto -> 578
    //   633: iload #6
    //   635: iconst_1
    //   636: iadd
    //   637: istore #6
    //   639: goto -> 532
    //   642: iload #4
    //   644: istore #5
    //   646: iload #7
    //   648: aload #14
    //   650: invokevirtual length : ()I
    //   653: iconst_1
    //   654: isub
    //   655: if_icmpge -> 669
    //   658: aload_1
    //   659: iload #4
    //   661: iconst_0
    //   662: bastore
    //   663: iload #4
    //   665: iconst_1
    //   666: iadd
    //   667: istore #5
    //   669: iload #7
    //   671: iconst_1
    //   672: iadd
    //   673: istore #7
    //   675: goto -> 398
    //   678: aload_1
    //   679: areturn
    //   680: iconst_0
    //   681: istore #8
    //   683: goto -> 519
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */