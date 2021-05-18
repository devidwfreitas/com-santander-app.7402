public class bw {
  private static int a(int paramInt) {
    int i = paramInt;
    if (paramInt < 0)
      i = paramInt + 256; 
    return i;
  }
  
  private static int a(byte[] paramArrayOfbyte, int paramInt) {
    int j = 0;
    int i = -1;
    label16: while (true) {
      if (j >= paramInt)
        return i ^ 0xFFFFFFFF; 
      int k = a(paramArrayOfbyte[j]) ^ i & 0xFF;
      for (int m = 0;; m++) {
        if (m >= 8) {
          j++;
          i = i >>> 8 ^ k;
          continue label16;
        } 
        if ((k & 0x1) > 0) {
          k = k >>> 1 ^ 0xEDB88320;
        } else {
          k >>>= 1;
        } 
      } 
      break;
    } 
  }
  
  public static String a(String paramString) {
    byte[] arrayOfByte = paramString.getBytes();
    for (String str = Integer.toHexString(a(arrayOfByte, arrayOfByte.length)).toUpperCase();; str = "0".concat(str)) {
      if (str.length() >= 8)
        return str; 
    } 
  }
  
  public static byte[] a(byte[] paramArrayOfbyte) {
    int i;
    int j;
    int k;
    byte[] arrayOfByte1;
    byte[] arrayOfByte2;
    boolean bool = false;
    if (paramArrayOfbyte != null) {
      try {
        k = paramArrayOfbyte.length;
        if (k % 16 == 0) {
          arrayOfByte1 = new byte[k - 4];
          arrayOfByte2 = new byte[4];
          i = k - 4;
          j = 0;
        } else {
          throw new Exception("Invalid data.");
        } 
      } catch (Exception exception) {
        throw new Exception("Invalid data.");
      } 
    } else {
      throw new Exception("Invalid data.");
    } 
    while (true) {
      String str;
      if (i >= k) {
        for (i = 0;; i++) {
          if (i >= arrayOfByte1.length) {
            str = Integer.toHexString(a(arrayOfByte1, k - 4)).toUpperCase();
            while (true) {
              byte[] arrayOfByte;
              if (str.length() >= 8) {
                arrayOfByte = az.b(str.getBytes());
                i = bool;
                break;
              } 
              str = "0".concat((String)arrayOfByte);
            } 
            while (i < 4) {
              if (str[i] != arrayOfByte2[i])
                throw new Exception(); 
              i++;
            } 
            return arrayOfByte1;
          } 
          arrayOfByte1[i] = str[i];
        } 
        break;
      } 
      arrayOfByte2[j] = str[i];
      i++;
      j++;
    } 
  }
  
  public static String b(String paramString) {
    if (paramString != null)
      try {
        if (paramString.length() > 0)
          return paramString.concat(a(paramString)); 
      } catch (Exception exception) {} 
    throw new Exception("Invalid data.");
  }
  
  public static String c(String paramString) {
    if (paramString != null)
      try {
        int i = paramString.length();
        if (i > 8) {
          String str1 = paramString.substring(0, i - 8);
          paramString = paramString.substring(i - 8);
          String str2 = a(str1);
          boolean bool = paramString.toUpperCase().equals(str2);
          if (bool)
            return str1; 
        } 
      } catch (Exception exception) {} 
    throw new Exception("Invalid data.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */