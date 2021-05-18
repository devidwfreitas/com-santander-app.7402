import android.view.View;
import com.santander.app.cambio.transferenciaexterior.presentation.DadosOperacaoActivity;

public class gci implements View.OnClickListener {
  public gci(DadosOperacaoActivity paramDadosOperacaoActivity) {}
  
  public void onClick(View paramView) {
    String str;
    frq.d("ServicosInternacionais_Cambio_DadosDaOperacao_Acao", "Continuar");
    if (DadosOperacaoActivity.a(this.a) != null && !DadosOperacaoActivity.a(this.a).a()) {
      str = DadosOperacaoActivity.a(this.a).e() + DadosOperacaoActivity.a(this.a).d();
    } else {
      str = DadosOperacaoActivity.b(this.a).getText().toString();
    } 
    DadosOperacaoActivity.e(this.a).a(str, DadosOperacaoActivity.f(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gci.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */