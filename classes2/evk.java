public final class evk {
  private static final int[] a = new int[] { 
      5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 
      36, 42, 48, 56, 62, 68 };
  
  private static final int[][] b;
  
  private static final int c = 301;
  
  private static final int[] d = new int[256];
  
  private static final int[] e = new int[255];
  
  static {
    int i = 1;
    for (int j = 0; j < 255; j++) {
      e[j] = i;
      d[i] = j;
      int k = i * 2;
      i = k;
      if (k >= 256)
        i = k ^ 0x12D; 
    } 
  }
  
  private static String a(CharSequence paramCharSequence, int paramInt) {
    return a(paramCharSequence, 0, paramCharSequence.length(), paramInt);
  }
  
  private static String a(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #6
    //   3: iconst_0
    //   4: istore #4
    //   6: iload #4
    //   8: getstatic evk.a : [I
    //   11: arraylength
    //   12: if_icmpge -> 312
    //   15: getstatic evk.a : [I
    //   18: iload #4
    //   20: iaload
    //   21: iload_3
    //   22: if_icmpne -> 57
    //   25: iload #4
    //   27: ifge -> 66
    //   30: new java/lang/IllegalArgumentException
    //   33: dup
    //   34: new java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial <init> : ()V
    //   41: ldc 'Illegal number of error correction codewords specified: '
    //   43: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: iload_3
    //   47: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   50: invokevirtual toString : ()Ljava/lang/String;
    //   53: invokespecial <init> : (Ljava/lang/String;)V
    //   56: athrow
    //   57: iload #4
    //   59: iconst_1
    //   60: iadd
    //   61: istore #4
    //   63: goto -> 6
    //   66: getstatic evk.b : [[I
    //   69: iload #4
    //   71: aaload
    //   72: astore #9
    //   74: iload_3
    //   75: newarray char
    //   77: astore #8
    //   79: iconst_0
    //   80: istore #4
    //   82: iload #4
    //   84: iload_3
    //   85: if_icmpge -> 103
    //   88: aload #8
    //   90: iload #4
    //   92: iconst_0
    //   93: castore
    //   94: iload #4
    //   96: iconst_1
    //   97: iadd
    //   98: istore #4
    //   100: goto -> 82
    //   103: iload_1
    //   104: istore #4
    //   106: iload #4
    //   108: iload_1
    //   109: iload_2
    //   110: iadd
    //   111: if_icmpge -> 277
    //   114: aload #8
    //   116: iload_3
    //   117: iconst_1
    //   118: isub
    //   119: caload
    //   120: istore #5
    //   122: aload_0
    //   123: iload #4
    //   125: invokeinterface charAt : (I)C
    //   130: iload #5
    //   132: ixor
    //   133: istore #7
    //   135: iload_3
    //   136: iconst_1
    //   137: isub
    //   138: istore #5
    //   140: iload #5
    //   142: ifle -> 220
    //   145: iload #7
    //   147: ifeq -> 205
    //   150: aload #9
    //   152: iload #5
    //   154: iaload
    //   155: ifeq -> 205
    //   158: aload #8
    //   160: iload #5
    //   162: aload #8
    //   164: iload #5
    //   166: iconst_1
    //   167: isub
    //   168: caload
    //   169: getstatic evk.e : [I
    //   172: getstatic evk.d : [I
    //   175: iload #7
    //   177: iaload
    //   178: getstatic evk.d : [I
    //   181: aload #9
    //   183: iload #5
    //   185: iaload
    //   186: iaload
    //   187: iadd
    //   188: sipush #255
    //   191: irem
    //   192: iaload
    //   193: ixor
    //   194: i2c
    //   195: castore
    //   196: iload #5
    //   198: iconst_1
    //   199: isub
    //   200: istore #5
    //   202: goto -> 140
    //   205: aload #8
    //   207: iload #5
    //   209: aload #8
    //   211: iload #5
    //   213: iconst_1
    //   214: isub
    //   215: caload
    //   216: castore
    //   217: goto -> 196
    //   220: iload #7
    //   222: ifeq -> 269
    //   225: aload #9
    //   227: iconst_0
    //   228: iaload
    //   229: ifeq -> 269
    //   232: aload #8
    //   234: iconst_0
    //   235: getstatic evk.e : [I
    //   238: getstatic evk.d : [I
    //   241: iload #7
    //   243: iaload
    //   244: getstatic evk.d : [I
    //   247: aload #9
    //   249: iconst_0
    //   250: iaload
    //   251: iaload
    //   252: iadd
    //   253: sipush #255
    //   256: irem
    //   257: iaload
    //   258: i2c
    //   259: castore
    //   260: iload #4
    //   262: iconst_1
    //   263: iadd
    //   264: istore #4
    //   266: goto -> 106
    //   269: aload #8
    //   271: iconst_0
    //   272: iconst_0
    //   273: castore
    //   274: goto -> 260
    //   277: iload_3
    //   278: newarray char
    //   280: astore_0
    //   281: iload #6
    //   283: istore_1
    //   284: iload_1
    //   285: iload_3
    //   286: if_icmpge -> 307
    //   289: aload_0
    //   290: iload_1
    //   291: aload #8
    //   293: iload_3
    //   294: iload_1
    //   295: isub
    //   296: iconst_1
    //   297: isub
    //   298: caload
    //   299: castore
    //   300: iload_1
    //   301: iconst_1
    //   302: iadd
    //   303: istore_1
    //   304: goto -> 284
    //   307: aload_0
    //   308: invokestatic valueOf : ([C)Ljava/lang/String;
    //   311: areturn
    //   312: iconst_m1
    //   313: istore #4
    //   315: goto -> 25
  }
  
  public static String a(String paramString, evm paramevm) {
    if (paramString.length() != paramevm.i())
      throw new IllegalArgumentException("The number of codewords does not match the selected symbol"); 
    StringBuilder stringBuilder = new StringBuilder(paramevm.i() + paramevm.j());
    stringBuilder.append(paramString);
    int j = paramevm.a();
    if (j == 1) {
      stringBuilder.append(a(paramString, paramevm.j()));
      return stringBuilder.toString();
    } 
    stringBuilder.setLength(stringBuilder.capacity());
    int[] arrayOfInt1 = new int[j];
    int[] arrayOfInt2 = new int[j];
    int[] arrayOfInt3 = new int[j];
    int i;
    for (i = 0; i < j; i++) {
      arrayOfInt1[i] = paramevm.a(i + 1);
      arrayOfInt2[i] = paramevm.c(i + 1);
      arrayOfInt3[i] = 0;
      if (i > 0)
        arrayOfInt3[i] = arrayOfInt3[i - 1] + arrayOfInt1[i]; 
    } 
    i = 0;
    while (true) {
      if (i < j) {
        StringBuilder stringBuilder1 = new StringBuilder(arrayOfInt1[i]);
        int k;
        for (k = i; k < paramevm.i(); k += j)
          stringBuilder1.append(paramString.charAt(k)); 
        String str = a(stringBuilder1.toString(), arrayOfInt2[i]);
        int m = i;
        for (k = 0; m < arrayOfInt2[i] * j; k++) {
          stringBuilder.setCharAt(paramevm.i() + m, str.charAt(k));
          m += j;
        } 
        i++;
        continue;
      } 
      return stringBuilder.toString();
    } 
  }
  
  static {
    int[] arrayOfInt1 = { 23, 68, 144, 134, 240, 92, 254 };
    int[] arrayOfInt2 = { 28, 24, 185, 166, 223, 248, 116, 255, 110, 61 };
    int[] arrayOfInt3 = { 
        175, 138, 205, 12, 194, 168, 39, 245, 60, 97, 
        120 };
    int[] arrayOfInt4 = { 
        41, 153, 158, 91, 61, 42, 142, 213, 97, 178, 
        100, 242 };
    int[] arrayOfInt5 = { 
        156, 97, 192, 252, 95, 9, 157, 119, 138, 45, 
        18, 186, 83, 185 };
    int[] arrayOfInt6 = { 
        83, 195, 100, 39, 188, 75, 66, 61, 241, 213, 
        109, 129, 94, 254, 225, 48, 90, 188 };
    int[] arrayOfInt7 = { 
        15, 195, 244, 9, 233, 71, 168, 2, 188, 160, 
        153, 145, 253, 79, 108, 82, 27, 174, 186, 172 };
    int[] arrayOfInt8 = { 
        77, 193, 137, 31, 19, 38, 22, 153, 247, 105, 
        122, 2, 245, 133, 242, 8, 175, 95, 100, 9, 
        167, 105, 214, 111, 57, 121, 21, 1, 253, 57, 
        54, 101, 248, 202, 69, 50, 150, 177, 226, 5, 
        9, 5 };
    int[] arrayOfInt9 = { 
        245, 132, 172, 223, 96, 32, 117, 22, 238, 133, 
        238, 231, 205, 188, 237, 87, 191, 106, 16, 147, 
        118, 23, 37, 90, 170, 205, 131, 88, 120, 100, 
        66, 138, 186, 240, 82, 44, 176, 87, 187, 147, 
        160, 175, 69, 213, 92, 253, 225, 19 };
    int[] arrayOfInt10 = { 
        175, 9, 223, 238, 12, 17, 220, 208, 100, 29, 
        175, 170, 230, 192, 215, 235, 150, 159, 36, 223, 
        38, 200, 132, 54, 228, 146, 218, 234, 117, 203, 
        29, 232, 144, 238, 22, 150, 201, 117, 62, 207, 
        164, 13, 137, 245, 127, 67, 247, 28, 155, 43, 
        203, 107, 233, 53, 143, 46 };
    int[] arrayOfInt11 = { 
        220, 228, 173, 89, 251, 149, 159, 56, 89, 33, 
        147, 244, 154, 36, 73, 127, 213, 136, 248, 180, 
        234, 197, 158, 177, 68, 122, 93, 213, 15, 160, 
        227, 236, 66, 139, 153, 185, 202, 167, 179, 25, 
        220, 232, 96, 210, 231, 136, 223, 239, 181, 241, 
        59, 52, 172, 25, 49, 232, 211, 189, 64, 54, 
        108, 153, 132, 63, 96, 103, 82, 186 };
    b = new int[][] { 
        { 228, 48, 15, 111, 62 }, arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, arrayOfInt7, { 
          52, 190, 88, 205, 109, 39, 176, 21, 155, 197, 
          251, 223, 155, 21, 5, 172, 254, 124, 12, 181, 
          184, 96, 50, 193 }, { 
          211, 231, 43, 97, 71, 96, 103, 174, 37, 151, 
          170, 53, 75, 34, 249, 121, 17, 138, 110, 213, 
          141, 136, 120, 151, 233, 168, 93, 255 }, 
        { 
          245, 127, 242, 218, 130, 250, 162, 181, 102, 120, 
          84, 179, 220, 251, 80, 182, 229, 18, 2, 4, 
          68, 33, 101, 137, 95, 119, 115, 44, 175, 184, 
          59, 25, 225, 98, 81, 112 }, arrayOfInt8, arrayOfInt9, arrayOfInt10, { 
          242, 93, 169, 50, 144, 210, 39, 118, 202, 188, 
          201, 189, 143, 108, 196, 37, 185, 112, 134, 230, 
          245, 63, 197, 190, 250, 106, 185, 221, 175, 64, 
          114, 71, 161, 44, 147, 6, 27, 218, 51, 63, 
          87, 10, 40, 130, 188, 17, 163, 31, 176, 170, 
          4, 107, 232, 7, 94, 166, 224, 124, 86, 47, 
          11, 204 }, arrayOfInt11 };
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */