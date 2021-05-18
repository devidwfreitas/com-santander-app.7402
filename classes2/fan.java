import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class fan {
  protected static final int a = 3;
  
  protected static final int b = 57;
  
  private static final int c = 2;
  
  private final ett d;
  
  private final List<fam> e;
  
  private boolean f;
  
  private final int[] g;
  
  private final eqp h;
  
  public fan(ett paramett) {
    this(paramett, null);
  }
  
  public fan(ett paramett, eqp parameqp) {
    this.d = paramett;
    this.e = new ArrayList<fam>();
    this.g = new int[5];
    this.h = parameqp;
  }
  
  private static float a(int[] paramArrayOfint, int paramInt) {
    return (paramInt - paramArrayOfint[4] - paramArrayOfint[3]) - paramArrayOfint[2] / 2.0F;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int[] arrayOfInt = c();
    int i;
    for (i = 0; paramInt1 >= i && paramInt2 >= i && this.d.a(paramInt2 - i, paramInt1 - i); i++)
      arrayOfInt[2] = arrayOfInt[2] + 1; 
    if (paramInt1 >= i) {
      int j = i;
      if (paramInt2 >= i) {
        while (paramInt1 >= j && paramInt2 >= j && !this.d.a(paramInt2 - j, paramInt1 - j) && arrayOfInt[1] <= paramInt3) {
          arrayOfInt[1] = arrayOfInt[1] + 1;
          j++;
        } 
        if (paramInt1 < j || paramInt2 < j || arrayOfInt[1] > paramInt3)
          return false; 
        while (paramInt1 >= j && paramInt2 >= j && this.d.a(paramInt2 - j, paramInt1 - j) && arrayOfInt[0] <= paramInt3) {
          arrayOfInt[0] = arrayOfInt[0] + 1;
          j++;
        } 
        if (arrayOfInt[0] > paramInt3)
          return false; 
        int k = this.d.g();
        int m = this.d.f();
        for (i = 1; paramInt1 + i < k && paramInt2 + i < m && this.d.a(paramInt2 + i, paramInt1 + i); i++)
          arrayOfInt[2] = arrayOfInt[2] + 1; 
        if (paramInt1 + i < k) {
          j = i;
          if (paramInt2 + i < m) {
            while (paramInt1 + j < k && paramInt2 + j < m && !this.d.a(paramInt2 + j, paramInt1 + j) && arrayOfInt[3] < paramInt3) {
              arrayOfInt[3] = arrayOfInt[3] + 1;
              j++;
            } 
            if (paramInt1 + j >= k || paramInt2 + j >= m || arrayOfInt[3] >= paramInt3)
              return false; 
            while (paramInt1 + j < k && paramInt2 + j < m && this.d.a(paramInt2 + j, paramInt1 + j) && arrayOfInt[4] < paramInt3) {
              arrayOfInt[4] = arrayOfInt[4] + 1;
              j++;
            } 
            return (arrayOfInt[4] >= paramInt3) ? false : ((Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - paramInt4) < paramInt4 * 2 && a(arrayOfInt)));
          } 
        } 
        return false;
      } 
    } 
    return false;
  }
  
  protected static boolean a(int[] paramArrayOfint) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #6
    //   3: iconst_0
    //   4: istore_3
    //   5: iconst_0
    //   6: istore #4
    //   8: iload_3
    //   9: iconst_5
    //   10: if_icmpge -> 39
    //   13: aload_0
    //   14: iload_3
    //   15: iaload
    //   16: istore #5
    //   18: iload #5
    //   20: ifne -> 25
    //   23: iconst_0
    //   24: ireturn
    //   25: iload #4
    //   27: iload #5
    //   29: iadd
    //   30: istore #4
    //   32: iload_3
    //   33: iconst_1
    //   34: iadd
    //   35: istore_3
    //   36: goto -> 8
    //   39: iload #4
    //   41: bipush #7
    //   43: if_icmplt -> 23
    //   46: iload #4
    //   48: i2f
    //   49: ldc 7.0
    //   51: fdiv
    //   52: fstore_1
    //   53: fload_1
    //   54: fconst_2
    //   55: fdiv
    //   56: fstore_2
    //   57: fload_1
    //   58: aload_0
    //   59: iconst_0
    //   60: iaload
    //   61: i2f
    //   62: fsub
    //   63: invokestatic abs : (F)F
    //   66: fload_2
    //   67: fcmpg
    //   68: ifge -> 136
    //   71: fload_1
    //   72: aload_0
    //   73: iconst_1
    //   74: iaload
    //   75: i2f
    //   76: fsub
    //   77: invokestatic abs : (F)F
    //   80: fload_2
    //   81: fcmpg
    //   82: ifge -> 136
    //   85: ldc 3.0
    //   87: fload_1
    //   88: fmul
    //   89: aload_0
    //   90: iconst_2
    //   91: iaload
    //   92: i2f
    //   93: fsub
    //   94: invokestatic abs : (F)F
    //   97: ldc 3.0
    //   99: fload_2
    //   100: fmul
    //   101: fcmpg
    //   102: ifge -> 136
    //   105: fload_1
    //   106: aload_0
    //   107: iconst_3
    //   108: iaload
    //   109: i2f
    //   110: fsub
    //   111: invokestatic abs : (F)F
    //   114: fload_2
    //   115: fcmpg
    //   116: ifge -> 136
    //   119: fload_1
    //   120: aload_0
    //   121: iconst_4
    //   122: iaload
    //   123: i2f
    //   124: fsub
    //   125: invokestatic abs : (F)F
    //   128: fload_2
    //   129: fcmpg
    //   130: ifge -> 136
    //   133: iload #6
    //   135: ireturn
    //   136: iconst_0
    //   137: istore #6
    //   139: goto -> 133
  }
  
  private float b(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    ett ett1 = this.d;
    int k = ett1.g();
    int[] arrayOfInt = c();
    int i;
    for (i = paramInt1; i >= 0 && ett1.a(paramInt2, i); i--)
      arrayOfInt[2] = arrayOfInt[2] + 1; 
    int j = i;
    if (i >= 0) {
      while (j >= 0 && !ett1.a(paramInt2, j) && arrayOfInt[1] <= paramInt3) {
        arrayOfInt[1] = arrayOfInt[1] + 1;
        j--;
      } 
      if (j >= 0 && arrayOfInt[1] <= paramInt3) {
        while (j >= 0 && ett1.a(paramInt2, j) && arrayOfInt[0] <= paramInt3) {
          arrayOfInt[0] = arrayOfInt[0] + 1;
          j--;
        } 
        if (arrayOfInt[0] <= paramInt3) {
          while (++paramInt1 < k && ett1.a(paramInt2, paramInt1)) {
            arrayOfInt[2] = arrayOfInt[2] + 1;
            paramInt1++;
          } 
          if (paramInt1 != k) {
            while (paramInt1 < k && !ett1.a(paramInt2, paramInt1) && arrayOfInt[3] < paramInt3) {
              arrayOfInt[3] = arrayOfInt[3] + 1;
              paramInt1++;
            } 
            if (paramInt1 != k && arrayOfInt[3] < paramInt3) {
              while (paramInt1 < k && ett1.a(paramInt2, paramInt1) && arrayOfInt[4] < paramInt3) {
                arrayOfInt[4] = arrayOfInt[4] + 1;
                paramInt1++;
              } 
              if (arrayOfInt[4] < paramInt3 && Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - paramInt4) * 5 < paramInt4 * 2 && a(arrayOfInt))
                return a(arrayOfInt, paramInt1); 
            } 
          } 
        } 
      } 
    } 
    return Float.NaN;
  }
  
  private float c(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    ett ett1 = this.d;
    int k = ett1.f();
    int[] arrayOfInt = c();
    int i;
    for (i = paramInt1; i >= 0 && ett1.a(i, paramInt2); i--)
      arrayOfInt[2] = arrayOfInt[2] + 1; 
    int j = i;
    if (i >= 0) {
      while (j >= 0 && !ett1.a(j, paramInt2) && arrayOfInt[1] <= paramInt3) {
        arrayOfInt[1] = arrayOfInt[1] + 1;
        j--;
      } 
      if (j >= 0 && arrayOfInt[1] <= paramInt3) {
        while (j >= 0 && ett1.a(j, paramInt2) && arrayOfInt[0] <= paramInt3) {
          arrayOfInt[0] = arrayOfInt[0] + 1;
          j--;
        } 
        if (arrayOfInt[0] <= paramInt3) {
          while (++paramInt1 < k && ett1.a(paramInt1, paramInt2)) {
            arrayOfInt[2] = arrayOfInt[2] + 1;
            paramInt1++;
          } 
          if (paramInt1 != k) {
            while (paramInt1 < k && !ett1.a(paramInt1, paramInt2) && arrayOfInt[3] < paramInt3) {
              arrayOfInt[3] = arrayOfInt[3] + 1;
              paramInt1++;
            } 
            if (paramInt1 != k && arrayOfInt[3] < paramInt3) {
              while (paramInt1 < k && ett1.a(paramInt1, paramInt2) && arrayOfInt[4] < paramInt3) {
                arrayOfInt[4] = arrayOfInt[4] + 1;
                paramInt1++;
              } 
              if (arrayOfInt[4] < paramInt3 && Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - paramInt4) * 5 < paramInt4 && a(arrayOfInt))
                return a(arrayOfInt, paramInt1); 
            } 
          } 
        } 
      } 
    } 
    return Float.NaN;
  }
  
  private int[] c() {
    this.g[0] = 0;
    this.g[1] = 0;
    this.g[2] = 0;
    this.g[3] = 0;
    this.g[4] = 0;
    return this.g;
  }
  
  private int d() {
    if (this.e.size() <= 1)
      return 0; 
    fam fam = null;
    for (fam fam1 : this.e) {
      if (fam1.d() >= 2) {
        if (fam == null) {
          fam = fam1;
          continue;
        } 
        this.f = true;
        return (int)(Math.abs(fam.a() - fam1.a()) - Math.abs(fam.b() - fam1.b())) / 2;
      } 
    } 
    return 0;
  }
  
  private boolean e() {
    float f2 = 0.0F;
    int j = this.e.size();
    Iterator<fam> iterator = this.e.iterator();
    float f1 = 0.0F;
    int i = 0;
    while (iterator.hasNext()) {
      fam fam = iterator.next();
      if (fam.d() >= 2) {
        f1 = fam.c() + f1;
        i++;
      } 
    } 
    if (i >= 3) {
      float f = f1 / j;
      iterator = this.e.iterator();
      while (iterator.hasNext())
        f2 += Math.abs(((fam)iterator.next()).c() - f); 
      if (f2 <= 0.05F * f1)
        return true; 
    } 
    return false;
  }
  
  private fam[] f() {
    float f = 0.0F;
    int i = this.e.size();
    if (i < 3)
      throw eqh.a(); 
    if (i > 3) {
      Iterator<fam> iterator = this.e.iterator();
      float f1 = 0.0F;
      float f2 = 0.0F;
      while (iterator.hasNext()) {
        float f3 = ((fam)iterator.next()).c();
        f2 += f3;
        f1 = f3 * f3 + f1;
      } 
      f2 /= i;
      f1 = (float)Math.sqrt((f1 / i - f2 * f2));
      Collections.sort(this.e, new faq(f2, null));
      f1 = Math.max(0.2F * f2, f1);
      for (i = 0; i < this.e.size() && this.e.size() > 3; i = j + 1) {
        int j = i;
        if (Math.abs(((fam)this.e.get(i)).c() - f2) > f1) {
          this.e.remove(i);
          j = i - 1;
        } 
      } 
    } 
    if (this.e.size() > 3) {
      Iterator<fam> iterator = this.e.iterator();
      float f1;
      for (f1 = f; iterator.hasNext(); f1 += ((fam)iterator.next()).c());
      f1 /= this.e.size();
      Collections.sort(this.e, new fap(f1, null));
      this.e.subList(3, this.e.size()).clear();
    } 
    return new fam[] { this.e.get(0), this.e.get(1), this.e.get(2) };
  }
  
  protected final ett a() {
    return this.d;
  }
  
  protected final boolean a(int[] paramArrayOfint, int paramInt1, int paramInt2, boolean paramBoolean) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #11
    //   3: iconst_0
    //   4: istore #8
    //   6: aload_1
    //   7: iconst_0
    //   8: iaload
    //   9: aload_1
    //   10: iconst_1
    //   11: iaload
    //   12: iadd
    //   13: aload_1
    //   14: iconst_2
    //   15: iaload
    //   16: iadd
    //   17: aload_1
    //   18: iconst_3
    //   19: iaload
    //   20: iadd
    //   21: aload_1
    //   22: iconst_4
    //   23: iaload
    //   24: iadd
    //   25: istore #9
    //   27: aload_1
    //   28: iload_3
    //   29: invokestatic a : ([II)F
    //   32: fstore #6
    //   34: aload_0
    //   35: iload_2
    //   36: fload #6
    //   38: f2i
    //   39: aload_1
    //   40: iconst_2
    //   41: iaload
    //   42: iload #9
    //   44: invokespecial b : (IIII)F
    //   47: fstore #5
    //   49: iload #11
    //   51: istore #10
    //   53: fload #5
    //   55: invokestatic isNaN : (F)Z
    //   58: ifne -> 242
    //   61: aload_0
    //   62: fload #6
    //   64: f2i
    //   65: fload #5
    //   67: f2i
    //   68: aload_1
    //   69: iconst_2
    //   70: iaload
    //   71: iload #9
    //   73: invokespecial c : (IIII)F
    //   76: fstore #6
    //   78: iload #11
    //   80: istore #10
    //   82: fload #6
    //   84: invokestatic isNaN : (F)Z
    //   87: ifne -> 242
    //   90: iload #4
    //   92: ifeq -> 117
    //   95: iload #11
    //   97: istore #10
    //   99: aload_0
    //   100: fload #5
    //   102: f2i
    //   103: fload #6
    //   105: f2i
    //   106: aload_1
    //   107: iconst_2
    //   108: iaload
    //   109: iload #9
    //   111: invokespecial a : (IIII)Z
    //   114: ifeq -> 242
    //   117: iload #9
    //   119: i2f
    //   120: ldc 7.0
    //   122: fdiv
    //   123: fstore #7
    //   125: iconst_0
    //   126: istore_2
    //   127: iload #8
    //   129: istore_3
    //   130: iload_2
    //   131: aload_0
    //   132: getfield e : Ljava/util/List;
    //   135: invokeinterface size : ()I
    //   140: if_icmpge -> 193
    //   143: aload_0
    //   144: getfield e : Ljava/util/List;
    //   147: iload_2
    //   148: invokeinterface get : (I)Ljava/lang/Object;
    //   153: checkcast fam
    //   156: astore_1
    //   157: aload_1
    //   158: fload #7
    //   160: fload #5
    //   162: fload #6
    //   164: invokevirtual a : (FFF)Z
    //   167: ifeq -> 245
    //   170: aload_0
    //   171: getfield e : Ljava/util/List;
    //   174: iload_2
    //   175: aload_1
    //   176: fload #5
    //   178: fload #6
    //   180: fload #7
    //   182: invokevirtual b : (FFF)Lfam;
    //   185: invokeinterface set : (ILjava/lang/Object;)Ljava/lang/Object;
    //   190: pop
    //   191: iconst_1
    //   192: istore_3
    //   193: iload_3
    //   194: ifne -> 239
    //   197: new fam
    //   200: dup
    //   201: fload #6
    //   203: fload #5
    //   205: fload #7
    //   207: invokespecial <init> : (FFF)V
    //   210: astore_1
    //   211: aload_0
    //   212: getfield e : Ljava/util/List;
    //   215: aload_1
    //   216: invokeinterface add : (Ljava/lang/Object;)Z
    //   221: pop
    //   222: aload_0
    //   223: getfield h : Leqp;
    //   226: ifnull -> 239
    //   229: aload_0
    //   230: getfield h : Leqp;
    //   233: aload_1
    //   234: invokeinterface a : (Leqo;)V
    //   239: iconst_1
    //   240: istore #10
    //   242: iload #10
    //   244: ireturn
    //   245: iload_2
    //   246: iconst_1
    //   247: iadd
    //   248: istore_2
    //   249: goto -> 127
  }
  
  final far b(Map<epy, ?> paramMap) {
    int j;
    boolean bool1;
    if (paramMap != null && paramMap.containsKey(epy.TRY_HARDER)) {
      j = 1;
    } else {
      j = 0;
    } 
    if (paramMap != null && paramMap.containsKey(epy.PURE_BARCODE)) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    int m = this.d.g();
    int n = this.d.f();
    int i = m * 3 / 228;
    if (i < 3 || j)
      i = 3; 
    boolean bool = false;
    int[] arrayOfInt = new int[5];
    int k = i - 1;
    label63: while (true) {
      if (k < m && !bool) {
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        arrayOfInt[2] = 0;
        arrayOfInt[3] = 0;
        arrayOfInt[4] = 0;
        int i2 = 0;
        j = 0;
        int i1 = i;
        i = i2;
        while (true) {
          if (j < n) {
            if (this.d.a(j, k)) {
              i2 = i;
              if ((i & 0x1) == 1)
                i2 = i + 1; 
              arrayOfInt[i2] = arrayOfInt[i2] + 1;
              i = i2;
            } else if ((i & 0x1) == 0) {
              if (i == 4) {
                if (a(arrayOfInt)) {
                  if (a(arrayOfInt, k, j, bool1)) {
                    i1 = 2;
                    if (this.f) {
                      bool = e();
                    } else {
                      i = d();
                      if (i > arrayOfInt[2]) {
                        j = k + i - arrayOfInt[2] - 2;
                        i = n - 1;
                      } else {
                        i = j;
                        j = k;
                      } 
                      k = j;
                      j = i;
                    } 
                    arrayOfInt[0] = 0;
                    arrayOfInt[1] = 0;
                    arrayOfInt[2] = 0;
                    arrayOfInt[3] = 0;
                    arrayOfInt[4] = 0;
                    i = 0;
                  } else {
                    arrayOfInt[0] = arrayOfInt[2];
                    arrayOfInt[1] = arrayOfInt[3];
                    arrayOfInt[2] = arrayOfInt[4];
                    arrayOfInt[3] = 1;
                    arrayOfInt[4] = 0;
                    i = 3;
                  } 
                } else {
                  arrayOfInt[0] = arrayOfInt[2];
                  arrayOfInt[1] = arrayOfInt[3];
                  arrayOfInt[2] = arrayOfInt[4];
                  arrayOfInt[3] = 1;
                  arrayOfInt[4] = 0;
                  i = 3;
                } 
              } else {
                arrayOfInt[++i] = arrayOfInt[i] + 1;
              } 
            } else {
              arrayOfInt[i] = arrayOfInt[i] + 1;
            } 
            j++;
            continue;
          } 
          boolean bool2 = bool;
          i = i1;
          if (a(arrayOfInt)) {
            bool2 = bool;
            i = i1;
            if (a(arrayOfInt, k, n, bool1)) {
              j = arrayOfInt[0];
              bool2 = bool;
              i = j;
              if (this.f) {
                bool2 = e();
                i = j;
              } 
            } 
          } 
          k += i;
          bool = bool2;
          continue label63;
        } 
        break;
      } 
      fam[] arrayOfFam = f();
      eqo.a((eqo[])arrayOfFam);
      return new far(arrayOfFam);
    } 
  }
  
  protected final List<fam> b() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fan.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */