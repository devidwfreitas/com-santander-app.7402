import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

public class lyw extends DialogFragment {
  private Button a;
  
  public static lyw a() {
    Bundle bundle = new Bundle();
    lyw lyw1 = new lyw();
    lyw1.setArguments(bundle);
    return lyw1;
  }
  
  private void a(View paramView) {
    this.a = (Button)paramView.findViewById(2131756865);
    this.a.setOnClickListener(new lyx(this));
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968993, paramViewGroup, false);
    a(view);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */