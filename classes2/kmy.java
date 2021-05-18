import android.view.View;
import android.widget.AdapterView;
import com.santander.app.segundaviacomprovantes.presentation.SegundaViaActivity;

public class kmy implements AdapterView.OnItemSelectedListener {
  public kmy(SegundaViaActivity paramSegundaViaActivity) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (paramView != null && paramAdapterView.getSelectedItem() != null)
      frq.d("Outros_Comprovantes_TipoDeTransacao_Acao", paramAdapterView.getSelectedItem().toString()); 
    klu klu = (klu)paramAdapterView.getSelectedItem();
    SegundaViaActivity.d(this.a).d(klu.d());
    SegundaViaActivity.d(this.a).a(klu.a());
    if (!klu.d().equalsIgnoreCase("SELECIONE")) {
      kmb.a(klu.a());
      SegundaViaActivity.f(this.a).setOnClickListener(this.a.g());
      SegundaViaActivity.f(this.a).setEnabled(true);
      return;
    } 
    SegundaViaActivity.f(this.a).setEnabled(false);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kmy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */