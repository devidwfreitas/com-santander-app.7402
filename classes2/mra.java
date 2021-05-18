import android.app.Activity;
import android.app.Dialog;
import android.os.AsyncTask;

public class mra extends AsyncTask<mkw, Void, Void> {
  private Activity a;
  
  private Dialog b;
  
  public mra(Activity paramActivity) {
    this.a = paramActivity;
  }
  
  protected Void a(mkw[] paramArrayOfmkw) {
    mkw mkw1 = paramArrayOfmkw[0];
    (new gog<mkw, Object>()).a(mkw1, mkv.class, has.b(), "incluirNovoFavorecido", "entrada");
    return null;
  }
  
  protected void a(Void paramVoid) {
    super.onPostExecute(paramVoid);
    if (this.b != null) {
      this.b.cancel();
      this.b = null;
    } 
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    this.b = mxn.b(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mra.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */