import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

final class faa {
  private static final char[] a = new char[] { 
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 
      'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 
      'U', 'V', 'W', 'X', 'Y', 'Z', ' ', '$', '%', '*', 
      '+', '-', '.', '/', ':' };
  
  private static final int b = 1;
  
  private static char a(int paramInt) {
    if (paramInt >= a.length)
      throw eqb.a(); 
    return a[paramInt];
  }
  
  private static int a(etu parametu) {
    int i = parametu.a(8);
    if ((i & 0x80) == 0)
      return i & 0x7F; 
    if ((i & 0xC0) == 128)
      return (i & 0x3F) << 8 | parametu.a(8); 
    if ((i & 0xE0) == 192)
      return (i & 0x1F) << 16 | parametu.a(16); 
    throw eqb.a();
  }
  
  static etw a(byte[] paramArrayOfbyte, fag paramfag, fac paramfac, Map<epy, ?> paramMap) {
    etu etu = new etu(paramArrayOfbyte);
    StringBuilder stringBuilder = new StringBuilder(50);
    ArrayList<byte[]> arrayList = new ArrayList(1);
    etv etv = null;
    int i = -1;
    int j = -1;
    boolean bool = false;
    while (true) {
      try {
        fae fae1;
        if (etu.c() < 4) {
          fae1 = fae.TERMINATOR;
        } else {
          fae1 = fae.forBits(etu.a(4));
        } 
        if (fae1 != fae.TERMINATOR) {
          if (fae1 == fae.FNC1_FIRST_POSITION || fae1 == fae.FNC1_SECOND_POSITION) {
            bool = true;
            int k = i;
            i = j;
            j = k;
          } else if (fae1 == fae.STRUCTURED_APPEND) {
            if (etu.c() < 16)
              throw eqb.a(); 
            i = etu.a(8);
            j = etu.a(8);
          } else {
            if (fae1 == fae.ECI) {
              etv = etv.getCharacterSetECIByValue(a(etu));
              if (etv == null)
                throw eqb.a(); 
            } else {
              if (fae1 == fae.HANZI) {
                int n = etu.a(4);
                int i1 = etu.a(fae1.getCharacterCountBits(paramfag));
                if (n == 1)
                  a(etu, stringBuilder, i1); 
              } else {
                int n = etu.a(fae1.getCharacterCountBits(paramfag));
                if (fae1 == fae.NUMERIC) {
                  c(etu, stringBuilder, n);
                  n = i;
                  i = j;
                  j = n;
                } else if (fae1 == fae.ALPHANUMERIC) {
                  a(etu, stringBuilder, n, bool);
                  n = i;
                  i = j;
                  j = n;
                } else if (fae1 == fae.BYTE) {
                  a(etu, stringBuilder, n, etv, (Collection<byte[]>)arrayList, paramMap);
                  n = i;
                  i = j;
                  j = n;
                } else if (fae1 == fae.KANJI) {
                  b(etu, stringBuilder, n);
                  n = i;
                  i = j;
                  j = n;
                } else {
                  throw eqb.a();
                } 
                fae fae3 = fae.TERMINATOR;
              } 
              int m = i;
              i = j;
              j = m;
              fae fae = fae.TERMINATOR;
            } 
            int k = i;
            i = j;
            j = k;
          } 
        } else {
          int k = i;
          i = j;
          j = k;
        } 
        fae fae2 = fae.TERMINATOR;
      } catch (IllegalArgumentException illegalArgumentException) {
        throw eqb.a();
      } 
    } 
  }
  
  private static void a(etu parametu, StringBuilder paramStringBuilder, int paramInt) {
    if (paramInt * 13 > parametu.c())
      throw eqb.a(); 
    byte[] arrayOfByte = new byte[paramInt * 2];
    int j = 0;
    int i = paramInt;
    for (paramInt = j; i > 0; paramInt += 2) {
      j = parametu.a(13);
      j = j % 96 | j / 96 << 8;
      if (j < 959) {
        j += 41377;
      } else {
        j += 42657;
      } 
      arrayOfByte[paramInt] = (byte)(j >> 8 & 0xFF);
      arrayOfByte[paramInt + 1] = (byte)(j & 0xFF);
      i--;
    } 
    try {
      paramStringBuilder.append(new String(arrayOfByte, "GB2312"));
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw eqb.a();
    } 
  }
  
  private static void a(etu parametu, StringBuilder paramStringBuilder, int paramInt, etv parametv, Collection<byte[]> paramCollection, Map<epy, ?> paramMap) {
    String str;
    if (paramInt * 8 > parametu.c())
      throw eqb.a(); 
    byte[] arrayOfByte = new byte[paramInt];
    int i;
    for (i = 0; i < paramInt; i++)
      arrayOfByte[i] = (byte)parametu.a(8); 
    if (parametv == null) {
      str = eud.a(arrayOfByte, paramMap);
    } else {
      str = parametv.name();
    } 
    try {
      paramStringBuilder.append(new String(arrayOfByte, str));
      paramCollection.add(arrayOfByte);
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw eqb.a();
    } 
  }
  
  private static void a(etu parametu, StringBuilder paramStringBuilder, int paramInt, boolean paramBoolean) {
    int i = paramStringBuilder.length();
    while (paramInt > 1) {
      if (parametu.c() < 11)
        throw eqb.a(); 
      int j = parametu.a(11);
      paramStringBuilder.append(a(j / 45));
      paramStringBuilder.append(a(j % 45));
      paramInt -= 2;
    } 
    if (paramInt == 1) {
      if (parametu.c() < 6)
        throw eqb.a(); 
      paramStringBuilder.append(a(parametu.a(6)));
    } 
    if (paramBoolean)
      for (paramInt = i; paramInt < paramStringBuilder.length(); paramInt++) {
        if (paramStringBuilder.charAt(paramInt) == '%')
          if (paramInt < paramStringBuilder.length() - 1 && paramStringBuilder.charAt(paramInt + 1) == '%') {
            paramStringBuilder.deleteCharAt(paramInt + 1);
          } else {
            paramStringBuilder.setCharAt(paramInt, '\035');
          }  
      }  
  }
  
  private static void b(etu parametu, StringBuilder paramStringBuilder, int paramInt) {
    if (paramInt * 13 > parametu.c())
      throw eqb.a(); 
    byte[] arrayOfByte = new byte[paramInt * 2];
    int j = 0;
    int i = paramInt;
    for (paramInt = j; i > 0; paramInt += 2) {
      j = parametu.a(13);
      j = j % 192 | j / 192 << 8;
      if (j < 7936) {
        j += 33088;
      } else {
        j += 49472;
      } 
      arrayOfByte[paramInt] = (byte)(j >> 8);
      arrayOfByte[paramInt + 1] = (byte)j;
      i--;
    } 
    try {
      paramStringBuilder.append(new String(arrayOfByte, "SJIS"));
      return;
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw eqb.a();
    } 
  }
  
  private static void c(etu parametu, StringBuilder paramStringBuilder, int paramInt) {
    while (paramInt >= 3) {
      if (parametu.c() < 10)
        throw eqb.a(); 
      int i = parametu.a(10);
      if (i >= 1000)
        throw eqb.a(); 
      paramStringBuilder.append(a(i / 100));
      paramStringBuilder.append(a(i / 10 % 10));
      paramStringBuilder.append(a(i % 10));
      paramInt -= 3;
    } 
    if (paramInt == 2) {
      if (parametu.c() < 7)
        throw eqb.a(); 
      paramInt = parametu.a(7);
      if (paramInt >= 100)
        throw eqb.a(); 
      paramStringBuilder.append(a(paramInt / 10));
      paramStringBuilder.append(a(paramInt % 10));
      return;
    } 
    if (paramInt == 1) {
      if (parametu.c() < 4)
        throw eqb.a(); 
      paramInt = parametu.a(4);
      if (paramInt >= 10)
        throw eqb.a(); 
      paramStringBuilder.append(a(paramInt));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\faa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */