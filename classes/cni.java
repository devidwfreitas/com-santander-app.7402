public final class cni {
  private static final char[] a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
  
  private static final char[] b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".toCharArray();
  
  private static final byte[] c = new byte[] { 
      -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, 
      -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, 
      -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 
      -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, 
      -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 
      54, 55, 56, 57, 58, 59, 60, 61, -9, -9, 
      -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 
      5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
      15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
      25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 
      29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
      39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
      49, 50, 51, -9, -9, -9, -9, -9 };
  
  private static final byte[] d = new byte[] { 
      -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, 
      -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, 
      -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 
      -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, 
      -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 
      54, 55, 56, 57, 58, 59, 60, 61, -9, -9, 
      -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 
      5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
      15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 
      25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 
      29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 
      39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 
      49, 50, 51, -9, -9, -9, -9, -9 };
  
  public static String a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, char[] paramArrayOfchar, boolean paramBoolean) {
    char[] arrayOfChar = a(paramArrayOfbyte, paramInt1, paramInt2, paramArrayOfchar, 2147483647);
    for (paramInt1 = arrayOfChar.length;; paramInt1--) {
      if (paramBoolean || paramInt1 <= 0 || arrayOfChar[paramInt1 - 1] != '=')
        return new String(arrayOfChar, 0, paramInt1); 
    } 
  }
  
  @Deprecated
  public static String a(byte[] paramArrayOfbyte, boolean paramBoolean) {
    return a(paramArrayOfbyte, 0, paramArrayOfbyte.length, b, paramBoolean);
  }
  
  static char[] a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, char[] paramArrayOfchar, int paramInt3) {
    int i = (paramInt2 + 2) / 3 * 4;
    char[] arrayOfChar = new char[i + i / paramInt3];
    int j = 0;
    i = 0;
    int k = 0;
    while (k < paramInt2 - 2) {
      int m = paramArrayOfbyte[k + paramInt1] << 24 >>> 8 | paramArrayOfbyte[k + 1 + paramInt1] << 24 >>> 16 | paramArrayOfbyte[k + 2 + paramInt1] << 24 >>> 24;
      arrayOfChar[i] = paramArrayOfchar[m >>> 18];
      arrayOfChar[i + 1] = paramArrayOfchar[m >>> 12 & 0x3F];
      arrayOfChar[i + 2] = paramArrayOfchar[m >>> 6 & 0x3F];
      arrayOfChar[i + 3] = paramArrayOfchar[m & 0x3F];
      int n = j + 4;
      j = n;
      m = i;
      if (n == paramInt3) {
        arrayOfChar[i + 4] = '\n';
        m = i + 1;
        j = 0;
      } 
      k += 3;
      i = m + 4;
    } 
    if (k < paramInt2) {
      a(paramArrayOfbyte, k + paramInt1, paramInt2 - k, arrayOfChar, i, paramArrayOfchar);
      paramInt1 = i;
      if (j + 4 == paramInt3) {
        arrayOfChar[i + 4] = '\n';
        paramInt1 = i + 1;
      } 
    } 
    return arrayOfChar;
  }
  
  private static char[] a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, char[] paramArrayOfchar1, int paramInt3, char[] paramArrayOfchar2) {
    boolean bool1;
    boolean bool2;
    int i = 0;
    if (paramInt2 > 0) {
      bool1 = paramArrayOfbyte[paramInt1] << 24 >>> 8;
    } else {
      bool1 = false;
    } 
    if (paramInt2 > 1) {
      bool2 = paramArrayOfbyte[paramInt1 + 1] << 24 >>> 16;
    } else {
      bool2 = false;
    } 
    if (paramInt2 > 2)
      i = paramArrayOfbyte[paramInt1 + 2] << 24 >>> 24; 
    paramInt1 = i | bool2 | bool1;
    switch (paramInt2) {
      default:
        return paramArrayOfchar1;
      case 3:
        paramArrayOfchar1[paramInt3] = paramArrayOfchar2[paramInt1 >>> 18];
        paramArrayOfchar1[paramInt3 + 1] = paramArrayOfchar2[paramInt1 >>> 12 & 0x3F];
        paramArrayOfchar1[paramInt3 + 2] = paramArrayOfchar2[paramInt1 >>> 6 & 0x3F];
        paramArrayOfchar1[paramInt3 + 3] = paramArrayOfchar2[paramInt1 & 0x3F];
        return paramArrayOfchar1;
      case 2:
        paramArrayOfchar1[paramInt3] = paramArrayOfchar2[paramInt1 >>> 18];
        paramArrayOfchar1[paramInt3 + 1] = paramArrayOfchar2[paramInt1 >>> 12 & 0x3F];
        paramArrayOfchar1[paramInt3 + 2] = paramArrayOfchar2[paramInt1 >>> 6 & 0x3F];
        paramArrayOfchar1[paramInt3 + 3] = '=';
        return paramArrayOfchar1;
      case 1:
        break;
    } 
    paramArrayOfchar1[paramInt3] = paramArrayOfchar2[paramInt1 >>> 18];
    paramArrayOfchar1[paramInt3 + 1] = paramArrayOfchar2[paramInt1 >>> 12 & 0x3F];
    paramArrayOfchar1[paramInt3 + 2] = '=';
    paramArrayOfchar1[paramInt3 + 3] = '=';
    return paramArrayOfchar1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cni.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */