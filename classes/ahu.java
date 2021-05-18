import android.content.Context;
import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.gestao.financiamento.FinanciamentoActivity;

final class ahu implements View.OnClickListener {
  ahu(ahf paramahf) {}
  
  public final void onClick(View paramView) {
    aiy.a(ahf.a(this.a).getString(agl.tag_financiamento_acao), ahf.a(this.a).getString(agl.tag_valor_financiamentos));
    Intent intent = new Intent((Context)ahf.a(this.a), FinanciamentoActivity.class);
    intent.setFlags(335544320);
    ahf.a(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */