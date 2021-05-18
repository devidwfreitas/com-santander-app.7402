import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.gestao.detalhescontrato.view.DetalhesContratoActivity;

final class agr implements View.OnClickListener {
  agr(agp paramagp, ajn paramajn) {}
  
  public final void onClick(View paramView) {
    if (this.a.a().equals(String.valueOf(ajt.EMPRESTIMO.getCode()))) {
      aiy.a(agp.a(this.b).getString(agl.tag_meus_emprestimos_acao), agp.a(this.b).getString(agl.tag_valor_detalhe_emprestimo));
    } else if (this.a.a().equals("23") || this.a.a().equals("86")) {
      aiy.a(agp.a(this.b).getString(agl.tag_meus_financiamentos_acao), agp.a(this.b).getString(agl.tag_valor_detalhe_financiamento));
    } else {
      this.a.a().equals(String.valueOf(ajt.RENEGOCIACAO.getCode()));
    } 
    Intent intent = new Intent(agp.a(this.b), DetalhesContratoActivity.class);
    intent.putExtra("contrato", this.a);
    intent.setFlags(335544320);
    agp.a(this.b).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\agr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */