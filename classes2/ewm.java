import java.util.Arrays;
import java.util.Map;

public final class ewm extends eww {
  private static final String a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
  
  private static final char[] b = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();
  
  private static final int[] c = new int[] { 
      276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 
      424, 420, 418, 404, 402, 394, 360, 356, 354, 308, 
      282, 344, 332, 326, 300, 278, 436, 434, 428, 422, 
      406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 
      366, 374, 430, 294, 474, 470, 306, 350 };
  
  private static final int d = c[47];
  
  private final StringBuilder e = new StringBuilder(20);
  
  private final int[] f = new int[6];
  
  private static char a(int paramInt) {
    for (int i = 0; i < c.length; i++) {
      if (c[i] == paramInt)
        return b[i]; 
    } 
    throw eqh.a();
  }
  
  private static int a(int[] paramArrayOfint) {
    int n = paramArrayOfint.length;
    int j = paramArrayOfint.length;
    int i = 0;
    int k;
    for (k = 0; i < j; k = i1 + k) {
      int i1 = paramArrayOfint[i];
      i++;
    } 
    int m = 0;
    for (i = 0;; i = j) {
      int i1;
      j = i;
      if (m < n) {
        i1 = Math.round(paramArrayOfint[m] * 9.0F / k);
        if (i1 < 1 || i1 > 4)
          return -1; 
      } else {
        return j;
      } 
      if ((m & 0x1) == 0) {
        int i2 = 0;
        while (true) {
          j = i;
          if (i2 < i1) {
            i2++;
            i = i << 1 | 0x1;
            continue;
          } 
          break;
        } 
      } else {
        j = i << i1;
      } 
      m++;
    } 
  }
  
  private static String a(CharSequence paramCharSequence) {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface length : ()I
    //   6: istore_3
    //   7: new java/lang/StringBuilder
    //   10: dup
    //   11: iload_3
    //   12: invokespecial <init> : (I)V
    //   15: astore #5
    //   17: iconst_0
    //   18: istore_2
    //   19: iload_2
    //   20: iload_3
    //   21: if_icmpge -> 343
    //   24: aload_0
    //   25: iload_2
    //   26: invokeinterface charAt : (I)C
    //   31: istore_1
    //   32: iload_1
    //   33: bipush #97
    //   35: if_icmplt -> 333
    //   38: iload_1
    //   39: bipush #100
    //   41: if_icmpgt -> 333
    //   44: iload_2
    //   45: iload_3
    //   46: iconst_1
    //   47: isub
    //   48: if_icmplt -> 55
    //   51: invokestatic a : ()Leqb;
    //   54: athrow
    //   55: aload_0
    //   56: iload_2
    //   57: iconst_1
    //   58: iadd
    //   59: invokeinterface charAt : (I)C
    //   64: istore #4
    //   66: iload_1
    //   67: tableswitch default -> 96, 97 -> 144, 98 -> 172, 99 -> 292, 100 -> 116
    //   96: iconst_0
    //   97: istore_1
    //   98: aload #5
    //   100: iload_1
    //   101: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   104: pop
    //   105: iload_2
    //   106: iconst_1
    //   107: iadd
    //   108: istore_2
    //   109: iload_2
    //   110: iconst_1
    //   111: iadd
    //   112: istore_2
    //   113: goto -> 19
    //   116: iload #4
    //   118: bipush #65
    //   120: if_icmplt -> 140
    //   123: iload #4
    //   125: bipush #90
    //   127: if_icmpgt -> 140
    //   130: iload #4
    //   132: bipush #32
    //   134: iadd
    //   135: i2c
    //   136: istore_1
    //   137: goto -> 98
    //   140: invokestatic a : ()Leqb;
    //   143: athrow
    //   144: iload #4
    //   146: bipush #65
    //   148: if_icmplt -> 168
    //   151: iload #4
    //   153: bipush #90
    //   155: if_icmpgt -> 168
    //   158: iload #4
    //   160: bipush #64
    //   162: isub
    //   163: i2c
    //   164: istore_1
    //   165: goto -> 98
    //   168: invokestatic a : ()Leqb;
    //   171: athrow
    //   172: iload #4
    //   174: bipush #65
    //   176: if_icmplt -> 196
    //   179: iload #4
    //   181: bipush #69
    //   183: if_icmpgt -> 196
    //   186: iload #4
    //   188: bipush #38
    //   190: isub
    //   191: i2c
    //   192: istore_1
    //   193: goto -> 98
    //   196: iload #4
    //   198: bipush #70
    //   200: if_icmplt -> 220
    //   203: iload #4
    //   205: bipush #74
    //   207: if_icmpgt -> 220
    //   210: iload #4
    //   212: bipush #11
    //   214: isub
    //   215: i2c
    //   216: istore_1
    //   217: goto -> 98
    //   220: iload #4
    //   222: bipush #75
    //   224: if_icmplt -> 244
    //   227: iload #4
    //   229: bipush #79
    //   231: if_icmpgt -> 244
    //   234: iload #4
    //   236: bipush #16
    //   238: iadd
    //   239: i2c
    //   240: istore_1
    //   241: goto -> 98
    //   244: iload #4
    //   246: bipush #80
    //   248: if_icmplt -> 268
    //   251: iload #4
    //   253: bipush #83
    //   255: if_icmpgt -> 268
    //   258: iload #4
    //   260: bipush #43
    //   262: iadd
    //   263: i2c
    //   264: istore_1
    //   265: goto -> 98
    //   268: iload #4
    //   270: bipush #84
    //   272: if_icmplt -> 288
    //   275: iload #4
    //   277: bipush #90
    //   279: if_icmpgt -> 288
    //   282: bipush #127
    //   284: istore_1
    //   285: goto -> 98
    //   288: invokestatic a : ()Leqb;
    //   291: athrow
    //   292: iload #4
    //   294: bipush #65
    //   296: if_icmplt -> 316
    //   299: iload #4
    //   301: bipush #79
    //   303: if_icmpgt -> 316
    //   306: iload #4
    //   308: bipush #32
    //   310: isub
    //   311: i2c
    //   312: istore_1
    //   313: goto -> 98
    //   316: iload #4
    //   318: bipush #90
    //   320: if_icmpne -> 329
    //   323: bipush #58
    //   325: istore_1
    //   326: goto -> 98
    //   329: invokestatic a : ()Leqb;
    //   332: athrow
    //   333: aload #5
    //   335: iload_1
    //   336: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   339: pop
    //   340: goto -> 109
    //   343: aload #5
    //   345: invokevirtual toString : ()Ljava/lang/String;
    //   348: areturn
  }
  
  private static void a(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    int i = 1;
    int k = paramInt1 - 1;
    int j = 0;
    while (true) {
      int m = i;
      if (k >= 0) {
        int i1 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(paramCharSequence.charAt(k));
        int n = m + 1;
        i = n;
        if (n > paramInt2)
          i = 1; 
        k--;
        j = i1 * m + j;
        continue;
      } 
      if (paramCharSequence.charAt(paramInt1) != b[j % 47])
        throw epx.a(); 
      return;
    } 
  }
  
  private int[] a(ets paramets) {
    int m = paramets.a();
    int i = paramets.d(0);
    Arrays.fill(this.f, 0);
    int[] arrayOfInt = this.f;
    int n = arrayOfInt.length;
    int j = i;
    boolean bool = false;
    int k = 0;
    while (j < m) {
      boolean bool1;
      if (paramets.a(j) ^ bool) {
        arrayOfInt[k] = arrayOfInt[k] + 1;
        bool1 = bool;
      } else {
        int i1;
        if (k == n - 1) {
          if (a(arrayOfInt) == d)
            return new int[] { i, j }; 
          i += arrayOfInt[0] + arrayOfInt[1];
          System.arraycopy(arrayOfInt, 2, arrayOfInt, 0, n - 2);
          arrayOfInt[n - 2] = 0;
          arrayOfInt[n - 1] = 0;
          i1 = k - 1;
        } else {
          i1 = k + 1;
        } 
        arrayOfInt[i1] = 1;
        if (!bool) {
          bool = true;
          k = i1;
          bool1 = bool;
        } else {
          bool = false;
          boolean bool2 = bool1;
          bool1 = bool;
        } 
      } 
      j++;
      bool = bool1;
    } 
    throw eqh.a();
  }
  
  private static void b(CharSequence paramCharSequence) {
    int i = paramCharSequence.length();
    a(paramCharSequence, i - 2, 20);
    a(paramCharSequence, i - 1, 15);
  }
  
  public eqm a(int paramInt, ets paramets, Map<epy, ?> paramMap) {
    int[] arrayOfInt1 = a(paramets);
    int i = paramets.d(arrayOfInt1[1]);
    int j = paramets.a();
    int[] arrayOfInt2 = this.f;
    Arrays.fill(arrayOfInt2, 0);
    StringBuilder stringBuilder = this.e;
    stringBuilder.setLength(0);
    while (true) {
      a(paramets, i, arrayOfInt2);
      int k = a(arrayOfInt2);
      if (k < 0)
        throw eqh.a(); 
      char c = a(k);
      stringBuilder.append(c);
      int n = arrayOfInt2.length;
      k = 0;
      int m = i;
      while (k < n) {
        m += arrayOfInt2[k];
        k++;
      } 
      n = paramets.d(m);
      if (c == '*') {
        stringBuilder.deleteCharAt(stringBuilder.length() - 1);
        m = 0;
        int i1 = arrayOfInt2.length;
        for (k = 0; k < i1; k++)
          m += arrayOfInt2[k]; 
        if (n == j || !paramets.a(n))
          throw eqh.a(); 
        if (stringBuilder.length() < 2)
          throw eqh.a(); 
        b(stringBuilder);
        stringBuilder.setLength(stringBuilder.length() - 2);
        String str = a(stringBuilder);
        float f1 = (arrayOfInt1[1] + arrayOfInt1[0]) / 2.0F;
        float f2 = i;
        float f3 = m / 2.0F;
        eqo eqo1 = new eqo(f1, paramInt);
        eqo eqo2 = new eqo(f2 + f3, paramInt);
        epu epu = epu.CODE_93;
        return new eqm(str, null, new eqo[] { eqo1, eqo2 }, epu);
      } 
      i = n;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */