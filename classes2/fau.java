import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public final class fau {
  static final String a = "ISO-8859-1";
  
  private static final int[] b = new int[] { 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
      -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, 
      -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 
      2, 3, 4, 5, 6, 7, 8, 9, 44, -1, 
      -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 
      15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
      25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 
      35, -1, -1, -1, -1, -1 };
  
  static int a(int paramInt) {
    return (paramInt < b.length) ? b[paramInt] : -1;
  }
  
  private static int a(ets paramets, fac paramfac, fag paramfag, fat paramfat) {
    int j = Integer.MAX_VALUE;
    int k = -1;
    int i;
    for (i = 0; i < 8; i++) {
      fax.a(paramets, paramfac, paramfag, i, paramfat);
      int m = a(paramfat);
      if (m < j) {
        k = i;
        j = m;
      } 
    } 
    return k;
  }
  
  private static int a(fat paramfat) {
    return faw.a(paramfat) + faw.b(paramfat) + faw.c(paramfat) + faw.d(paramfat);
  }
  
  static ets a(ets paramets, int paramInt1, int paramInt2, int paramInt3) {
    if (paramets.b() != paramInt2)
      throw new eqr("Number of bits and data bytes does not match"); 
    ArrayList<fas> arrayList = new ArrayList(paramInt3);
    int k = 0;
    int i = 0;
    int m = 0;
    int j;
    for (j = 0; k < paramInt3; j = n + j) {
      int[] arrayOfInt1 = new int[1];
      int[] arrayOfInt2 = new int[1];
      a(paramInt1, paramInt2, paramInt3, k, arrayOfInt1, arrayOfInt2);
      int n = arrayOfInt1[0];
      byte[] arrayOfByte1 = new byte[n];
      paramets.a(j * 8, arrayOfByte1, 0, n);
      byte[] arrayOfByte2 = a(arrayOfByte1, arrayOfInt2[0]);
      arrayList.add(new fas(arrayOfByte1, arrayOfByte2));
      m = Math.max(m, n);
      i = Math.max(i, arrayOfByte2.length);
      n = arrayOfInt1[0];
      k++;
    } 
    if (paramInt2 != j)
      throw new eqr("Data bytes does not match offset"); 
    paramets = new ets();
    for (paramInt2 = 0; paramInt2 < m; paramInt2++) {
      Iterator<fas> iterator = arrayList.iterator();
      while (iterator.hasNext()) {
        byte[] arrayOfByte = ((fas)iterator.next()).a();
        if (paramInt2 < arrayOfByte.length)
          paramets.c(arrayOfByte[paramInt2], 8); 
      } 
    } 
    for (paramInt2 = 0; paramInt2 < i; paramInt2++) {
      Iterator<fas> iterator = arrayList.iterator();
      while (iterator.hasNext()) {
        byte[] arrayOfByte = ((fas)iterator.next()).b();
        if (paramInt2 < arrayOfByte.length)
          paramets.c(arrayOfByte[paramInt2], 8); 
      } 
    } 
    if (paramInt1 != paramets.b())
      throw new eqr("Interleaving error: " + paramInt1 + " and " + paramets.b() + " differ."); 
    return paramets;
  }
  
  public static fae a(String paramString) {
    return a(paramString, (String)null);
  }
  
  private static fae a(String paramString1, String paramString2) {
    int i = 0;
    if ("Shift_JIS".equals(paramString2))
      return b(paramString1) ? fae.KANJI : fae.BYTE; 
    boolean bool2 = false;
    boolean bool1 = false;
    while (i < paramString1.length()) {
      char c = paramString1.charAt(i);
      if (c >= '0' && c <= '9') {
        bool1 = true;
      } else if (a(c) != -1) {
        bool2 = true;
      } else {
        return fae.BYTE;
      } 
      i++;
    } 
    return bool2 ? fae.ALPHANUMERIC : (bool1 ? fae.NUMERIC : fae.BYTE);
  }
  
  private static fag a(int paramInt, fac paramfac) {
    for (int i = 1; i <= 40; i++) {
      fag fag = fag.b(i);
      if (fag.c() - fag.a(paramfac).c() >= (paramInt + 7) / 8)
        return fag; 
    } 
    throw new eqr("Data too big");
  }
  
  public static fay a(String paramString, fac paramfac) {
    return a(paramString, paramfac, (Map<eqa, ?>)null);
  }
  
  public static fay a(String paramString, fac paramfac, Map<eqa, ?> paramMap) {
    ets ets2;
    String str1;
    if (paramMap == null) {
      paramMap = null;
    } else {
      str1 = (String)paramMap.get(eqa.CHARACTER_SET);
    } 
    String str2 = str1;
    if (str1 == null)
      str2 = "ISO-8859-1"; 
    fae fae = a(paramString, str2);
    ets ets3 = new ets();
    if (fae == fae.BYTE && !"ISO-8859-1".equals(str2)) {
      etv etv = etv.getCharacterSetECIByName(str2);
      if (etv != null)
        a(etv, ets3); 
    } 
    a(fae, ets3);
    ets ets4 = new ets();
    a(paramString, fae, ets4, str2);
    fag fag = a(ets3.a() + fae.getCharacterCountBits(fag.b(1)) + ets4.a(), paramfac);
    int i = ets3.a();
    fag = a(fae.getCharacterCountBits(fag) + i + ets4.a(), paramfac);
    ets ets5 = new ets();
    ets5.a(ets3);
    if (fae == fae.BYTE) {
      i = ets4.b();
      a(i, fag, fae, ets5);
      ets5.a(ets4);
      fai fai1 = fag.a(paramfac);
      i = fag.c() - fai1.c();
      a(i, ets5);
      ets2 = a(ets5, fag.c(), i, fai1.b());
      fay fay1 = new fay();
      fay1.a(paramfac);
      fay1.a(fae);
      fay1.a(fag);
      i = fag.d();
      fat = new fat(i, i);
      i = a(ets2, paramfac, fag, fat);
      fay1.a(i);
      fax.a(ets2, paramfac, fag, i, fat);
      fay1.a(fat);
      return fay1;
    } 
    i = ets2.length();
    a(i, fag, (fae)fat, ets5);
    ets5.a(ets4);
    fai fai = fag.a(paramfac);
    i = fag.c() - fai.c();
    a(i, ets5);
    ets ets1 = a(ets5, fag.c(), i, fai.b());
    fay fay = new fay();
    fay.a(paramfac);
    fay.a((fae)fat);
    fay.a(fag);
    i = fag.d();
    fat fat = new fat(i, i);
    i = a(ets1, paramfac, fag, fat);
    fay.a(i);
    fax.a(ets1, paramfac, fag, i, fat);
    fay.a(fat);
    return fay;
  }
  
  static void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint1, int[] paramArrayOfint2) {
    if (paramInt4 >= paramInt3)
      throw new eqr("Block ID too large"); 
    int i = paramInt1 % paramInt3;
    int j = paramInt3 - i;
    int k = paramInt1 / paramInt3;
    paramInt2 /= paramInt3;
    int m = paramInt2 + 1;
    int n = k - paramInt2;
    k = k + 1 - m;
    if (n != k)
      throw new eqr("EC bytes mismatch"); 
    if (paramInt3 != j + i)
      throw new eqr("RS blocks mismatch"); 
    if (paramInt1 != i * (m + k) + (paramInt2 + n) * j)
      throw new eqr("Total bytes mismatch"); 
    if (paramInt4 < j) {
      paramArrayOfint1[0] = paramInt2;
      paramArrayOfint2[0] = n;
      return;
    } 
    paramArrayOfint1[0] = m;
    paramArrayOfint2[0] = k;
  }
  
  static void a(int paramInt, ets paramets) {
    int j = paramInt * 8;
    if (paramets.a() > j)
      throw new eqr("data bits cannot fit in the QR Code" + paramets.a() + " > " + j); 
    int i;
    for (i = 0; i < 4 && paramets.a() < j; i++)
      paramets.a(false); 
    i = paramets.a() & 0x7;
    if (i > 0)
      while (i < 8) {
        paramets.a(false);
        i++;
      }  
    int k = paramets.b();
    for (i = 0; i < paramInt - k; i++) {
      byte b;
      if ((i & 0x1) == 0) {
        b = 236;
      } else {
        b = 17;
      } 
      paramets.c(b, 8);
    } 
    if (paramets.a() != j)
      throw new eqr("Bits size does not equal capacity"); 
  }
  
  static void a(int paramInt, fag paramfag, fae paramfae, ets paramets) {
    int i = paramfae.getCharacterCountBits(paramfag);
    if (paramInt >= 1 << i)
      throw new eqr(paramInt + " is bigger than " + ((1 << i) - 1)); 
    paramets.c(paramInt, i);
  }
  
  private static void a(etv parametv, ets paramets) {
    paramets.c(fae.ECI.getBits(), 4);
    paramets.c(parametv.getValue(), 8);
  }
  
  static void a(fae paramfae, ets paramets) {
    paramets.c(paramfae.getBits(), 4);
  }
  
  static void a(CharSequence paramCharSequence, ets paramets) {
    int j = paramCharSequence.length();
    for (int i = 0; i < j; i++) {
      int k = paramCharSequence.charAt(i) - 48;
      if (i + 2 < j) {
        paramets.c(k * 100 + (paramCharSequence.charAt(i + 1) - 48) * 10 + paramCharSequence.charAt(i + 2) - 48, 10);
        i += 3;
        continue;
      } 
      if (i + 1 < j) {
        paramets.c(k * 10 + paramCharSequence.charAt(i + 1) - 48, 7);
        i += 2;
        continue;
      } 
      paramets.c(k, 4);
    } 
  }
  
  static void a(String paramString, ets paramets) {
    try {
      byte[] arrayOfByte = paramString.getBytes("Shift_JIS");
      int j = arrayOfByte.length;
      int i = 0;
      while (true) {
        if (i < j) {
          int k = (arrayOfByte[i] & 0xFF) << 8 | arrayOfByte[i + 1] & 0xFF;
          if (k >= 33088 && k <= 40956) {
            k -= 33088;
          } else if (k >= 57408 && k <= 60351) {
            k -= 49472;
          } else {
            k = -1;
          } 
          if (k == -1)
            throw new eqr("Invalid byte sequence"); 
          paramets.c((k & 0xFF) + (k >> 8) * 192, 13);
          i += 2;
          continue;
        } 
        return;
      } 
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new eqr(unsupportedEncodingException);
    } 
  }
  
  static void a(String paramString1, ets paramets, String paramString2) {
    try {
      byte[] arrayOfByte = paramString1.getBytes(paramString2);
      int j = arrayOfByte.length;
      for (int i = 0; i < j; i++)
        paramets.c(arrayOfByte[i], 8); 
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new eqr(unsupportedEncodingException);
    } 
  }
  
  static void a(String paramString1, fae paramfae, ets paramets, String paramString2) {
    switch (fav.a[paramfae.ordinal()]) {
      default:
        throw new eqr("Invalid mode: " + paramfae);
      case 1:
        a(paramString1, paramets);
        return;
      case 2:
        b(paramString1, paramets);
        return;
      case 3:
        a(paramString1, paramets, paramString2);
        return;
      case 4:
        break;
    } 
    a(paramString1, paramets);
  }
  
  static byte[] a(byte[] paramArrayOfbyte, int paramInt) {
    boolean bool = false;
    int j = paramArrayOfbyte.length;
    int[] arrayOfInt = new int[j + paramInt];
    int i;
    for (i = 0; i < j; i++)
      arrayOfInt[i] = paramArrayOfbyte[i] & 0xFF; 
    (new euk(euh.e)).a(arrayOfInt, paramInt);
    paramArrayOfbyte = new byte[paramInt];
    for (i = bool; i < paramInt; i++)
      paramArrayOfbyte[i] = (byte)arrayOfInt[j + i]; 
    return paramArrayOfbyte;
  }
  
  static void b(CharSequence paramCharSequence, ets paramets) {
    int j = paramCharSequence.length();
    for (int i = 0; i < j; i++) {
      int k = a(paramCharSequence.charAt(i));
      if (k == -1)
        throw new eqr(); 
      if (i + 1 < j) {
        int m = a(paramCharSequence.charAt(i + 1));
        if (m == -1)
          throw new eqr(); 
        paramets.c(k * 45 + m, 11);
        i += 2;
        continue;
      } 
      paramets.c(k, 6);
    } 
  }
  
  private static boolean b(String paramString) {
    try {
      byte[] arrayOfByte = paramString.getBytes("Shift_JIS");
      int i = arrayOfByte.length;
      if (i % 2 == 0) {
        int j = 0;
        while (j < i) {
          int k = arrayOfByte[j] & 0xFF;
          if ((k >= 129 && k <= 159) || (k >= 224 && k <= 235)) {
            j += 2;
            continue;
          } 
          return false;
        } 
        return true;
      } 
      return false;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fau.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */