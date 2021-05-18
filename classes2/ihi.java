import android.app.Activity;
import android.view.View;
import com.santander.app.formalizacaodigital.presentation.DetalheFormalizacaoDigitalActivity;

public class ihi implements View.OnClickListener {
  public ihi(DetalheFormalizacaoDigitalActivity paramDetalheFormalizacaoDigitalActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_PropostasEmAberto_Desistir_Acao", DetalheFormalizacaoDigitalActivity.a(this.a).d());
    if (mzr.a()) {
      DetalheFormalizacaoDigitalActivity.b(this.a);
      return;
    } 
    DetalheFormalizacaoDigitalActivity.a(this.a, (Activity)this.a, "Atenção", "Deseja realmente cancelar essa proposta?");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */