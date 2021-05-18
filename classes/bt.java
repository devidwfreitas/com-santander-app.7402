import java.util.Collection;
import java.util.Vector;

public class bt {
  public static final int a = 1710;
  
  public static final int b = 1711;
  
  public static final int c = 1712;
  
  public static final int d = 1713;
  
  public static final int e = 1714;
  
  public static final int f = 1716;
  
  public static String g = "&";
  
  public static String h = ":";
  
  public static int a(al paramal, byte[] paramArrayOfbyte, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    return b(paramal, paramArrayOfbyte, paramString, paramStringBuffer, paramVector);
  }
  
  private static String a(byte[] paramArrayOfbyte, String paramString) {
    return new String(a(new bx(paramArrayOfbyte), paramString));
  }
  
  private static byte[] a(al paramal, byte[] paramArrayOfbyte, String paramString) {
    String str3 = paramal.u();
    String str4 = paramal.j();
    String str1 = paramal.l();
    String str2 = new String(az.a(paramArrayOfbyte));
    byte[] arrayOfByte = (String.valueOf(str1) + str4 + str3 + str2).toLowerCase().substring(0, 32).getBytes();
    try {
      return a(new bx(arrayOfByte), paramString);
    } catch (Exception exception) {
      return a(new bx((String.valueOf(str1) + str4 + str3 + str2).substring(0, 32).getBytes()), paramString);
    } 
  }
  
  public static byte[] a(bx parambx, String paramString) {
    try {
      return bz.c(bw.c(parambx.b(paramString)).getBytes());
    } catch (Exception exception) {
      throw new Exception();
    } 
  }
  
  private static int b(al paramal, byte[] paramArrayOfbyte, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    try {
      Vector<String> vector = br.a(paramString, h);
      if (vector.size() < 3)
        return 1710; 
      int j = Integer.parseInt(vector.get(0));
      if (j <= 0)
        return 1711; 
      byte[] arrayOfByte = (byte[])null;
      int i = 0;
      while (true) {
        if (i >= j) {
          if (arrayOfByte == null)
            return 1711; 
        } else {
          try {
            byte[] arrayOfByte1 = a(paramal, paramArrayOfbyte, vector.get(i + 1));
            if (arrayOfByte1 != null) {
              i = j + 99;
              arrayOfByte = arrayOfByte1;
            } else {
              arrayOfByte = arrayOfByte1;
            } 
          } catch (Exception exception) {}
          i++;
          continue;
        } 
        String str = vector.lastElement();
        try {
          str = a(arrayOfByte, str);
          Vector<String> vector1 = br.a(str, g);
          if (vector1.size() <= 0)
            return 1713; 
          String str1 = vector1.get(0);
          if (str1.equals("2") || str1.equals("3") || str1.equals("4")) {
            paramStringBuffer.setLength(0);
            paramStringBuffer.append(str1);
            vector1.remove(0);
            boolean bool = str1.equals("4");
            if (bool)
              try {
                str1 = w.b(vector1.get(0));
                if (str1 == null)
                  return 1716; 
                vector1.set(0, str1);
                try {
                  str1 = w.b(vector1.get(1));
                  if (str1 == null)
                    return 1716; 
                  vector1.set(1, str1);
                  paramVector.addAll(vector1);
                  return 0;
                } catch (Exception null) {
                  return 1716;
                } 
              } catch (Exception exception) {
                return 1716;
              }  
            paramVector.addAll((Collection<? extends String>)exception);
            return 0;
          } 
        } catch (Exception exception) {
          return 1712;
        } 
        return 1711;
      } 
    } catch (Exception exception) {
      return 1714;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */