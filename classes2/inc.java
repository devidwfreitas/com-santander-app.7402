import android.database.DataSetObserver;
import android.util.Log;
import com.santander.app.habilitacaointernacional.activity.ExcluirHabilitacaoInternacionalActivity;

class inc extends DataSetObserver {
  inc(inb paraminb) {}
  
  public void onChanged() {
    Log.d("Santander", "Activity observer");
    ExcluirHabilitacaoInternacionalActivity.d(this.a.a);
    super.onChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */