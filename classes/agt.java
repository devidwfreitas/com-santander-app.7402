import android.content.Context;
import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.gestao.main.view.CreditoMainActivity;

final class agt implements View.OnClickListener {
  agt(ags paramags) {}
  
  public final void onClick(View paramView) {
    aiy.a(ags.a(this.a).getString(agl.tag_meus_emprestimos_acao), ags.a(this.a).getString(agl.tag_valor_conheca_uma_oferta));
    Intent intent = new Intent((Context)ags.a(this.a), CreditoMainActivity.class);
    intent.setFlags(67108864);
    intent.putExtra("openCP", true);
    ags.a(this.a).startActivity(intent);
    ags.a(this.a).finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\agt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */