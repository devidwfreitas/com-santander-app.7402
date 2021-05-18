import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;

public class lxn extends DialogFragment {
  private EditText a;
  
  private Button b;
  
  private Button c;
  
  private String d;
  
  private lxq e;
  
  public static lxn a() {
    Bundle bundle = new Bundle();
    lxn lxn1 = new lxn();
    lxn1.setArguments(bundle);
    return lxn1;
  }
  
  private void a(View paramView) {
    this.a = (EditText)paramView.findViewById(2131756844);
    this.b = (Button)paramView.findViewById(2131756070);
    this.c = (Button)paramView.findViewById(2131756846);
    b();
  }
  
  private void b() {
    this.b.setOnClickListener(new lxo(this));
    this.c.setOnClickListener(new lxp(this));
  }
  
  public void a(lxq paramlxq) {
    this.e = paramlxq;
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968945, paramViewGroup, false);
    a(view);
    return view;
  }
  
  public void onDestroyView() {
    super.onDestroyView();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lxn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */