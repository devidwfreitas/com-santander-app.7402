import android.content.Context;
import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.gestao.duvidas.view.DuvidasActivity;

final class ahl implements View.OnClickListener {
  ahl(ahf paramahf) {}
  
  public final void onClick(View paramView) {
    aiy.a(ahf.a(this.a).getString(agl.tag_mes_informativo_acao), ahf.a(this.a).getString(agl.tag_valor_dividas_por_categoria));
    ahf.a(this.a).startActivity(new Intent((Context)ahf.a(this.a), DuvidasActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */