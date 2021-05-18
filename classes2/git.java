import android.view.View;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;

public class git implements View.OnClickListener {
  public git(ParcelamentoFaturaActivity paramParcelamentoFaturaActivity) {}
  
  public void onClick(View paramView) {
    if (ParcelamentoFaturaActivity.g(this.a))
      return; 
    if (!this.a.v.f().e().booleanValue()) {
      gif gif = (gif)ParcelamentoFaturaActivity.h(this.a).getSelectedItem();
      frq.d("Cartoes_ParcelamentoDeFatura_OpcoesDeParcelamento_Acao", "ParcelasFixas");
      frq.a("Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_ValorDaPrimeiraParcela", Double.parseDouble(gif.d()));
      ParcelamentoFaturaActivity.f(this.a).a(ParcelamentoFaturaActivity.d(this.a), ParcelamentoFaturaActivity.e(this.a), gif);
    } else {
      frq.d("Cartoes_ParcelamentoDeFatura_OpcoesDeParcelamento_Acao", "ValorParcial");
      this.a.a();
    } 
    frq.d("Cartoes_ParcelamentoDeFatura_Acao", "Continuar");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\git.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */