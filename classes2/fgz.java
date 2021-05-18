import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.CadastramentoTransOkActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class fgz implements View.OnClickListener {
  public fgz(CadastramentoTransOkActivity paramCadastramentoTransOkActivity) {}
  
  public void onClick(View paramView) {
    frq.d("Cartoes_CadastrarFaturaPorEmail_Comprovante_Acaos", "Fechar");
    Intent intent = new Intent((Context)CadastramentoTransOkActivity.a(this.a), HomeLogadaActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */