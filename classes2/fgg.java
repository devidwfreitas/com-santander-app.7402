import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
import com.santander.app.BeneficiarioPagamentoDetalheActivity;

public class fgg implements View.OnClickListener {
  public fgg(BeneficiarioPagamentoDetalheActivity paramBeneficiarioPagamentoDetalheActivity, EditText paramEditText1, EditText paramEditText2, EditText paramEditText3) {}
  
  public void onClick(View paramView) {
    fgh fgh = new fgh(this);
    (new AlertDialog.Builder((Context)this.d.i)).setMessage("Você realmente deseja alterar esse beneficiário?").setPositiveButton("Confirmar", fgh).setNegativeButton("Cancelar", fgh).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */