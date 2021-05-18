import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;

public class lbc extends DialogFragment {
  private lbh a;
  
  private EditText b;
  
  private EditText c;
  
  private EditText d;
  
  private Button e;
  
  private Button f;
  
  private lbg g = new lbg(this, null);
  
  public static lbc a() {
    return new lbc();
  }
  
  private void a(View paramView) {
    this.b = (EditText)paramView.findViewById(2131756952);
    this.c = (EditText)paramView.findViewById(2131756953);
    this.d = (EditText)paramView.findViewById(2131756954);
    this.e = (Button)paramView.findViewById(2131756846);
    this.f = (Button)paramView.findViewById(2131756955);
  }
  
  private void a(EditText paramEditText) {
    paramEditText.addTextChangedListener(new lbf(this, paramEditText));
  }
  
  private void b() {
    mhj.d((View)this.f);
    this.e.setOnClickListener(new lbd(this));
    a(this.b);
    a(this.d);
    a(this.c);
    this.f.setOnClickListener(new lbe(this));
  }
  
  public void a(lbh paramlbh) {
    this.a = paramlbh;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setStyle(1, 2131427627);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    if (dialog.getWindow() != null)
      dialog.getWindow().requestFeature(1); 
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968979, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lbc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */