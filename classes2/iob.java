import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.habilitacaointernacional.activity.ValidarCartaoHabilitacaoInternacionalActivity;

public class iob extends AsyncTask<Void, Void, hbd> {
  private iob(ValidarCartaoHabilitacaoInternacionalActivity paramValidarCartaoHabilitacaoInternacionalActivity) {}
  
  protected hbd a(Void... paramVarArgs) {
    try {
      return isCancelled() ? null : hat.i().b();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(hbd paramhbd) {}
  
  protected void onPreExecute() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iob.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */