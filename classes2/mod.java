import android.view.View;
import com.santander.app.transferencia.presentation.FormaTransferenciaActivity;

public class mod implements View.OnClickListener {
  public mod(FormaTransferenciaActivity paramFormaTransferenciaActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "SelecionarTED");
    FormaTransferenciaActivity.j(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mod.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */