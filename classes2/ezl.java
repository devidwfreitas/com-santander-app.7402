import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;

final class ezl {
  private static final int a = 0;
  
  private static final int b = 1;
  
  private static final int c = 2;
  
  private static final int d = 0;
  
  private static final int e = 1;
  
  private static final int f = 2;
  
  private static final int g = 3;
  
  private static final int h = 900;
  
  private static final int i = 901;
  
  private static final int j = 902;
  
  private static final int k = 913;
  
  private static final int l = 924;
  
  private static final int m = 925;
  
  private static final int n = 926;
  
  private static final int o = 927;
  
  private static final byte[] p = new byte[] { 
      48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 
      38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 
      43, 37, 42, 61, 94, 0, 32, 0, 0, 0 };
  
  private static final byte[] q = new byte[] { 
      59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 
      33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 
      34, 124, 42, 40, 41, 63, 123, 125, 39, 0 };
  
  private static final byte[] r = new byte[128];
  
  private static final byte[] s = new byte[128];
  
  private static final Charset t = Charset.forName("ISO-8859-1");
  
  static {
    Arrays.fill(r, (byte)-1);
    byte b;
    for (b = 0; b < p.length; b = (byte)(b + 1)) {
      byte b1 = p[b];
      if (b1 > 0)
        r[b1] = b; 
    } 
    Arrays.fill(s, (byte)-1);
    for (b = bool; b < q.length; b = (byte)(b + 1)) {
      byte b1 = q[b];
      if (b1 > 0)
        s[b1] = b; 
    } 
  }
  
  private static int a(CharSequence paramCharSequence, int paramInt) {
    int i = 0;
    int j = 0;
    int k = paramCharSequence.length();
    if (paramInt < k) {
      char c = paramCharSequence.charAt(paramInt);
      int m = paramInt;
      paramInt = j;
      while (true) {
        i = paramInt;
        if (a(c)) {
          i = paramInt;
          if (m < k) {
            i = paramInt + 1;
            j = m + 1;
            paramInt = i;
            m = j;
            if (j < k) {
              c = paramCharSequence.charAt(j);
              paramInt = i;
              m = j;
            } 
            continue;
          } 
        } 
        break;
      } 
    } 
    return i;
  }
  
  private static int a(CharSequence paramCharSequence, int paramInt1, int paramInt2, StringBuilder paramStringBuilder, int paramInt3) {
    // Byte code:
    //   0: new java/lang/StringBuilder
    //   3: dup
    //   4: iload_2
    //   5: invokespecial <init> : (I)V
    //   8: astore #8
    //   10: iconst_0
    //   11: istore #6
    //   13: aload_0
    //   14: iload_1
    //   15: iload #6
    //   17: iadd
    //   18: invokeinterface charAt : (I)C
    //   23: istore #5
    //   25: iload #4
    //   27: tableswitch default -> 52, 0 -> 151, 1 -> 260, 2 -> 378
    //   52: iload #5
    //   54: invokestatic e : (C)Z
    //   57: ifeq -> 512
    //   60: aload #8
    //   62: getstatic ezl.s : [B
    //   65: iload #5
    //   67: baload
    //   68: i2c
    //   69: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   72: pop
    //   73: iload #6
    //   75: iconst_1
    //   76: iadd
    //   77: istore #7
    //   79: iload #7
    //   81: istore #6
    //   83: iload #7
    //   85: iload_2
    //   86: if_icmplt -> 13
    //   89: aload #8
    //   91: invokevirtual length : ()I
    //   94: istore #7
    //   96: iconst_0
    //   97: istore_1
    //   98: iconst_0
    //   99: istore_2
    //   100: iload_1
    //   101: iload #7
    //   103: if_icmpge -> 542
    //   106: iload_1
    //   107: iconst_2
    //   108: irem
    //   109: ifeq -> 526
    //   112: iconst_1
    //   113: istore #6
    //   115: iload #6
    //   117: ifeq -> 532
    //   120: iload_2
    //   121: bipush #30
    //   123: imul
    //   124: aload #8
    //   126: iload_1
    //   127: invokevirtual charAt : (I)C
    //   130: iadd
    //   131: i2c
    //   132: istore #5
    //   134: aload_3
    //   135: iload #5
    //   137: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   140: pop
    //   141: iload #5
    //   143: istore_2
    //   144: iload_1
    //   145: iconst_1
    //   146: iadd
    //   147: istore_1
    //   148: goto -> 100
    //   151: iload #5
    //   153: invokestatic b : (C)Z
    //   156: ifeq -> 192
    //   159: iload #5
    //   161: bipush #32
    //   163: if_icmpne -> 177
    //   166: aload #8
    //   168: bipush #26
    //   170: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   173: pop
    //   174: goto -> 73
    //   177: aload #8
    //   179: iload #5
    //   181: bipush #65
    //   183: isub
    //   184: i2c
    //   185: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: goto -> 73
    //   192: iload #5
    //   194: invokestatic c : (C)Z
    //   197: ifeq -> 214
    //   200: aload #8
    //   202: bipush #27
    //   204: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   207: pop
    //   208: iconst_1
    //   209: istore #4
    //   211: goto -> 13
    //   214: iload #5
    //   216: invokestatic d : (C)Z
    //   219: ifeq -> 236
    //   222: iconst_2
    //   223: istore #4
    //   225: aload #8
    //   227: bipush #28
    //   229: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   232: pop
    //   233: goto -> 13
    //   236: aload #8
    //   238: bipush #29
    //   240: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   243: pop
    //   244: aload #8
    //   246: getstatic ezl.s : [B
    //   249: iload #5
    //   251: baload
    //   252: i2c
    //   253: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   256: pop
    //   257: goto -> 73
    //   260: iload #5
    //   262: invokestatic c : (C)Z
    //   265: ifeq -> 301
    //   268: iload #5
    //   270: bipush #32
    //   272: if_icmpne -> 286
    //   275: aload #8
    //   277: bipush #26
    //   279: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   282: pop
    //   283: goto -> 73
    //   286: aload #8
    //   288: iload #5
    //   290: bipush #97
    //   292: isub
    //   293: i2c
    //   294: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   297: pop
    //   298: goto -> 73
    //   301: iload #5
    //   303: invokestatic b : (C)Z
    //   306: ifeq -> 332
    //   309: aload #8
    //   311: bipush #27
    //   313: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   316: pop
    //   317: aload #8
    //   319: iload #5
    //   321: bipush #65
    //   323: isub
    //   324: i2c
    //   325: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   328: pop
    //   329: goto -> 73
    //   332: iload #5
    //   334: invokestatic d : (C)Z
    //   337: ifeq -> 354
    //   340: iconst_2
    //   341: istore #4
    //   343: aload #8
    //   345: bipush #28
    //   347: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   350: pop
    //   351: goto -> 13
    //   354: aload #8
    //   356: bipush #29
    //   358: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   361: pop
    //   362: aload #8
    //   364: getstatic ezl.s : [B
    //   367: iload #5
    //   369: baload
    //   370: i2c
    //   371: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   374: pop
    //   375: goto -> 73
    //   378: iload #5
    //   380: invokestatic d : (C)Z
    //   383: ifeq -> 402
    //   386: aload #8
    //   388: getstatic ezl.r : [B
    //   391: iload #5
    //   393: baload
    //   394: i2c
    //   395: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   398: pop
    //   399: goto -> 73
    //   402: iload #5
    //   404: invokestatic b : (C)Z
    //   407: ifeq -> 424
    //   410: aload #8
    //   412: bipush #28
    //   414: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   417: pop
    //   418: iconst_0
    //   419: istore #4
    //   421: goto -> 13
    //   424: iload #5
    //   426: invokestatic c : (C)Z
    //   429: ifeq -> 446
    //   432: aload #8
    //   434: bipush #27
    //   436: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   439: pop
    //   440: iconst_1
    //   441: istore #4
    //   443: goto -> 13
    //   446: iload_1
    //   447: iload #6
    //   449: iadd
    //   450: iconst_1
    //   451: iadd
    //   452: iload_2
    //   453: if_icmpge -> 488
    //   456: aload_0
    //   457: iload_1
    //   458: iload #6
    //   460: iadd
    //   461: iconst_1
    //   462: iadd
    //   463: invokeinterface charAt : (I)C
    //   468: invokestatic e : (C)Z
    //   471: ifeq -> 488
    //   474: iconst_3
    //   475: istore #4
    //   477: aload #8
    //   479: bipush #25
    //   481: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   484: pop
    //   485: goto -> 13
    //   488: aload #8
    //   490: bipush #29
    //   492: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   495: pop
    //   496: aload #8
    //   498: getstatic ezl.s : [B
    //   501: iload #5
    //   503: baload
    //   504: i2c
    //   505: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   508: pop
    //   509: goto -> 73
    //   512: aload #8
    //   514: bipush #29
    //   516: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   519: pop
    //   520: iconst_0
    //   521: istore #4
    //   523: goto -> 13
    //   526: iconst_0
    //   527: istore #6
    //   529: goto -> 115
    //   532: aload #8
    //   534: iload_1
    //   535: invokevirtual charAt : (I)C
    //   538: istore_2
    //   539: goto -> 144
    //   542: iload #7
    //   544: iconst_2
    //   545: irem
    //   546: ifeq -> 562
    //   549: aload_3
    //   550: iload_2
    //   551: bipush #30
    //   553: imul
    //   554: bipush #29
    //   556: iadd
    //   557: i2c
    //   558: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   561: pop
    //   562: iload #4
    //   564: ireturn
  }
  
  private static int a(String paramString, int paramInt, Charset paramCharset) {
    CharsetEncoder charsetEncoder = paramCharset.newEncoder();
    int j = paramString.length();
    int i;
    for (i = paramInt; i < j; i++) {
      char c = paramString.charAt(i);
      int k = 0;
      while (true) {
        int m = k;
        if (k < 13) {
          m = k;
          if (a(c)) {
            m = i + ++k;
            if (m >= j) {
              m = k;
            } else {
              c = paramString.charAt(m);
              continue;
            } 
          } 
        } 
        if (m >= 13)
          return i - paramInt; 
        c = paramString.charAt(i);
        if (!charsetEncoder.canEncode(c))
          throw new eqr("Non-encodable character detected: " + c + " (Unicode: " + c + ')'); 
        break;
      } 
    } 
    return i - paramInt;
  }
  
  static String a(String paramString, ezh paramezh, Charset paramCharset) {
    byte[] arrayOfByte;
    Charset charset;
    StringBuilder stringBuilder = new StringBuilder(paramString.length());
    if (paramCharset == null) {
      charset = t;
    } else {
      charset = paramCharset;
      if (!t.equals(paramCharset)) {
        etv etv = etv.getCharacterSetECIByName(paramCharset.name());
        charset = paramCharset;
        if (etv != null) {
          a(etv.getValue(), stringBuilder);
          charset = paramCharset;
        } 
      } 
    } 
    int m = paramString.length();
    if (paramezh == ezh.TEXT) {
      a(paramString, 0, m, stringBuilder, 0);
      return stringBuilder.toString();
    } 
    if (paramezh == ezh.BYTE) {
      arrayOfByte = paramString.getBytes(charset);
      a(arrayOfByte, 0, arrayOfByte.length, 1, stringBuilder);
      return stringBuilder.toString();
    } 
    if (paramezh == ezh.NUMERIC) {
      stringBuilder.append('Ά');
      a((String)arrayOfByte, 0, m, stringBuilder);
      return stringBuilder.toString();
    } 
    int i = 0;
    int j = 0;
    int k = 0;
    while (true) {
      if (k < m) {
        int n = a((CharSequence)arrayOfByte, k);
        if (n >= 13) {
          stringBuilder.append('Ά');
          i = 2;
          a((String)arrayOfByte, k, n, stringBuilder);
          n = k + n;
          j = 0;
        } else {
          int i1 = b((CharSequence)arrayOfByte, k);
          if (i1 >= 5 || n == m) {
            n = i;
            if (i != 0) {
              stringBuilder.append('΄');
              n = 0;
              j = 0;
            } 
            j = a((CharSequence)arrayOfByte, k, i1, stringBuilder, j);
            k += i1;
            i = n;
            n = k;
          } else {
            i1 = a((String)arrayOfByte, k, charset);
            n = i1;
            if (i1 == 0)
              n = 1; 
            byte[] arrayOfByte1 = arrayOfByte.substring(k, k + n).getBytes(charset);
            if (arrayOfByte1.length == 1 && i == 0) {
              a(arrayOfByte1, 0, 1, 0, stringBuilder);
            } else {
              a(arrayOfByte1, 0, arrayOfByte1.length, i, stringBuilder);
              i = 1;
              j = 0;
            } 
            n += k;
          } 
        } 
        k = n;
        continue;
      } 
      return stringBuilder.toString();
    } 
  }
  
  private static void a(int paramInt, StringBuilder paramStringBuilder) {
    if (paramInt >= 0 && paramInt < 900) {
      paramStringBuilder.append('Ο');
      paramStringBuilder.append((char)paramInt);
      return;
    } 
    if (paramInt < 810900) {
      paramStringBuilder.append('Ξ');
      paramStringBuilder.append((char)(paramInt / 900 - 1));
      paramStringBuilder.append((char)(paramInt % 900));
      return;
    } 
    if (paramInt < 811800) {
      paramStringBuilder.append('Ν');
      paramStringBuilder.append((char)(810900 - paramInt));
      return;
    } 
    throw new eqr("ECI number not in valid range from 0..811799, but was " + paramInt);
  }
  
  private static void a(String paramString, int paramInt1, int paramInt2, StringBuilder paramStringBuilder) {
    StringBuilder stringBuilder = new StringBuilder(paramInt2 / 3 + 1);
    BigInteger bigInteger1 = BigInteger.valueOf(900L);
    BigInteger bigInteger2 = BigInteger.valueOf(0L);
    int i;
    for (i = 0; i < paramInt2; i += j) {
      stringBuilder.setLength(0);
      int j = Math.min(44, paramInt2 - i);
      BigInteger bigInteger = new BigInteger('1' + paramString.substring(paramInt1 + i, paramInt1 + i + j));
      while (true) {
        stringBuilder.append((char)bigInteger.mod(bigInteger1).intValue());
        BigInteger bigInteger3 = bigInteger.divide(bigInteger1);
        bigInteger = bigInteger3;
        if (bigInteger3.equals(bigInteger2)) {
          int k;
          for (k = stringBuilder.length() - 1; k >= 0; k--)
            paramStringBuilder.append(stringBuilder.charAt(k)); 
          break;
        } 
      } 
    } 
  }
  
  private static void a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3, StringBuilder paramStringBuilder) {
    int i;
    if (paramInt2 == 1 && paramInt3 == 0) {
      paramStringBuilder.append('Α');
    } else {
      if (paramInt2 % 6 == 0) {
        paramInt3 = 1;
      } else {
        paramInt3 = 0;
      } 
      if (paramInt3 != 0) {
        paramStringBuilder.append('Μ');
      } else {
        paramStringBuilder.append('΅');
      } 
    } 
    if (paramInt2 >= 6) {
      char[] arrayOfChar = new char[5];
      paramInt3 = paramInt1;
      while (true) {
        i = paramInt3;
        if (paramInt1 + paramInt2 - paramInt3 >= 6) {
          long l = 0L;
          for (i = 0; i < 6; i++)
            l = (l << 8L) + (paramArrayOfbyte[paramInt3 + i] & 0xFF); 
          for (i = 0; i < 5; i++) {
            arrayOfChar[i] = (char)(int)(l % 900L);
            l /= 900L;
          } 
          for (i = arrayOfChar.length - 1; i >= 0; i--)
            paramStringBuilder.append(arrayOfChar[i]); 
          paramInt3 += 6;
          continue;
        } 
        break;
      } 
    } else {
      i = paramInt1;
    } 
    while (i < paramInt1 + paramInt2) {
      paramStringBuilder.append((char)(paramArrayOfbyte[i] & 0xFF));
      i++;
    } 
  }
  
  private static boolean a(char paramChar) {
    return (paramChar >= '0' && paramChar <= '9');
  }
  
  private static int b(CharSequence paramCharSequence, int paramInt) {
    int j = paramCharSequence.length();
    int i = paramInt;
    label25: while (true) {
      int k = i;
      if (i < j) {
        char c = paramCharSequence.charAt(i);
        int m = 0;
        for (k = i;; k = i) {
          if (m < 13 && a(c) && k < j) {
            m++;
            i = k + 1;
            if (i < j) {
              c = paramCharSequence.charAt(i);
              k = i;
              continue;
            } 
          } else {
            if (m >= 13)
              return k - paramInt - m; 
            i = k;
            if (m <= 0) {
              if (!f(paramCharSequence.charAt(k)))
                return k - paramInt; 
              i = k + 1;
              continue label25;
            } 
            continue label25;
          } 
        } 
        break;
      } 
      continue;
    } 
  }
  
  private static boolean b(char paramChar) {
    return (paramChar == ' ' || (paramChar >= 'A' && paramChar <= 'Z'));
  }
  
  private static boolean c(char paramChar) {
    return (paramChar == ' ' || (paramChar >= 'a' && paramChar <= 'z'));
  }
  
  private static boolean d(char paramChar) {
    return (r[paramChar] != -1);
  }
  
  private static boolean e(char paramChar) {
    return (s[paramChar] != -1);
  }
  
  private static boolean f(char paramChar) {
    return (paramChar == '\t' || paramChar == '\n' || paramChar == '\r' || (paramChar >= ' ' && paramChar <= '~'));
  }
  
  static {
    boolean bool = false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */