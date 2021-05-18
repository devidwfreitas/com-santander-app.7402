import android.content.Context;
import android.os.AsyncTask;
import java.net.MalformedURLException;
import java.net.URISyntaxException;

public class jd extends AsyncTask<iy, Void, iw> {
  private Context a;
  
  private ij b;
  
  private iz c;
  
  public jd(Context paramContext, iz paramiz) {
    this.a = paramContext;
    this.c = paramiz;
  }
  
  public iw a(iq paramiq) {
    try {
      return this.c.a(paramiq);
    } catch (MalformedURLException malformedURLException) {
      return (new ia(Integer.valueOf(500), "URL is malformed")).a();
    } catch (URISyntaxException uRISyntaxException) {
      return (new ia(Integer.valueOf(500), "URISyntaxException")).a();
    } 
  }
  
  protected iw a(iy... paramVarArgs) {
    iw iw = a(paramVarArgs[0].a());
    this.b = paramVarArgs[0].b();
    return iw;
  }
  
  protected void a(iw paramiw) {
    super.onPostExecute(paramiw);
    if (paramiw.a().intValue() == 200 || paramiw.a().intValue() == 201) {
      this.b.a(paramiw);
      return;
    } 
    this.b.b(paramiw);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */