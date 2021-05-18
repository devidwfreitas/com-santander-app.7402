import java.util.Map;

public final class ews extends eww {
  static final int[][] a;
  
  private static final float b = 0.38F;
  
  private static final float c = 0.78F;
  
  private static final int d = 3;
  
  private static final int e = 1;
  
  private static final int[] f = new int[] { 6, 8, 10, 12, 14 };
  
  private static final int[] h = new int[] { 1, 1, 1, 1 };
  
  private static final int[] i = new int[] { 1, 1, 3 };
  
  private int g = -1;
  
  static {
    a = new int[][] { { 1, 1, 3, 3, 1 }, { 3, 1, 1, 1, 3 }, { 1, 3, 1, 1, 3 }, { 3, 3, 1, 1, 1 }, { 1, 1, 3, 1, 3 }, { 3, 1, 3, 1, 1 }, { 1, 3, 3, 1, 1 }, { 1, 1, 1, 3, 3 }, { 3, 1, 1, 3, 1 }, { 1, 3, 1, 3, 1 } };
  }
  
  private static int a(int[] paramArrayOfint) {
    float f = 0.38F;
    int j = -1;
    int k = a.length;
    for (int i = 0; i < k; i++) {
      float f1 = a(paramArrayOfint, a[i], 0.78F);
      if (f1 < f) {
        j = i;
        f = f1;
      } 
    } 
    if (j >= 0)
      return j; 
    throw eqh.a();
  }
  
  private void a(ets paramets, int paramInt) {
    int i = this.g * 10;
    if (i >= paramInt)
      i = paramInt; 
    paramInt--;
    while (true) {
      if (i <= 0 || paramInt < 0 || paramets.a(paramInt)) {
        if (i != 0)
          throw eqh.a(); 
        break;
      } 
      i--;
      paramInt--;
    } 
  }
  
  private static void a(ets paramets, int paramInt1, int paramInt2, StringBuilder paramStringBuilder) {
    int[] arrayOfInt1 = new int[10];
    int[] arrayOfInt2 = new int[5];
    int[] arrayOfInt3 = new int[5];
    while (paramInt1 < paramInt2) {
      a(paramets, paramInt1, arrayOfInt1);
      int i;
      for (i = 0; i < 5; i++) {
        int k = i * 2;
        arrayOfInt2[i] = arrayOfInt1[k];
        arrayOfInt3[i] = arrayOfInt1[k + 1];
      } 
      paramStringBuilder.append((char)(a(arrayOfInt2) + 48));
      paramStringBuilder.append((char)(a(arrayOfInt3) + 48));
      int j = arrayOfInt1.length;
      for (i = 0; i < j; i++)
        paramInt1 += arrayOfInt1[i]; 
    } 
  }
  
  private static int c(ets paramets) {
    int i = paramets.a();
    int j = paramets.d(0);
    if (j == i)
      throw eqh.a(); 
    return j;
  }
  
  private static int[] c(ets paramets, int paramInt, int[] paramArrayOfint) {
    int m = paramArrayOfint.length;
    int[] arrayOfInt = new int[m];
    int n = paramets.a();
    int i = paramInt;
    int k = 0;
    boolean bool = false;
    int j = paramInt;
    paramInt = i;
    while (j < n) {
      if (paramets.a(j) ^ bool) {
        arrayOfInt[k] = arrayOfInt[k] + 1;
        boolean bool1 = bool;
        i1 = paramInt;
      } else {
        if (k == m - 1) {
          if (a(arrayOfInt, paramArrayOfint, 0.78F) < 0.38F)
            return new int[] { paramInt, j }; 
          i = paramInt + arrayOfInt[0] + arrayOfInt[1];
          System.arraycopy(arrayOfInt, 2, arrayOfInt, 0, m - 2);
          arrayOfInt[m - 2] = 0;
          arrayOfInt[m - 1] = 0;
          paramInt = k - 1;
        } else {
          k++;
          i = paramInt;
          paramInt = k;
        } 
        arrayOfInt[paramInt] = 1;
        if (i1 == 0) {
          boolean bool1 = true;
          i1 = i;
          k = paramInt;
          i = bool1;
        } else {
          boolean bool1 = false;
          i1 = i;
          k = paramInt;
          i = bool1;
        } 
      } 
      j++;
      paramInt = i1;
      int i1 = i;
    } 
    throw eqh.a();
  }
  
  public eqm a(int paramInt, ets paramets, Map<epy, ?> paramMap) {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokevirtual a : (Lets;)[I
    //   5: astore #11
    //   7: aload_0
    //   8: aload_2
    //   9: invokevirtual b : (Lets;)[I
    //   12: astore #9
    //   14: new java/lang/StringBuilder
    //   17: dup
    //   18: bipush #20
    //   20: invokespecial <init> : (I)V
    //   23: astore #10
    //   25: aload_2
    //   26: aload #11
    //   28: iconst_1
    //   29: iaload
    //   30: aload #9
    //   32: iconst_0
    //   33: iaload
    //   34: aload #10
    //   36: invokestatic a : (Lets;IILjava/lang/StringBuilder;)V
    //   39: aload #10
    //   41: invokevirtual toString : ()Ljava/lang/String;
    //   44: astore #10
    //   46: aload_3
    //   47: ifnull -> 237
    //   50: aload_3
    //   51: getstatic epy.ALLOWED_LENGTHS : Lepy;
    //   54: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   59: checkcast [I
    //   62: checkcast [I
    //   65: astore_2
    //   66: aload_2
    //   67: astore_3
    //   68: aload_2
    //   69: ifnonnull -> 76
    //   72: getstatic ews.f : [I
    //   75: astore_3
    //   76: aload #10
    //   78: invokevirtual length : ()I
    //   81: istore #7
    //   83: aload_3
    //   84: arraylength
    //   85: istore #8
    //   87: iconst_0
    //   88: istore #5
    //   90: iconst_0
    //   91: istore #4
    //   93: iload #5
    //   95: iload #8
    //   97: if_icmpge -> 231
    //   100: aload_3
    //   101: iload #5
    //   103: iaload
    //   104: istore #6
    //   106: iload #7
    //   108: iload #6
    //   110: if_icmpne -> 148
    //   113: iconst_1
    //   114: istore #5
    //   116: iload #5
    //   118: istore #6
    //   120: iload #5
    //   122: ifne -> 139
    //   125: iload #5
    //   127: istore #6
    //   129: iload #7
    //   131: iload #4
    //   133: if_icmple -> 139
    //   136: iconst_1
    //   137: istore #6
    //   139: iload #6
    //   141: ifne -> 168
    //   144: invokestatic a : ()Leqb;
    //   147: athrow
    //   148: iload #6
    //   150: iload #4
    //   152: if_icmple -> 228
    //   155: iload #6
    //   157: istore #4
    //   159: iload #5
    //   161: iconst_1
    //   162: iadd
    //   163: istore #5
    //   165: goto -> 93
    //   168: new eqo
    //   171: dup
    //   172: aload #11
    //   174: iconst_1
    //   175: iaload
    //   176: i2f
    //   177: iload_1
    //   178: i2f
    //   179: invokespecial <init> : (FF)V
    //   182: astore_2
    //   183: new eqo
    //   186: dup
    //   187: aload #9
    //   189: iconst_0
    //   190: iaload
    //   191: i2f
    //   192: iload_1
    //   193: i2f
    //   194: invokespecial <init> : (FF)V
    //   197: astore_3
    //   198: getstatic epu.ITF : Lepu;
    //   201: astore #9
    //   203: new eqm
    //   206: dup
    //   207: aload #10
    //   209: aconst_null
    //   210: iconst_2
    //   211: anewarray eqo
    //   214: dup
    //   215: iconst_0
    //   216: aload_2
    //   217: aastore
    //   218: dup
    //   219: iconst_1
    //   220: aload_3
    //   221: aastore
    //   222: aload #9
    //   224: invokespecial <init> : (Ljava/lang/String;[B[Leqo;Lepu;)V
    //   227: areturn
    //   228: goto -> 159
    //   231: iconst_0
    //   232: istore #5
    //   234: goto -> 116
    //   237: aconst_null
    //   238: astore_2
    //   239: goto -> 66
  }
  
  int[] a(ets paramets) {
    int[] arrayOfInt = c(paramets, c(paramets), h);
    this.g = (arrayOfInt[1] - arrayOfInt[0]) / 4;
    a(paramets, arrayOfInt[0]);
    return arrayOfInt;
  }
  
  int[] b(ets paramets) {
    paramets.e();
    try {
      int[] arrayOfInt = c(paramets, c(paramets), i);
      a(paramets, arrayOfInt[0]);
      int i = arrayOfInt[0];
      arrayOfInt[0] = paramets.a() - arrayOfInt[1];
      arrayOfInt[1] = paramets.a() - i;
      return arrayOfInt;
    } finally {
      paramets.e();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ews.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */