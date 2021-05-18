import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class lfh extends DialogFragment {
  public static final String a = "message-dialog-key";
  
  private String b;
  
  private Button c;
  
  private TextView d;
  
  public static lfh a(String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString("message-dialog-key", paramString);
    lfh lfh1 = new lfh();
    lfh1.setArguments(bundle);
    return lfh1;
  }
  
  private void a() {
    this.d.setText(this.b);
  }
  
  private void a(View paramView) {
    this.c = (Button)paramView.findViewById(2131756911);
    this.d = (TextView)paramView.findViewById(2131756910);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("message-dialog-key"))
      this.b = getArguments().getString("message-dialog-key"); 
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
    View view = paramLayoutInflater.inflate(2130968960, paramViewGroup, false);
    a(view);
    a();
    this.c.setOnClickListener(new lfi(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lfh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */