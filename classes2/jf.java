import android.os.AsyncTask;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;

public class jf extends AsyncTask<jg, Void, is> {
  private ih a;
  
  private io b;
  
  private iz c;
  
  public jf(io paramio, iz paramiz) {
    this.b = paramio;
    this.c = paramiz;
  }
  
  public jf(iz paramiz) {
    this.c = paramiz;
  }
  
  public is a(iq paramiq) {
    try {
      if (this.c.b() == null || !this.c.b().equals(ip.REST)) {
        this.b.a();
        paramiq.a();
      } 
      ii.a = new URL(this.b.b());
      if (this.b.d() != null && !this.b.d().equals(""))
        ii.b = ib.a(this.b.d()); 
      return this.c.a(paramiq);
    } catch (ia ia) {
      return ia.a();
    } catch (MalformedURLException malformedURLException) {
      return (new ia(Integer.valueOf(500), "URL is malformed")).a();
    } catch (URISyntaxException uRISyntaxException) {
      return (new ia(Integer.valueOf(500), "MalformedURLException")).a();
    } 
  }
  
  protected is a(jg... paramVarArgs) {
    this.a = paramVarArgs[0].b();
    return a(paramVarArgs[0].a());
  }
  
  protected void a(is paramis) {
    super.onPostExecute(paramis);
    switch (paramis.a().intValue()) {
      default:
        this.a.onFailure(paramis);
        return;
      case 200:
      case 201:
      case 202:
      case 204:
        break;
    } 
    this.a.onSuccess(paramis);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */