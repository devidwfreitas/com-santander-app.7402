import android.view.View;
import android.widget.AdapterView;
import com.santander.app.previdencia.presentation.ListaDeAportesActivity;

public class kep implements AdapterView.OnItemClickListener {
  public kep(ListaDeAportesActivity paramListaDeAportesActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    ListaDeAportesActivity.a(this.a).a(paramAdapterView, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kep.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */