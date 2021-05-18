import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class lay extends DialogFragment {
  private static final String a = "MESSAGE_BODY_KEY";
  
  private String b = "";
  
  private lbb c;
  
  private Button d;
  
  private Button e;
  
  private TextView f;
  
  public static lay a(String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString("MESSAGE_BODY_KEY", paramString);
    lay lay1 = new lay();
    lay1.setArguments(bundle);
    return lay1;
  }
  
  private void a() {
    this.f.setText(this.b);
    this.d.setOnClickListener(new laz(this));
    this.e.setOnClickListener(new lba(this));
  }
  
  private void a(View paramView) {
    this.f = (TextView)paramView.findViewById(2131756855);
    this.d = (Button)paramView.findViewById(2131756856);
    this.e = (Button)paramView.findViewById(2131756857);
  }
  
  public void a(lbb paramlbb) {
    this.c = paramlbb;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setStyle(1, 2131427627);
    if (getArguments() != null)
      this.b = getArguments().getString("MESSAGE_BODY_KEY"); 
  }
  
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    if (dialog.getWindow() != null) {
      dialog.getWindow().requestFeature(1);
      dialog.getWindow().setBackgroundDrawable((Drawable)new ColorDrawable(0));
    } 
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968947, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */