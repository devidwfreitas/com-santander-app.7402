import com.ca.android.app.CaMDOHTTPClient;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class dsw implements dsz {
  protected final HttpClient a;
  
  public dsw(HttpClient paramHttpClient) {
    this.a = paramHttpClient;
  }
  
  private static void a(HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase, dsa<?> paramdsa) {
    byte[] arrayOfByte = paramdsa.k();
    if (arrayOfByte != null)
      paramHttpEntityEnclosingRequestBase.setEntity((HttpEntity)new ByteArrayEntity(arrayOfByte)); 
  }
  
  private static void a(HttpUriRequest paramHttpUriRequest, Map<String, String> paramMap) {
    for (String str : paramMap.keySet())
      paramHttpUriRequest.setHeader(str, paramMap.get(str)); 
  }
  
  static HttpUriRequest b(dsa<?> paramdsa, Map<String, String> paramMap) {
    byte[] arrayOfByte;
    HttpPost httpPost;
    HttpPut httpPut;
    switch (paramdsa.a()) {
      default:
        throw new IllegalStateException("Unknown request method.");
      case -1:
        arrayOfByte = paramdsa.h();
        if (arrayOfByte != null) {
          HttpPost httpPost1 = new HttpPost(paramdsa.c());
          httpPost1.addHeader("Content-Type", paramdsa.g());
          httpPost1.setEntity((HttpEntity)new ByteArrayEntity(arrayOfByte));
          return (HttpUriRequest)httpPost1;
        } 
        return (HttpUriRequest)new HttpGet(paramdsa.c());
      case 0:
        return (HttpUriRequest)new HttpGet(paramdsa.c());
      case 3:
        return (HttpUriRequest)new HttpDelete(paramdsa.c());
      case 1:
        httpPost = new HttpPost(paramdsa.c());
        httpPost.addHeader("Content-Type", paramdsa.j());
        a((HttpEntityEnclosingRequestBase)httpPost, paramdsa);
        return (HttpUriRequest)httpPost;
      case 2:
        httpPut = new HttpPut(paramdsa.c());
        httpPut.addHeader("Content-Type", paramdsa.j());
        a((HttpEntityEnclosingRequestBase)httpPut, paramdsa);
        return (HttpUriRequest)httpPut;
      case 4:
        return (HttpUriRequest)new HttpHead(paramdsa.c());
      case 5:
        return (HttpUriRequest)new HttpOptions(paramdsa.c());
      case 6:
        return (HttpUriRequest)new HttpTrace(paramdsa.c());
      case 7:
        break;
    } 
    dsx dsx = new dsx(paramdsa.c());
    dsx.addHeader("Content-Type", paramdsa.j());
    a(dsx, paramdsa);
    return (HttpUriRequest)dsx;
  }
  
  public HttpResponse a(dsa<?> paramdsa, Map<String, String> paramMap) {
    HttpUriRequest httpUriRequest = b(paramdsa, paramMap);
    a(httpUriRequest, paramMap);
    a(httpUriRequest, paramdsa.f());
    HttpParams httpParams = httpUriRequest.getParams();
    int i = paramdsa.n();
    HttpConnectionParams.setConnectionTimeout(httpParams, 5000);
    HttpConnectionParams.setSoTimeout(httpParams, i);
    return CaMDOHTTPClient.execute(this.a, httpUriRequest);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */