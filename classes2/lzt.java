import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.TextInputEditText;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;

public class lzt extends Fragment {
  private static final String a = "response-key";
  
  private ImageView b;
  
  private TextView c;
  
  private TextInputLayout d;
  
  private TextInputEditText e;
  
  private TextInputLayout f;
  
  private TextInputEditText g;
  
  private Button h;
  
  private TextView i;
  
  private SinisterActivity j;
  
  private kvb k;
  
  public static lzt a(kvb paramkvb) {
    Bundle bundle = new Bundle();
    bundle.putString("response-key", (new ejm()).b(paramkvb));
    lzt lzt1 = new lzt();
    lzt1.setArguments(bundle);
    return lzt1;
  }
  
  private void a() {
    if (this.j.a().c(kuq.EMAIL_PHONE)) {
      kva kva = this.j.a().b(kuq.EMAIL_PHONE);
      if (kva != null) {
        this.e.setText(kva.o());
        this.g.setText(kva.p());
      } 
    } else if (mhv.INSTANCE.containsRequest(kuq.EMAIL_PHONE)) {
      kva kva = mhv.INSTANCE.getRequest(kuq.EMAIL_PHONE);
      if (kva != null) {
        this.e.setText(kva.o());
        this.g.setText(kva.p());
      } 
    } 
    if (this.k.d() != null && !this.k.d().c().equals(""))
      this.i.setText(this.k.d().c()); 
    this.e.clearFocus();
    this.c.setText(this.k.e());
    this.g.addTextChangedListener(mhb.a("(##)####-####", "(##)#####-####", (EditText)this.g));
    this.e.addTextChangedListener(new lzu(this));
    this.g.addTextChangedListener(new lzv(this));
  }
  
  private void a(View paramView) {
    this.b = (ImageView)paramView.findViewById(2131755788);
    this.c = (TextView)paramView.findViewById(2131755789);
    this.d = (TextInputLayout)paramView.findViewById(2131756880);
    this.e = (TextInputEditText)paramView.findViewById(2131756881);
    this.f = (TextInputLayout)paramView.findViewById(2131757475);
    this.g = (TextInputEditText)paramView.findViewById(2131757474);
    this.h = (Button)paramView.findViewById(2131755733);
    this.h.setOnClickListener(new lzw(this));
    this.i = (TextView)paramView.findViewById(2131757476);
  }
  
  private void b() {
    if (c()) {
      kva kva = new kva();
      kva.a(kuz.NEXT);
      if (mhv.INSTANCE.getCoverageId() != -1L)
        kva.b(Long.valueOf(mhv.INSTANCE.getCoverageId())); 
      kva.a(this.k.q());
      kva.a(kuq.EMAIL_PHONE);
      kva.a(mhj.a(new String[] { this.e.getText().toString().trim(), mhj.f(this.g.getText().toString().trim()) }));
      kva.d(this.e.getText().toString().trim().toLowerCase());
      kva.e(this.g.getText().toString().trim());
      this.j.a(kva);
    } 
  }
  
  private boolean c() {
    boolean bool = true;
    if (this.e.getText().toString().trim().length() <= 0) {
      this.d.setError(getResources().getString(2131297358));
      bool = false;
    } else if (!mhj.c(this.e.getText().toString().trim())) {
      this.d.setError(getResources().getString(2131297359));
      bool = false;
    } 
    if (mhj.f(this.g.getText().toString().trim()).length() <= 0) {
      this.f.setError(getResources().getString(2131297379));
      return false;
    } 
    if (mhj.f(this.g.getText().toString().trim()).length() != 11 && mhj.f(this.g.getText().toString().trim()).length() != 10) {
      this.f.setError(getResources().getString(2131297380));
      return false;
    } 
    return bool;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterActivity)
      this.j = (SinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("response-key")) {
      this.k = (new ejm()).<kvb>a(getArguments().getString("response-key"), kvb.class);
      return;
    } 
    this.k = new kvb();
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969069, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */