import android.content.Context;
import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.gestao.contratoslist.view.ContratosListActivity;
import br.com.santander.modulo.emprestimoslib.features.gestao.detalhescontrato.view.DetalhesContratoActivity;

final class aia implements View.OnClickListener {
  aia(ahg paramahg) {}
  
  public final void onClick(View paramView) {
    if (ahg.b(this.a).c() > 1) {
      aiy.a(ahg.a(this.a).getString(agl.tag_total_informativo_por_categoria_acao), ahg.a(this.a).getString(agl.tag_valor_renegociacao));
      Intent intent = new Intent((Context)ahg.a(this.a), ContratosListActivity.class);
      intent.putExtra("list", (new ejm()).b(ahg.b(this.a).t(), (new aib(this)).getType()));
      intent.putExtra("titulo", "Renegociações");
      intent.setFlags(335544320);
      ahg.a(this.a).startActivity(intent);
      return;
    } 
    if (ahg.b(this.a).c() == 1) {
      Intent intent = new Intent((Context)ahg.a(this.a), DetalhesContratoActivity.class);
      intent.putExtra("contrato", ahg.b(this.a).t().get(0));
      intent.setFlags(335544320);
      ahg.a(this.a).startActivity(intent);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */