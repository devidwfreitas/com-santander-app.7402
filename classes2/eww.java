import java.util.EnumMap;
import java.util.Map;

public abstract class eww implements eqk {
  protected static float a(int[] paramArrayOfint1, int[] paramArrayOfint2, float paramFloat) {
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
  
  protected static void a(ets paramets, int paramInt, int[] paramArrayOfint) {
    // Byte code:
    //   0: aload_2
    //   1: arraylength
    //   2: istore #6
    //   4: aload_2
    //   5: iconst_0
    //   6: iload #6
    //   8: iconst_0
    //   9: invokestatic fill : ([IIII)V
    //   12: aload_0
    //   13: invokevirtual a : ()I
    //   16: istore #7
    //   18: iload_1
    //   19: iload #7
    //   21: if_icmplt -> 28
    //   24: invokestatic a : ()Leqh;
    //   27: athrow
    //   28: aload_0
    //   29: iload_1
    //   30: invokevirtual a : (I)Z
    //   33: ifne -> 82
    //   36: iconst_1
    //   37: istore_3
    //   38: iconst_0
    //   39: istore #5
    //   41: iload_1
    //   42: istore #4
    //   44: iload #5
    //   46: istore_1
    //   47: iload #4
    //   49: iload #7
    //   51: if_icmpge -> 151
    //   54: aload_0
    //   55: iload #4
    //   57: invokevirtual a : (I)Z
    //   60: iload_3
    //   61: ixor
    //   62: ifeq -> 87
    //   65: aload_2
    //   66: iload_1
    //   67: aload_2
    //   68: iload_1
    //   69: iaload
    //   70: iconst_1
    //   71: iadd
    //   72: iastore
    //   73: iload #4
    //   75: iconst_1
    //   76: iadd
    //   77: istore #4
    //   79: goto -> 47
    //   82: iconst_0
    //   83: istore_3
    //   84: goto -> 38
    //   87: iload_1
    //   88: iconst_1
    //   89: iadd
    //   90: istore #5
    //   92: iload #5
    //   94: iload #6
    //   96: if_icmpne -> 126
    //   99: iload #5
    //   101: iload #6
    //   103: if_icmpeq -> 150
    //   106: iload #5
    //   108: iload #6
    //   110: iconst_1
    //   111: isub
    //   112: if_icmpne -> 122
    //   115: iload #4
    //   117: iload #7
    //   119: if_icmpeq -> 150
    //   122: invokestatic a : ()Leqh;
    //   125: athrow
    //   126: aload_2
    //   127: iload #5
    //   129: iconst_1
    //   130: iastore
    //   131: iload_3
    //   132: ifne -> 145
    //   135: iconst_1
    //   136: istore_1
    //   137: iload_1
    //   138: istore_3
    //   139: iload #5
    //   141: istore_1
    //   142: goto -> 73
    //   145: iconst_0
    //   146: istore_1
    //   147: goto -> 137
    //   150: return
    //   151: iload_1
    //   152: istore #5
    //   154: goto -> 99
  }
  
  private eqm b(epw paramepw, Map<epy, ?> paramMap) {
    int i;
    int m = paramepw.a();
    int k = paramepw.b();
    ets ets = new ets(m);
    if (paramMap != null && paramMap.containsKey(epy.TRY_HARDER)) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i) {
      j = 8;
    } else {
      j = 5;
    } 
    int n = Math.max(1, k >> j);
    if (i) {
      i = k;
    } else {
      i = 15;
    } 
    int j = 0;
    while (true) {
      if (j < i) {
        int i1;
        int i2 = (j + 1) / 2;
        if ((j & 0x1) == 0) {
          i1 = 1;
        } else {
          i1 = 0;
        } 
        if (i1) {
          i1 = i2;
        } else {
          i1 = -i2;
        } 
        i2 = (k >> 1) + i1 * n;
        if (i2 >= 0 && i2 < k) {
          Map<epy, ?> map;
          ets ets1;
          try {
            ets ets2 = paramepw.a(i2, ets);
            ets = ets2;
            i1 = 0;
            while (true) {
              ets1 = ets;
              map = paramMap;
              if (i1 < 2) {
                if (i1 == 1) {
                  ets.e();
                  if (paramMap != null && paramMap.containsKey(epy.NEED_RESULT_POINT_CALLBACK)) {
                    map = new EnumMap<epy, Object>(epy.class);
                    map.putAll(paramMap);
                    map.remove(epy.NEED_RESULT_POINT_CALLBACK);
                    paramMap = map;
                  } 
                } 
                try {
                  eqm eqm = a(i2, ets, paramMap);
                  if (i1 == 1) {
                    eqm.a(eqn.ORIENTATION, Integer.valueOf(180));
                    eqo[] arrayOfEqo = eqm.c();
                    if (arrayOfEqo != null) {
                      arrayOfEqo[0] = new eqo(m - arrayOfEqo[0].a() - 1.0F, arrayOfEqo[0].b());
                      arrayOfEqo[1] = new eqo(m - arrayOfEqo[1].a() - 1.0F, arrayOfEqo[1].b());
                    } 
                  } 
                  return eqm;
                } catch (eql eql) {
                  i1++;
                  continue;
                } 
              } 
              break;
            } 
          } catch (eqh eqh) {
            map = paramMap;
            ets1 = ets;
          } 
          j++;
          ets = ets1;
          paramMap = map;
          continue;
        } 
      } 
      throw eqh.a();
    } 
  }
  
  protected static void b(ets paramets, int paramInt, int[] paramArrayOfint) {
    int i = paramArrayOfint.length;
    boolean bool = paramets.a(paramInt);
    while (paramInt > 0 && i >= 0) {
      int j = paramInt - 1;
      paramInt = j;
      if (paramets.a(j) != bool) {
        i--;
        if (!bool) {
          bool = true;
          paramInt = j;
          continue;
        } 
        bool = false;
        paramInt = j;
      } 
    } 
    if (i >= 0)
      throw eqh.a(); 
    a(paramets, paramInt + 1, paramArrayOfint);
  }
  
  public abstract eqm a(int paramInt, ets paramets, Map<epy, ?> paramMap);
  
  public eqm a(epw paramepw) {
    return a(paramepw, null);
  }
  
  public eqm a(epw paramepw, Map<epy, ?> paramMap) {
    try {
      return b(paramepw, paramMap);
    } catch (eqh eqh) {
      int i;
      eqo[] arrayOfEqo;
      if (paramMap != null && paramMap.containsKey(epy.TRY_HARDER)) {
        i = 1;
      } else {
        i = 0;
      } 
      if (i && paramepw.e()) {
        paramepw = paramepw.f();
        eqm eqm = b(paramepw, paramMap);
        Map<eqn, Object> map = eqm.e();
        if (map != null && map.containsKey(eqn.ORIENTATION)) {
          i = (((Integer)map.get(eqn.ORIENTATION)).intValue() + 270) % 360;
        } else {
          i = 270;
        } 
        eqm.a(eqn.ORIENTATION, Integer.valueOf(i));
        arrayOfEqo = eqm.c();
        if (arrayOfEqo != null) {
          int j = paramepw.b();
          for (i = 0; i < arrayOfEqo.length; i++)
            arrayOfEqo[i] = new eqo(j - arrayOfEqo[i].b() - 1.0F, arrayOfEqo[i].a()); 
        } 
        return eqm;
      } 
      throw arrayOfEqo;
    } 
  }
  
  public void a() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eww.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */