import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public class epm {
  private static final String a = "UTC";
  
  private static final TimeZone b = TimeZone.getTimeZone("UTC");
  
  private static int a(String paramString, int paramInt) {
    while (paramInt < paramString.length()) {
      char c = paramString.charAt(paramInt);
      if (c < '0' || c > '9')
        return paramInt; 
      paramInt++;
    } 
    return paramString.length();
  }
  
  private static int a(String paramString, int paramInt1, int paramInt2) {
    int j;
    if (paramInt1 < 0 || paramInt2 > paramString.length() || paramInt1 > paramInt2)
      throw new NumberFormatException(paramString); 
    int i = 0;
    if (paramInt1 < paramInt2) {
      j = paramInt1 + 1;
      i = Character.digit(paramString.charAt(paramInt1), 10);
      if (i < 0)
        throw new NumberFormatException("Invalid number: " + paramString.substring(paramInt1, paramInt2)); 
      i = -i;
    } else {
      j = paramInt1;
    } 
    while (j < paramInt2) {
      int k = Character.digit(paramString.charAt(j), 10);
      if (k < 0)
        throw new NumberFormatException("Invalid number: " + paramString.substring(paramInt1, paramInt2)); 
      i = i * 10 - k;
      j++;
    } 
    return -i;
  }
  
  public static String a(Date paramDate) {
    return a(paramDate, false, b);
  }
  
  public static String a(Date paramDate, boolean paramBoolean) {
    return a(paramDate, paramBoolean, b);
  }
  
  public static String a(Date paramDate, boolean paramBoolean, TimeZone paramTimeZone) {
    int j;
    GregorianCalendar gregorianCalendar = new GregorianCalendar(paramTimeZone, Locale.US);
    gregorianCalendar.setTime(paramDate);
    int k = "yyyy-MM-ddThh:mm:ss".length();
    if (paramBoolean) {
      i = ".sss".length();
    } else {
      i = 0;
    } 
    if (paramTimeZone.getRawOffset() == 0) {
      j = "Z".length();
    } else {
      j = "+hh:mm".length();
    } 
    StringBuilder stringBuilder = new StringBuilder(j + k + i);
    a(stringBuilder, gregorianCalendar.get(1), "yyyy".length());
    stringBuilder.append('-');
    a(stringBuilder, gregorianCalendar.get(2) + 1, "MM".length());
    stringBuilder.append('-');
    a(stringBuilder, gregorianCalendar.get(5), "dd".length());
    stringBuilder.append('T');
    a(stringBuilder, gregorianCalendar.get(11), "hh".length());
    stringBuilder.append(':');
    a(stringBuilder, gregorianCalendar.get(12), "mm".length());
    stringBuilder.append(':');
    a(stringBuilder, gregorianCalendar.get(13), "ss".length());
    if (paramBoolean) {
      stringBuilder.append('.');
      a(stringBuilder, gregorianCalendar.get(14), "sss".length());
    } 
    int i = paramTimeZone.getOffset(gregorianCalendar.getTimeInMillis());
    if (i != 0) {
      byte b;
      j = Math.abs(i / 60000 / 60);
      k = Math.abs(i / 60000 % 60);
      if (i < 0) {
        b = 45;
      } else {
        b = 43;
      } 
      stringBuilder.append(b);
      a(stringBuilder, j, "hh".length());
      stringBuilder.append(':');
      a(stringBuilder, k, "mm".length());
      return stringBuilder.toString();
    } 
    stringBuilder.append('Z');
    return stringBuilder.toString();
  }
  
  public static Date a(String paramString, ParsePosition paramParsePosition) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual getIndex : ()I
    //   4: istore #4
    //   6: iload #4
    //   8: iconst_4
    //   9: iadd
    //   10: istore_3
    //   11: aload_0
    //   12: iload #4
    //   14: iload_3
    //   15: invokestatic a : (Ljava/lang/String;II)I
    //   18: istore #9
    //   20: aload_0
    //   21: iload_3
    //   22: bipush #45
    //   24: invokestatic a : (Ljava/lang/String;IC)Z
    //   27: ifeq -> 964
    //   30: iload_3
    //   31: iconst_1
    //   32: iadd
    //   33: istore_3
    //   34: iload_3
    //   35: iconst_2
    //   36: iadd
    //   37: istore #4
    //   39: aload_0
    //   40: iload_3
    //   41: iload #4
    //   43: invokestatic a : (Ljava/lang/String;II)I
    //   46: istore #10
    //   48: aload_0
    //   49: iload #4
    //   51: bipush #45
    //   53: invokestatic a : (Ljava/lang/String;IC)Z
    //   56: ifeq -> 958
    //   59: iload #4
    //   61: iconst_1
    //   62: iadd
    //   63: istore_3
    //   64: iload_3
    //   65: iconst_2
    //   66: iadd
    //   67: istore #4
    //   69: aload_0
    //   70: iload_3
    //   71: iload #4
    //   73: invokestatic a : (Ljava/lang/String;II)I
    //   76: istore #11
    //   78: aload_0
    //   79: iload #4
    //   81: bipush #84
    //   83: invokestatic a : (Ljava/lang/String;IC)Z
    //   86: istore #13
    //   88: iload #13
    //   90: ifne -> 131
    //   93: aload_0
    //   94: invokevirtual length : ()I
    //   97: iload #4
    //   99: if_icmpgt -> 131
    //   102: new java/util/GregorianCalendar
    //   105: dup
    //   106: iload #9
    //   108: iload #10
    //   110: iconst_1
    //   111: isub
    //   112: iload #11
    //   114: invokespecial <init> : (III)V
    //   117: astore #14
    //   119: aload_1
    //   120: iload #4
    //   122: invokevirtual setIndex : (I)V
    //   125: aload #14
    //   127: invokevirtual getTime : ()Ljava/util/Date;
    //   130: areturn
    //   131: iload #13
    //   133: ifeq -> 936
    //   136: iload #4
    //   138: iconst_1
    //   139: iadd
    //   140: istore #4
    //   142: iload #4
    //   144: iconst_2
    //   145: iadd
    //   146: istore_3
    //   147: aload_0
    //   148: iload #4
    //   150: iload_3
    //   151: invokestatic a : (Ljava/lang/String;II)I
    //   154: istore #6
    //   156: aload_0
    //   157: iload_3
    //   158: bipush #58
    //   160: invokestatic a : (Ljava/lang/String;IC)Z
    //   163: ifeq -> 933
    //   166: iload_3
    //   167: iconst_1
    //   168: iadd
    //   169: istore_3
    //   170: iload_3
    //   171: iconst_2
    //   172: iadd
    //   173: istore #4
    //   175: aload_0
    //   176: iload_3
    //   177: iload #4
    //   179: invokestatic a : (Ljava/lang/String;II)I
    //   182: istore #5
    //   184: iload #4
    //   186: istore_3
    //   187: aload_0
    //   188: iload #4
    //   190: bipush #58
    //   192: invokestatic a : (Ljava/lang/String;IC)Z
    //   195: ifeq -> 203
    //   198: iload #4
    //   200: iconst_1
    //   201: iadd
    //   202: istore_3
    //   203: aload_0
    //   204: invokevirtual length : ()I
    //   207: iload_3
    //   208: if_icmple -> 908
    //   211: aload_0
    //   212: iload_3
    //   213: invokevirtual charAt : (I)C
    //   216: istore #4
    //   218: iload #4
    //   220: bipush #90
    //   222: if_icmpeq -> 908
    //   225: iload #4
    //   227: bipush #43
    //   229: if_icmpeq -> 908
    //   232: iload #4
    //   234: bipush #45
    //   236: if_icmpeq -> 908
    //   239: iload_3
    //   240: iconst_2
    //   241: iadd
    //   242: istore #4
    //   244: aload_0
    //   245: iload_3
    //   246: iload #4
    //   248: invokestatic a : (Ljava/lang/String;II)I
    //   251: istore #7
    //   253: iload #7
    //   255: istore_3
    //   256: iload #7
    //   258: bipush #59
    //   260: if_icmple -> 276
    //   263: iload #7
    //   265: istore_3
    //   266: iload #7
    //   268: bipush #63
    //   270: if_icmpge -> 276
    //   273: bipush #59
    //   275: istore_3
    //   276: aload_0
    //   277: iload #4
    //   279: bipush #46
    //   281: invokestatic a : (Ljava/lang/String;IC)Z
    //   284: ifeq -> 880
    //   287: iload #4
    //   289: iconst_1
    //   290: iadd
    //   291: istore #7
    //   293: aload_0
    //   294: iload #7
    //   296: iconst_1
    //   297: iadd
    //   298: invokestatic a : (Ljava/lang/String;I)I
    //   301: istore #8
    //   303: iload #8
    //   305: iload #7
    //   307: iconst_3
    //   308: iadd
    //   309: invokestatic min : (II)I
    //   312: istore #12
    //   314: aload_0
    //   315: iload #7
    //   317: iload #12
    //   319: invokestatic a : (Ljava/lang/String;II)I
    //   322: istore #4
    //   324: iload #12
    //   326: iload #7
    //   328: isub
    //   329: tableswitch default -> 967, 1 -> 495, 2 -> 485
    //   352: aload_0
    //   353: invokevirtual length : ()I
    //   356: iload_3
    //   357: if_icmpgt -> 505
    //   360: new java/lang/IllegalArgumentException
    //   363: dup
    //   364: ldc 'No time zone indicator'
    //   366: invokespecial <init> : (Ljava/lang/String;)V
    //   369: athrow
    //   370: astore #14
    //   372: aload_0
    //   373: ifnonnull -> 852
    //   376: aconst_null
    //   377: astore_0
    //   378: aload #14
    //   380: invokevirtual getMessage : ()Ljava/lang/String;
    //   383: astore #16
    //   385: aload #16
    //   387: ifnull -> 402
    //   390: aload #16
    //   392: astore #15
    //   394: aload #16
    //   396: invokevirtual isEmpty : ()Z
    //   399: ifeq -> 435
    //   402: new java/lang/StringBuilder
    //   405: dup
    //   406: invokespecial <init> : ()V
    //   409: ldc '('
    //   411: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: aload #14
    //   416: invokevirtual getClass : ()Ljava/lang/Class;
    //   419: invokevirtual getName : ()Ljava/lang/String;
    //   422: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   425: ldc ')'
    //   427: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: invokevirtual toString : ()Ljava/lang/String;
    //   433: astore #15
    //   435: new java/text/ParseException
    //   438: dup
    //   439: new java/lang/StringBuilder
    //   442: dup
    //   443: invokespecial <init> : ()V
    //   446: ldc 'Failed to parse date ['
    //   448: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: aload_0
    //   452: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: ldc ']: '
    //   457: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   460: aload #15
    //   462: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: invokevirtual toString : ()Ljava/lang/String;
    //   468: aload_1
    //   469: invokevirtual getIndex : ()I
    //   472: invokespecial <init> : (Ljava/lang/String;I)V
    //   475: astore_0
    //   476: aload_0
    //   477: aload #14
    //   479: invokevirtual initCause : (Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   482: pop
    //   483: aload_0
    //   484: athrow
    //   485: iload #4
    //   487: bipush #10
    //   489: imul
    //   490: istore #4
    //   492: goto -> 967
    //   495: iload #4
    //   497: bipush #100
    //   499: imul
    //   500: istore #4
    //   502: goto -> 967
    //   505: aload_0
    //   506: iload_3
    //   507: invokevirtual charAt : (I)C
    //   510: istore_2
    //   511: iload_2
    //   512: bipush #90
    //   514: if_icmpne -> 992
    //   517: getstatic epm.b : Ljava/util/TimeZone;
    //   520: astore #14
    //   522: iload_3
    //   523: iconst_1
    //   524: iadd
    //   525: istore_3
    //   526: new java/util/GregorianCalendar
    //   529: dup
    //   530: aload #14
    //   532: invokespecial <init> : (Ljava/util/TimeZone;)V
    //   535: astore #14
    //   537: aload #14
    //   539: iconst_0
    //   540: invokevirtual setLenient : (Z)V
    //   543: aload #14
    //   545: iconst_1
    //   546: iload #9
    //   548: invokevirtual set : (II)V
    //   551: aload #14
    //   553: iconst_2
    //   554: iload #10
    //   556: iconst_1
    //   557: isub
    //   558: invokevirtual set : (II)V
    //   561: aload #14
    //   563: iconst_5
    //   564: iload #11
    //   566: invokevirtual set : (II)V
    //   569: aload #14
    //   571: bipush #11
    //   573: iload #7
    //   575: invokevirtual set : (II)V
    //   578: aload #14
    //   580: bipush #12
    //   582: iload #6
    //   584: invokevirtual set : (II)V
    //   587: aload #14
    //   589: bipush #13
    //   591: iload #5
    //   593: invokevirtual set : (II)V
    //   596: aload #14
    //   598: bipush #14
    //   600: iload #4
    //   602: invokevirtual set : (II)V
    //   605: aload_1
    //   606: iload_3
    //   607: invokevirtual setIndex : (I)V
    //   610: aload #14
    //   612: invokevirtual getTime : ()Ljava/util/Date;
    //   615: areturn
    //   616: aload_0
    //   617: iload_3
    //   618: invokevirtual substring : (I)Ljava/lang/String;
    //   621: astore #14
    //   623: aload #14
    //   625: invokevirtual length : ()I
    //   628: iconst_5
    //   629: if_icmplt -> 672
    //   632: iload_3
    //   633: aload #14
    //   635: invokevirtual length : ()I
    //   638: iadd
    //   639: istore #8
    //   641: ldc '+0000'
    //   643: aload #14
    //   645: invokevirtual equals : (Ljava/lang/Object;)Z
    //   648: ifne -> 661
    //   651: ldc '+00:00'
    //   653: aload #14
    //   655: invokevirtual equals : (Ljava/lang/Object;)Z
    //   658: ifeq -> 697
    //   661: getstatic epm.b : Ljava/util/TimeZone;
    //   664: astore #14
    //   666: iload #8
    //   668: istore_3
    //   669: goto -> 526
    //   672: new java/lang/StringBuilder
    //   675: dup
    //   676: invokespecial <init> : ()V
    //   679: aload #14
    //   681: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: ldc '00'
    //   686: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   689: invokevirtual toString : ()Ljava/lang/String;
    //   692: astore #14
    //   694: goto -> 632
    //   697: new java/lang/StringBuilder
    //   700: dup
    //   701: invokespecial <init> : ()V
    //   704: ldc 'GMT'
    //   706: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   709: aload #14
    //   711: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   714: invokevirtual toString : ()Ljava/lang/String;
    //   717: astore #16
    //   719: aload #16
    //   721: invokestatic getTimeZone : (Ljava/lang/String;)Ljava/util/TimeZone;
    //   724: astore #15
    //   726: aload #15
    //   728: invokevirtual getID : ()Ljava/lang/String;
    //   731: astore #17
    //   733: aload #15
    //   735: astore #14
    //   737: iload #8
    //   739: istore_3
    //   740: aload #17
    //   742: aload #16
    //   744: invokevirtual equals : (Ljava/lang/Object;)Z
    //   747: ifne -> 526
    //   750: aload #15
    //   752: astore #14
    //   754: iload #8
    //   756: istore_3
    //   757: aload #17
    //   759: ldc ':'
    //   761: ldc ''
    //   763: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   766: aload #16
    //   768: invokevirtual equals : (Ljava/lang/Object;)Z
    //   771: ifne -> 526
    //   774: new java/lang/IndexOutOfBoundsException
    //   777: dup
    //   778: new java/lang/StringBuilder
    //   781: dup
    //   782: invokespecial <init> : ()V
    //   785: ldc 'Mismatching time zone indicator: '
    //   787: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   790: aload #16
    //   792: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   795: ldc ' given, resolves to '
    //   797: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   800: aload #15
    //   802: invokevirtual getID : ()Ljava/lang/String;
    //   805: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   808: invokevirtual toString : ()Ljava/lang/String;
    //   811: invokespecial <init> : (Ljava/lang/String;)V
    //   814: athrow
    //   815: new java/lang/IndexOutOfBoundsException
    //   818: dup
    //   819: new java/lang/StringBuilder
    //   822: dup
    //   823: invokespecial <init> : ()V
    //   826: ldc 'Invalid time zone indicator ''
    //   828: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   831: iload_2
    //   832: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   835: ldc '''
    //   837: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   840: invokevirtual toString : ()Ljava/lang/String;
    //   843: invokespecial <init> : (Ljava/lang/String;)V
    //   846: athrow
    //   847: astore #14
    //   849: goto -> 372
    //   852: new java/lang/StringBuilder
    //   855: dup
    //   856: invokespecial <init> : ()V
    //   859: bipush #34
    //   861: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   864: aload_0
    //   865: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   868: ldc '''
    //   870: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   873: invokevirtual toString : ()Ljava/lang/String;
    //   876: astore_0
    //   877: goto -> 378
    //   880: iload #6
    //   882: istore #7
    //   884: iload_3
    //   885: istore #6
    //   887: iload #4
    //   889: istore_3
    //   890: iload #5
    //   892: istore #8
    //   894: iconst_0
    //   895: istore #4
    //   897: iload #6
    //   899: istore #5
    //   901: iload #8
    //   903: istore #6
    //   905: goto -> 352
    //   908: iload #5
    //   910: istore #7
    //   912: iload #6
    //   914: istore #8
    //   916: iconst_0
    //   917: istore #4
    //   919: iconst_0
    //   920: istore #5
    //   922: iload #7
    //   924: istore #6
    //   926: iload #8
    //   928: istore #7
    //   930: goto -> 352
    //   933: goto -> 170
    //   936: iconst_0
    //   937: istore #8
    //   939: iconst_0
    //   940: istore #5
    //   942: iconst_0
    //   943: istore #6
    //   945: iconst_0
    //   946: istore #7
    //   948: iload #4
    //   950: istore_3
    //   951: iload #8
    //   953: istore #4
    //   955: goto -> 352
    //   958: iload #4
    //   960: istore_3
    //   961: goto -> 64
    //   964: goto -> 34
    //   967: iload #6
    //   969: istore #7
    //   971: iload_3
    //   972: istore #6
    //   974: iload #8
    //   976: istore_3
    //   977: iload #5
    //   979: istore #8
    //   981: iload #6
    //   983: istore #5
    //   985: iload #8
    //   987: istore #6
    //   989: goto -> 352
    //   992: iload_2
    //   993: bipush #43
    //   995: if_icmpeq -> 616
    //   998: iload_2
    //   999: bipush #45
    //   1001: if_icmpne -> 815
    //   1004: goto -> 616
    //   1007: astore #14
    //   1009: goto -> 372
    // Exception table:
    //   from	to	target	type
    //   0	6	370	java/lang/IndexOutOfBoundsException
    //   0	6	1007	java/lang/NumberFormatException
    //   0	6	847	java/lang/IllegalArgumentException
    //   11	30	370	java/lang/IndexOutOfBoundsException
    //   11	30	1007	java/lang/NumberFormatException
    //   11	30	847	java/lang/IllegalArgumentException
    //   39	59	370	java/lang/IndexOutOfBoundsException
    //   39	59	1007	java/lang/NumberFormatException
    //   39	59	847	java/lang/IllegalArgumentException
    //   69	88	370	java/lang/IndexOutOfBoundsException
    //   69	88	1007	java/lang/NumberFormatException
    //   69	88	847	java/lang/IllegalArgumentException
    //   93	131	370	java/lang/IndexOutOfBoundsException
    //   93	131	1007	java/lang/NumberFormatException
    //   93	131	847	java/lang/IllegalArgumentException
    //   147	166	370	java/lang/IndexOutOfBoundsException
    //   147	166	1007	java/lang/NumberFormatException
    //   147	166	847	java/lang/IllegalArgumentException
    //   175	184	370	java/lang/IndexOutOfBoundsException
    //   175	184	1007	java/lang/NumberFormatException
    //   175	184	847	java/lang/IllegalArgumentException
    //   187	198	370	java/lang/IndexOutOfBoundsException
    //   187	198	1007	java/lang/NumberFormatException
    //   187	198	847	java/lang/IllegalArgumentException
    //   203	218	370	java/lang/IndexOutOfBoundsException
    //   203	218	1007	java/lang/NumberFormatException
    //   203	218	847	java/lang/IllegalArgumentException
    //   244	253	370	java/lang/IndexOutOfBoundsException
    //   244	253	1007	java/lang/NumberFormatException
    //   244	253	847	java/lang/IllegalArgumentException
    //   276	287	370	java/lang/IndexOutOfBoundsException
    //   276	287	1007	java/lang/NumberFormatException
    //   276	287	847	java/lang/IllegalArgumentException
    //   293	324	370	java/lang/IndexOutOfBoundsException
    //   293	324	1007	java/lang/NumberFormatException
    //   293	324	847	java/lang/IllegalArgumentException
    //   352	370	370	java/lang/IndexOutOfBoundsException
    //   352	370	1007	java/lang/NumberFormatException
    //   352	370	847	java/lang/IllegalArgumentException
    //   505	511	370	java/lang/IndexOutOfBoundsException
    //   505	511	1007	java/lang/NumberFormatException
    //   505	511	847	java/lang/IllegalArgumentException
    //   517	522	370	java/lang/IndexOutOfBoundsException
    //   517	522	1007	java/lang/NumberFormatException
    //   517	522	847	java/lang/IllegalArgumentException
    //   526	616	370	java/lang/IndexOutOfBoundsException
    //   526	616	1007	java/lang/NumberFormatException
    //   526	616	847	java/lang/IllegalArgumentException
    //   616	632	370	java/lang/IndexOutOfBoundsException
    //   616	632	1007	java/lang/NumberFormatException
    //   616	632	847	java/lang/IllegalArgumentException
    //   632	661	370	java/lang/IndexOutOfBoundsException
    //   632	661	1007	java/lang/NumberFormatException
    //   632	661	847	java/lang/IllegalArgumentException
    //   661	666	370	java/lang/IndexOutOfBoundsException
    //   661	666	1007	java/lang/NumberFormatException
    //   661	666	847	java/lang/IllegalArgumentException
    //   672	694	370	java/lang/IndexOutOfBoundsException
    //   672	694	1007	java/lang/NumberFormatException
    //   672	694	847	java/lang/IllegalArgumentException
    //   697	733	370	java/lang/IndexOutOfBoundsException
    //   697	733	1007	java/lang/NumberFormatException
    //   697	733	847	java/lang/IllegalArgumentException
    //   740	750	370	java/lang/IndexOutOfBoundsException
    //   740	750	1007	java/lang/NumberFormatException
    //   740	750	847	java/lang/IllegalArgumentException
    //   757	815	370	java/lang/IndexOutOfBoundsException
    //   757	815	1007	java/lang/NumberFormatException
    //   757	815	847	java/lang/IllegalArgumentException
    //   815	847	370	java/lang/IndexOutOfBoundsException
    //   815	847	1007	java/lang/NumberFormatException
    //   815	847	847	java/lang/IllegalArgumentException
  }
  
  private static void a(StringBuilder paramStringBuilder, int paramInt1, int paramInt2) {
    String str = Integer.toString(paramInt1);
    for (paramInt1 = paramInt2 - str.length(); paramInt1 > 0; paramInt1--)
      paramStringBuilder.append('0'); 
    paramStringBuilder.append(str);
  }
  
  private static boolean a(String paramString, int paramInt, char paramChar) {
    return (paramInt < paramString.length() && paramString.charAt(paramInt) == paramChar);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */