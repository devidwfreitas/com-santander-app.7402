import android.view.View;
import android.widget.AdapterView;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;

public class fzs implements AdapterView.OnItemSelectedListener {
  public fzs(CadastrarDebitoAutomaticoActivity paramCadastrarDebitoAutomaticoActivity) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (paramInt != 0) {
      CadastrarDebitoAutomaticoActivity.f(this.a).setVisibility(8);
      gaf gaf = (gaf)paramAdapterView.getItemAtPosition(paramInt);
      frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_TipoDeConta_Acao", gaf.toString());
      (new fzx(this.a, null)).execute((Object[])new gaf[] { gaf });
    } 
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */