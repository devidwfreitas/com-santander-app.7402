import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.BeneficiarioPagamentoDetalheActivity;
import com.santander.app.BeneficiarioPagamentoListActivity;

public class fgi implements View.OnClickListener {
  public fgi(BeneficiarioPagamentoDetalheActivity paramBeneficiarioPagamentoDetalheActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a.i, BeneficiarioPagamentoListActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */