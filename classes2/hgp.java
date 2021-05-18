import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;
import com.santander.app.emprestimo.acordo.presentation.AcordoComprovanteActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;

public class hgp implements DialogInterface.OnClickListener {
  public hgp(AcordoComprovanteActivity paramAcordoComprovanteActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (paramInt == -1) {
      Intent intent;
      if (this.a.v.f().e().booleanValue()) {
        intent = new Intent((Context)this.a, HomeLogadaNaoCorrentistaActivity.class);
      } else {
        intent = new Intent((Context)this.a, HomeLogadaActivity.class);
      } 
      this.a.startActivity(intent);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hgp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */