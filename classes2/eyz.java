import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Formatter;

public final class eyz {
  private static final int a = 2;
  
  private static final int b = 3;
  
  private static final int c = 512;
  
  private static final eza d = new eza();
  
  private static int a(int paramInt) {
    return 2 << paramInt;
  }
  
  private static int a(eyv parameyv, int paramInt1, int paramInt2, boolean paramBoolean) {
    byte b;
    if (paramBoolean) {
      b = 1;
    } else {
      b = -1;
    } 
    eyr eyr = null;
    if (a(parameyv, paramInt1 - b))
      eyr = parameyv.a(paramInt1 - b).c(paramInt2); 
    if (eyr != null)
      return paramBoolean ? eyr.e() : eyr.d(); 
    eyr = parameyv.a(paramInt1).a(paramInt2);
    if (eyr != null)
      return paramBoolean ? eyr.d() : eyr.e(); 
    if (a(parameyv, paramInt1 - b))
      eyr = parameyv.a(paramInt1 - b).a(paramInt2); 
    if (eyr != null)
      return paramBoolean ? eyr.e() : eyr.d(); 
    int i = 0;
    paramInt2 = paramInt1;
    paramInt1 = i;
    while (a(parameyv, paramInt2 - b)) {
      i = paramInt2 - b;
      eyr[] arrayOfEyr = parameyv.a(i).b();
      int j = arrayOfEyr.length;
      for (paramInt2 = 0; paramInt2 < j; paramInt2++) {
        eyr eyr1 = arrayOfEyr[paramInt2];
        if (eyr1 != null) {
          if (paramBoolean) {
            paramInt2 = eyr1.e();
            return b * paramInt1 * (eyr1.e() - eyr1.d()) + paramInt2;
          } 
          paramInt2 = eyr1.d();
          return b * paramInt1 * (eyr1.e() - eyr1.d()) + paramInt2;
        } 
      } 
      paramInt1++;
      paramInt2 = i;
    } 
    return paramBoolean ? parameyv.e().a() : parameyv.e().b();
  }
  
  private static int a(int[] paramArrayOfint) {
    int j = -1;
    int k = paramArrayOfint.length;
    for (int i = 0; i < k; i++)
      j = Math.max(j, paramArrayOfint[i]); 
    return j;
  }
  
  private static int a(int[] paramArrayOfint1, int[] paramArrayOfint2, int paramInt) {
    if ((paramArrayOfint2 != null && paramArrayOfint2.length > paramInt / 2 + 3) || paramInt < 0 || paramInt > 512)
      throw epx.a(); 
    return d.a(paramArrayOfint1, paramInt, paramArrayOfint2);
  }
  
  private static etw a(int paramInt, int[] paramArrayOfint1, int[] paramArrayOfint2, int[] paramArrayOfint3, int[][] paramArrayOfint) {
    int[] arrayOfInt = new int[paramArrayOfint3.length];
    int i = 100;
    label27: while (i > 0) {
      int j;
      for (j = 0; j < arrayOfInt.length; j++)
        paramArrayOfint1[paramArrayOfint3[j]] = paramArrayOfint[j][arrayOfInt[j]]; 
      try {
        return a(paramArrayOfint1, paramInt, paramArrayOfint2);
      } catch (epx epx) {
        if (arrayOfInt.length == 0)
          throw epx.a(); 
        j = 0;
        while (true) {
          if (j < arrayOfInt.length)
            if (arrayOfInt[j] < (paramArrayOfint[j]).length - 1) {
              arrayOfInt[j] = arrayOfInt[j] + 1;
            } else {
              arrayOfInt[j] = 0;
              if (j == arrayOfInt.length - 1)
                throw epx.a(); 
              j++;
              continue;
            }  
          i--;
          continue label27;
        } 
      } 
    } 
    throw epx.a();
  }
  
  public static etw a(ett paramett, eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4, int paramInt1, int paramInt2) {
    boolean bool;
    eyx eyx1;
    eyx eyx2;
    eyq eyq = new eyq(paramett, parameqo1, parameqo2, parameqo3, parameqo4);
    parameqo2 = null;
    int i = 0;
    eyv eyv = null;
    parameqo4 = null;
    while (true) {
      eqo eqo2 = parameqo4;
      eqo eqo1 = parameqo2;
      if (i < 2) {
        eyx eyx3;
        eyx eyx4;
        if (parameqo1 != null)
          eyx4 = a(paramett, eyq, parameqo1, true, paramInt1, paramInt2); 
        if (parameqo3 != null)
          eyx3 = a(paramett, eyq, parameqo3, false, paramInt1, paramInt2); 
        eyv = a(eyx4, eyx3);
        if (eyv == null)
          throw eqh.a(); 
        if (i == 0 && eyv.e() != null && (eyv.e().c() < eyq.c() || eyv.e().d() > eyq.d())) {
          eyq = eyv.e();
          i++;
          continue;
        } 
        eyv.a(eyq);
        eyx1 = eyx3;
        eyx2 = eyx4;
      } 
      break;
    } 
    int k = eyv.b() + 1;
    eyv.a(0, eyx2);
    eyv.a(k, eyx1);
    if (eyx2 != null) {
      bool = true;
    } else {
      bool = false;
    } 
    int j = 1;
    i = paramInt2;
    paramInt2 = j;
    j = paramInt1;
    while (paramInt2 <= k) {
      eyw eyw;
      int m;
      if (bool) {
        m = paramInt2;
      } else {
        m = k - paramInt2;
      } 
      if (eyv.a(m) != null) {
        int i1 = i;
        int i2 = j;
        continue;
      } 
      if (m == 0 || m == k) {
        boolean bool1;
        if (m == 0) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        eyw = new eyx(eyq, bool1);
      } else {
        eyw = new eyw(eyq);
      } 
      eyv.a(m, eyw);
      int n = eyq.c();
      paramInt1 = -1;
      while (true) {
        int i2 = j;
        int i1 = i;
        n++;
      } 
    } 
    return a(eyv);
  }
  
  private static etw a(eyv parameyv) {
    boolean bool = false;
    eyp[][] arrayOfEyp = b(parameyv);
    a(parameyv, arrayOfEyp);
    ArrayList<Integer> arrayList1 = new ArrayList();
    int[] arrayOfInt = new int[parameyv.c() * parameyv.b()];
    ArrayList<int[]> arrayList = new ArrayList();
    ArrayList<Integer> arrayList2 = new ArrayList();
    int i;
    for (i = 0; i < parameyv.c(); i++) {
      for (int j = 0; j < parameyv.b(); j++) {
        int[] arrayOfInt2 = arrayOfEyp[i][j + 1].a();
        int k = parameyv.b() * i + j;
        if (arrayOfInt2.length == 0) {
          arrayList1.add(Integer.valueOf(k));
        } else if (arrayOfInt2.length == 1) {
          arrayOfInt[k] = arrayOfInt2[0];
        } else {
          arrayList2.add(Integer.valueOf(k));
          arrayList.add(arrayOfInt2);
        } 
      } 
    } 
    int[][] arrayOfInt1 = new int[arrayList.size()][];
    for (i = bool; i < arrayOfInt1.length; i++)
      arrayOfInt1[i] = arrayList.get(i); 
    return a(parameyv.d(), arrayOfInt, eyk.a(arrayList1), eyk.a(arrayList2), arrayOfInt1);
  }
  
  private static etw a(int[] paramArrayOfint1, int paramInt, int[] paramArrayOfint2) {
    if (paramArrayOfint1.length == 0)
      throw eqb.a(); 
    int i = 1 << paramInt + 1;
    int j = a(paramArrayOfint1, paramArrayOfint2, i);
    a(paramArrayOfint1, i);
    etw etw = eys.a(paramArrayOfint1, String.valueOf(paramInt));
    etw.a(Integer.valueOf(j));
    etw.b(Integer.valueOf(paramArrayOfint2.length));
    return etw;
  }
  
  private static eyq a(eyx parameyx) {
    if (parameyx != null) {
      int[] arrayOfInt = parameyx.d();
      if (arrayOfInt != null) {
        eyr[] arrayOfEyr;
        int n = a(arrayOfInt);
        int m = arrayOfInt.length;
        int k = 0;
        int i = 0;
        while (true) {
          int i1 = i;
          if (k < m) {
            i1 = arrayOfInt[k];
            i += n - i1;
            if (i1 > 0) {
              i1 = i;
            } else {
              k++;
              continue;
            } 
          } 
          arrayOfEyr = parameyx.b();
          i = 0;
          k = i1;
          while (k > 0 && arrayOfEyr[i] == null) {
            k--;
            i++;
          } 
          break;
        } 
        int j = arrayOfInt.length;
        i = 0;
        m = j - 1;
        while (true) {
          j = i;
          if (m >= 0) {
            i += n - arrayOfInt[m];
            if (arrayOfInt[m] > 0) {
              j = i;
            } else {
              m--;
              continue;
            } 
          } 
          for (i = arrayOfEyr.length; j > 0 && arrayOfEyr[--i] == null; i--)
            j--; 
          break;
        } 
        return parameyx.a().a(k, j, parameyx.f());
      } 
    } 
    return null;
  }
  
  private static eyr a(ett paramett, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4, int paramInt5, int paramInt6) {
    paramInt3 = b(paramett, paramInt1, paramInt2, paramBoolean, paramInt3, paramInt4);
    int[] arrayOfInt = a(paramett, paramInt1, paramInt2, paramBoolean, paramInt3, paramInt4);
    if (arrayOfInt == null)
      return null; 
    paramInt2 = eyk.a(arrayOfInt);
    if (paramBoolean) {
      paramInt1 = paramInt3;
      paramInt3 += paramInt2;
    } else {
      for (paramInt1 = 0; paramInt1 < arrayOfInt.length / 2; paramInt1++) {
        paramInt4 = arrayOfInt[paramInt1];
        arrayOfInt[paramInt1] = arrayOfInt[arrayOfInt.length - 1 - paramInt1];
        arrayOfInt[arrayOfInt.length - 1 - paramInt1] = paramInt4;
      } 
      paramInt1 = paramInt3 - paramInt2;
    } 
    if (!a(paramInt2, paramInt5, paramInt6))
      return null; 
    paramInt2 = eyy.a(arrayOfInt);
    paramInt4 = eyk.a(paramInt2);
    return (paramInt4 == -1) ? null : new eyr(paramInt1, paramInt3, c(paramInt2), paramInt4);
  }
  
  private static eyv a(eyx parameyx1, eyx parameyx2) {
    if (parameyx1 != null || parameyx2 != null) {
      eyo eyo = b(parameyx1, parameyx2);
      if (eyo != null)
        return new eyv(eyo, eyq.a(a(parameyx1), a(parameyx2))); 
    } 
    return null;
  }
  
  private static eyx a(ett paramett, eyq parameyq, eqo parameqo, boolean paramBoolean, int paramInt1, int paramInt2) {
    eyx eyx = new eyx(parameyq, paramBoolean);
    int i;
    for (i = 0; i < 2; i++) {
      byte b;
      if (i == 0) {
        b = 1;
      } else {
        b = -1;
      } 
      int j = (int)parameqo.a();
      for (int k = (int)parameqo.b(); k <= parameyq.d() && k >= parameyq.c(); k += b) {
        eyr eyr = a(paramett, 0, paramett.f(), paramBoolean, j, k, paramInt1, paramInt2);
        if (eyr != null) {
          eyx.a(k, eyr);
          if (paramBoolean) {
            j = eyr.d();
          } else {
            j = eyr.e();
          } 
        } 
      } 
    } 
    return eyx;
  }
  
  public static String a(eyp[][] paramArrayOfeyp) {
    Formatter formatter = new Formatter();
    for (int i = 0; i < paramArrayOfeyp.length; i++) {
      formatter.format("Row %2d: ", new Object[] { Integer.valueOf(i) });
      for (int j = 0; j < (paramArrayOfeyp[i]).length; j++) {
        eyp eyp1 = paramArrayOfeyp[i][j];
        if ((eyp1.a()).length == 0) {
          formatter.format("        ", (Object[])null);
        } else {
          formatter.format("%4d(%2d)", new Object[] { Integer.valueOf(eyp1.a()[0]), eyp1.b(eyp1.a()[0]) });
        } 
      } 
      formatter.format("%n", new Object[0]);
    } 
    String str = formatter.toString();
    formatter.close();
    return str;
  }
  
  private static void a(eyv parameyv, eyp[][] paramArrayOfeyp) {
    int[] arrayOfInt = paramArrayOfeyp[0][1].a();
    int i = parameyv.b() * parameyv.c() - a(parameyv.d());
    if (arrayOfInt.length == 0) {
      if (i < 1 || i > 928)
        throw eqh.a(); 
      paramArrayOfeyp[0][1].a(i);
      return;
    } 
    if (arrayOfInt[0] != i) {
      paramArrayOfeyp[0][1].a(i);
      return;
    } 
  }
  
  private static void a(int[] paramArrayOfint, int paramInt) {
    if (paramArrayOfint.length < 4)
      throw eqb.a(); 
    int i = paramArrayOfint[0];
    if (i > paramArrayOfint.length)
      throw eqb.a(); 
    if (i == 0) {
      if (paramInt < paramArrayOfint.length) {
        paramArrayOfint[0] = paramArrayOfint.length - paramInt;
        return;
      } 
    } else {
      return;
    } 
    throw eqb.a();
  }
  
  private static boolean a(int paramInt1, int paramInt2, int paramInt3) {
    return (paramInt2 - 2 <= paramInt1 && paramInt1 <= paramInt3 + 2);
  }
  
  private static boolean a(eyv parameyv, int paramInt) {
    return (paramInt >= 0 && paramInt <= parameyv.b() + 1);
  }
  
  private static int[] a(ett paramett, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4) {
    byte b;
    int[] arrayOfInt = new int[8];
    if (paramBoolean) {
      b = 1;
    } else {
      b = -1;
    } 
    boolean bool = paramBoolean;
    int i = 0;
    while (((paramBoolean && paramInt3 < paramInt2) || (!paramBoolean && paramInt3 >= paramInt1)) && i < arrayOfInt.length) {
      if (paramett.a(paramInt3, paramInt4) == bool) {
        arrayOfInt[i] = arrayOfInt[i] + 1;
        paramInt3 += b;
        continue;
      } 
      i++;
      if (!bool) {
        bool = true;
        continue;
      } 
      bool = false;
    } 
    return (i == arrayOfInt.length || (((paramBoolean && paramInt3 == paramInt2) || (!paramBoolean && paramInt3 == paramInt1)) && i == arrayOfInt.length - 1)) ? arrayOfInt : null;
  }
  
  private static int b(ett paramett, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4) {
    if (paramBoolean) {
      i = -1;
    } else {
      i = 1;
    } 
    int j = 0;
    int k = i;
    int i = paramInt3;
    while (j < 2) {
      while (((paramBoolean && i >= paramInt1) || (!paramBoolean && i < paramInt2)) && paramBoolean == paramett.a(i, paramInt4)) {
        if (Math.abs(paramInt3 - i) > 2)
          return paramInt3; 
        i += k;
      } 
      k = -k;
      if (!paramBoolean) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      } 
      j++;
    } 
    return i;
  }
  
  private static int b(int[] paramArrayOfint) {
    return (paramArrayOfint[0] - paramArrayOfint[2] + paramArrayOfint[4] - paramArrayOfint[6] + 9) % 9;
  }
  
  private static eyo b(eyx parameyx1, eyx parameyx2) {
    eyo eyo;
    if (parameyx1 != null) {
      eyo eyo1 = parameyx1.e();
      if (eyo1 == null)
        return (parameyx2 != null) ? parameyx2.e() : null; 
      if (parameyx2 != null) {
        eyo = parameyx2.e();
        if (eyo == null)
          return eyo1; 
      } else {
        return eyo1;
      } 
      return (eyo1.a() == eyo.a() || eyo1.b() == eyo.b() || eyo1.c() == eyo.c()) ? eyo1 : null;
    } 
    return (eyo != null) ? eyo.e() : null;
  }
  
  private static int[] b(int paramInt) {
    int[] arrayOfInt = new int[8];
    int j = 0;
    int i = arrayOfInt.length - 1;
    while (true) {
      int k = i;
      int m = j;
      if ((paramInt & 0x1) != j) {
        m = paramInt & 0x1;
        k = --i;
        if (i < 0)
          return arrayOfInt; 
      } 
      arrayOfInt[k] = arrayOfInt[k] + 1;
      paramInt >>= 1;
      i = k;
      j = m;
    } 
  }
  
  private static eyp[][] b(eyv parameyv) {
    eyp[][] arrayOfEyp = (eyp[][])Array.newInstance(eyp.class, new int[] { parameyv.c(), parameyv.b() + 2 });
    int i;
    for (i = 0; i < arrayOfEyp.length; i++) {
      for (int m = 0; m < (arrayOfEyp[i]).length; m++)
        arrayOfEyp[i][m] = new eyp(); 
    } 
    eyw[] arrayOfEyw = parameyv.a();
    int k = arrayOfEyw.length;
    i = 0;
    int j = 0;
    while (i < k) {
      eyw eyw = arrayOfEyw[i];
      if (eyw != null)
        for (eyr eyr : eyw.b()) {
          if (eyr != null) {
            int m = eyr.h();
            if (m >= 0) {
              if (m >= arrayOfEyp.length)
                throw eqb.a(); 
              arrayOfEyp[m][j].a(eyr.g());
            } 
          } 
        }  
      j++;
      i++;
    } 
    return arrayOfEyp;
  }
  
  private static int c(int paramInt) {
    return b(b(paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */