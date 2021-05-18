public class jy extends jx {
  public static byte[] a(String paramString) {
    if (paramString == null)
      throw new RuntimeException("null parameter is not supported in method decode()."); 
    return a(paramString.toCharArray());
  }
  
  private static byte[] a(char[] paramArrayOfchar) {
    int i = 0;
    int k = paramArrayOfchar.length;
    if (k % 4 != 0)
      throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4."); 
    while (k > 0 && paramArrayOfchar[k - 1] == '=')
      k--; 
    int m = k * 3 / 4;
    byte[] arrayOfByte = new byte[m];
    int j = 0;
    while (true) {
      if (i < k) {
        int n = i + 1;
        char c1 = paramArrayOfchar[i];
        i = n + 1;
        char c2 = paramArrayOfchar[n];
        if (i < k) {
          n = paramArrayOfchar[i];
          i++;
        } else {
          n = 65;
        } 
        if (i < k) {
          b = paramArrayOfchar[i];
          i++;
        } else {
          b = 65;
        } 
        if (c1 > '' || c2 > '' || n > 127 || b > Byte.MAX_VALUE)
          throw new IllegalArgumentException("Illegal character in Base64 encoded data."); 
        byte b3 = b[c1];
        byte b2 = b[c2];
        byte b1 = b[n];
        byte b = b[b];
        if (b3 < 0 || b2 < 0 || b1 < 0 || b < 0)
          throw new IllegalArgumentException("Illegal character in Base64 encoded data."); 
        n = j + 1;
        arrayOfByte[j] = (byte)(b3 << 2 | b2 >>> 4);
        if (n < m) {
          j = n + 1;
          arrayOfByte[n] = (byte)((b2 & 0xF) << 4 | b1 >>> 2);
        } else {
          j = n;
        } 
        if (j < m) {
          n = j + 1;
          arrayOfByte[j] = (byte)((b1 & 0x3) << 6 | b);
          j = n;
        } 
        continue;
      } 
      return arrayOfByte;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */