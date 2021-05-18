import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class lms extends DialogFragment {
  private static String a = "assistance-information-item";
  
  private static String b = "assistance-title-item";
  
  private kqd c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private String g;
  
  private String h;
  
  public static lms a(String paramString1, String paramString2) {
    Bundle bundle = new Bundle();
    bundle.putString(a, paramString2);
    bundle.putString(b, paramString1);
    lms lms1 = new lms();
    lms1.setArguments(bundle);
    return lms1;
  }
  
  private void a() {
    this.e.setText(this.h);
    this.f.setText(this.g);
  }
  
  private void a(View paramView) {
    this.e = (TextView)paramView.findViewById(2131756909);
    this.f = (TextView)paramView.findViewById(2131756916);
    this.d = (TextView)paramView.findViewById(2131756911);
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey(a))
      this.g = getArguments().getString(a); 
    if (getArguments() != null && getArguments().containsKey(b))
      this.h = getArguments().getString(b); 
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
    this.d.setOnClickListener(new lmt(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lms.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */