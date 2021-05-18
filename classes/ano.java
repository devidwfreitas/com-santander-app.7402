import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.Window;

public class ano {
  public static Dialog a(Activity paramActivity) {
    Dialog dialog = new Dialog((Context)paramActivity, alw.Santander_Loading);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity(paramActivity);
    dialog.setContentView(alu.santander_dialog_loading);
    dialog.setCancelable(false);
    Window window = dialog.getWindow();
    if (window != null) {
      (window.getAttributes()).windowAnimations = alw.Santander_Loading;
      window.setLayout(-1, -1);
    } 
    return dialog;
  }
  
  public static Dialog b(Activity paramActivity) {
    Dialog dialog = a(paramActivity);
    dialog.show();
    return dialog;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ano.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */