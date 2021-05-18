import android.view.View;
import com.santander.app.PoupancaResgateActivity;

public class fks implements View.OnClickListener {
  public fks(PoupancaResgateActivity paramPoupancaResgateActivity) {}
  
  public void onClick(View paramView) {
    if (!PoupancaResgateActivity.g(this.a).getText().toString().trim().equals(""))
      frq.d("Investimentos_Poupanca_Resgatar_Tipo_ValorParcial_Acao", PoupancaResgateActivity.g(this.a).getText().toString()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */