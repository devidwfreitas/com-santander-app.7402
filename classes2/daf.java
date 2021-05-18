import com.ca.android.app.CaMDOHTTPClient;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public class daf implements dsz {
  private final dag a;
  
  private final SSLSocketFactory b;
  
  public daf() {
    this(null);
  }
  
  public daf(dag paramdag) {
    this(paramdag, null);
  }
  
  public daf(dag paramdag, SSLSocketFactory paramSSLSocketFactory) {
    this.a = paramdag;
    this.b = paramSSLSocketFactory;
  }
  
  private HttpURLConnection a(URL paramURL, dsa<?> paramdsa) {
    HttpURLConnection httpURLConnection = a(paramURL);
    int i = paramdsa.n();
    httpURLConnection.setConnectTimeout(i);
    httpURLConnection.setReadTimeout(i);
    httpURLConnection.setUseCaches(false);
    httpURLConnection.setDoInput(true);
    if ("https".equals(paramURL.getProtocol()) && this.b != null)
      ((HttpsURLConnection)httpURLConnection).setSSLSocketFactory(this.b); 
    return httpURLConnection;
  }
  
  private static HttpEntity a(HttpURLConnection paramHttpURLConnection) {
    InputStream inputStream;
    BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
    try {
      inputStream = paramHttpURLConnection.getInputStream();
    } catch (IOException iOException) {
      inputStream = paramHttpURLConnection.getErrorStream();
    } 
    basicHttpEntity.setContent(inputStream);
    basicHttpEntity.setContentLength(paramHttpURLConnection.getContentLength());
    basicHttpEntity.setContentEncoding(paramHttpURLConnection.getContentEncoding());
    basicHttpEntity.setContentType(paramHttpURLConnection.getContentType());
    return (HttpEntity)basicHttpEntity;
  }
  
  static void a(HttpURLConnection paramHttpURLConnection, dsa<?> paramdsa) {
    DataOutputStream dataOutputStream;
    byte[] arrayOfByte;
    switch (paramdsa.a()) {
      default:
        throw new IllegalStateException("Unknown method type.");
      case -1:
        arrayOfByte = paramdsa.h();
        if (arrayOfByte != null) {
          paramHttpURLConnection.setDoOutput(true);
          paramHttpURLConnection.setRequestMethod("POST");
          paramHttpURLConnection.addRequestProperty("Content-Type", paramdsa.g());
          dataOutputStream = new DataOutputStream(paramHttpURLConnection.getOutputStream());
          dataOutputStream.write(arrayOfByte);
          dataOutputStream.close();
        } 
        return;
      case 0:
        dataOutputStream.setRequestMethod("GET");
        return;
      case 3:
        dataOutputStream.setRequestMethod("DELETE");
        return;
      case 1:
        dataOutputStream.setRequestMethod("POST");
        b((HttpURLConnection)dataOutputStream, paramdsa);
        return;
      case 2:
        dataOutputStream.setRequestMethod("PUT");
        b((HttpURLConnection)dataOutputStream, paramdsa);
        return;
      case 4:
        dataOutputStream.setRequestMethod("HEAD");
        return;
      case 5:
        dataOutputStream.setRequestMethod("OPTIONS");
        return;
      case 6:
        dataOutputStream.setRequestMethod("TRACE");
        return;
      case 7:
        break;
    } 
    dataOutputStream.setRequestMethod("PATCH");
    b((HttpURLConnection)dataOutputStream, paramdsa);
  }
  
  private static boolean a(int paramInt1, int paramInt2) {
    return (paramInt1 != 4 && (100 > paramInt2 || paramInt2 >= 200) && paramInt2 != 204 && paramInt2 != 304);
  }
  
  private static void b(HttpURLConnection paramHttpURLConnection, dsa<?> paramdsa) {
    byte[] arrayOfByte = paramdsa.k();
    if (arrayOfByte != null) {
      paramHttpURLConnection.setDoOutput(true);
      paramHttpURLConnection.addRequestProperty("Content-Type", paramdsa.j());
      DataOutputStream dataOutputStream = new DataOutputStream(paramHttpURLConnection.getOutputStream());
      dataOutputStream.write(arrayOfByte);
      dataOutputStream.close();
    } 
  }
  
  protected HttpURLConnection a(URL paramURL) {
    HttpURLConnection httpURLConnection = (HttpURLConnection)CaMDOHTTPClient.openConnection(paramURL);
    httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
    return httpURLConnection;
  }
  
  public HttpResponse a(dsa<?> paramdsa, Map<String, String> paramMap) {
    String str1;
    String str2 = paramdsa.c();
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.putAll(paramdsa.f());
    hashMap.putAll(paramMap);
    if (this.a != null) {
      String str = this.a.a(str2);
      str1 = str;
      if (str == null)
        throw new IOException("URL blocked by rewriter: " + str2); 
    } else {
      str1 = str2;
    } 
    HttpURLConnection httpURLConnection = a(new URL(str1), paramdsa);
    for (String str : hashMap.keySet())
      httpURLConnection.addRequestProperty(str, (String)hashMap.get(str)); 
    a(httpURLConnection, paramdsa);
    ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
    if (CaMDOHTTPClient.getResponseCode(httpURLConnection) == -1)
      throw new IOException("Could not retrieve response code from HttpUrlConnection."); 
    BasicStatusLine basicStatusLine = new BasicStatusLine(protocolVersion, CaMDOHTTPClient.getResponseCode(httpURLConnection), httpURLConnection.getResponseMessage());
    BasicHttpResponse basicHttpResponse = new BasicHttpResponse((StatusLine)basicStatusLine);
    if (a(paramdsa.a(), basicStatusLine.getStatusCode()))
      basicHttpResponse.setEntity(a(httpURLConnection)); 
    for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
      if (entry.getKey() != null)
        basicHttpResponse.addHeader((Header)new BasicHeader((String)entry.getKey(), ((List<String>)entry.getValue()).get(0))); 
    } 
    return (HttpResponse)basicHttpResponse;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\daf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */