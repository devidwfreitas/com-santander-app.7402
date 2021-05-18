import java.io.BufferedInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;

class bpo extends BufferedInputStream {
  HttpURLConnection a;
  
  bpo(InputStream paramInputStream, HttpURLConnection paramHttpURLConnection) {
    super(paramInputStream, 8192);
    this.a = paramHttpURLConnection;
  }
  
  public void close() {
    super.close();
    bqq.a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */