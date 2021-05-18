import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class ezd {
  private static final int[] a = new int[] { 0, 4, 1, 5 };
  
  private static final int[] b = new int[] { 6, 2, 7, 3 };
  
  private static final float c = 0.42F;
  
  private static final float d = 0.8F;
  
  private static final int[] e = new int[] { 8, 1, 1, 1, 1, 1, 1, 3 };
  
  private static final int[] f = new int[] { 7, 1, 1, 3, 1, 1, 1, 2, 1 };
  
  private static final int g = 3;
  
  private static final int h = 5;
  
  private static final int i = 25;
  
  private static final int j = 5;
  
  private static final int k = 10;
  
  private static float a(int[] paramArrayOfint1, int[] paramArrayOfint2, float paramFloat) {
    int m = paramArrayOfint1.length;
    int j = 0;
    int k = 0;
    int i = 0;
    while (j < m) {
      i += paramArrayOfint1[j];
      k += paramArrayOfint2[j];
      j++;
    } 
    if (i >= k) {
      float f2 = i / k;
      float f1 = 0.0F;
      j = 0;
      while (j < m) {
        k = paramArrayOfint1[j];
        float f = paramArrayOfint2[j] * f2;
        if (k > f) {
          f = k - f;
        } else {
          f -= k;
        } 
        if (f <= paramFloat * f2) {
          f1 += f;
          j++;
          continue;
        } 
        return Float.POSITIVE_INFINITY;
      } 
      return f1 / i;
    } 
    return Float.POSITIVE_INFINITY;
  }
  
  public static eze a(epw paramepw, Map<epy, ?> paramMap, boolean paramBoolean) {
    ett ett2 = paramepw.c();
    List<eqo[]> list2 = a(paramBoolean, ett2);
    List<eqo[]> list1 = list2;
    ett ett1 = ett2;
    if (list2.isEmpty()) {
      ett1 = ett2.i();
      ett1.b();
      list1 = a(paramBoolean, ett1);
    } 
    return new eze(ett1, list1);
  }
  
  private static List<eqo[]> a(boolean paramBoolean, ett paramett) {
    ArrayList<eqo[]> arrayList = new ArrayList();
    int j = 0;
    int k = 0;
    int i = 0;
    while (true) {
      if (i < paramett.g()) {
        eqo[] arrayOfEqo = a(paramett, i, k);
        if (arrayOfEqo[0] == null && arrayOfEqo[3] == null) {
          if (j) {
            for (eqo[] arrayOfEqo1 : arrayList) {
              j = i;
              if (arrayOfEqo1[1] != null)
                j = (int)Math.max(i, arrayOfEqo1[1].b()); 
              i = j;
              if (arrayOfEqo1[3] != null)
                i = Math.max(j, (int)arrayOfEqo1[3].b()); 
            } 
            k = 0;
            i += 5;
            j = 0;
            continue;
          } 
          return (List<eqo[]>)arrayList;
        } 
      } else {
        return (List<eqo[]>)arrayList;
      } 
      arrayList.add(SYNTHETIC_LOCAL_VARIABLE_7);
      if (paramBoolean) {
        if (SYNTHETIC_LOCAL_VARIABLE_7[2] != null) {
          i = (int)SYNTHETIC_LOCAL_VARIABLE_7[2].a();
          j = (int)SYNTHETIC_LOCAL_VARIABLE_7[2].b();
        } else {
          i = (int)SYNTHETIC_LOCAL_VARIABLE_7[4].a();
          j = (int)SYNTHETIC_LOCAL_VARIABLE_7[4].b();
        } 
        int m = j;
        j = 1;
        k = i;
        i = m;
        continue;
      } 
      return (List<eqo[]>)arrayList;
    } 
  }
  
  private static void a(eqo[] paramArrayOfeqo1, eqo[] paramArrayOfeqo2, int[] paramArrayOfint) {
    for (int i = 0; i < paramArrayOfint.length; i++)
      paramArrayOfeqo1[paramArrayOfint[i]] = paramArrayOfeqo2[i]; 
  }
  
  private static int[] a(ett paramett, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int[] paramArrayOfint1, int[] paramArrayOfint2) {
    Arrays.fill(paramArrayOfint2, 0, paramArrayOfint2.length, 0);
    int k = paramArrayOfint1.length;
    int i;
    for (i = 0; paramett.a(paramInt1, paramInt2) && paramInt1 > 0 && i < 3; i++)
      paramInt1--; 
    boolean bool = false;
    i = paramInt1;
    int j = paramInt1;
    paramInt1 = i;
    i = bool;
    while (j < paramInt3) {
      if (paramett.a(j, paramInt2) ^ paramBoolean) {
        paramArrayOfint2[i] = paramArrayOfint2[i] + 1;
      } else {
        if (i == k - 1) {
          if (a(paramArrayOfint2, paramArrayOfint1, 0.8F) < 0.42F)
            return new int[] { paramInt1, j }; 
          paramInt1 += paramArrayOfint2[0] + paramArrayOfint2[1];
          System.arraycopy(paramArrayOfint2, 2, paramArrayOfint2, 0, k - 2);
          paramArrayOfint2[k - 2] = 0;
          paramArrayOfint2[k - 1] = 0;
          i--;
        } else {
          i++;
        } 
        paramArrayOfint2[i] = 1;
        if (!paramBoolean) {
          paramBoolean = true;
        } else {
          paramBoolean = false;
        } 
      } 
      j++;
    } 
    return (i == k - 1 && a(paramArrayOfint2, paramArrayOfint1, 0.8F) < 0.42F) ? new int[] { paramInt1, j - 1 } : null;
  }
  
  private static eqo[] a(ett paramett, int paramInt1, int paramInt2) {
    int i = paramett.g();
    int j = paramett.f();
    eqo[] arrayOfEqo = new eqo[8];
    a(arrayOfEqo, a(paramett, i, j, paramInt1, paramInt2, e), a);
    if (arrayOfEqo[4] != null) {
      paramInt2 = (int)arrayOfEqo[4].a();
      paramInt1 = (int)arrayOfEqo[4].b();
    } 
    a(arrayOfEqo, a(paramett, i, j, paramInt1, paramInt2, f), b);
    return arrayOfEqo;
  }
  
  private static eqo[] a(ett paramett, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint) {
    // Byte code:
    //   0: iconst_4
    //   1: anewarray eqo
    //   4: astore #10
    //   6: aload #5
    //   8: arraylength
    //   9: newarray int
    //   11: astore #11
    //   13: iload_3
    //   14: iload_1
    //   15: if_icmpge -> 354
    //   18: aload_0
    //   19: iload #4
    //   21: iload_3
    //   22: iload_2
    //   23: iconst_0
    //   24: aload #5
    //   26: aload #11
    //   28: invokestatic a : (Lett;IIIZ[I[I)[I
    //   31: astore #8
    //   33: aload #8
    //   35: ifnull -> 254
    //   38: iload_3
    //   39: istore #6
    //   41: iload #6
    //   43: istore_3
    //   44: iload #6
    //   46: ifle -> 88
    //   49: iload #6
    //   51: iconst_1
    //   52: isub
    //   53: istore #6
    //   55: aload_0
    //   56: iload #4
    //   58: iload #6
    //   60: iload_2
    //   61: iconst_0
    //   62: aload #5
    //   64: aload #11
    //   66: invokestatic a : (Lett;IIIZ[I[I)[I
    //   69: astore #9
    //   71: aload #9
    //   73: ifnull -> 83
    //   76: aload #9
    //   78: astore #8
    //   80: goto -> 41
    //   83: iload #6
    //   85: iconst_1
    //   86: iadd
    //   87: istore_3
    //   88: aload #10
    //   90: iconst_0
    //   91: new eqo
    //   94: dup
    //   95: aload #8
    //   97: iconst_0
    //   98: iaload
    //   99: i2f
    //   100: iload_3
    //   101: i2f
    //   102: invokespecial <init> : (FF)V
    //   105: aastore
    //   106: aload #10
    //   108: iconst_1
    //   109: new eqo
    //   112: dup
    //   113: aload #8
    //   115: iconst_1
    //   116: iaload
    //   117: i2f
    //   118: iload_3
    //   119: i2f
    //   120: invokespecial <init> : (FF)V
    //   123: aastore
    //   124: iconst_1
    //   125: istore #6
    //   127: iload_3
    //   128: istore #4
    //   130: iload #6
    //   132: istore_3
    //   133: iload #4
    //   135: iconst_1
    //   136: iadd
    //   137: istore #6
    //   139: iload #6
    //   141: istore #7
    //   143: iload_3
    //   144: ifeq -> 313
    //   147: iconst_2
    //   148: newarray int
    //   150: astore #8
    //   152: aload #8
    //   154: iconst_0
    //   155: aload #10
    //   157: iconst_0
    //   158: aaload
    //   159: invokevirtual a : ()F
    //   162: f2i
    //   163: iastore
    //   164: aload #8
    //   166: iconst_1
    //   167: aload #10
    //   169: iconst_1
    //   170: aaload
    //   171: invokevirtual a : ()F
    //   174: f2i
    //   175: iastore
    //   176: iconst_0
    //   177: istore_3
    //   178: iload #6
    //   180: iload_1
    //   181: if_icmpge -> 267
    //   184: aload_0
    //   185: aload #8
    //   187: iconst_0
    //   188: iaload
    //   189: iload #6
    //   191: iload_2
    //   192: iconst_0
    //   193: aload #5
    //   195: aload #11
    //   197: invokestatic a : (Lett;IIIZ[I[I)[I
    //   200: astore #9
    //   202: aload #9
    //   204: ifnull -> 261
    //   207: aload #8
    //   209: iconst_0
    //   210: iaload
    //   211: aload #9
    //   213: iconst_0
    //   214: iaload
    //   215: isub
    //   216: invokestatic abs : (I)I
    //   219: iconst_5
    //   220: if_icmpge -> 261
    //   223: aload #8
    //   225: iconst_1
    //   226: iaload
    //   227: aload #9
    //   229: iconst_1
    //   230: iaload
    //   231: isub
    //   232: invokestatic abs : (I)I
    //   235: iconst_5
    //   236: if_icmpge -> 261
    //   239: iconst_0
    //   240: istore_3
    //   241: aload #9
    //   243: astore #8
    //   245: iload #6
    //   247: iconst_1
    //   248: iadd
    //   249: istore #6
    //   251: goto -> 178
    //   254: iload_3
    //   255: iconst_5
    //   256: iadd
    //   257: istore_3
    //   258: goto -> 13
    //   261: iload_3
    //   262: bipush #25
    //   264: if_icmple -> 344
    //   267: iload #6
    //   269: iload_3
    //   270: iconst_1
    //   271: iadd
    //   272: isub
    //   273: istore #7
    //   275: aload #10
    //   277: iconst_2
    //   278: new eqo
    //   281: dup
    //   282: aload #8
    //   284: iconst_0
    //   285: iaload
    //   286: i2f
    //   287: iload #7
    //   289: i2f
    //   290: invokespecial <init> : (FF)V
    //   293: aastore
    //   294: aload #10
    //   296: iconst_3
    //   297: new eqo
    //   300: dup
    //   301: aload #8
    //   303: iconst_1
    //   304: iaload
    //   305: i2f
    //   306: iload #7
    //   308: i2f
    //   309: invokespecial <init> : (FF)V
    //   312: aastore
    //   313: iload #7
    //   315: iload #4
    //   317: isub
    //   318: bipush #10
    //   320: if_icmpge -> 351
    //   323: iconst_0
    //   324: istore_1
    //   325: iload_1
    //   326: aload #10
    //   328: arraylength
    //   329: if_icmpge -> 351
    //   332: aload #10
    //   334: iload_1
    //   335: aconst_null
    //   336: aastore
    //   337: iload_1
    //   338: iconst_1
    //   339: iadd
    //   340: istore_1
    //   341: goto -> 325
    //   344: iload_3
    //   345: iconst_1
    //   346: iadd
    //   347: istore_3
    //   348: goto -> 245
    //   351: aload #10
    //   353: areturn
    //   354: iconst_0
    //   355: istore #6
    //   357: iload_3
    //   358: istore #4
    //   360: iload #6
    //   362: istore_3
    //   363: goto -> 133
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ezd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */