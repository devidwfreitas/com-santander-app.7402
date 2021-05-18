import android.app.Dialog;
import android.content.DialogInterface;
import android.widget.EditText;

class pk implements DialogInterface.OnDismissListener {
  pk(pc parampc, Dialog paramDialog) {}
  
  public void onDismiss(DialogInterface paramDialogInterface) {
    pc.Q(this.b).a(Integer.valueOf(((EditText)this.a.findViewById(la.dialog_pzr_campo_prazo)).getText().toString().replace(" dias", "")));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\pk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */