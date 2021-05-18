import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

abstract class cwp extends cun {
  private int a;
  
  protected cwp(byte[] paramArrayOfbyte) {
    byte[] arrayOfByte = paramArrayOfbyte;
    if (paramArrayOfbyte.length != 25) {
      int i = paramArrayOfbyte.length;
      String str = String.valueOf(cvx.a(paramArrayOfbyte, 0, paramArrayOfbyte.length, false));
      Log.wtf("GoogleCertificates", (new StringBuilder(String.valueOf(str).length() + 51)).append("Cert hash data has incorrect length (").append(i).append("):\n").append(str).toString(), new Exception());
      arrayOfByte = Arrays.copyOfRange(paramArrayOfbyte, 0, 25);
      if (arrayOfByte.length == 25)
        bool = true; 
      i = arrayOfByte.length;
      csp.b(bool, (new StringBuilder(55)).append("cert hash data has incorrect length. length=").append(i).toString());
    } 
    this.a = Arrays.hashCode(arrayOfByte);
  }
  
  protected static byte[] a(String paramString) {
    try {
      return paramString.getBytes("ISO-8859-1");
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      throw new AssertionError(unsupportedEncodingException);
    } 
  }
  
  public cwx a() {
    return cxo.a(c());
  }
  
  public int b() {
    return hashCode();
  }
  
  abstract byte[] c();
  
  public boolean equals(Object paramObject) {
    if (paramObject == null || !(paramObject instanceof cum))
      return false; 
    try {
      paramObject = paramObject;
      if (paramObject.b() != hashCode())
        return false; 
      paramObject = paramObject.a();
      if (paramObject == null)
        return false; 
      paramObject = cxo.<byte[]>a((cwx)paramObject);
      return Arrays.equals(c(), (byte[])paramObject);
    } catch (RemoteException remoteException) {
      Log.e("GoogleCertificates", "Failed to get Google certificates from remote", (Throwable)remoteException);
      return false;
    } 
  }
  
  public int hashCode() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */