import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.RadioGroup;
import com.santander.app.transfergolden.presentation.ExtensionActivity;

public class msv implements DialogInterface.OnClickListener {
  public msv(ExtensionActivity paramExtensionActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    RadioGroup radioGroup = (RadioGroup)((AlertDialog)paramDialogInterface).findViewById(2131758434);
    paramInt = radioGroup.indexOfChild(radioGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
    ExtensionActivity.b(this.a).a(paramInt);
    paramDialogInterface.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\msv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */