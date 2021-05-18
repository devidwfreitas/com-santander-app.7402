import android.text.InputFilter;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;
import java.util.ArrayList;

public class fzt implements gpd {
  public fzt(CadastrarDebitoAutomaticoActivity paramCadastrarDebitoAutomaticoActivity) {}
  
  public void a(Object paramObject, int paramInt) {
    gae gae = (gae)paramObject;
    frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_TipoDoPagamento", ((gae)paramObject).d());
    CadastrarDebitoAutomaticoActivity.g(this.a).setFocusableInTouchMode(true);
    CadastrarDebitoAutomaticoActivity.g(this.a).setClickable(true);
    if (gae.e() != null && !gae.e().equals("")) {
      CadastrarDebitoAutomaticoActivity.g(this.a).setFilters(new InputFilter[] { (InputFilter)new InputFilter.LengthFilter(Integer.parseInt(gae.e())) });
      CadastrarDebitoAutomaticoActivity.c(this.a, Integer.parseInt(gae.e()));
      CadastrarDebitoAutomaticoActivity.h(this.a).setText(gae.f().trim());
      CadastrarDebitoAutomaticoActivity.e(this.a).w(gae.a());
      CadastrarDebitoAutomaticoActivity.e(this.a).x(gae.b());
      CadastrarDebitoAutomaticoActivity.e(this.a).y(gae.c());
      if (!CadastrarDebitoAutomaticoActivity.f(this.a).isShown()) {
        CadastrarDebitoAutomaticoActivity.f(this.a).setVisibility(0);
        CadastrarDebitoAutomaticoActivity.g(this.a).requestFocus();
      } 
    } 
    CadastrarDebitoAutomaticoActivity.a(this.a, new ArrayList(CadastrarDebitoAutomaticoActivity.i(this.a)));
    CadastrarDebitoAutomaticoActivity.k(this.a).setItems(CadastrarDebitoAutomaticoActivity.j(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */