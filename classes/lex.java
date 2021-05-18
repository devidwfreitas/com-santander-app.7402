import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
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
public class lex extends DialogFragment {
  private AppCompatRadioButton a;
  
  private AppCompatRadioButton b;
  
  private AppCompatRadioButton c;
  
  private Button d;
  
  private Button e;
  
  private FrameLayout f;
  
  private TextView g;
  
  private FrameLayout h;
  
  private TextView i;
  
  private FrameLayout j;
  
  private TextView k;
  
  private lfg l;
  
  public static lex a() {
    Bundle bundle = new Bundle();
    lex lex1 = new lex();
    lex1.setArguments(bundle);
    return lex1;
  }
  
  private void a(View paramView) {
    this.a = (AppCompatRadioButton)paramView.findViewById(2131756899);
    this.b = (AppCompatRadioButton)paramView.findViewById(2131756902);
    this.c = (AppCompatRadioButton)paramView.findViewById(2131756905);
    this.e = (Button)paramView.findViewById(2131756907);
    this.d = (Button)paramView.findViewById(2131756908);
    this.f = (FrameLayout)paramView.findViewById(2131756898);
    this.g = (TextView)paramView.findViewById(2131756900);
    this.h = (FrameLayout)paramView.findViewById(2131756901);
    this.i = (TextView)paramView.findViewById(2131756903);
    this.j = (FrameLayout)paramView.findViewById(2131756904);
    this.k = (TextView)paramView.findViewById(2131756906);
    b();
    this.e.setOnClickListener((View.OnClickListener)new ley(this));
    this.d.setOnClickListener((View.OnClickListener)new lez(this));
  }
  
  private void b() {
    this.a.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new lfa(this));
    this.b.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new lfb(this));
    this.c.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new lfc(this));
    this.f.setOnClickListener((View.OnClickListener)new lfd(this));
    this.h.setOnClickListener((View.OnClickListener)new lfe(this));
    this.j.setOnClickListener((View.OnClickListener)new lff(this));
  }
  
  public void a(lfg paramlfg) {
    this.l = paramlfg;
  }
  
  public void onAttach(Context paramContext) {
    this.l = (lfg)paramContext;
    super.onAttach(paramContext);
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
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968959, paramViewGroup, false);
    a(view);
    return view;
  }
  
  public void onDetach() {
    this.l = null;
    super.onDetach();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */