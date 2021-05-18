import android.view.View;
import com.santander.app.transferencia.presentation.TransferenciasActivity;

public class mot implements View.OnClickListener {
  public mot(TransferenciasActivity paramTransferenciasActivity, int paramInt) {}
  
  public void onClick(View paramView) {
    frq.d("Transferencia_Acao", "Adicionar" + String.valueOf(Integer.parseInt(String.valueOf(this.a))));
    if (TransferenciasActivity.d(this.b).getText().toString() == null || TransferenciasActivity.d(this.b).getText().toString().equals(""))
      TransferenciasActivity.d(this.b).setText("0,00"); 
    if (TransferenciasActivity.a(this.b) != null || TransferenciasActivity.b(this.b) != null)
      TransferenciasActivity.c(this.b).setEnabled(true); 
    double d1 = Double.valueOf(Double.parseDouble(naj.m(TransferenciasActivity.d(this.b).getText().toString()))).doubleValue();
    double d2 = this.a;
    TransferenciasActivity.d(this.b).setText(naj.a(Double.valueOf(d1 + d2).doubleValue()).replace("R$", ""));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */