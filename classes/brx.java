import android.net.Uri;
import com.facebook.login.LoginClient;
import java.util.Collection;

public class brx extends bsp {
  private static volatile brx b;
  
  private Uri a;
  
  public static brx a() {
    // Byte code:
    //   0: getstatic brx.b : Lbrx;
    //   3: ifnonnull -> 28
    //   6: ldc brx
    //   8: monitorenter
    //   9: getstatic brx.b : Lbrx;
    //   12: ifnonnull -> 25
    //   15: new brx
    //   18: dup
    //   19: invokespecial <init> : ()V
    //   22: putstatic brx.b : Lbrx;
    //   25: ldc brx
    //   27: monitorexit
    //   28: getstatic brx.b : Lbrx;
    //   31: areturn
    //   32: astore_0
    //   33: ldc brx
    //   35: monitorexit
    //   36: aload_0
    //   37: athrow
    // Exception table:
    //   from	to	target	type
    //   9	25	32	finally
    //   25	28	32	finally
    //   33	36	32	finally
  }
  
  protected LoginClient.Request a(Collection<String> paramCollection) {
    LoginClient.Request request = super.a(paramCollection);
    Uri uri = b();
    if (uri != null)
      request.a(uri.toString()); 
    return request;
  }
  
  public void a(Uri paramUri) {
    this.a = paramUri;
  }
  
  public Uri b() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */