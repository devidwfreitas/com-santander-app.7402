import android.app.Dialog;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.seguros.ui.widgets.SegurosTextView;

public class mfg extends DialogFragment {
  private FragmentActivity a;
  
  private SegurosTextView b;
  
  private SegurosTextView c;
  
  private SegurosTextView d;
  
  private mfk e;
  
  public static mfg a() {
    Bundle bundle = new Bundle();
    mfg mfg1 = new mfg();
    mfg1.setArguments(bundle);
    return mfg1;
  }
  
  private void a(View paramView) {
    this.b = (SegurosTextView)paramView.findViewById(2131756956);
    this.c = (SegurosTextView)paramView.findViewById(2131756957);
    this.d = (SegurosTextView)paramView.findViewById(2131756958);
  }
  
  private void b() {
    this.b.setOnClickListener(new mfh(this));
    this.d.setOnClickListener(new mfi(this));
    this.c.setOnClickListener(new mfj(this));
  }
  
  public void a(mfk parammfk) {
    this.e = parammfk;
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
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
    View view = paramLayoutInflater.inflate(2130968980, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */