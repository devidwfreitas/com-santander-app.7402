import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.investimentos.fundos.presentation.FundosAplicacaoActivity;
import com.santander.app.investimentos.fundos.presentation.ListagemContasFundosActivity;
import java.io.Serializable;

public class jgg implements View.OnClickListener {
  public jgg(FundosAplicacaoActivity paramFundosAplicacaoActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_Fundos_Resgate_Acao", "SelecionarOutraContaFundo");
    Intent intent = new Intent((Context)this.a.i, ListagemContasFundosActivity.class);
    intent.putExtra("lista_contas_fundo", FundosAplicacaoActivity.a(this.a));
    FundosAplicacaoActivity.c(this.a).a(FundosAplicacaoActivity.b(this.a).t());
    FundosAplicacaoActivity.c(this.a).u(FundosAplicacaoActivity.b(this.a).M());
    frq.d("Investimentos_Fundos_Resgate_Acao", FundosAplicacaoActivity.c(this.a).c());
    intent.putExtra("conta_fundo_selected", (Serializable)FundosAplicacaoActivity.c(this.a));
    this.a.startActivityForResult(intent, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jgg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */