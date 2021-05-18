import android.content.DialogInterface;
import com.santander.app.transferencia.presentation.FormaTransferenciaActivity;

public class moa implements DialogInterface.OnClickListener {
  public moa(FormaTransferenciaActivity paramFormaTransferenciaActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    FormaTransferenciaActivity.m(this.a).b(FormaTransferenciaActivity.f(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\moa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */