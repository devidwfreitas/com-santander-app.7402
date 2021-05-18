import java.util.Arrays;
import java.util.Map;

public final class ewk extends eww {
  static final String a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%";
  
  static final int[] b;
  
  private static final char[] c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".toCharArray();
  
  private static final int d;
  
  private final boolean e;
  
  private final boolean f;
  
  private final StringBuilder g;
  
  private final int[] h;
  
  static {
    b = new int[] { 
        52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 
        265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 
        259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 
        385, 193, 448, 145, 400, 208, 133, 388, 196, 148, 
        168, 162, 138, 42 };
    d = b[39];
  }
  
  public ewk() {
    this(false);
  }
  
  public ewk(boolean paramBoolean) {
    this(paramBoolean, false);
  }
  
  public ewk(boolean paramBoolean1, boolean paramBoolean2) {
    this.e = paramBoolean1;
    this.f = paramBoolean2;
    this.g = new StringBuilder(20);
    this.h = new int[9];
  }
  
  private static char a(int paramInt) {
    for (int i = 0; i < b.length; i++) {
      if (b[i] == paramInt)
        return c[i]; 
    } 
    throw eqh.a();
  }
  
  private static int a(int[] paramArrayOfint) {
    int j = paramArrayOfint.length;
    for (int i = 0;; i = k) {
      int k = Integer.MAX_VALUE;
      int i2 = paramArrayOfint.length;
      int m = 0;
      while (m < i2) {
        int i4 = paramArrayOfint[m];
        int i3 = k;
        if (i4 < k) {
          i3 = k;
          if (i4 > i)
            i3 = i4; 
        } 
        m++;
        k = i3;
      } 
      int i1 = 0;
      i = 0;
      int n = 0;
      for (m = 0; i1 < j; m = i2) {
        int i5 = paramArrayOfint[i1];
        int i4 = i;
        int i3 = n;
        i2 = m;
        if (i5 > k) {
          i4 = i | 1 << j - 1 - i1;
          i2 = m + 1;
          i3 = n + i5;
        } 
        i1++;
        i = i4;
        n = i3;
      } 
      if (m == 3) {
        i1 = m;
        m = 0;
        while (true) {
          i2 = i;
          if (m < j) {
            i2 = i;
            if (i1 > 0) {
              int i3 = paramArrayOfint[m];
              i2 = i1;
              if (i3 > k) {
                i2 = i1 - 1;
                if (i3 * 2 >= n)
                  return -1; 
              } 
            } else {
              return i2;
            } 
          } else {
            return i2;
          } 
          m++;
          i1 = i2;
        } 
        break;
      } 
      if (m <= 3)
        return -1; 
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
    //   21: if_icmpge -> 291
    //   24: aload_0
    //   25: iload_2
    //   26: invokeinterface charAt : (I)C
    //   31: istore_1
    //   32: iload_1
    //   33: bipush #43
    //   35: if_icmpeq -> 56
    //   38: iload_1
    //   39: bipush #36
    //   41: if_icmpeq -> 56
    //   44: iload_1
    //   45: bipush #37
    //   47: if_icmpeq -> 56
    //   50: iload_1
    //   51: bipush #47
    //   53: if_icmpne -> 281
    //   56: aload_0
    //   57: iload_2
    //   58: iconst_1
    //   59: iadd
    //   60: invokeinterface charAt : (I)C
    //   65: istore #4
    //   67: iload_1
    //   68: lookupswitch default -> 112, 36 -> 160, 37 -> 188, 43 -> 132, 47 -> 240
    //   112: iconst_0
    //   113: istore_1
    //   114: aload #5
    //   116: iload_1
    //   117: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   120: pop
    //   121: iload_2
    //   122: iconst_1
    //   123: iadd
    //   124: istore_2
    //   125: iload_2
    //   126: iconst_1
    //   127: iadd
    //   128: istore_2
    //   129: goto -> 19
    //   132: iload #4
    //   134: bipush #65
    //   136: if_icmplt -> 156
    //   139: iload #4
    //   141: bipush #90
    //   143: if_icmpgt -> 156
    //   146: iload #4
    //   148: bipush #32
    //   150: iadd
    //   151: i2c
    //   152: istore_1
    //   153: goto -> 114
    //   156: invokestatic a : ()Leqb;
    //   159: athrow
    //   160: iload #4
    //   162: bipush #65
    //   164: if_icmplt -> 184
    //   167: iload #4
    //   169: bipush #90
    //   171: if_icmpgt -> 184
    //   174: iload #4
    //   176: bipush #64
    //   178: isub
    //   179: i2c
    //   180: istore_1
    //   181: goto -> 114
    //   184: invokestatic a : ()Leqb;
    //   187: athrow
    //   188: iload #4
    //   190: bipush #65
    //   192: if_icmplt -> 212
    //   195: iload #4
    //   197: bipush #69
    //   199: if_icmpgt -> 212
    //   202: iload #4
    //   204: bipush #38
    //   206: isub
    //   207: i2c
    //   208: istore_1
    //   209: goto -> 114
    //   212: iload #4
    //   214: bipush #70
    //   216: if_icmplt -> 236
    //   219: iload #4
    //   221: bipush #87
    //   223: if_icmpgt -> 236
    //   226: iload #4
    //   228: bipush #11
    //   230: isub
    //   231: i2c
    //   232: istore_1
    //   233: goto -> 114
    //   236: invokestatic a : ()Leqb;
    //   239: athrow
    //   240: iload #4
    //   242: bipush #65
    //   244: if_icmplt -> 264
    //   247: iload #4
    //   249: bipush #79
    //   251: if_icmpgt -> 264
    //   254: iload #4
    //   256: bipush #32
    //   258: isub
    //   259: i2c
    //   260: istore_1
    //   261: goto -> 114
    //   264: iload #4
    //   266: bipush #90
    //   268: if_icmpne -> 277
    //   271: bipush #58
    //   273: istore_1
    //   274: goto -> 114
    //   277: invokestatic a : ()Leqb;
    //   280: athrow
    //   281: aload #5
    //   283: iload_1
    //   284: invokevirtual append : (C)Ljava/lang/StringBuilder;
    //   287: pop
    //   288: goto -> 125
    //   291: aload #5
    //   293: invokevirtual toString : ()Ljava/lang/String;
    //   296: areturn
  }
  
  private static int[] a(ets paramets, int[] paramArrayOfint) {
    int m = paramets.a();
    int i = paramets.d(0);
    int n = paramArrayOfint.length;
    int j = i;
    boolean bool = false;
    int k = 0;
    while (j < m) {
      int i1;
      if (paramets.a(j) ^ bool) {
        paramArrayOfint[k] = paramArrayOfint[k] + 1;
        boolean bool1 = bool;
        i2 = i;
      } else {
        if (k == n - 1) {
          if (a(paramArrayOfint) == d && paramets.a(Math.max(0, i - (j - i) / 2), i, false))
            return new int[] { i, j }; 
          i1 = i + paramArrayOfint[0] + paramArrayOfint[1];
          System.arraycopy(paramArrayOfint, 2, paramArrayOfint, 0, n - 2);
          paramArrayOfint[n - 2] = 0;
          paramArrayOfint[n - 1] = 0;
          i = k - 1;
        } else {
          k++;
          i1 = i;
          i = k;
        } 
        paramArrayOfint[i] = 1;
        if (i2 == 0) {
          boolean bool1 = true;
          i2 = i1;
          k = i;
          i1 = bool1;
        } else {
          boolean bool1 = false;
          i2 = i1;
          k = i;
          i1 = bool1;
        } 
      } 
      j++;
      i = i2;
      int i2 = i1;
    } 
    throw eqh.a();
  }
  
  public eqm a(int paramInt, ets paramets, Map<epy, ?> paramMap) {
    int[] arrayOfInt2 = this.h;
    Arrays.fill(arrayOfInt2, 0);
    StringBuilder stringBuilder = this.g;
    stringBuilder.setLength(0);
    int[] arrayOfInt1 = a(paramets, arrayOfInt2);
    int i = paramets.d(arrayOfInt1[1]);
    int j = paramets.a();
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
        stringBuilder.setLength(stringBuilder.length() - 1);
        k = 0;
        int i1 = arrayOfInt2.length;
        for (m = 0; m < i1; m++)
          k += arrayOfInt2[m]; 
        if (n != j && (n - i - k) * 2 < k)
          throw eqh.a(); 
        if (this.e) {
          j = stringBuilder.length() - 1;
          n = 0;
          for (m = 0; m < j; m++)
            n += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(this.g.charAt(m)); 
          if (stringBuilder.charAt(j) != c[n % 43])
            throw epx.a(); 
          stringBuilder.setLength(j);
        } 
        if (stringBuilder.length() == 0)
          throw eqh.a(); 
        if (this.f) {
          String str1 = a(stringBuilder);
          float f4 = (arrayOfInt1[1] + arrayOfInt1[0]) / 2.0F;
          float f5 = i;
          float f6 = k / 2.0F;
          eqo1 = new eqo(f4, paramInt);
          eqo eqo = new eqo(f5 + f6, paramInt);
          epu = epu.CODE_39;
          return new eqm(str1, null, new eqo[] { eqo1, eqo }, epu);
        } 
        String str = epu.toString();
        float f1 = (eqo1[1] + eqo1[0]) / 2.0F;
        float f2 = i;
        float f3 = k / 2.0F;
        eqo eqo1 = new eqo(f1, paramInt);
        eqo eqo2 = new eqo(f2 + f3, paramInt);
        epu epu = epu.CODE_39;
        return new eqm(str, null, new eqo[] { eqo1, eqo2 }, epu);
      } 
      i = n;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ewk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */