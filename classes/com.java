import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;

public class com extends DialogFragment {
  private Dialog a = null;
  
  private DialogInterface.OnCancelListener b = null;
  
  public static com a(Dialog paramDialog) {
    return a(paramDialog, null);
  }
  
  public static com a(Dialog paramDialog, DialogInterface.OnCancelListener paramOnCancelListener) {
    com com1 = new com();
    paramDialog = (Dialog)csp.a(paramDialog, "Cannot display null dialog");
    paramDialog.setOnCancelListener(null);
    paramDialog.setOnDismissListener(null);
    com1.a = paramDialog;
    if (paramOnCancelListener != null)
      com1.b = paramOnCancelListener; 
    return com1;
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {
    if (this.b != null)
      this.b.onCancel(paramDialogInterface); 
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    if (this.a == null)
      setShowsDialog(false); 
    return this.a;
  }
  
  public void show(FragmentManager paramFragmentManager, String paramString) {
    super.show(paramFragmentManager, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */