import android.content.Context;
import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.gestao.contratoslist.view.ContratosListActivity;
import br.com.santander.modulo.emprestimoslib.features.gestao.detalhescontrato.view.DetalhesContratoActivity;

final class aho implements View.OnClickListener {
  aho(ahf paramahf) {}
  
  public final void onClick(View paramView) {
    if (ahf.b(this.a).g() > 1) {
      aiy.a(ahf.a(this.a).getString(agl.tag_mes_informativo_por_categoria_acao), ahf.a(this.a).getString(agl.tag_valor_financiamentos));
      Intent intent = new Intent((Context)ahf.a(this.a), ContratosListActivity.class);
      intent.putExtra("list", (new ejm()).b(ahf.b(this.a).s(), (new ahp(this)).getType()));
      intent.putExtra("titulo", ahf.a(this.a).getString(agl.meus_financiamentos));
      intent.setFlags(335544320);
      ahf.a(this.a).startActivity(intent);
      return;
    } 
    if (ahf.b(this.a).g() == 1) {
      aiy.a(ahf.a(this.a).getString(agl.tag_meus_financiamentos_acao), ahf.a(this.a).getString(agl.tag_valor_detalhe_financiamento));
      Intent intent = new Intent((Context)ahf.a(this.a), DetalhesContratoActivity.class);
      intent.putExtra("contrato", ahf.b(this.a).s().get(0));
      intent.setFlags(335544320);
      ahf.a(this.a).startActivity(intent);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */