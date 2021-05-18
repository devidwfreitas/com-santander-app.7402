import android.widget.LinearLayout;
import br.com.santander.uisdk.SantanderSwitch;
import com.santander.app.pagamentos.titulos.presentation.FormaPagamentosDDAActivity;

public class juv implements alz {
  public juv(FormaPagamentosDDAActivity paramFormaPagamentosDDAActivity) {}
  
  public void onCheckedChanged(SantanderSwitch paramSantanderSwitch, boolean paramBoolean) {
    if (paramBoolean) {
      frq.d("Pagamentos_DDA_AgendamentoRecorrente_Acao", "Habilitar");
      FormaPagamentosDDAActivity.a(this.a).setVisibility(0);
      ((LinearLayout.LayoutParams)FormaPagamentosDDAActivity.b(this.a).getLayoutParams()).weight = 0.1F;
      return;
    } 
    frq.d("Pagamentos_DDA_AgendamentoRecorrente_Acao", "Desabilitar");
    FormaPagamentosDDAActivity.a(this.a).setVisibility(8);
    ((LinearLayout.LayoutParams)FormaPagamentosDDAActivity.b(this.a).getLayoutParams()).weight = 0.35F;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\juv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */