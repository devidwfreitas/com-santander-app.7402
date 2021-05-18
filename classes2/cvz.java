import android.os.ParcelFileDescriptor;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class cvz {
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream) {
    return a(paramInputStream, paramOutputStream, false);
  }
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean) {
    return a(paramInputStream, paramOutputStream, paramBoolean, 1024);
  }
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream, boolean paramBoolean, int paramInt) {
    null = new byte[paramInt];
    long l = 0L;
    try {
      while (true) {
        int i = paramInputStream.read(null, 0, paramInt);
        if (i != -1) {
          l += i;
          paramOutputStream.write(null, 0, i);
          continue;
        } 
        return l;
      } 
    } finally {
      if (paramBoolean) {
        a(paramInputStream);
        a(paramOutputStream);
      } 
    } 
  }
  
  public static void a(ParcelFileDescriptor paramParcelFileDescriptor) {
    if (paramParcelFileDescriptor != null)
      try {
        paramParcelFileDescriptor.close();
        return;
      } catch (IOException iOException) {
        return;
      }  
  }
  
  public static void a(Closeable paramCloseable) {
    if (paramCloseable != null)
      try {
        paramCloseable.close();
        return;
      } catch (IOException iOException) {
        return;
      }  
  }
  
  public static byte[] a(InputStream paramInputStream) {
    return a(paramInputStream, true);
  }
  
  public static byte[] a(InputStream paramInputStream, boolean paramBoolean) {
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, byteArrayOutputStream, paramBoolean);
    return byteArrayOutputStream.toByteArray();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */