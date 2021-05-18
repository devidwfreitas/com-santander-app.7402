public class jz extends jx {
  public static String a(byte[] paramArrayOfbyte) {
    return new String(a(paramArrayOfbyte, paramArrayOfbyte.length));
  }
  
  private static char[] a(byte[] paramArrayOfbyte, int paramInt) {
    int k = (paramInt * 4 + 2) / 3;
    char[] arrayOfChar = new char[(paramInt + 2) / 3 * 4];
    int j = 0;
    int i = 0;
    while (i < paramInt) {
      char c;
      byte b;
      int m = i + 1;
      int i1 = paramArrayOfbyte[i] & 0xFF;
      if (m < paramInt) {
        i = paramArrayOfbyte[m] & 0xFF;
        b = m + 1;
        m = i;
        i = b;
      } else {
        b = 0;
        i = m;
        m = b;
      } 
      if (i < paramInt) {
        b = i + 1;
        int i2 = paramArrayOfbyte[i] & 0xFF;
        i = b;
        b = i2;
      } else {
        b = 0;
      } 
      int n = j + 1;
      arrayOfChar[j] = a[i1 >>> 2];
      j = n + 1;
      arrayOfChar[n] = a[(i1 & 0x3) << 4 | m >>> 4];
      if (j < k) {
        c = a[(m & 0xF) << 2 | b >>> 6];
      } else {
        c = '=';
      } 
      arrayOfChar[j] = c;
      if (++j < k) {
        c = a[b & 0x3F];
      } else {
        c = '=';
      } 
      arrayOfChar[j] = c;
      j++;
    } 
    return arrayOfChar;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */