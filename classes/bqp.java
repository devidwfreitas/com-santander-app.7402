import android.net.Uri;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

class bqp {
  static final String a = bqp.class.getSimpleName();
  
  private static final String b = a + "_Redirect";
  
  private static volatile bon c;
  
  static Uri a(Uri paramUri) {
    int i = 0;
    if (paramUri == null)
      return null; 
    String str = paramUri.toString();
    try {
      Exception exception;
      Uri uri;
      bon bon1 = a();
      paramUri = null;
      try {
        while (true) {
          String str1;
          InputStream inputStream = bon1.a(str, b);
          if (inputStream != null) {
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
            try {
              char[] arrayOfChar = new char[128];
              StringBuilder stringBuilder = new StringBuilder();
              while (true) {
                i = inputStreamReader.read(arrayOfChar, 0, arrayOfChar.length);
                if (i > 0) {
                  stringBuilder.append(arrayOfChar, 0, i);
                  continue;
                } 
                bqq.a(inputStreamReader);
                String str2 = stringBuilder.toString();
                InputStreamReader inputStreamReader1 = inputStreamReader;
                i = 1;
                str1 = str2;
              } 
              break;
            } catch (IOException null) {
              return null;
            } finally {}
          } else {
            return null;
          } 
          bqq.a((Closeable)uri);
          throw paramUri;
        } 
      } catch (IOException iOException) {
      
      } finally {
        Exception exception1 = null;
        uri = paramUri;
      } 
      bqq.a((Closeable)uri);
      throw exception;
    } catch (IOException iOException) {
    
    } finally {
      str = null;
      bqq.a((Closeable)str);
    } 
    bqq.a((Closeable)str);
    return null;
  }
  
  static bon a() {
    // Byte code:
    //   0: ldc bqp
    //   2: monitorenter
    //   3: getstatic bqp.c : Lbon;
    //   6: ifnonnull -> 29
    //   9: new bon
    //   12: dup
    //   13: getstatic bqp.a : Ljava/lang/String;
    //   16: new bow
    //   19: dup
    //   20: invokespecial <init> : ()V
    //   23: invokespecial <init> : (Ljava/lang/String;Lbow;)V
    //   26: putstatic bqp.c : Lbon;
    //   29: getstatic bqp.c : Lbon;
    //   32: astore_0
    //   33: ldc bqp
    //   35: monitorexit
    //   36: aload_0
    //   37: areturn
    //   38: astore_0
    //   39: ldc bqp
    //   41: monitorexit
    //   42: aload_0
    //   43: athrow
    // Exception table:
    //   from	to	target	type
    //   3	29	38	finally
    //   29	33	38	finally
  }
  
  static void a(Uri paramUri1, Uri paramUri2) {
    if (paramUri1 == null || paramUri2 == null)
      return; 
    OutputStream outputStream = null;
    try {
      OutputStream outputStream1 = a().b(paramUri1.toString(), b);
    } catch (IOException iOException) {
      return;
    } finally {
      paramUri1 = null;
      outputStream = null;
    } 
    bqq.a(outputStream);
    throw paramUri2;
  }
  
  static void b() {
    try {
      a().b();
      return;
    } catch (IOException iOException) {
      bpu.a(bjb.CACHE, 5, a, "clearCache failed " + iOException.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */