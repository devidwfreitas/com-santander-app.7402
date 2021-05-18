import android.view.View;
import com.santander.app.formalizacaodigital.presentation.DetalheFormalizacaoDigitalActivity;

public class ihg implements View.OnClickListener {
  public ihg(DetalheFormalizacaoDigitalActivity paramDetalheFormalizacaoDigitalActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_PropostasEmAberto_AceitarTermo_Acao", DetalheFormalizacaoDigitalActivity.a(this.a).d());
    if (mzr.a()) {
      DetalheFormalizacaoDigitalActivity.b(this.a);
      return;
    } 
    if (!DetalheFormalizacaoDigitalActivity.c(this.a)) {
      DetalheFormalizacaoDigitalActivity.a(this.a, true);
      DetalheFormalizacaoDigitalActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130838245));
      DetalheFormalizacaoDigitalActivity.e(this.a).setEnabled(true);
      DetalheFormalizacaoDigitalActivity.f(this.a).setVisibility(8);
      return;
    } 
    DetalheFormalizacaoDigitalActivity.a(this.a, false);
    DetalheFormalizacaoDigitalActivity.d(this.a).setImageDrawable(this.a.getResources().getDrawable(2130838244));
    DetalheFormalizacaoDigitalActivity.e(this.a).setEnabled(false);
    DetalheFormalizacaoDigitalActivity.f(this.a).setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */