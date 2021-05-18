import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TextInputEditText;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import br.com.zup.multistatelayout.MultiStateLayout;

public class lmu extends DialogFragment {
  private static String a = "beneficiary-item";
  
  private static String b = "certificate-item";
  
  private kqa c;
  
  private String d;
  
  private TextInputEditText e;
  
  private TextInputEditText f;
  
  private TextInputEditText g;
  
  private TextInputEditText h;
  
  private TextInputEditText i;
  
  private Button j;
  
  private Button k;
  
  private TextWatcher l;
  
  private Boolean m;
  
  private Boolean n;
  
  private lmz o;
  
  private String p;
  
  private String q;
  
  private String r;
  
  private String s;
  
  private MultiStateLayout t;
  
  private kxw u;
  
  public static lmu a(kqa paramkqa, String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString(a, (new ejm()).b(paramkqa));
    bundle.putString(b, paramString);
    lmu lmu1 = new lmu();
    lmu1.setArguments(bundle);
    return lmu1;
  }
  
  private void a() {
    this.l = mhb.a("(##)####-####", "(##)#####-####", (EditText)this.h);
    this.h.addTextChangedListener(this.l);
    this.q = nab.a().c(this.c.e());
    if (this.c.c() != null && this.c.c().c() != null) {
      this.r = nab.a().c(this.c.c().c());
      this.h.setText(this.r);
      if (!this.h.getText().toString().equals("")) {
        this.n = Boolean.valueOf(true);
      } else {
        this.n = Boolean.valueOf(false);
      } 
    } else {
      this.n = Boolean.valueOf(false);
    } 
    if (this.c.b() != null) {
      this.s = nab.a().c(this.c.b());
      this.g.setText(this.s);
      if (!this.g.getText().toString().equals("")) {
        this.m = Boolean.valueOf(true);
      } else {
        this.m = Boolean.valueOf(false);
      } 
    } else {
      this.m = Boolean.valueOf(false);
    } 
    this.p = nab.a().c(this.c.a().a());
    this.e.setText(mhj.p(this.q));
    this.f.setText(mhj.p(this.c.g().b()));
    this.i.setText(this.c.f() + "%");
    this.k.setOnClickListener(new lmv(this));
    this.j.setOnClickListener(new lmy(this));
  }
  
  private void a(View paramView) {
    this.e = (TextInputEditText)paramView.findViewById(2131756834);
    this.f = (TextInputEditText)paramView.findViewById(2131756879);
    this.g = (TextInputEditText)paramView.findViewById(2131756881);
    this.h = (TextInputEditText)paramView.findViewById(2131756883);
    this.i = (TextInputEditText)paramView.findViewById(2131756885);
    this.j = (Button)paramView.findViewById(2131756846);
    this.k = (Button)paramView.findViewById(2131756842);
    this.t = (MultiStateLayout)paramView.findViewById(2131756877);
    this.e.setInputType(0);
    this.e.setFocusable(false);
    this.e.setFocusableInTouchMode(false);
    this.f.setInputType(0);
    this.f.setFocusable(false);
    this.f.setFocusableInTouchMode(false);
    this.i.setInputType(0);
    this.i.setFocusable(false);
    this.i.setFocusableInTouchMode(false);
  }
  
  public void a(lmz paramlmz) {
    this.o = paramlmz;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey(a))
      this.c = (new ejm()).<kqa>a(getArguments().getString(a), kqa.class); 
    if (getArguments() != null && getArguments().containsKey(b))
      this.d = getArguments().getString(b); 
    this.u = new kxw();
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
    View view = paramLayoutInflater.inflate(2130968952, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lmu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */