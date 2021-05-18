public class ka {
  public static byte[] a(String paramString) {
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    for (int i = 0; i < paramString.length(); i += 2) {
      int j = Integer.parseInt(paramString.substring(i, i + 1), 16);
      int k = Integer.parseInt(paramString.substring(i + 1, i + 2), 16);
      arrayOfByte[i / 2] = (byte)(j * 16 + k);
    } 
    return arrayOfByte;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */