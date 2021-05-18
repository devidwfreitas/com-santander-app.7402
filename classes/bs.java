import java.util.Collection;
import java.util.Vector;

public class bs {
  public static final int a = 1810;
  
  public static final int b = 1811;
  
  public static final int c = 1812;
  
  public static final int d = 1813;
  
  public static final int e = 1814;
  
  public static final int f = 1816;
  
  public static String g = "&";
  
  public static String h = ":";
  
  public static int a(al paramal, byte[] paramArrayOfbyte, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    return b(paramal, paramArrayOfbyte, paramString, paramStringBuffer1, paramStringBuffer2, paramVector);
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
      exception.printStackTrace();
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
  
  private static int b(al paramal, byte[] paramArrayOfbyte, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    try {
      Vector<String> vector = br.a(paramString, h);
      int i = 0;
      while (true) {
        if (i >= vector.size()) {
          byte[] arrayOfByte1;
          if (vector.size() < 2)
            return 1810; 
          byte[] arrayOfByte2 = (byte[])null;
          try {
            arrayOfByte1 = a(paramal, paramArrayOfbyte, vector.get(0));
            if (arrayOfByte1 == null)
              return 1811; 
          } catch (Exception exception) {
            arrayOfByte1 = arrayOfByte2;
            if (arrayOfByte1 == null)
              return 1811; 
          } 
          String str = vector.get(1);
          try {
            String str1 = a(arrayOfByte1, str);
            Vector<String> vector1 = br.a(str1, g);
            if (vector1.size() <= 0)
              return 1813; 
            str = ((String)vector1.get(0)).trim();
            if (str.equals("1") || str.equals("2") || str.equals("3") || str.equals("4")) {
              paramStringBuffer1.setLength(0);
              paramStringBuffer1.append(str);
              vector1.remove(0);
              paramStringBuffer2.append(vector1.get(0));
              vector1.remove(0);
              boolean bool = str.equals("4");
              if (bool)
                try {
                  str = w.b(vector1.get(0));
                  if (str == null)
                    return 1816; 
                  vector1.set(0, str);
                  str = w.b(vector1.get(1));
                  if (str == null)
                    return 1816; 
                  vector1.set(1, str);
                  paramVector.addAll(vector1);
                  return 0;
                } catch (Exception exception) {
                  return 1816;
                }  
              paramVector.addAll((Collection<? extends String>)exception);
              return 0;
            } 
          } catch (Exception exception) {
            return 1812;
          } 
        } else {
          i++;
          continue;
        } 
        return 1811;
      } 
    } catch (Exception exception) {
      return 1814;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */