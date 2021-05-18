import android.view.View;
import android.widget.AdapterView;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;
import java.util.List;

public class gix implements AdapterView.OnItemSelectedListener {
  public gix(ParcelamentoFaturaActivity paramParcelamentoFaturaActivity, List paramList) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (ParcelamentoFaturaActivity.n(this.b))
      frq.a("Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_QuantidadeDeParcelas", Double.parseDouble(((gif)this.a.get(paramInt)).c())); 
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */