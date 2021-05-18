import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class lna extends DialogFragment {
  private static String a = "coverage-information-item";
  
  private static String b = "coverage-title-item";
  
  private kqo c;
  
  private String d;
  
  private String e;
  
  private Button f;
  
  private TextView g;
  
  private TextView h;
  
  public static lna a(String paramString1, String paramString2) {
    Bundle bundle = new Bundle();
    bundle.putString(a, paramString2);
    bundle.putString(b, paramString1);
    lna lna1 = new lna();
    lna1.setArguments(bundle);
    return lna1;
  }
  
  private void a() {
    this.g.setText(this.e);
    this.h.setText(this.d);
  }
  
  private void a(View paramView) {
    this.g = (TextView)paramView.findViewById(2131756909);
    this.h = (TextView)paramView.findViewById(2131756916);
    this.f = (Button)paramView.findViewById(2131756911);
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey(a))
      this.d = getArguments().getString(a); 
    if (getArguments() != null && getArguments().containsKey(b))
      this.e = getArguments().getString(b); 
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968964, paramViewGroup, false);
    a(view);
    a();
    this.f.setOnClickListener(new lnb(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lna.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */