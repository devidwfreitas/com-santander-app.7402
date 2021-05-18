import java.util.Comparator;

final class dsr implements Comparator<byte[]> {
  public int a(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2) {
    return paramArrayOfbyte1.length - paramArrayOfbyte2.length;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */