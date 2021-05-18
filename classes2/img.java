import android.database.DataSetObserver;
import android.util.Log;
import com.santander.app.habilitacaointernacional.activity.CadastrarHabilitacaoInternacionalActivity;

public class img extends DataSetObserver {
  public img(CadastrarHabilitacaoInternacionalActivity paramCadastrarHabilitacaoInternacionalActivity) {}
  
  public void onChanged() {
    Log.d("Santander", "Activity observer");
    CadastrarHabilitacaoInternacionalActivity.g(this.a);
    super.onChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\img.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */