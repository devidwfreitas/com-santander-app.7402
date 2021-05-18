import android.view.View;
import com.ca.android.app.CaMDOWebView;
import com.santander.app.emprestimo.antecipacaoIR.activity.TermoContratacaoEmprestimoAntecipacaoIRActivity;

public class hju implements View.OnClickListener {
  public hju(TermoContratacaoEmprestimoAntecipacaoIRActivity paramTermoContratacaoEmprestimoAntecipacaoIRActivity) {}
  
  public void onClick(View paramView) {
    frq.d("CreditoFinanciamento_AnteciparIR_Termo_Acao", "Concordo");
    TermoContratacaoEmprestimoAntecipacaoIRActivity.a(this.a).setVisibility(8);
    TermoContratacaoEmprestimoAntecipacaoIRActivity.b(this.a).setVisibility(8);
    TermoContratacaoEmprestimoAntecipacaoIRActivity.c(this.a).setVisibility(0);
    TermoContratacaoEmprestimoAntecipacaoIRActivity.d(this.a).setVisibility(0);
    CaMDOWebView.loadUrl(TermoContratacaoEmprestimoAntecipacaoIRActivity.e(this.a), "file:///android_asset/clausulas_condicoes_antecipacaoIR.html");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */