import android.content.Context;
import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.gestao.financiamento.FinanciamentoActivity;

final class aif implements View.OnClickListener {
  aif(ahg paramahg) {}
  
  public final void onClick(View paramView) {
    aiy.a(ahg.a(this.a).getString(agl.tag_financiamento_acao), ahg.a(this.a).getString(agl.tag_valor_financiamentos));
    Intent intent = new Intent((Context)ahg.a(this.a), FinanciamentoActivity.class);
    intent.setFlags(335544320);
    ahg.a(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aif.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */