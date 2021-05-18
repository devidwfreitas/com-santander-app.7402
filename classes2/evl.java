import java.util.Arrays;

public final class evl {
  static final char a = 'æ';
  
  static final char b = 'ç';
  
  static final char c = 'ë';
  
  static final char d = 'î';
  
  static final char e = 'ï';
  
  static final char f = 'ð';
  
  static final char g = 'þ';
  
  static final char h = 'þ';
  
  static final int i = 0;
  
  static final int j = 1;
  
  static final int k = 2;
  
  static final int l = 3;
  
  static final int m = 4;
  
  static final int n = 5;
  
  private static final char o = '';
  
  private static final char p = 'ì';
  
  private static final char q = 'í';
  
  private static final String r = "[)>\03605\035";
  
  private static final String s = "[)>\03606\035";
  
  private static final String t = "\036\004";
  
  private static char a(char paramChar, int paramInt) {
    int i = paramInt * 149 % 253 + 1 + paramChar;
    return (i <= 254) ? (char)i : (char)(i - 254);
  }
  
  public static int a(CharSequence paramCharSequence, int paramInt) {
    int i = 0;
    int j = 0;
    int k = paramCharSequence.length();
    if (paramInt < k) {
      char c = paramCharSequence.charAt(paramInt);
      int m = paramInt;
      paramInt = j;
      while (true) {
        i = paramInt;
        if (a(c)) {
          i = paramInt;
          if (m < k) {
            i = paramInt + 1;
            j = m + 1;
            paramInt = i;
            m = j;
            if (j < k) {
              c = paramCharSequence.charAt(j);
              paramInt = i;
              m = j;
            } 
            continue;
          } 
        } 
        break;
      } 
    } 
    return i;
  }
  
  static int a(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    Object object;
    boolean bool = false;
    if (paramInt1 < paramCharSequence.length()) {
      if (paramInt2 == 0) {
        float[] arrayOfFloat = new float[6];
        arrayOfFloat[0] = 0.0F;
        arrayOfFloat[1] = 1.0F;
        arrayOfFloat[2] = 1.0F;
        arrayOfFloat[3] = 1.0F;
        arrayOfFloat[4] = 1.0F;
        arrayOfFloat[5] = 1.25F;
      } else {
        float[] arrayOfFloat = new float[6];
        arrayOfFloat[0] = 1.0F;
        arrayOfFloat[1] = 2.0F;
        arrayOfFloat[2] = 2.0F;
        arrayOfFloat[3] = 2.0F;
        arrayOfFloat[4] = 2.0F;
        arrayOfFloat[5] = 2.25F;
        arrayOfFloat[paramInt2] = 0.0F;
      } 
      paramInt2 = 0;
      while (true) {
        while (true)
          break; 
        if (SYNTHETIC_LOCAL_VARIABLE_8[1] + 1 < SYNTHETIC_LOCAL_VARIABLE_8[0]) {
          object = SYNTHETIC_LOCAL_VARIABLE_5;
          if (SYNTHETIC_LOCAL_VARIABLE_8[1] + 1 < SYNTHETIC_LOCAL_VARIABLE_8[5]) {
            object = SYNTHETIC_LOCAL_VARIABLE_5;
            if (SYNTHETIC_LOCAL_VARIABLE_8[1] + 1 < SYNTHETIC_LOCAL_VARIABLE_8[4]) {
              object = SYNTHETIC_LOCAL_VARIABLE_5;
              if (SYNTHETIC_LOCAL_VARIABLE_8[1] + 1 < SYNTHETIC_LOCAL_VARIABLE_8[2]) {
                if (SYNTHETIC_LOCAL_VARIABLE_8[1] < SYNTHETIC_LOCAL_VARIABLE_8[3])
                  return 1; 
                object = SYNTHETIC_LOCAL_VARIABLE_5;
                if (SYNTHETIC_LOCAL_VARIABLE_8[1] == SYNTHETIC_LOCAL_VARIABLE_8[3]) {
                  paramInt1 = paramInt1 + SYNTHETIC_LOCAL_VARIABLE_5 + 1;
                  while (true) {
                    if (paramInt1 < paramCharSequence.length()) {
                      char c = paramCharSequence.charAt(paramInt1);
                      if (g(c))
                        return 3; 
                      if (f(c)) {
                        paramInt1++;
                        continue;
                      } 
                    } 
                    return 1;
                  } 
                  break;
                } 
              } 
            } 
          } 
        } 
      } 
    } 
    return object;
  }
  
  private static int a(byte[] paramArrayOfbyte) {
    int i = 0;
    int j = 0;
    while (i < 6) {
      j += paramArrayOfbyte[i];
      i++;
    } 
    return j;
  }
  
  private static int a(float[] paramArrayOffloat, int[] paramArrayOfint, int paramInt, byte[] paramArrayOfbyte) {
    Arrays.fill(paramArrayOfbyte, (byte)0);
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < 6) {
      paramArrayOfint[paramInt] = (int)Math.ceil(paramArrayOffloat[paramInt]);
      int k = paramArrayOfint[paramInt];
      j = i;
      if (i > k) {
        Arrays.fill(paramArrayOfbyte, (byte)0);
        j = k;
      } 
      if (j == k)
        paramArrayOfbyte[paramInt] = (byte)(paramArrayOfbyte[paramInt] + 1); 
      paramInt++;
      i = j;
    } 
    return i;
  }
  
  public static String a(String paramString) {
    return a(paramString, evn.FORCE_NONE, (epz)null, (epz)null);
  }
  
  public static String a(String paramString, evn paramevn, epz paramepz1, epz paramepz2) {
    int i;
    int j = 0;
    evc evc = new evc();
    eve eve = new eve();
    evo evo = new evo();
    evp evp = new evp();
    evh evh = new evh();
    evd evd = new evd();
    evj evj = new evj(paramString);
    evj.a(paramevn);
    evj.a(paramepz1, paramepz2);
    if (paramString.startsWith("[)>\03605\035") && paramString.endsWith("\036\004")) {
      evj.a('ì');
      evj.a(2);
      evj.a += "[)>\03605\035".length();
      i = j;
    } else {
      i = j;
      if (paramString.startsWith("[)>\03606\035")) {
        i = j;
        if (paramString.endsWith("\036\004")) {
          evj.a('í');
          evj.a(2);
          evj.a += "[)>\03606\035".length();
          i = j;
        } 
      } 
    } 
    while (evj.h()) {
      (new evi[6])[0] = evc;
      (new evi[6])[1] = eve;
      (new evi[6])[2] = evo;
      (new evi[6])[3] = evp;
      (new evi[6])[4] = evh;
      (new evi[6])[5] = evd;
      (new evi[6])[i].a(evj);
      if (evj.f() >= 0) {
        i = evj.f();
        evj.g();
      } 
    } 
    j = evj.e();
    evj.k();
    int k = evj.j().i();
    if (j < k && i != 0 && i != 5)
      evj.a('þ'); 
    StringBuilder stringBuilder = evj.d();
    if (stringBuilder.length() < k)
      stringBuilder.append(''); 
    while (stringBuilder.length() < k)
      stringBuilder.append(a('', stringBuilder.length() + 1)); 
    return evj.d().toString();
  }
  
  static boolean a(char paramChar) {
    return (paramChar >= '0' && paramChar <= '9');
  }
  
  static boolean b(char paramChar) {
    return (paramChar >= '' && paramChar <= 'ÿ');
  }
  
  static void c(char paramChar) {
    String str = Integer.toHexString(paramChar);
    str = "0000".substring(0, 4 - str.length()) + str;
    throw new IllegalArgumentException("Illegal character: " + paramChar + " (0x" + str + ')');
  }
  
  private static boolean d(char paramChar) {
    return (paramChar == ' ' || (paramChar >= '0' && paramChar <= '9') || (paramChar >= 'A' && paramChar <= 'Z'));
  }
  
  private static boolean e(char paramChar) {
    return (paramChar == ' ' || (paramChar >= '0' && paramChar <= '9') || (paramChar >= 'a' && paramChar <= 'z'));
  }
  
  private static boolean f(char paramChar) {
    return (g(paramChar) || paramChar == ' ' || (paramChar >= '0' && paramChar <= '9') || (paramChar >= 'A' && paramChar <= 'Z'));
  }
  
  private static boolean g(char paramChar) {
    return (paramChar == '\r' || paramChar == '*' || paramChar == '>');
  }
  
  private static boolean h(char paramChar) {
    return (paramChar >= ' ' && paramChar <= '^');
  }
  
  private static boolean i(char paramChar) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */