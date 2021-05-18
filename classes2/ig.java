import android.os.AsyncTask;
import java.net.MalformedURLException;
import java.net.URL;

public class ig extends AsyncTask<iu, Void, is> {
  private ih a;
  
  private io b;
  
  private if c;
  
  private iv d;
  
  public ig(io paramio, if paramif) {
    this.b = paramio;
    this.c = paramif;
  }
  
  public is a(ir paramir) {
    try {
      this.b.a();
      paramir.a();
      ii.a = new URL(this.b.b());
      ii.b = ib.a(this.b.d());
      this.c.a(this.d);
      this.c.a(ip.HUB);
      return this.c.a(paramir);
    } catch (ia ia) {
      return ia.a();
    } catch (MalformedURLException malformedURLException) {
      return (new ia(Integer.valueOf(500), "URL is malformed")).a();
    } 
  }
  
  protected is a(iu... paramVarArgs) {
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */