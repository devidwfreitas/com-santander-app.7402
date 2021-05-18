import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatRadioButton;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.TextView;

@Deprecated
public class lfj extends DialogFragment {
  private AppCompatRadioButton a;
  
  private AppCompatRadioButton b;
  
  private AppCompatRadioButton c;
  
  private Button d;
  
  private Button e;
  
  private lfs f;
  
  private FrameLayout g;
  
  private FrameLayout h;
  
  private FrameLayout i;
  
  private TextView j;
  
  private TextView k;
  
  private TextView l;
  
  public static lfj a() {
    Bundle bundle = new Bundle();
    lfj lfj1 = new lfj();
    lfj1.setArguments(bundle);
    return lfj1;
  }
  
  private void a(View paramView) {
    this.a = (AppCompatRadioButton)paramView.findViewById(2131756899);
    this.b = (AppCompatRadioButton)paramView.findViewById(2131756902);
    this.c = (AppCompatRadioButton)paramView.findViewById(2131756905);
    this.e = (Button)paramView.findViewById(2131756907);
    this.d = (Button)paramView.findViewById(2131756908);
    this.g = (FrameLayout)paramView.findViewById(2131756898);
    this.h = (FrameLayout)paramView.findViewById(2131756901);
    this.i = (FrameLayout)paramView.findViewById(2131756904);
    this.j = (TextView)paramView.findViewById(2131756900);
    this.k = (TextView)paramView.findViewById(2131756903);
    this.l = (TextView)paramView.findViewById(2131756906);
    b();
    this.e.setOnClickListener((View.OnClickListener)new lfk(this));
    this.d.setOnClickListener((View.OnClickListener)new lfl(this));
  }
  
  private void b() {
    this.a.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new lfm(this));
    this.b.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new lfn(this));
    this.c.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new lfo(this));
    this.g.setOnClickListener((View.OnClickListener)new lfp(this));
    this.h.setOnClickListener((View.OnClickListener)new lfq(this));
    this.i.setOnClickListener((View.OnClickListener)new lfr(this));
  }
  
  public void a(lfs paramlfs) {
    this.f = paramlfs;
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
    View view = paramLayoutInflater.inflate(2130968961, paramViewGroup, false);
    a(view);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lfj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */