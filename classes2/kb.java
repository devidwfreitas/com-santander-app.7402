public class kb {
  private static final byte[] a = new byte[] { 
      48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 
      65, 66, 67, 68, 69, 70 };
  
  public static String a(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, false, 0);
  }
  
  public static String a(byte[] paramArrayOfbyte, boolean paramBoolean, int paramInt) {
    StringBuffer stringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayOfbyte.length; i++) {
      if (paramBoolean && i > 0 && i % paramInt == 0)
        stringBuffer.append("\r\n"); 
      byte b = paramArrayOfbyte[i];
      int j = b;
      if (b < 0)
        j = b + 256; 
      int k = j / 16;
      stringBuffer.append((char)a[k]);
      stringBuffer.append((char)a[j % 16]);
    } 
    return stringBuffer.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */