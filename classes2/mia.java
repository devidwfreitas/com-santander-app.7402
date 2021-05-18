import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;

public abstract class mia extends DialogFragment {
  private void a() {
    Window window = getDialog().getWindow();
    if (window == null)
      return; 
    WindowManager.LayoutParams layoutParams = window.getAttributes();
    layoutParams.gravity = 80;
    layoutParams.width = -1;
    window.setAttributes(layoutParams);
    window.setBackgroundDrawable((Drawable)new ColorDrawable(0));
  }
  
  @Nullable
  public abstract View a(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle);
  
  public void dismiss() {
    kzp.a(getView(), new mib(this));
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.requestWindowFeature(1);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = a(paramLayoutInflater, paramViewGroup, paramBundle);
    kzp.a(view);
    return view;
  }
  
  public void onStart() {
    super.onStart();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mia.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */