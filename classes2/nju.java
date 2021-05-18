import com.ca.android.app.CaMDOHTTPClient;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;

class nju implements Runnable {
  nju(njt paramnjt, String paramString1, String paramString2, njr paramnjr) {}
  
  public void run() {
    try {
      HttpURLConnection httpURLConnection = (HttpURLConnection)CaMDOHTTPClient.openConnection(new URL(this.b));
      njt.a(this.c, httpURLConnection);
      httpURLConnection.setRequestMethod(this.a);
      httpURLConnection.setDoInput(true);
      if ("POST".equals(this.a) || "PUT".equals(this.a)) {
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(njt.a(this.c.d()));
        outputStream.flush();
        outputStream.close();
      } 
      BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
      StringBuilder stringBuilder = new StringBuilder();
      while (true) {
        String str = bufferedReader.readLine();
        if (str != null) {
          stringBuilder.append(str).append('\n');
          continue;
        } 
        bufferedReader.close();
        this.c.a(CaMDOHTTPClient.getResponseCode(httpURLConnection)).a(stringBuilder.toString()).g();
        return;
      } 
    } catch (IOException iOException) {
    
    } catch (JSONException jSONException) {}
    this.c.a(555).a(nis.a((Throwable)jSONException)).g();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */