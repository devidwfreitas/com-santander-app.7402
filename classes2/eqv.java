public final class eqv {
  private static final String[] a = new String[] { 
      "CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", 
      "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", 
      "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", 
      "CTRL_DL", "CTRL_BS" };
  
  private static final String[] b = new String[] { 
      "CTRL_PS", " ", "a", "b", "c", "d", "e", "f", "g", "h", 
      "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", 
      "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", 
      "CTRL_DL", "CTRL_BS" };
  
  private static final String[] c = new String[] { 
      "CTRL_PS", " ", "\001", "\002", "\003", "\004", "\005", "\006", "\007", "\b", 
      "\t", "\n", "\013", "\f", "\r", "\033", "\034", "\035", "\036", "\037", 
      "@", "\\", "^", "_", "`", "|", "~", "", "CTRL_LL", "CTRL_UL", 
      "CTRL_PL", "CTRL_BS" };
  
  private static final String[] d = new String[] { 
      "", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", 
      "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", 
      "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", 
      "}", "CTRL_UL" };
  
  private static final String[] e = new String[] { 
      "CTRL_PS", " ", "0", "1", "2", "3", "4", "5", "6", "7", 
      "8", "9", ",", ".", "CTRL_UL", "CTRL_US" };
  
  private eqs f;
  
  private static int a(int paramInt, boolean paramBoolean) {
    if (paramBoolean) {
      byte b1 = 88;
      return (b1 + paramInt * 16) * paramInt;
    } 
    byte b = 112;
    return (b + paramInt * 16) * paramInt;
  }
  
  private static int a(boolean[] paramArrayOfboolean, int paramInt1, int paramInt2) {
    int i = 0;
    int j;
    for (j = paramInt1; j < paramInt1 + paramInt2; j++) {
      int k = i << 1;
      i = k;
      if (paramArrayOfboolean[j])
        i = k | 0x1; 
    } 
    return i;
  }
  
  private static eqx a(char paramChar) {
    switch (paramChar) {
      default:
        return eqx.UPPER;
      case 'L':
        return eqx.LOWER;
      case 'P':
        return eqx.PUNCT;
      case 'M':
        return eqx.MIXED;
      case 'D':
        return eqx.DIGIT;
      case 'B':
        break;
    } 
    return eqx.BINARY;
  }
  
  private static String a(eqx parameqx, int paramInt) {
    switch (eqw.a[parameqx.ordinal()]) {
      default:
        throw new IllegalStateException("Bad table");
      case 1:
        return a[paramInt];
      case 2:
        return b[paramInt];
      case 3:
        return c[paramInt];
      case 4:
        return d[paramInt];
      case 5:
        break;
    } 
    return e[paramInt];
  }
  
  public static String a(boolean[] paramArrayOfboolean) {
    return b(paramArrayOfboolean);
  }
  
  private static String b(boolean[] paramArrayOfboolean) {
    int j = paramArrayOfboolean.length;
    eqx eqx1 = eqx.UPPER;
    eqx eqx2 = eqx.UPPER;
    StringBuilder stringBuilder = new StringBuilder(20);
    int i = 0;
    label34: while (true) {
      byte b;
      if (i < j) {
        if (eqx2 == eqx.BINARY) {
          if (j - i >= 5) {
            int k = a(paramArrayOfboolean, i, 5);
            int m = i + 5;
            b = k;
            i = m;
            if (k == 0)
              if (j - m >= 11) {
                b = a(paramArrayOfboolean, m, 11) + 31;
                i = m + 11;
              } else {
                return stringBuilder.toString();
              }  
            k = 0;
            while (true) {
              if (k < b)
                if (j - i < 8) {
                  i = j;
                } else {
                  stringBuilder.append((char)a(paramArrayOfboolean, i, 8));
                  k++;
                  i += 8;
                  continue;
                }  
              eqx2 = eqx1;
              continue label34;
            } 
            break;
          } 
          return stringBuilder.toString();
        } 
      } else {
        return stringBuilder.toString();
      } 
      if (eqx2 == eqx.DIGIT) {
        b = 4;
      } else {
        b = 5;
      } 
      if (j - i >= b) {
        int k = a(paramArrayOfboolean, i, b);
        i += b;
        String str = a(eqx2, k);
        if (str.startsWith("CTRL_")) {
          eqx eqx = a(str.charAt(5));
          eqx2 = eqx;
          if (str.charAt(6) == 'L') {
            eqx1 = eqx;
            eqx2 = eqx;
          } 
          continue;
        } 
        stringBuilder.append(str);
        eqx2 = eqx1;
        continue;
      } 
      return stringBuilder.toString();
    } 
  }
  
  private boolean[] c(boolean[] paramArrayOfboolean) {
    // Byte code:
    //   0: bipush #8
    //   2: istore_2
    //   3: aload_0
    //   4: getfield f : Leqs;
    //   7: invokevirtual a : ()I
    //   10: iconst_2
    //   11: if_icmpgt -> 48
    //   14: bipush #6
    //   16: istore_2
    //   17: getstatic euh.c : Leuh;
    //   20: astore #10
    //   22: aload_0
    //   23: getfield f : Leqs;
    //   26: invokevirtual b : ()I
    //   29: istore #6
    //   31: aload_1
    //   32: arraylength
    //   33: iload_2
    //   34: idiv
    //   35: istore #5
    //   37: iload #5
    //   39: iload #6
    //   41: if_icmpge -> 102
    //   44: invokestatic a : ()Leqb;
    //   47: athrow
    //   48: aload_0
    //   49: getfield f : Leqs;
    //   52: invokevirtual a : ()I
    //   55: bipush #8
    //   57: if_icmpgt -> 68
    //   60: getstatic euh.g : Leuh;
    //   63: astore #10
    //   65: goto -> 22
    //   68: aload_0
    //   69: getfield f : Leqs;
    //   72: invokevirtual a : ()I
    //   75: bipush #22
    //   77: if_icmpgt -> 91
    //   80: bipush #10
    //   82: istore_2
    //   83: getstatic euh.b : Leuh;
    //   86: astore #10
    //   88: goto -> 22
    //   91: bipush #12
    //   93: istore_2
    //   94: getstatic euh.a : Leuh;
    //   97: astore #10
    //   99: goto -> 22
    //   102: aload_1
    //   103: arraylength
    //   104: istore_3
    //   105: iload #5
    //   107: newarray int
    //   109: astore #11
    //   111: iload_3
    //   112: iload_2
    //   113: irem
    //   114: istore_3
    //   115: iconst_0
    //   116: istore #4
    //   118: iload #4
    //   120: iload #5
    //   122: if_icmpge -> 149
    //   125: aload #11
    //   127: iload #4
    //   129: aload_1
    //   130: iload_3
    //   131: iload_2
    //   132: invokestatic a : ([ZII)I
    //   135: iastore
    //   136: iload #4
    //   138: iconst_1
    //   139: iadd
    //   140: istore #4
    //   142: iload_3
    //   143: iload_2
    //   144: iadd
    //   145: istore_3
    //   146: goto -> 118
    //   149: new euj
    //   152: dup
    //   153: aload #10
    //   155: invokespecial <init> : (Leuh;)V
    //   158: aload #11
    //   160: iload #5
    //   162: iload #6
    //   164: isub
    //   165: invokevirtual a : ([II)V
    //   168: iconst_1
    //   169: iload_2
    //   170: ishl
    //   171: iconst_1
    //   172: isub
    //   173: istore #7
    //   175: iconst_0
    //   176: istore_3
    //   177: iconst_0
    //   178: istore #4
    //   180: iload_3
    //   181: iload #6
    //   183: if_icmpge -> 250
    //   186: aload #11
    //   188: iload_3
    //   189: iaload
    //   190: istore #8
    //   192: iload #8
    //   194: ifeq -> 204
    //   197: iload #8
    //   199: iload #7
    //   201: if_icmpne -> 214
    //   204: invokestatic a : ()Leqb;
    //   207: athrow
    //   208: astore_1
    //   209: aload_1
    //   210: invokestatic a : (Ljava/lang/Throwable;)Leqb;
    //   213: athrow
    //   214: iload #8
    //   216: iconst_1
    //   217: if_icmpeq -> 233
    //   220: iload #4
    //   222: istore #5
    //   224: iload #8
    //   226: iload #7
    //   228: iconst_1
    //   229: isub
    //   230: if_icmpne -> 239
    //   233: iload #4
    //   235: iconst_1
    //   236: iadd
    //   237: istore #5
    //   239: iload_3
    //   240: iconst_1
    //   241: iadd
    //   242: istore_3
    //   243: iload #5
    //   245: istore #4
    //   247: goto -> 180
    //   250: iload #6
    //   252: iload_2
    //   253: imul
    //   254: iload #4
    //   256: isub
    //   257: newarray boolean
    //   259: astore_1
    //   260: iconst_0
    //   261: istore #4
    //   263: iconst_0
    //   264: istore_3
    //   265: iload #4
    //   267: iload #6
    //   269: if_icmpge -> 383
    //   272: aload #11
    //   274: iload #4
    //   276: iaload
    //   277: istore #8
    //   279: iload #8
    //   281: iconst_1
    //   282: if_icmpeq -> 294
    //   285: iload #8
    //   287: iload #7
    //   289: iconst_1
    //   290: isub
    //   291: if_icmpne -> 336
    //   294: iload #8
    //   296: iconst_1
    //   297: if_icmple -> 330
    //   300: iconst_1
    //   301: istore #9
    //   303: aload_1
    //   304: iload_3
    //   305: iload_3
    //   306: iload_2
    //   307: iadd
    //   308: iconst_1
    //   309: isub
    //   310: iload #9
    //   312: invokestatic fill : ([ZIIZ)V
    //   315: iload_2
    //   316: iconst_1
    //   317: isub
    //   318: iload_3
    //   319: iadd
    //   320: istore_3
    //   321: iload #4
    //   323: iconst_1
    //   324: iadd
    //   325: istore #4
    //   327: goto -> 265
    //   330: iconst_0
    //   331: istore #9
    //   333: goto -> 303
    //   336: iload_2
    //   337: iconst_1
    //   338: isub
    //   339: istore #5
    //   341: iload #5
    //   343: iflt -> 385
    //   346: iconst_1
    //   347: iload #5
    //   349: ishl
    //   350: iload #8
    //   352: iand
    //   353: ifeq -> 377
    //   356: iconst_1
    //   357: istore #9
    //   359: aload_1
    //   360: iload_3
    //   361: iload #9
    //   363: bastore
    //   364: iload #5
    //   366: iconst_1
    //   367: isub
    //   368: istore #5
    //   370: iload_3
    //   371: iconst_1
    //   372: iadd
    //   373: istore_3
    //   374: goto -> 341
    //   377: iconst_0
    //   378: istore #9
    //   380: goto -> 359
    //   383: aload_1
    //   384: areturn
    //   385: goto -> 321
    // Exception table:
    //   from	to	target	type
    //   149	168	208	eul
  }
  
  public etw a(eqs parameqs) {
    this.f = parameqs;
    return new etw(null, b(c(a(parameqs.d()))), null, null);
  }
  
  boolean[] a(ett paramett) {
    int i;
    boolean bool = this.f.c();
    int m = this.f.a();
    if (bool) {
      i = m * 4 + 11;
    } else {
      i = m * 4 + 14;
    } 
    int[] arrayOfInt = new int[i];
    boolean[] arrayOfBoolean = new boolean[a(m, bool)];
    if (bool) {
      for (int n = 0; n < arrayOfInt.length; n++)
        arrayOfInt[n] = n; 
    } else {
      int n = (i / 2 - 1) / 15;
      int i1 = i / 2;
      int i2 = (i + 1 + n * 2) / 2;
      for (n = 0; n < i1; n++) {
        int i3 = n / 15 + n;
        arrayOfInt[i1 - n - 1] = i2 - i3 - 1;
        arrayOfInt[i1 + n] = i3 + i2 + 1;
      } 
    } 
    int k = 0;
    for (int j = 0; j < m; j++) {
      int n;
      if (bool) {
        n = (m - j) * 4 + 9;
      } else {
        n = (m - j) * 4 + 12;
      } 
      int i2 = j * 2;
      int i3 = i - 1 - i2;
      int i1;
      for (i1 = 0; i1 < n; i1++) {
        int i5 = i1 * 2;
        int i4;
        for (i4 = 0; i4 < 2; i4++) {
          arrayOfBoolean[k + i5 + i4] = paramett.a(arrayOfInt[i2 + i4], arrayOfInt[i2 + i1]);
          arrayOfBoolean[n * 2 + k + i5 + i4] = paramett.a(arrayOfInt[i2 + i1], arrayOfInt[i3 - i4]);
          arrayOfBoolean[n * 4 + k + i5 + i4] = paramett.a(arrayOfInt[i3 - i4], arrayOfInt[i3 - i1]);
          arrayOfBoolean[n * 6 + k + i5 + i4] = paramett.a(arrayOfInt[i3 - i1], arrayOfInt[i2 + i4]);
        } 
      } 
      k = n * 8 + k;
    } 
    return arrayOfBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */