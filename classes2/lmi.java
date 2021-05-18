import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.TextInputEditText;
import android.support.v4.app.DialogFragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import com.santander.app.seguros.ui.widgets.sb.SeekBar;

public class lmi extends DialogFragment {
  public static final String a = "Tag";
  
  public static final String b = "beneficiary-input-key";
  
  private TextView c;
  
  private FrameLayout d;
  
  private EditText e;
  
  private FrameLayout f;
  
  private TextInputEditText g;
  
  private TextInputEditText h;
  
  private SeekBar i;
  
  private Button j;
  
  private Button k;
  
  private TextView l;
  
  private lfh m;
  
  private ContractActivity n;
  
  private kpw o;
  
  private lmr p;
  
  private SeekBar.OnSeekBarChangeListener q;
  
  public static lmi a() {
    Bundle bundle = new Bundle();
    lmi lmi1 = new lmi();
    lmi1.setArguments(bundle);
    return lmi1;
  }
  
  public static lmi a(kpw paramkpw) {
    Bundle bundle = new Bundle();
    bundle.putString("beneficiary-input-key", (new ejm()).b(paramkpw));
    lmi lmi1 = new lmi();
    lmi1.setArguments(bundle);
    return lmi1;
  }
  
  private void a(Editable paramEditable, TextWatcher paramTextWatcher) {
    String str;
    byte b = 100;
    int i = 0;
    if (paramEditable != null && !paramEditable.toString().replace("%", "").equalsIgnoreCase("")) {
      try {
        int j = Integer.parseInt(paramEditable.toString().replace("%", ""));
        i = j;
      } catch (Exception exception) {
        exception.printStackTrace();
      } 
      if (i > 100) {
        str = "100%";
        i = b;
      } else {
        str = i + "%";
      } 
    } else {
      i = 0;
      str = "%";
    } 
    this.i.setOnSeekBarChangeListener(null);
    this.e.removeTextChangedListener(paramTextWatcher);
    this.i.setProgress(i);
    this.l.setText(i + "%");
    this.e.setText(str);
    this.i.setOnSeekBarChangeListener(this.q);
    this.e.setSelection(this.e.getText().length() - 1);
    this.e.addTextChangedListener(paramTextWatcher);
  }
  
  private void a(View paramView) {
    this.g = (TextInputEditText)paramView.findViewById(2131756834);
    this.i = (SeekBar)paramView.findViewById(2131756837);
    this.j = (Button)paramView.findViewById(2131756263);
    this.k = (Button)paramView.findViewById(2131756842);
    this.l = (TextView)paramView.findViewById(2131756840);
    this.c = (TextView)paramView.findViewById(2131756836);
    this.d = (FrameLayout)paramView.findViewById(2131756838);
    this.e = (EditText)paramView.findViewById(2131756841);
    this.f = (FrameLayout)paramView.findViewById(2131756835);
    this.k.setOnClickListener(f());
    this.j.setOnClickListener(e());
    this.f.setOnClickListener(d());
  }
  
  private void a(String paramString) {
    this.m = lfh.a(paramString);
    this.m.show(getFragmentManager(), "message-fragment");
  }
  
  private void b() {
    this.g.setFocusable(true);
    this.g.setFocusableInTouchMode(true);
    if (this.o != null) {
      this.g.setText(this.o.b());
      this.c.setText(this.o.c());
      this.g.clearFocus();
    } else {
      mhj.b((Context)this.n, (View)this.g);
      this.g.requestFocus();
    } 
    c();
  }
  
  private void c() {
    i();
    this.g.setOnFocusChangeListener(new lmj(this));
    this.i.setMax(100);
    if (this.o != null) {
      this.l.setText(String.format("%s%%", new Object[] { this.o.d() }));
      this.i.setProgress(Integer.parseInt(this.o.d()));
    } else {
      this.i.setProgress(0);
      this.l.setText(String.format("%d%%", new Object[] { Integer.valueOf(0) }));
    } 
    if (this.q == null)
      this.q = new lmk(this); 
    this.i.setOnSeekBarChangeListener(this.q);
    this.e.setTypeface(Typeface.createFromAsset(this.n.getAssets(), "fonts/opensans_regular.ttf"));
    this.e.addTextChangedListener(new lml(this));
    this.d.setOnClickListener(new lmm(this));
  }
  
  private View.OnClickListener d() {
    return new lmn(this);
  }
  
  private View.OnClickListener e() {
    return new lmp(this);
  }
  
  private View.OnClickListener f() {
    return new lmq(this);
  }
  
  private boolean g() {
    if (this.g.getText().length() <= 0 || this.g.getText().toString().replaceAll(" ", "").isEmpty()) {
      a(getResources().getString(2131298248));
      return false;
    } 
    if (this.c.getText().length() <= 0 || this.c.getText().toString().equalsIgnoreCase(getResources().getString(2131297124))) {
      a(getResources().getString(2131297383));
      return false;
    } 
    if (this.i.getProgress() <= 0) {
      a(getResources().getString(2131297377));
      return false;
    } 
    return true;
  }
  
  private void h() {
    if (this.e.getVisibility() == 8) {
      this.e.setVisibility(0);
      this.l.setVisibility(8);
      this.e.setFocusable(true);
      this.e.setFocusableInTouchMode(true);
      this.e.requestFocus();
    } 
  }
  
  private void i() {
    if (this.e.getVisibility() == 0) {
      this.e.setVisibility(8);
      this.l.setVisibility(0);
      this.e.clearFocus();
      this.e.setFocusable(false);
      this.e.setFocusableInTouchMode(false);
    } 
  }
  
  public void a(lmr paramlmr) {
    this.p = paramlmr;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof ContractActivity)
      this.n = (ContractActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("beneficiary-input-key"))
      this.o = (new ejm()).<kpw>a(getArguments().getString("beneficiary-input-key"), kpw.class); 
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    dialog.getWindow().clearFlags(131080);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968944, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lmi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */