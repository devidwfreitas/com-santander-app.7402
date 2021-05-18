import android.content.DialogInterface;
import com.santander.app.SaldoActivity;

public class fnj implements DialogInterface.OnClickListener {
  public fnj(SaldoActivity paramSaldoActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (paramInt == -1)
      this.a.finish(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */