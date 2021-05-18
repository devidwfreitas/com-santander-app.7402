import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;

public class cov extends DialogFragment {
  private Dialog a = null;
  
  private DialogInterface.OnCancelListener b = null;
  
  public static cov a(Dialog paramDialog) {
    return a(paramDialog, null);
  }
  
  public static cov a(Dialog paramDialog, DialogInterface.OnCancelListener paramOnCancelListener) {
    cov cov1 = new cov();
    paramDialog = (Dialog)csp.a(paramDialog, "Cannot display null dialog");
    paramDialog.setOnCancelListener(null);
    paramDialog.setOnDismissListener(null);
    cov1.a = paramDialog;
    if (paramOnCancelListener != null)
      cov1.b = paramOnCancelListener; 
    return cov1;
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cov.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */