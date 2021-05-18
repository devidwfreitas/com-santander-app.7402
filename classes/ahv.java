import android.content.Context;
import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.gestao.duvidas.view.DuvidasActivity;

final class ahv implements View.OnClickListener {
  ahv(ahg paramahg) {}
  
  public final void onClick(View paramView) {
    aiy.a(ahg.a(this.a).getString(agl.tag_total_informativo_acao), ahg.a(this.a).getString(agl.tag_valor_dividas_por_categoria));
    ahg.a(this.a).startActivity(new Intent((Context)ahg.a(this.a), DuvidasActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */