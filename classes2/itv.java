import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;
import android.util.Log;

public class itv extends AsyncTask<Void, Void, mir> {
  private String a;
  
  private Dialog b;
  
  private mip c;
  
  private gkv d;
  
  private Activity e;
  
  private String f;
  
  private String g;
  
  public itv(Activity paramActivity, String paramString1, String paramString2, String paramString3, gkv paramgkv) {
    this.a = paramString1;
    this.c = (mip)miq.C();
    this.d = paramgkv;
    this.e = paramActivity;
    this.f = paramString2;
    this.g = paramString3;
  }
  
  protected mir a(Void... paramVarArgs) {
    try {
      return hat.c().a(this.e, this.a, this.f, this.g);
    } catch (hbo hbo) {
      cancel(true);
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    return null;
  }
  
  protected void a(mir parammir) {
    this.d.a(parammir);
  }
  
  public void onPreExecute() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\itv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */