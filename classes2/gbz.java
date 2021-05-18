import android.view.View;
import com.santander.app.cambio.transferenciaexterior.presentation.CambioActivity;

public class gbz implements View.OnClickListener {
  public gbz(CambioActivity paramCambioActivity) {}
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131757734:
        CambioActivity.i(this.a).a(gtd.CAMBIO_VET);
        return;
      case 2131757737:
        CambioActivity.i(this.a).a(gtd.CAMBIO_VALOR_TOTAL_DEBITO);
        return;
      case 2131757740:
        CambioActivity.i(this.a).a(gtd.CAMBIO_TIMER);
        return;
      case 2131757739:
        break;
    } 
    frq.d("ServicosInternacionais_Cambio_Cambio_Acao", "Confirmar");
    CambioActivity.l(this.a).a(CambioActivity.j(this.a), CambioActivity.k(this.a), CambioActivity.d(this.a).getText().toString(), CambioActivity.a(this.a), CambioActivity.f(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gbz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */