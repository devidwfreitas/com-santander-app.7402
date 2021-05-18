import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.santander.app.components.view.SantanderEditText;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import com.santander.app.seguros.ui.widgets.SliderValue;

public class mad extends Fragment {
  private static final String a = "response-key";
  
  private final int b = 20;
  
  private SinisterActivity c;
  
  private kvb d;
  
  private Double e = Double.valueOf(0.0D);
  
  private kvb f;
  
  private TextView g;
  
  private TextView h;
  
  private SliderValue i;
  
  private TextView j;
  
  private TextView k;
  
  private Button l;
  
  private SantanderEditText m;
  
  public static mad a(kvb paramkvb) {
    Bundle bundle = new Bundle();
    bundle.putString("response-key", (new ejm()).b(paramkvb));
    mad mad1 = new mad();
    mad1.setArguments(bundle);
    return mad1;
  }
  
  private void a() {
    if (this.d != null && this.d.d() != null && !TextUtils.isEmpty(this.d.d().a()) && !TextUtils.isEmpty(this.d.d().b())) {
      Double.parseDouble(this.c.B);
      Double.parseDouble(this.d.d().b());
    } 
    if (mhv.INSTANCE.containsRequest(kuq.SLIDER_VALUE)) {
      kva kva = mhv.INSTANCE.getRequest(kuq.SLIDER_VALUE);
      if (kva != null && kva.k() != null)
        this.m.setText(mhj.c(kva.k())); 
    } 
    this.h.setText(this.d.e());
  }
  
  private void a(View paramView) {
    this.g = (TextView)paramView.findViewById(2131755914);
    this.h = (TextView)paramView.findViewById(2131755789);
    this.l = (Button)paramView.findViewById(2131755733);
    this.m = (SantanderEditText)paramView.findViewById(2131757590);
    this.l.setOnClickListener(new mae(this));
    guj guj = new guj();
    guj.a((EditText)this.m);
    this.m.addTextChangedListener(guj);
  }
  
  private int b() {
    return (this.d.d().a() != null && this.d.d().b() != null && this.d != null && this.d.d() != null && !TextUtils.isEmpty(this.d.d().a()) && !TextUtils.isEmpty(this.d.d().b())) ? (int)((Double.parseDouble(this.d.d().a()) - Double.parseDouble(this.d.d().b())) / 20.0D) : 0;
  }
  
  private void c() {
    String str;
    if (this.m.getText().toString().length() > 0) {
      str = mhj.u(this.m.getText().toString());
    } else {
      str = "0";
    } 
    this.e = Double.valueOf(str);
    frq.d("Seguros_Sinistro_Acionar_EstimativaPrejuizo_Acao", String.valueOf(this.e));
    if (this.e.doubleValue() >= Double.parseDouble(this.d.d().b()) && this.e.doubleValue() <= Double.parseDouble(this.c.B)) {
      kva kva = new kva();
      if (mhv.INSTANCE.getCoverageId() != -1L)
        kva.b(Long.valueOf(mhv.INSTANCE.getCoverageId())); 
      kva.a(kuz.NEXT);
      kva.a(this.d.q());
      kva.a(String.valueOf(this.e));
      kva.a(kuq.SLIDER_VALUE);
      kva.a(this.e);
      this.c.a(kva);
      return;
    } 
    mhj.c((Context)this.c, "O valor precisa ser maior ou igual " + mhj.a(Double.valueOf(Double.parseDouble(this.d.d().b()))) + " e menor ou igual " + mhj.a(Double.valueOf(Double.parseDouble(this.c.B))));
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterActivity)
      this.c = (SinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.f = new kvb();
    if (getArguments() != null && getArguments().containsKey("response-key"))
      this.d = (new ejm()).<kvb>a(getArguments().getString("response-key"), kvb.class); 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969098, paramViewGroup, false);
    a(view);
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */