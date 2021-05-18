public class by {
  private aw a = null;
  
  public by(byte[] paramArrayOfbyte) {
    this.a = new aw(paramArrayOfbyte);
  }
  
  private void a(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2, boolean paramBoolean) {
    au au = new au();
    try {
      au.a(paramBoolean, this.a);
    } catch (IllegalArgumentException illegalArgumentException) {
      illegalArgumentException.printStackTrace();
    } 
    au.a(paramArrayOfbyte1, 0, paramArrayOfbyte2, 0);
    au.c();
  }
  
  public byte[] a(String paramString) {
    byte[] arrayOfByte1;
    String str1;
    String str2 = paramString;
    if (paramString.length() == 16) {
      arrayOfByte1 = new byte[16];
      a(paramString.getBytes(), arrayOfByte1, true);
      return arrayOfByte1;
    } 
    while (arrayOfByte1.length() % 16 != 0)
      str1 = String.valueOf(arrayOfByte1) + "*"; 
    int k = str1.length() / 16;
    byte[] arrayOfByte2 = new byte[k * 16];
    byte[] arrayOfByte3 = new byte[16];
    int i = 0;
    int j = 0;
    label19: while (true) {
      byte[] arrayOfByte = arrayOfByte2;
      if (j < k) {
        a(str1.substring(j * 16, (j + 1) * 16).getBytes(), arrayOfByte3, true);
        int m;
        for (m = 0;; m++) {
          if (m >= 16) {
            j++;
            continue label19;
          } 
          arrayOfByte2[i] = arrayOfByte3[m];
          i++;
        } 
        break;
      } 
      return arrayOfByte;
    } 
  }
  
  public byte[] a(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte == null)
      throw new Exception(); 
    if (paramArrayOfbyte.length % 16 != 0)
      throw new Exception(); 
    byte[] arrayOfByte1 = new byte[16];
    byte[] arrayOfByte2 = new byte[16];
    int j = paramArrayOfbyte.length / 16;
    byte[] arrayOfByte3 = new byte[j * 16];
    int i = 0;
    label21: while (true) {
      if (i >= j)
        return arrayOfByte3; 
      int m = i * 16;
      for (int k = 0;; k++) {
        if (k >= 16) {
          a(arrayOfByte2, arrayOfByte1, true);
          for (k = 0;; k++) {
            if (k >= 16) {
              i++;
              continue label21;
            } 
            arrayOfByte3[m + k] = arrayOfByte1[k];
          } 
          break;
        } 
        arrayOfByte2[k] = paramArrayOfbyte[m + k];
      } 
      break;
    } 
  }
  
  public String b(byte[] paramArrayOfbyte) {
    int i = paramArrayOfbyte.length;
    if (i % 16 != 0)
      return null; 
    byte[] arrayOfByte2 = new byte[16];
    byte[] arrayOfByte3 = new byte[16];
    if (i == 16) {
      byte[] arrayOfByte = new byte[16];
      a(paramArrayOfbyte, arrayOfByte, false);
      return (new String(arrayOfByte)).replace('*', ' ').trim();
    } 
    int j = paramArrayOfbyte.length / 16;
    byte[] arrayOfByte1 = new byte[j * 16];
    i = 0;
    label24: while (true) {
      byte[] arrayOfByte = arrayOfByte1;
      if (i < j) {
        int m = i * 16;
        for (int k = 0;; k++) {
          if (k >= 16) {
            a(arrayOfByte3, arrayOfByte2, false);
            for (k = 0;; k++) {
              if (k >= 16) {
                i++;
                continue label24;
              } 
              arrayOfByte1[m + k] = arrayOfByte2[k];
            } 
            break;
          } 
          arrayOfByte3[k] = paramArrayOfbyte[m + k];
        } 
        break;
      } 
      return (new String(arrayOfByte)).replace('*', ' ').trim();
    } 
  }
  
  public byte[] c(byte[] paramArrayOfbyte) {
    int i = paramArrayOfbyte.length;
    if (i % 16 != 0)
      return null; 
    byte[] arrayOfByte2 = new byte[16];
    byte[] arrayOfByte3 = new byte[16];
    if (i == 16) {
      byte[] arrayOfByte = new byte[16];
      a(paramArrayOfbyte, arrayOfByte, false);
      return arrayOfByte;
    } 
    int j = paramArrayOfbyte.length / 16;
    byte[] arrayOfByte1 = new byte[j * 16];
    i = 0;
    label24: while (true) {
      byte[] arrayOfByte = arrayOfByte1;
      if (i < j) {
        int m = i * 16;
        for (int k = 0;; k++) {
          if (k >= 16) {
            a(arrayOfByte3, arrayOfByte2, false);
            for (k = 0;; k++) {
              if (k >= 16) {
                i++;
                continue label24;
              } 
              arrayOfByte1[m + k] = arrayOfByte2[k];
            } 
            break;
          } 
          arrayOfByte3[k] = paramArrayOfbyte[m + k];
        } 
        break;
      } 
      return arrayOfByte;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\by.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */