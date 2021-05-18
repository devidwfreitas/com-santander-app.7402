import android.view.View;
import com.santander.app.investimentos.fundos.presentation.ListagemFundosActivity;

public class jhh implements View.OnClickListener {
  public jhh(ListagemFundosActivity paramListagemFundosActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_Fundos_Acao", "VerTodosOsFundos");
    ListagemFundosActivity.f(this.a).setSelectedButtonTab2();
    ListagemFundosActivity.a(this.a, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */