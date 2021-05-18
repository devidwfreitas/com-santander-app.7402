import android.content.DialogInterface;
import com.santander.app.BeneficiarioPagamentoDetalheActivity;

class fgh implements DialogInterface.OnClickListener {
  fgh(fgg paramfgg) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (paramInt == -1) {
      BeneficiarioPagamentoDetalheActivity.a(this.a.d).a(this.a.a.getText().toString());
      BeneficiarioPagamentoDetalheActivity.a(this.a.d).b(this.a.b.getText().toString());
      BeneficiarioPagamentoDetalheActivity.a(this.a.d).c(this.a.c.getText().toString());
      BeneficiarioPagamentoDetalheActivity.a(this.a.d).a(fus.UPDATE);
      if (BeneficiarioPagamentoDetalheActivity.a(this.a.d) != null)
        (new fgk(this.a.d)).execute((Object[])new fur[] { BeneficiarioPagamentoDetalheActivity.a(this.a.d) }); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */