import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;

public class dsy {
  public static long a(String paramString) {
    try {
      return DateUtils.parseDate(paramString).getTime();
    } catch (DateParseException dateParseException) {
      return 0L;
    } 
  }
  
  public static dps a(dry paramdry) {
    // Byte code:
    //   0: invokestatic currentTimeMillis : ()J
    //   3: lstore #13
    //   5: aload_0
    //   6: getfield c : Ljava/util/Map;
    //   9: astore #15
    //   11: lconst_0
    //   12: lstore #7
    //   14: lconst_0
    //   15: lstore #5
    //   17: lconst_0
    //   18: lstore_3
    //   19: aload #15
    //   21: ldc 'Date'
    //   23: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   28: checkcast java/lang/String
    //   31: astore #16
    //   33: aload #16
    //   35: ifnull -> 45
    //   38: aload #16
    //   40: invokestatic a : (Ljava/lang/String;)J
    //   43: lstore #7
    //   45: aload #15
    //   47: ldc 'Cache-Control'
    //   49: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   54: checkcast java/lang/String
    //   57: astore #16
    //   59: aload #16
    //   61: ifnull -> 465
    //   64: aload #16
    //   66: ldc ','
    //   68: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   71: astore #16
    //   73: iconst_0
    //   74: istore_2
    //   75: iconst_0
    //   76: istore_1
    //   77: lconst_0
    //   78: lstore_3
    //   79: lconst_0
    //   80: lstore #5
    //   82: iload_2
    //   83: aload #16
    //   85: arraylength
    //   86: if_icmpge -> 227
    //   89: aload #16
    //   91: iload_2
    //   92: aaload
    //   93: invokevirtual trim : ()Ljava/lang/String;
    //   96: astore #17
    //   98: aload #17
    //   100: ldc 'no-cache'
    //   102: invokevirtual equals : (Ljava/lang/Object;)Z
    //   105: ifne -> 118
    //   108: aload #17
    //   110: ldc 'no-store'
    //   112: invokevirtual equals : (Ljava/lang/Object;)Z
    //   115: ifeq -> 120
    //   118: aconst_null
    //   119: areturn
    //   120: aload #17
    //   122: ldc 'max-age='
    //   124: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   127: ifeq -> 159
    //   130: aload #17
    //   132: bipush #8
    //   134: invokevirtual substring : (I)Ljava/lang/String;
    //   137: invokestatic parseLong : (Ljava/lang/String;)J
    //   140: lstore #11
    //   142: lload_3
    //   143: lstore #9
    //   145: iload_2
    //   146: iconst_1
    //   147: iadd
    //   148: istore_2
    //   149: lload #9
    //   151: lstore_3
    //   152: lload #11
    //   154: lstore #5
    //   156: goto -> 82
    //   159: aload #17
    //   161: ldc 'stale-while-revalidate='
    //   163: invokevirtual startsWith : (Ljava/lang/String;)Z
    //   166: ifeq -> 188
    //   169: aload #17
    //   171: bipush #23
    //   173: invokevirtual substring : (I)Ljava/lang/String;
    //   176: invokestatic parseLong : (Ljava/lang/String;)J
    //   179: lstore #9
    //   181: lload #5
    //   183: lstore #11
    //   185: goto -> 145
    //   188: aload #17
    //   190: ldc 'must-revalidate'
    //   192: invokevirtual equals : (Ljava/lang/Object;)Z
    //   195: ifne -> 215
    //   198: lload_3
    //   199: lstore #9
    //   201: lload #5
    //   203: lstore #11
    //   205: aload #17
    //   207: ldc 'proxy-revalidate'
    //   209: invokevirtual equals : (Ljava/lang/Object;)Z
    //   212: ifeq -> 145
    //   215: iconst_1
    //   216: istore_1
    //   217: lload_3
    //   218: lstore #9
    //   220: lload #5
    //   222: lstore #11
    //   224: goto -> 145
    //   227: iconst_1
    //   228: istore_2
    //   229: aload #15
    //   231: ldc 'Expires'
    //   233: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   238: checkcast java/lang/String
    //   241: astore #16
    //   243: aload #16
    //   245: ifnull -> 459
    //   248: aload #16
    //   250: invokestatic a : (Ljava/lang/String;)J
    //   253: lstore #11
    //   255: aload #15
    //   257: ldc 'Last-Modified'
    //   259: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   264: checkcast java/lang/String
    //   267: astore #16
    //   269: aload #16
    //   271: ifnull -> 453
    //   274: aload #16
    //   276: invokestatic a : (Ljava/lang/String;)J
    //   279: lstore #9
    //   281: aload #15
    //   283: ldc 'ETag'
    //   285: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   290: checkcast java/lang/String
    //   293: astore #16
    //   295: iload_2
    //   296: ifeq -> 391
    //   299: lload #13
    //   301: ldc2_w 1000
    //   304: lload #5
    //   306: lmul
    //   307: ladd
    //   308: lstore #5
    //   310: iload_1
    //   311: ifeq -> 379
    //   314: lload #5
    //   316: lstore_3
    //   317: new dps
    //   320: dup
    //   321: invokespecial <init> : ()V
    //   324: astore #17
    //   326: aload #17
    //   328: aload_0
    //   329: getfield b : [B
    //   332: putfield a : [B
    //   335: aload #17
    //   337: aload #16
    //   339: putfield b : Ljava/lang/String;
    //   342: aload #17
    //   344: lload #5
    //   346: putfield f : J
    //   349: aload #17
    //   351: lload_3
    //   352: putfield e : J
    //   355: aload #17
    //   357: lload #7
    //   359: putfield c : J
    //   362: aload #17
    //   364: lload #9
    //   366: putfield d : J
    //   369: aload #17
    //   371: aload #15
    //   373: putfield g : Ljava/util/Map;
    //   376: aload #17
    //   378: areturn
    //   379: ldc2_w 1000
    //   382: lload_3
    //   383: lmul
    //   384: lload #5
    //   386: ladd
    //   387: lstore_3
    //   388: goto -> 317
    //   391: lload #7
    //   393: lconst_0
    //   394: lcmp
    //   395: ifle -> 445
    //   398: lload #11
    //   400: lload #7
    //   402: lcmp
    //   403: iflt -> 445
    //   406: lload #11
    //   408: lload #7
    //   410: lsub
    //   411: lload #13
    //   413: ladd
    //   414: lstore_3
    //   415: lload_3
    //   416: lstore #5
    //   418: goto -> 317
    //   421: astore #17
    //   423: lload_3
    //   424: lstore #9
    //   426: lload #5
    //   428: lstore #11
    //   430: goto -> 145
    //   433: astore #17
    //   435: lload_3
    //   436: lstore #9
    //   438: lload #5
    //   440: lstore #11
    //   442: goto -> 145
    //   445: lconst_0
    //   446: lstore_3
    //   447: lconst_0
    //   448: lstore #5
    //   450: goto -> 317
    //   453: lconst_0
    //   454: lstore #9
    //   456: goto -> 281
    //   459: lconst_0
    //   460: lstore #11
    //   462: goto -> 255
    //   465: iconst_0
    //   466: istore_1
    //   467: iconst_0
    //   468: istore_2
    //   469: goto -> 229
    // Exception table:
    //   from	to	target	type
    //   130	142	433	java/lang/Exception
    //   169	181	421	java/lang/Exception
  }
  
  public static String a(Map<String, String> paramMap) {
    return a(paramMap, "ISO-8859-1");
  }
  
  public static String a(Map<String, String> paramMap, String paramString) {
    String str2 = paramMap.get("Content-Type");
    String str1 = paramString;
    if (str2 != null) {
      String[] arrayOfString = str2.split(";");
      for (int i = 1;; i++) {
        str1 = paramString;
        if (i < arrayOfString.length) {
          String[] arrayOfString1 = arrayOfString[i].trim().split("=");
          if (arrayOfString1.length == 2 && arrayOfString1[0].equals("charset"))
            return arrayOfString1[1]; 
        } else {
          return str1;
        } 
      } 
    } 
    return str1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */