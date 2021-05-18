import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;

class lph implements DialogInterface.OnClickListener {
  lph(loz paramloz) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    Intent intent = new Intent((Context)loz.a(this.a), MyInsurancesV2Activity.class);
    intent.addFlags(335544320);
    loz.a(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */