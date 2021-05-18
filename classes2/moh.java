import android.view.View;
import com.santander.app.transferencia.presentation.FormaTransferenciaActivity;

public class moh implements View.OnClickListener {
  public moh(FormaTransferenciaActivity paramFormaTransferenciaActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "Agendar");
    FormaTransferenciaActivity.p(this.a).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\moh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */