import java.util.Vector;

public class af {
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
  
  private static final int l = 32;
  
  private static String m = null;
  
  private static byte[] n;
  
  private static bx o;
  
  private static by p;
  
  public af(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null || paramArrayOfbyte.length == 0 || paramArrayOfbyte.length < 32)
      throw a("ERRO COM: 1202.", null); 
    try {
      m = bz.d(a(Integer.valueOf(3)));
      n = paramArrayOfbyte;
      paramArrayOfbyte = a(n);
      o = new bx(paramArrayOfbyte);
      p = new by(paramArrayOfbyte);
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
    return o.a(paramString);
  }
  
  private String a(String paramString1, String paramString2) {
    try {
      byte[] arrayOfByte = a(n, paramString2);
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
  
  private static byte[] a(Integer paramInteger) {
    return ((bd)(new ag()).a()).a(paramInteger);
  }
  
  private byte[] a(byte[] paramArrayOfbyte) {
    try {
      byte[] arrayOfByte1 = new byte[32];
      by by1 = new by(az.b(m.getBytes()));
      byte[] arrayOfByte2 = ca.a(paramArrayOfbyte);
      byte[] arrayOfByte3 = new byte[32];
      for (int i = 0;; i++) {
        if (i >= arrayOfByte2.length) {
          for (i = 20;; i++) {
            if (i >= arrayOfByte3.length)
              return (new by(by1.a(arrayOfByte3))).a(paramArrayOfbyte); 
            arrayOfByte3[i] = 42;
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
    byte[] arrayOfByte1 = (new by(p.a(az.b(m.getBytes())))).a(paramString);
    for (int i = 0;; i++) {
      if (i >= 32)
        return arrayOfByte2; 
      arrayOfByte2[i] = (byte)(arrayOfByte1[i % 16] ^ paramArrayOfbyte[i]);
    } 
  }
  
  private String b(String paramString) {
    paramString = o.b(paramString);
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
      return bw.c((new bx(a(n, paramString2))).b(paramString1));
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */