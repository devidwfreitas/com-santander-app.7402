import android.support.annotation.WorkerThread;
import android.util.Log;
import com.ca.android.app.CaMDOHTTPClient;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class cob {
  @WorkerThread
  public void a(String paramString) {
    try {
      HttpURLConnection httpURLConnection = (HttpURLConnection)CaMDOHTTPClient.openConnection(new URL(paramString));
      try {
        int i = CaMDOHTTPClient.getResponseCode(httpURLConnection);
        if (i < 200 || i >= 300)
          Log.w("HttpUrlPinger", (new StringBuilder(String.valueOf(paramString).length() + 65)).append("Received non-success response code ").append(i).append(" from pinging URL: ").append(paramString).toString()); 
        return;
      } finally {
        httpURLConnection.disconnect();
      } 
    } catch (IndexOutOfBoundsException null) {
      String str1 = String.valueOf(runtimeException.getMessage());
      Log.w("HttpUrlPinger", (new StringBuilder(String.valueOf(paramString).length() + 32 + String.valueOf(str1).length())).append("Error while parsing ping URL: ").append(paramString).append(". ").append(str1).toString(), runtimeException);
      return;
    } catch (IOException iOException) {
    
    } catch (RuntimeException runtimeException) {}
    String str = String.valueOf(runtimeException.getMessage());
    Log.w("HttpUrlPinger", (new StringBuilder(String.valueOf(paramString).length() + 27 + String.valueOf(str).length())).append("Error while pinging URL: ").append(paramString).append(". ").append(str).toString(), runtimeException);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */