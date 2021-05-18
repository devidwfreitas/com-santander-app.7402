import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ListagemFundosActivity;
import com.santander.app.investimentos.fundos.presentation.PerfilInvestidorActivity;

public class jhg implements View.OnClickListener {
  public jhg(ListagemFundosActivity paramListagemFundosActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_Fundos_Acao", "Perfil");
    ListagemFundosActivity.a(this.a, new Intent((Context)ListagemFundosActivity.d(this.a), PerfilInvestidorActivity.class));
    this.a.startActivity(ListagemFundosActivity.e(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */