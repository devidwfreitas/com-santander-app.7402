import android.content.Context;
import android.net.Uri;
import com.ca.android.app.CaMDOHTTPClient;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

class bpn {
  static final String a = bpn.class.getSimpleName();
  
  private static volatile bon b;
  
  static bon a(Context paramContext) {
    // Byte code:
    //   0: ldc bpn
    //   2: monitorenter
    //   3: getstatic bpn.b : Lbon;
    //   6: ifnonnull -> 29
    //   9: new bon
    //   12: dup
    //   13: getstatic bpn.a : Ljava/lang/String;
    //   16: new bow
    //   19: dup
    //   20: invokespecial <init> : ()V
    //   23: invokespecial <init> : (Ljava/lang/String;Lbow;)V
    //   26: putstatic bpn.b : Lbon;
    //   29: getstatic bpn.b : Lbon;
    //   32: astore_0
    //   33: ldc bpn
    //   35: monitorexit
    //   36: aload_0
    //   37: areturn
    //   38: astore_0
    //   39: ldc bpn
    //   41: monitorexit
    //   42: aload_0
    //   43: athrow
    // Exception table:
    //   from	to	target	type
    //   3	29	38	finally
    //   29	33	38	finally
  }
  
  static InputStream a(Context paramContext, HttpURLConnection paramHttpURLConnection) {
    InputStream inputStream = null;
    if (CaMDOHTTPClient.getResponseCode(paramHttpURLConnection) == 200) {
      Uri uri = Uri.parse(paramHttpURLConnection.getURL().toString());
      InputStream inputStream1 = paramHttpURLConnection.getInputStream();
      inputStream = inputStream1;
      try {
        if (a(uri))
          inputStream = a(paramContext).a(uri.toString(), new bpo(inputStream1, paramHttpURLConnection)); 
        return inputStream;
      } catch (IOException iOException) {
        return inputStream1;
      } 
    } 
    return inputStream;
  }
  
  static InputStream a(Uri paramUri, Context paramContext) {
    InputStream inputStream2 = null;
    InputStream inputStream1 = inputStream2;
    if (paramUri != null) {
      inputStream1 = inputStream2;
      if (a(paramUri))
        try {
          return a(paramContext).a(paramUri.toString());
        } catch (IOException iOException) {
          bpu.a(bjb.CACHE, 5, a, iOException.toString());
          return null;
        }  
    } 
    return inputStream1;
  }
  
  private static boolean a(Uri paramUri) {
    if (paramUri != null) {
      String str = paramUri.getHost();
      if (str.endsWith("fbcdn.net") || (str.startsWith("fbcdn") && str.endsWith("akamaihd.net")))
        return true; 
    } 
    return false;
  }
  
  static void b(Context paramContext) {
    try {
      a(paramContext).b();
      return;
    } catch (IOException iOException) {
      bpu.a(bjb.CACHE, 5, a, "clearCache failed " + iOException.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */