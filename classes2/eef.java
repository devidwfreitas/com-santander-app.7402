import com.google.android.gms.maps.model.Tile;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

public abstract class eef implements eee {
  private final int a;
  
  private final int c;
  
  public eef(int paramInt1, int paramInt2) {
    this.a = paramInt1;
    this.c = paramInt2;
  }
  
  private static long a(InputStream paramInputStream, OutputStream paramOutputStream) {
    byte[] arrayOfByte = new byte[4096];
    for (long l = 0L;; l += i) {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1)
        return l; 
      paramOutputStream.write(arrayOfByte, 0, i);
    } 
  }
  
  private static byte[] a(InputStream paramInputStream) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, byteArrayOutputStream);
    return byteArrayOutputStream.toByteArray();
  }
  
  public final Tile a(int paramInt1, int paramInt2, int paramInt3) {
    URL uRL = b(paramInt1, paramInt2, paramInt3);
    if (uRL == null)
      return b; 
    try {
      return new Tile(this.a, this.c, a(uRL.openStream()));
    } catch (IOException iOException) {
      return null;
    } 
  }
  
  public abstract URL b(int paramInt1, int paramInt2, int paramInt3);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */