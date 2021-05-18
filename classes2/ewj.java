import java.util.Map;

public final class ewj extends ewx {
  private static final int a = 104;
  
  private static final int b = 105;
  
  private static final int c = 100;
  
  private static final int d = 99;
  
  private static final int e = 106;
  
  private static final char f = 'ñ';
  
  private static final char g = 'ò';
  
  private static final char h = 'ó';
  
  private static final char i = 'ô';
  
  private static final int j = 102;
  
  private static final int k = 97;
  
  private static final int l = 96;
  
  private static final int m = 100;
  
  private static boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: iload_1
    //   1: iload_2
    //   2: iadd
    //   3: istore_2
    //   4: aload_0
    //   5: invokeinterface length : ()I
    //   10: istore #4
    //   12: iload_1
    //   13: iload_2
    //   14: if_icmpge -> 71
    //   17: iload_1
    //   18: iload #4
    //   20: if_icmpge -> 71
    //   23: aload_0
    //   24: iload_1
    //   25: invokeinterface charAt : (I)C
    //   30: istore #5
    //   32: iload #5
    //   34: bipush #48
    //   36: if_icmplt -> 48
    //   39: iload_2
    //   40: istore_3
    //   41: iload #5
    //   43: bipush #57
    //   45: if_icmple -> 62
    //   48: iload #5
    //   50: sipush #241
    //   53: if_icmpeq -> 58
    //   56: iconst_0
    //   57: ireturn
    //   58: iload_2
    //   59: iconst_1
    //   60: iadd
    //   61: istore_3
    //   62: iload_1
    //   63: iconst_1
    //   64: iadd
    //   65: istore_1
    //   66: iload_3
    //   67: istore_2
    //   68: goto -> 12
    //   71: iload_2
    //   72: iload #4
    //   74: if_icmpgt -> 83
    //   77: iconst_1
    //   78: istore #6
    //   80: iload #6
    //   82: ireturn
    //   83: iconst_0
    //   84: istore #6
    //   86: goto -> 80
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramepu != epu.CODE_128)
      throw new IllegalArgumentException("Can only encode CODE_128, but got " + paramepu); 
    return super.a(paramString, paramepu, paramInt1, paramInt2, paramMap);
  }
  
  public boolean[] a(String paramString) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #10
    //   3: aload_1
    //   4: invokevirtual length : ()I
    //   7: istore #11
    //   9: iload #11
    //   11: iconst_1
    //   12: if_icmplt -> 22
    //   15: iload #11
    //   17: bipush #80
    //   19: if_icmple -> 50
    //   22: new java/lang/IllegalArgumentException
    //   25: dup
    //   26: new java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial <init> : ()V
    //   33: ldc 'Contents length should be between 1 and 80 characters, but got '
    //   35: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: iload #11
    //   40: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   43: invokevirtual toString : ()Ljava/lang/String;
    //   46: invokespecial <init> : (Ljava/lang/String;)V
    //   49: athrow
    //   50: iconst_0
    //   51: istore_3
    //   52: iload_3
    //   53: iload #11
    //   55: if_icmpge -> 142
    //   58: aload_1
    //   59: iload_3
    //   60: invokevirtual charAt : (I)C
    //   63: istore_2
    //   64: iload_2
    //   65: bipush #32
    //   67: if_icmplt -> 76
    //   70: iload_2
    //   71: bipush #126
    //   73: if_icmple -> 135
    //   76: iload_2
    //   77: tableswitch default -> 108, 241 -> 135, 242 -> 135, 243 -> 135, 244 -> 135
    //   108: new java/lang/IllegalArgumentException
    //   111: dup
    //   112: new java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial <init> : ()V
    //   119: ldc 'Bad character in input: '
    //   121: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: iload_2
    //   125: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   128: invokevirtual toString : ()Ljava/lang/String;
    //   131: invokespecial <init> : (Ljava/lang/String;)V
    //   134: athrow
    //   135: iload_3
    //   136: iconst_1
    //   137: iadd
    //   138: istore_3
    //   139: goto -> 52
    //   142: new java/util/ArrayList
    //   145: dup
    //   146: invokespecial <init> : ()V
    //   149: astore #12
    //   151: iconst_0
    //   152: istore #5
    //   154: iconst_0
    //   155: istore #6
    //   157: iconst_1
    //   158: istore_3
    //   159: iconst_0
    //   160: istore #7
    //   162: iload_3
    //   163: istore #8
    //   165: iload #5
    //   167: iload #11
    //   169: if_icmpge -> 423
    //   172: iload #6
    //   174: bipush #99
    //   176: if_icmpne -> 322
    //   179: iconst_2
    //   180: istore_3
    //   181: aload_1
    //   182: iload #5
    //   184: iload_3
    //   185: invokestatic a : (Ljava/lang/CharSequence;II)Z
    //   188: ifeq -> 327
    //   191: bipush #99
    //   193: istore #4
    //   195: iload #4
    //   197: iload #6
    //   199: if_icmpne -> 381
    //   202: aload_1
    //   203: iload #5
    //   205: invokevirtual charAt : (I)C
    //   208: tableswitch default -> 240, 241 -> 334, 242 -> 340, 243 -> 346, 244 -> 352
    //   240: iload #6
    //   242: bipush #100
    //   244: if_icmpne -> 358
    //   247: aload_1
    //   248: iload #5
    //   250: invokevirtual charAt : (I)C
    //   253: bipush #32
    //   255: isub
    //   256: istore_3
    //   257: iload #5
    //   259: iconst_1
    //   260: iadd
    //   261: istore #5
    //   263: iload #6
    //   265: istore #4
    //   267: iload #5
    //   269: istore #6
    //   271: aload #12
    //   273: getstatic ewi.a : [[I
    //   276: iload_3
    //   277: aaload
    //   278: invokeinterface add : (Ljava/lang/Object;)Z
    //   283: pop
    //   284: iload #6
    //   286: ifeq -> 578
    //   289: iload #8
    //   291: iconst_1
    //   292: iadd
    //   293: istore #5
    //   295: iload #5
    //   297: istore #9
    //   299: iload #7
    //   301: iload_3
    //   302: iload #8
    //   304: imul
    //   305: iadd
    //   306: istore #7
    //   308: iload #6
    //   310: istore #5
    //   312: iload #4
    //   314: istore #6
    //   316: iload #9
    //   318: istore_3
    //   319: goto -> 162
    //   322: iconst_4
    //   323: istore_3
    //   324: goto -> 181
    //   327: bipush #100
    //   329: istore #4
    //   331: goto -> 195
    //   334: bipush #102
    //   336: istore_3
    //   337: goto -> 257
    //   340: bipush #97
    //   342: istore_3
    //   343: goto -> 257
    //   346: bipush #96
    //   348: istore_3
    //   349: goto -> 257
    //   352: bipush #100
    //   354: istore_3
    //   355: goto -> 257
    //   358: aload_1
    //   359: iload #5
    //   361: iload #5
    //   363: iconst_2
    //   364: iadd
    //   365: invokevirtual substring : (II)Ljava/lang/String;
    //   368: invokestatic parseInt : (Ljava/lang/String;)I
    //   371: istore_3
    //   372: iload #5
    //   374: iconst_1
    //   375: iadd
    //   376: istore #5
    //   378: goto -> 257
    //   381: iload #6
    //   383: ifne -> 413
    //   386: iload #4
    //   388: bipush #100
    //   390: if_icmpne -> 403
    //   393: bipush #104
    //   395: istore_3
    //   396: iload #5
    //   398: istore #6
    //   400: goto -> 271
    //   403: bipush #105
    //   405: istore_3
    //   406: iload #5
    //   408: istore #6
    //   410: goto -> 271
    //   413: iload #4
    //   415: istore_3
    //   416: iload #5
    //   418: istore #6
    //   420: goto -> 271
    //   423: aload #12
    //   425: getstatic ewi.a : [[I
    //   428: iload #7
    //   430: bipush #103
    //   432: irem
    //   433: aaload
    //   434: invokeinterface add : (Ljava/lang/Object;)Z
    //   439: pop
    //   440: aload #12
    //   442: getstatic ewi.a : [[I
    //   445: bipush #106
    //   447: aaload
    //   448: invokeinterface add : (Ljava/lang/Object;)Z
    //   453: pop
    //   454: aload #12
    //   456: invokeinterface iterator : ()Ljava/util/Iterator;
    //   461: astore_1
    //   462: iconst_0
    //   463: istore #4
    //   465: aload_1
    //   466: invokeinterface hasNext : ()Z
    //   471: ifeq -> 527
    //   474: aload_1
    //   475: invokeinterface next : ()Ljava/lang/Object;
    //   480: checkcast [I
    //   483: astore #13
    //   485: aload #13
    //   487: arraylength
    //   488: istore #6
    //   490: iconst_0
    //   491: istore #5
    //   493: iload #4
    //   495: istore_3
    //   496: iload_3
    //   497: istore #4
    //   499: iload #5
    //   501: iload #6
    //   503: if_icmpge -> 465
    //   506: aload #13
    //   508: iload #5
    //   510: iaload
    //   511: istore #4
    //   513: iload #5
    //   515: iconst_1
    //   516: iadd
    //   517: istore #5
    //   519: iload #4
    //   521: iload_3
    //   522: iadd
    //   523: istore_3
    //   524: goto -> 496
    //   527: iload #4
    //   529: newarray boolean
    //   531: astore_1
    //   532: aload #12
    //   534: invokeinterface iterator : ()Ljava/util/Iterator;
    //   539: astore #12
    //   541: iload #10
    //   543: istore_3
    //   544: aload #12
    //   546: invokeinterface hasNext : ()Z
    //   551: ifeq -> 576
    //   554: iload_3
    //   555: aload_1
    //   556: iload_3
    //   557: aload #12
    //   559: invokeinterface next : ()Ljava/lang/Object;
    //   564: checkcast [I
    //   567: iconst_1
    //   568: invokestatic a : ([ZI[IZ)I
    //   571: iadd
    //   572: istore_3
    //   573: goto -> 544
    //   576: aload_1
    //   577: areturn
    //   578: iload #8
    //   580: istore #5
    //   582: goto -> 295
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */