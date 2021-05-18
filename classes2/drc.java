import java.nio.charset.Charset;
import java.util.Arrays;

public final class drc {
  protected static final Charset a = Charset.forName("UTF-8");
  
  protected static final Charset b = Charset.forName("ISO-8859-1");
  
  public static final Object c = new Object();
  
  public static int a(float[] paramArrayOffloat) {
    return (paramArrayOffloat == null || paramArrayOffloat.length == 0) ? 0 : Arrays.hashCode(paramArrayOffloat);
  }
  
  public static int a(int[] paramArrayOfint) {
    return (paramArrayOfint == null || paramArrayOfint.length == 0) ? 0 : Arrays.hashCode(paramArrayOfint);
  }
  
  public static int a(long[] paramArrayOflong) {
    return (paramArrayOflong == null || paramArrayOflong.length == 0) ? 0 : Arrays.hashCode(paramArrayOflong);
  }
  
  public static int a(Object[] paramArrayOfObject) {
    int i;
    int k = 0;
    if (paramArrayOfObject == null) {
      i = 0;
    } else {
      i = paramArrayOfObject.length;
    } 
    int j = 0;
    while (j < i) {
      Object object = paramArrayOfObject[j];
      int m = k;
      if (object != null)
        m = k * 31 + object.hashCode(); 
      j++;
      k = m;
    } 
    return k;
  }
  
  public static int a(byte[][] paramArrayOfbyte) {
    int i;
    int k = 0;
    if (paramArrayOfbyte == null) {
      i = 0;
    } else {
      i = paramArrayOfbyte.length;
    } 
    int j = 0;
    while (j < i) {
      byte[] arrayOfByte = paramArrayOfbyte[j];
      int m = k;
      if (arrayOfByte != null)
        m = k * 31 + Arrays.hashCode(arrayOfByte); 
      j++;
      k = m;
    } 
    return k;
  }
  
  public static void a(dqy paramdqy1, dqy paramdqy2) {
    if (paramdqy1.ag != null)
      paramdqy2.ag = (dra)paramdqy1.ag.clone(); 
  }
  
  public static boolean a(float[] paramArrayOffloat1, float[] paramArrayOffloat2) {
    return (paramArrayOffloat1 == null || paramArrayOffloat1.length == 0) ? ((paramArrayOffloat2 == null || paramArrayOffloat2.length == 0)) : Arrays.equals(paramArrayOffloat1, paramArrayOffloat2);
  }
  
  public static boolean a(int[] paramArrayOfint1, int[] paramArrayOfint2) {
    return (paramArrayOfint1 == null || paramArrayOfint1.length == 0) ? ((paramArrayOfint2 == null || paramArrayOfint2.length == 0)) : Arrays.equals(paramArrayOfint1, paramArrayOfint2);
  }
  
  public static boolean a(long[] paramArrayOflong1, long[] paramArrayOflong2) {
    return (paramArrayOflong1 == null || paramArrayOflong1.length == 0) ? ((paramArrayOflong2 == null || paramArrayOflong2.length == 0)) : Arrays.equals(paramArrayOflong1, paramArrayOflong2);
  }
  
  public static boolean a(Object[] paramArrayOfObject1, Object[] paramArrayOfObject2) {
    int k;
    int m;
    boolean bool = false;
    if (paramArrayOfObject1 == null) {
      k = 0;
    } else {
      k = paramArrayOfObject1.length;
    } 
    if (paramArrayOfObject2 == null) {
      m = 0;
    } else {
      m = paramArrayOfObject2.length;
    } 
    int j = 0;
    int i = 0;
    while (true) {
      boolean bool1;
      boolean bool2;
      if (i < k && paramArrayOfObject1[i] == null) {
        i++;
        continue;
      } 
      while (j < m && paramArrayOfObject2[j] == null)
        j++; 
      if (i >= k) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (j >= m) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      if (bool1 && bool2)
        return true; 
      boolean bool3 = bool;
      if (bool1 == bool2) {
        bool3 = bool;
        if (paramArrayOfObject1[i].equals(paramArrayOfObject2[j])) {
          j++;
          i++;
          continue;
        } 
      } 
      return bool3;
    } 
  }
  
  public static boolean a(byte[][] paramArrayOfbyte1, byte[][] paramArrayOfbyte2) {
    int k;
    int m;
    boolean bool = false;
    if (paramArrayOfbyte1 == null) {
      k = 0;
    } else {
      k = paramArrayOfbyte1.length;
    } 
    if (paramArrayOfbyte2 == null) {
      m = 0;
    } else {
      m = paramArrayOfbyte2.length;
    } 
    int j = 0;
    int i = 0;
    while (true) {
      boolean bool1;
      boolean bool2;
      if (i < k && paramArrayOfbyte1[i] == null) {
        i++;
        continue;
      } 
      while (j < m && paramArrayOfbyte2[j] == null)
        j++; 
      if (i >= k) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (j >= m) {
        bool2 = true;
      } else {
        bool2 = false;
      } 
      if (bool1 && bool2)
        return true; 
      boolean bool3 = bool;
      if (bool1 == bool2) {
        bool3 = bool;
        if (Arrays.equals(paramArrayOfbyte1[i], paramArrayOfbyte2[j])) {
          j++;
          i++;
          continue;
        } 
      } 
      return bool3;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */