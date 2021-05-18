import android.view.View;
import com.ca.android.app.CaMDOWebView;
import com.santander.app.emprestimo.antecipacaoDT.activity.TermoContratacaoEmprestimoActivity;

public class hik implements View.OnClickListener {
  public hik(TermoContratacaoEmprestimoActivity paramTermoContratacaoEmprestimoActivity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_Antecipar13_Termo_Acao", "Concordo");
    TermoContratacaoEmprestimoActivity.a(this.a).setVisibility(8);
    TermoContratacaoEmprestimoActivity.b(this.a).setVisibility(8);
    TermoContratacaoEmprestimoActivity.c(this.a).setVisibility(0);
    TermoContratacaoEmprestimoActivity.d(this.a).setVisibility(0);
    CaMDOWebView.loadUrl(TermoContratacaoEmprestimoActivity.e(this.a), "file:///android_asset/clausulas_condicoes_antecipacao13.html");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */