import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.util.Arrays;

final class eys {
  private static final int a = 900;
  
  private static final int b = 901;
  
  private static final int c = 902;
  
  private static final int d = 924;
  
  private static final int e = 925;
  
  private static final int f = 926;
  
  private static final int g = 927;
  
  private static final int h = 928;
  
  private static final int i = 923;
  
  private static final int j = 922;
  
  private static final int k = 913;
  
  private static final int l = 15;
  
  private static final int m = 25;
  
  private static final int n = 27;
  
  private static final int o = 27;
  
  private static final int p = 28;
  
  private static final int q = 28;
  
  private static final int r = 29;
  
  private static final int s = 29;
  
  private static final char[] t = new char[] { 
      ';', '<', '>', '@', '[', '\\', ']', '_', '`', '~', 
      '!', '\r', '\t', ',', ':', '\n', '-', '.', '$', '/', 
      '"', '|', '*', '(', ')', '?', '{', '}', '\'' };
  
  private static final char[] u = new char[] { 
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
      '&', '\r', '\t', ',', ':', '#', '-', '.', '$', '/', 
      '+', '%', '*', '=', '^' };
  
  private static final Charset v = Charset.forName("ISO-8859-1");
  
  private static final BigInteger[] w = new BigInteger[16];
  
  private static final int x = 2;
  
  static {
    w[0] = BigInteger.ONE;
    BigInteger bigInteger = BigInteger.valueOf(900L);
    w[1] = bigInteger;
    for (int i = 2; i < w.length; i++)
      w[i] = w[i - 1].multiply(bigInteger); 
  }
  
  private static int a(int paramInt1, int[] paramArrayOfint, Charset paramCharset, int paramInt2, StringBuilder paramStringBuilder) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    if (paramInt1 == 901) {
      int m = 0;
      long l = 0L;
      int[] arrayOfInt = new int[6];
      int j = 0;
      int k = paramArrayOfint[paramInt2];
      paramInt1 = paramInt2 + 1;
      for (paramInt2 = m;; paramInt2 = m) {
        if (paramInt1 < paramArrayOfint[0] && !j) {
          m = paramInt2 + 1;
          arrayOfInt[paramInt2] = k;
          l = l * 900L + k;
          paramInt2 = paramInt1 + 1;
          k = paramArrayOfint[paramInt1];
          if (k == 900 || k == 901 || k == 902 || k == 924 || k == 928 || k == 923 || k == 922) {
            j = 1;
            paramInt1 = paramInt2 - 1;
            paramInt2 = m;
            continue;
          } 
          if (m % 5 == 0 && m > 0) {
            for (paramInt1 = 0; paramInt1 < 6; paramInt1++)
              byteArrayOutputStream.write((byte)(int)(l >> (5 - paramInt1) * 8)); 
            l = 0L;
            m = 0;
            paramInt1 = paramInt2;
            paramInt2 = m;
            continue;
          } 
        } else {
          j = paramInt2;
          if (paramInt1 == paramArrayOfint[0]) {
            j = paramInt2;
            if (k < 900) {
              arrayOfInt[paramInt2] = k;
              j = paramInt2 + 1;
            } 
          } 
          for (paramInt2 = 0; paramInt2 < j; paramInt2++)
            byteArrayOutputStream.write((byte)arrayOfInt[paramInt2]); 
          k = paramInt1;
          paramStringBuilder.append(new String(byteArrayOutputStream.toByteArray(), paramCharset));
          return k;
        } 
        paramInt1 = paramInt2;
      } 
    } 
    int i = paramInt2;
    if (paramInt1 == 924) {
      paramInt1 = 0;
      long l = 0L;
      int k = 0;
      int j = paramInt2;
      paramInt2 = paramInt1;
      while (true) {
        i = j;
        if (j < paramArrayOfint[0]) {
          i = j;
          if (!k) {
            int m;
            long l1;
            paramInt1 = j + 1;
            j = paramArrayOfint[j];
            if (j < 900) {
              m = paramInt2 + 1;
              l1 = l * 900L + j;
              i = k;
            } else if (j == 900 || j == 901 || j == 902 || j == 924 || j == 928 || j == 923 || j == 922) {
              paramInt1--;
              i = 1;
              m = paramInt2;
              l1 = l;
            } else {
              i = k;
              m = paramInt2;
              l1 = l;
            } 
            k = i;
            paramInt2 = m;
            l = l1;
            j = paramInt1;
            if (m % 5 == 0) {
              k = i;
              paramInt2 = m;
              l = l1;
              j = paramInt1;
              if (m > 0) {
                for (paramInt2 = 0; paramInt2 < 6; paramInt2++)
                  byteArrayOutputStream.write((byte)(int)(l1 >> (5 - paramInt2) * 8)); 
                l = 0L;
                paramInt2 = 0;
                k = i;
                j = paramInt1;
              } 
            } 
            continue;
          } 
        } 
        paramStringBuilder.append(new String(byteArrayOutputStream.toByteArray(), paramCharset));
        return i;
      } 
    } 
    paramStringBuilder.append(new String(byteArrayOutputStream.toByteArray(), paramCharset));
    return i;
  }
  
  private static int a(int[] paramArrayOfint, int paramInt, eym parameym) {
    if (paramInt + 2 > paramArrayOfint[0])
      throw eqb.a(); 
    int[] arrayOfInt = new int[2];
    int i = 0;
    while (i < 2) {
      arrayOfInt[i] = paramArrayOfint[paramInt];
      i++;
      paramInt++;
    } 
    parameym.a(Integer.parseInt(a(arrayOfInt, 2)));
    StringBuilder stringBuilder = new StringBuilder();
    i = a(paramArrayOfint, paramInt, stringBuilder);
    parameym.a(stringBuilder.toString());
    if (paramArrayOfint[i] == 923) {
      paramInt = i + 1;
      int[] arrayOfInt1 = new int[paramArrayOfint[0] - paramInt];
      i = 0;
      boolean bool;
      for (bool = false; paramInt < paramArrayOfint[0] && !bool; bool = true) {
        int j = paramInt + 1;
        paramInt = paramArrayOfint[paramInt];
        if (paramInt < 900) {
          arrayOfInt1[i] = paramInt;
          i++;
          paramInt = j;
          continue;
        } 
        switch (paramInt) {
          default:
            throw eqb.a();
          case 922:
            break;
        } 
        parameym.a(true);
        paramInt = j + 1;
      } 
      parameym.a(Arrays.copyOf(arrayOfInt1, i));
      return paramInt;
    } 
    paramInt = i;
    if (paramArrayOfint[i] == 922) {
      parameym.a(true);
      return i + 1;
    } 
    return paramInt;
  }
  
  private static int a(int[] paramArrayOfint, int paramInt, StringBuilder paramStringBuilder) {
    int[] arrayOfInt1 = new int[(paramArrayOfint[0] - paramInt) * 2];
    int[] arrayOfInt2 = new int[(paramArrayOfint[0] - paramInt) * 2];
    boolean bool = false;
    int i;
    for (i = 0; paramInt < paramArrayOfint[0] && !bool; i++) {
      int j = paramInt + 1;
      paramInt = paramArrayOfint[paramInt];
      if (paramInt < 900) {
        arrayOfInt1[i] = paramInt / 30;
        arrayOfInt1[i + 1] = paramInt % 30;
        i += 2;
        paramInt = j;
        continue;
      } 
      switch (paramInt) {
        default:
          paramInt = j;
          continue;
        case 900:
          arrayOfInt1[i] = 900;
          i++;
          paramInt = j;
          continue;
        case 901:
        case 902:
        case 922:
        case 923:
        case 924:
        case 928:
          paramInt = j - 1;
          bool = true;
          continue;
        case 913:
          break;
      } 
      arrayOfInt1[i] = 913;
      paramInt = j + 1;
      arrayOfInt2[i] = paramArrayOfint[j];
    } 
    a(arrayOfInt1, arrayOfInt2, i, paramStringBuilder);
    return paramInt;
  }
  
  static etw a(int[] paramArrayOfint, String paramString) {
    StringBuilder stringBuilder = new StringBuilder(paramArrayOfint.length * 2);
    Charset charset = v;
    int i = 2;
    int j = paramArrayOfint[1];
    eym eym = new eym();
    while (i < paramArrayOfint[0]) {
      switch (j) {
        default:
          i = a(paramArrayOfint, i - 1, stringBuilder);
          if (i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 900:
          i = a(paramArrayOfint, i, stringBuilder);
          if (i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 901:
        case 924:
          i = a(j, paramArrayOfint, charset, i, stringBuilder);
          if (i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 913:
          j = i + 1;
          stringBuilder.append((char)paramArrayOfint[i]);
          i = j;
          if (i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 902:
          i = b(paramArrayOfint, i, stringBuilder);
          if (i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 927:
          j = i + 1;
          charset = Charset.forName(etv.getCharacterSetECIByValue(paramArrayOfint[i]).name());
          i = j;
          if (i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 926:
          i += 2;
          if (i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 925:
          if (++i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 928:
          i = a(paramArrayOfint, i, eym);
          if (i < paramArrayOfint.length) {
            int k = i + 1;
            j = paramArrayOfint[i];
            i = k;
            continue;
          } 
          throw eqb.a();
        case 922:
        case 923:
          break;
      } 
      throw eqb.a();
    } 
    if (stringBuilder.length() == 0)
      throw eqb.a(); 
    etw etw = new etw(null, stringBuilder.toString(), null, paramString);
    etw.a(eym);
    return etw;
  }
  
  private static String a(int[] paramArrayOfint, int paramInt) {
    BigInteger bigInteger = BigInteger.ZERO;
    for (int i = 0; i < paramInt; i++)
      bigInteger = bigInteger.add(w[paramInt - i - 1].multiply(BigInteger.valueOf(paramArrayOfint[i]))); 
    String str = bigInteger.toString();
    if (str.charAt(0) != '1')
      throw eqb.a(); 
    return str.substring(1);
  }
  
  private static void a(int[] paramArrayOfint1, int[] paramArrayOfint2, int paramInt, StringBuilder paramStringBuilder) {
    eyu eyu1 = eyu.ALPHA;
    eyu eyu2 = eyu.ALPHA;
    int i = 0;
    while (true) {
      char c2;
      if (i < paramInt) {
        char c;
        eyu eyu3;
        int j = paramArrayOfint1[i];
        c2 = Character.MIN_VALUE;
        switch (eyt.a[eyu1.ordinal()]) {
          default:
            eyu3 = eyu2;
            c = c2;
            if (c)
              paramStringBuilder.append(c); 
            i++;
            eyu2 = eyu3;
            continue;
          case 1:
            if (j < 26) {
              c = (char)(j + 65);
              eyu3 = eyu2;
            } else if (j == 26) {
              c = ' ';
              eyu3 = eyu2;
            } else if (j == 27) {
              eyu1 = eyu.LOWER;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 28) {
              eyu1 = eyu.MIXED;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 29) {
              eyu2 = eyu.PUNCT_SHIFT;
              c = c2;
              eyu3 = eyu1;
              eyu1 = eyu2;
            } else if (j == 913) {
              paramStringBuilder.append((char)paramArrayOfint2[i]);
              c = c2;
              eyu3 = eyu2;
            } else {
              c = c2;
              eyu3 = eyu2;
              if (j == 900) {
                eyu1 = eyu.ALPHA;
                c = c2;
                eyu3 = eyu2;
              } 
            } 
            if (c != '\000')
              paramStringBuilder.append(c); 
            i++;
            eyu2 = eyu3;
            continue;
          case 2:
            if (j < 26) {
              c = (char)(j + 97);
              eyu3 = eyu2;
            } else if (j == 26) {
              c = ' ';
              eyu3 = eyu2;
            } else if (j == 27) {
              eyu2 = eyu.ALPHA_SHIFT;
              c = c2;
              eyu3 = eyu1;
              eyu1 = eyu2;
            } else if (j == 28) {
              eyu1 = eyu.MIXED;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 29) {
              eyu2 = eyu.PUNCT_SHIFT;
              c = c2;
              eyu3 = eyu1;
              eyu1 = eyu2;
            } else if (j == 913) {
              paramStringBuilder.append((char)paramArrayOfint2[i]);
              c = c2;
              eyu3 = eyu2;
            } else {
              c = c2;
              eyu3 = eyu2;
              if (j == 900) {
                eyu1 = eyu.ALPHA;
                c = c2;
                eyu3 = eyu2;
              } 
            } 
            if (c != '\000')
              paramStringBuilder.append(c); 
            i++;
            eyu2 = eyu3;
            continue;
          case 3:
            if (j < 25) {
              c = u[j];
              eyu3 = eyu2;
            } else if (j == 25) {
              eyu1 = eyu.PUNCT;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 26) {
              c = ' ';
              eyu3 = eyu2;
            } else if (j == 27) {
              eyu1 = eyu.LOWER;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 28) {
              eyu1 = eyu.ALPHA;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 29) {
              eyu2 = eyu.PUNCT_SHIFT;
              c = c2;
              eyu3 = eyu1;
              eyu1 = eyu2;
            } else if (j == 913) {
              paramStringBuilder.append((char)paramArrayOfint2[i]);
              c = c2;
              eyu3 = eyu2;
            } else {
              c = c2;
              eyu3 = eyu2;
              if (j == 900) {
                eyu1 = eyu.ALPHA;
                c = c2;
                eyu3 = eyu2;
              } 
            } 
            if (c != '\000')
              paramStringBuilder.append(c); 
            i++;
            eyu2 = eyu3;
            continue;
          case 4:
            if (j < 29) {
              c = t[j];
              eyu3 = eyu2;
            } else if (j == 29) {
              eyu1 = eyu.ALPHA;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 913) {
              paramStringBuilder.append((char)paramArrayOfint2[i]);
              c = c2;
              eyu3 = eyu2;
            } else {
              c = c2;
              eyu3 = eyu2;
              if (j == 900) {
                eyu1 = eyu.ALPHA;
                c = c2;
                eyu3 = eyu2;
              } 
            } 
            if (c != '\000')
              paramStringBuilder.append(c); 
            i++;
            eyu2 = eyu3;
            continue;
          case 5:
            if (j < 26) {
              c = (char)(j + 65);
              eyu1 = eyu2;
              eyu3 = eyu2;
            } else if (j == 26) {
              c = ' ';
              eyu1 = eyu2;
              eyu3 = eyu2;
            } else if (j == 900) {
              eyu1 = eyu.ALPHA;
              c = c2;
              eyu3 = eyu2;
            } else {
              break;
            } 
            if (c != '\000')
              paramStringBuilder.append(c); 
            i++;
            eyu2 = eyu3;
            continue;
          case 6:
            if (j < 29) {
              c = t[j];
              eyu1 = eyu2;
              eyu3 = eyu2;
            } else if (j == 29) {
              eyu1 = eyu.ALPHA;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 913) {
              paramStringBuilder.append((char)paramArrayOfint2[i]);
              eyu1 = eyu2;
              c = c2;
              eyu3 = eyu2;
            } else if (j == 900) {
              eyu1 = eyu.ALPHA;
              c = c2;
              eyu3 = eyu2;
            } else {
              break;
            } 
            if (c != '\000')
              paramStringBuilder.append(c); 
            i++;
            eyu2 = eyu3;
            continue;
        } 
      } else {
        return;
      } 
      eyu1 = eyu2;
      char c1 = c2;
      eyu eyu = eyu2;
      if (c1 != '\000')
        paramStringBuilder.append(c1); 
      i++;
      eyu2 = eyu;
    } 
  }
  
  private static int b(int[] paramArrayOfint, int paramInt, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = new int[15];
    boolean bool2 = false;
    boolean bool1 = false;
    int i = paramInt;
    while (true) {
      while (true)
        break; 
      if (SYNTHETIC_LOCAL_VARIABLE_6 > null) {
        paramStringBuilder.append(a(arrayOfInt, SYNTHETIC_LOCAL_VARIABLE_6));
        bool1 = false;
        Object object = SYNTHETIC_LOCAL_VARIABLE_4;
        i = paramInt;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eys.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */