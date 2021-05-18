import java.util.Vector;

public class ab {
  public static final String a = ":";
  
  public static final String b = "&";
  
  public static final int c = 1200;
  
  public static final int d = 1201;
  
  public static final int e = 1202;
  
  public static final int f = 1203;
  
  public static final int g = 1204;
  
  public static final int h = 1205;
  
  public static final int i = 1206;
  
  public static final int j = 1207;
  
  private static final String k = "               ";
  
  private static final boolean l = false;
  
  private static final byte[] m = new byte[] { 
      78, 122, 99, 122, 77, 84, 90, 68, 78, 106, 
      107, 50, 77, 84, 90, 69, 78, 68, 65, 122, 
      79, 84, 77, 52, 77, 106, 77, 50, 82, 68, 
      77, 122, 78, 106, 81, 122, 77, 122, 89, 122, 
      77, 122, 65, 50, 82, 84, 89, 50, 77, 122, 
      69, 50, 78, 122, 73, 120, 78, 106, 99, 50, 
      77, 84, 90, 69, 78, 106, 73, 50, 79, 84, 
      89, 48, 77, 122, 65, 50, 81, 106, 99, 119, 
      78, 122, 81, 122, 78, 65, 61, 61 };
  
  private static final int n = 32;
  
  private static String o = null;
  
  private static byte[] p;
  
  private static bx q;
  
  private static by r;
  
  public ab(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null || paramArrayOfbyte.length == 0 || paramArrayOfbyte.length < 32)
      throw a("ERRO COM: 1202.", null); 
    try {
      paramArrayOfbyte = az.b(bz.c(m));
      o = bz.d(z.h);
      p = paramArrayOfbyte;
      paramArrayOfbyte = a(p);
      q = new bx(paramArrayOfbyte);
      r = new by(paramArrayOfbyte);
      return;
    } catch (Exception exception) {
      throw a("", exception);
    } 
  }
  
  private ah a(String paramString, Exception paramException) {
    paramException = new ah();
    paramException.initCause(new Throwable(paramString));
    return (ah)paramException;
  }
  
  private String a(bgb parambgb) {
    try {
      String str2;
      long l2 = System.currentTimeMillis();
      long l1 = l2;
      if (parambgb.e().length() > 4)
        str2 = String.valueOf(l2) + parambgb.e().substring(4); 
      int i = str2.length();
      if (i > 15) {
        String str = str2.substring(i - 15);
        return String.valueOf(str) + c(str);
      } 
      String str1 = str2;
      if (i < 15)
        str1 = str2.concat("               ".substring(i)); 
      return String.valueOf(str1) + c(str1);
    } catch (Exception exception) {
      throw a("ERRO COM: 1204 - " + exception.getMessage(), exception);
    } 
  }
  
  private String a(String paramString) {
    return q.a(paramString);
  }
  
  private String a(String paramString1, String paramString2) {
    try {
      byte[] arrayOfByte = a(p, paramString2);
      bx bx1 = new bx(arrayOfByte);
      try {
        return bx1.a(bw.b(paramString1));
      } catch (Exception exception) {
        throw a("ERRO COM: 1202 - " + exception.getMessage(), exception);
      } 
    } catch (Exception exception) {
      throw a("", exception);
    } 
  }
  
  private byte[] a(byte[] paramArrayOfbyte) {
    try {
      byte[] arrayOfByte1 = new byte[32];
      arrayOfByte1 = az.b(o.getBytes());
      by by1 = new by(arrayOfByte1);
      byte[] arrayOfByte2 = ca.a(paramArrayOfbyte);
      byte[] arrayOfByte3 = new byte[32];
      for (int i = 0;; i++) {
        if (i >= arrayOfByte2.length) {
          int j = 5;
          for (i = 20;; i++) {
            if (i >= 32)
              return (new by(by1.a(arrayOfByte3))).a(paramArrayOfbyte); 
            arrayOfByte3[i] = arrayOfByte1[j];
            j += 2;
          } 
          break;
        } 
        arrayOfByte3[i] = arrayOfByte2[i];
      } 
    } catch (Exception exception) {
      throw a("ERRO COM: 1205 - " + exception.getMessage(), exception);
    } 
  }
  
  private byte[] a(byte[] paramArrayOfbyte, String paramString) {
    byte[] arrayOfByte2 = new byte[32];
    byte[] arrayOfByte1 = (new by(r.a(az.b(o.getBytes())))).a(paramString);
    for (int i = 0;; i++) {
      if (i >= 32)
        return arrayOfByte2; 
      arrayOfByte2[i] = (byte)(arrayOfByte1[i % 16] ^ paramArrayOfbyte[i]);
    } 
  }
  
  private String b(String paramString) {
    paramString = q.b(paramString);
    if (paramString.length() != 16)
      throw a("ERRO COM: 1200", null); 
    try {
      int i = Integer.parseInt(String.valueOf(paramString.charAt(15)));
      if (c(paramString.substring(0, 15)) != i)
        throw a("ERRO COM: 1200", null); 
    } catch (Exception exception) {
      throw a("ERRO COM: 1200", exception);
    } 
    return (String)exception;
  }
  
  private String b(String paramString1, String paramString2) {
    try {
      return bw.c((new bx(a(p, paramString2))).b(paramString1));
    } catch (Exception exception) {
      throw a("ERRO COM: 1203 - " + exception.getMessage(), exception);
    } 
  }
  
  private int c(String paramString) {
    if (paramString != null)
      try {
        paramString = paramString.trim();
        int i = paramString.length() - 1;
        byte b = 2;
        int j = 0;
        while (true) {
          if (i < 0) {
            if (j % 10 == 0)
              return 0; 
          } else {
            try {
              int m = Integer.parseInt(String.valueOf(paramString.charAt(i))) * b;
              int k = m;
              if (m > 10)
                k = m % 10 + 1; 
              j += k;
              if (b == 2) {
                b = 1;
              } else {
                b = 2;
              } 
            } catch (Exception exception) {}
            i--;
            continue;
          } 
          return 10 - j % 10;
        } 
      } catch (Exception exception) {
        throw a("ERRO COM: 1207 - " + exception.getMessage(), exception);
      }  
    return -1;
  }
  
  public int a(String paramString, Vector<String> paramVector) {
    try {
      paramVector.addAll(br.a(paramString, ":"));
      if (paramVector.size() != 2) {
        paramVector.clear();
        return 1200;
      } 
      paramString = b(paramVector.elementAt(0));
      paramString = b(paramVector.elementAt(1), paramString);
      paramVector.clear();
      paramVector.addAll(br.a(paramString, "&"));
      return 0;
    } catch (Exception exception) {
      exception.printStackTrace();
      paramVector.clear();
      return 1200;
    } 
  }
  
  public String a(String paramString, bgb parambgb) {
    bgb bgb1 = parambgb;
    if (parambgb == null)
      try {
        bgb1 = new bgb();
        String str1 = a(bgb1);
        return String.valueOf(a(str1)) + ":" + a(paramString, str1);
      } catch (Exception exception) {
        throw a("ERRO COM: 1201 - " + exception.getMessage(), exception);
      }  
    String str = a(bgb1);
    return String.valueOf(a(str)) + ":" + a((String)exception, str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */