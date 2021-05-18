import android.view.View;
import com.santander.app.investimentos.fundos.presentation.FiltroFundosActivity;

public class jgf implements View.OnClickListener {
  public jgf(FiltroFundosActivity paramFiltroFundosActivity) {}
  
  public void onClick(View paramView) {
    jdw jdw = (jdw)paramView.getTag();
    FiltroFundosActivity.a(this.a, null);
    frq.d("Investimentos_Fundos_Filtrar_Acao", "Filtrar");
    if (!jdw.a()) {
      jdw.a(false);
    } else {
      jdw.a(true);
      FiltroFundosActivity.a(this.a, jdw);
      FiltroFundosActivity.b(this.a).setEnabled(true);
    } 
    for (int i = 0; FiltroFundosActivity.c(this.a).size() > i; i++) {
      if (jdw.b().equals(((jdw)FiltroFundosActivity.c(this.a).get(i)).b())) {
        ((jdw)FiltroFundosActivity.c(this.a).get(i)).a(jdw.a());
      } else {
        ((jdw)FiltroFundosActivity.c(this.a).get(i)).a(false);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */