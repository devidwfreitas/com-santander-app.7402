import android.content.Context;
import android.support.annotation.WorkerThread;
import com.ca.android.app.CaMDOHTTPClient;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

public class dla extends dmu {
  public dla(dlv paramdlv) {
    super(paramdlv);
  }
  
  @WorkerThread
  private byte[] a(HttpURLConnection paramHttpURLConnection) {
    InputStream inputStream2 = null;
    InputStream inputStream1 = inputStream2;
    try {
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      inputStream1 = inputStream2;
      InputStream inputStream = paramHttpURLConnection.getInputStream();
      inputStream1 = inputStream;
      byte[] arrayOfByte = new byte[1024];
      while (true) {
        inputStream1 = inputStream;
        int i = inputStream.read(arrayOfByte);
        if (i > 0) {
          inputStream1 = inputStream;
          byteArrayOutputStream.write(arrayOfByte, 0, i);
          continue;
        } 
        inputStream1 = inputStream;
        arrayOfByte = byteArrayOutputStream.toByteArray();
        return arrayOfByte;
      } 
    } finally {
      if (inputStream1 != null)
        inputStream1.close(); 
    } 
  }
  
  @WorkerThread
  protected HttpURLConnection a(URL paramURL) {
    URLConnection uRLConnection = CaMDOHTTPClient.openConnection(paramURL);
    if (!(uRLConnection instanceof HttpURLConnection))
      throw new IOException("Failed to obtain HTTP connection"); 
    uRLConnection = uRLConnection;
    uRLConnection.setDefaultUseCaches(false);
    w().P();
    uRLConnection.setConnectTimeout(60000);
    w().Q();
    uRLConnection.setReadTimeout(61000);
    uRLConnection.setInstanceFollowRedirects(false);
    uRLConnection.setDoInput(true);
    return (HttpURLConnection)uRLConnection;
  }
  
  protected void a() {}
  
  @WorkerThread
  public void a(String paramString, URL paramURL, Map<String, String> paramMap, dlc paramdlc) {
    e();
    R();
    csp.a(paramURL);
    csp.a(paramdlc);
    t().b(new dle(this, paramString, paramURL, null, paramMap, paramdlc));
  }
  
  @WorkerThread
  public void a(String paramString, URL paramURL, byte[] paramArrayOfbyte, Map<String, String> paramMap, dlc paramdlc) {
    e();
    R();
    csp.a(paramURL);
    csp.a(paramArrayOfbyte);
    csp.a(paramdlc);
    t().b(new dle(this, paramString, paramURL, paramArrayOfbyte, paramMap, paramdlc));
  }
  
  public boolean x() {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual R : ()V
    //   4: aload_0
    //   5: invokevirtual n : ()Landroid/content/Context;
    //   8: ldc 'connectivity'
    //   10: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   13: checkcast android/net/ConnectivityManager
    //   16: astore_1
    //   17: aload_1
    //   18: invokevirtual getActiveNetworkInfo : ()Landroid/net/NetworkInfo;
    //   21: astore_1
    //   22: aload_1
    //   23: ifnull -> 41
    //   26: aload_1
    //   27: invokevirtual isConnected : ()Z
    //   30: ifeq -> 41
    //   33: iconst_1
    //   34: ireturn
    //   35: astore_1
    //   36: aconst_null
    //   37: astore_1
    //   38: goto -> 22
    //   41: iconst_0
    //   42: ireturn
    // Exception table:
    //   from	to	target	type
    //   17	22	35	java/lang/SecurityException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dla.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */