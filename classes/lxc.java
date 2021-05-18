import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.santander.app.seguros.ui.sinister.activities.ContestationActivity;
import com.santander.app.seguros.ui.widgets.EmojiExcludeEditText;

public class lxc extends Fragment {
  public static final String a = "sinister-key";
  
  private static final String b = "095";
  
  private boolean c = false;
  
  private LinearLayout d;
  
  private Button e;
  
  private EmojiExcludeEditText f;
  
  private TextView g;
  
  private ContestationActivity h;
  
  private kyy i = (kyy)new kyz();
  
  private kvp j;
  
  private kxf k;
  
  public static lxc a(kvp paramkvp) {
    Bundle bundle = new Bundle();
    if (paramkvp != null)
      bundle.putString("sinister-key", mys.a().b(paramkvp)); 
    lxc lxc1 = new lxc();
    lxc1.setArguments(bundle);
    return lxc1;
  }
  
  private void a(View paramView) {
    this.f = (EmojiExcludeEditText)paramView.findViewById(2131756984);
    this.d = (LinearLayout)paramView.findViewById(2131755281);
    this.e = (Button)paramView.findViewById(2131756023);
    this.e.setOnClickListener(a());
    this.g = (TextView)paramView.findViewById(2131757486);
    this.f.addTextChangedListener((TextWatcher)new lxg(this));
  }
  
  private void a(String paramString) {
    this.h.b().setState(aor.LOADING);
    kwf kwf = new kwf();
    kwf.a(this.j.a());
    kwf.a(new kwg(this.j.b()));
    kwf.b(this.j.c());
    kwf.c(this.j.d());
    kwf.a(new kwc(paramString));
    this.h.a().a(kwf, (kxl)new lxe(this), (kxl)new lxf(this));
  }
  
  private String b(String paramString) {
    String str = paramString;
    if (!TextUtils.isEmpty(paramString))
      str = paramString.replace("\n", " ").replace("|", "").replace("&", "").replace(";", ")").replace("$", "").replace("%", "").replace("@", "").replace("'", "").replace("\"", "").replace("<", "").replace(">", "").replace("(", "").replace(")", "").replace("+", "").replace("CR", "").replace("LF", "").replace(",", "").replace("\\", "").replace("/", "").trim(); 
    return str;
  }
  
  private void b() {
    this.e.setPaintFlags(this.e.getPaintFlags() | 0x8);
  }
  
  private void c() {
    if (this.h.d()) {
      frq.d("Seguros_Sinistro_MeusSinistros_PagamentoAprovado_Contestacao_Acao", "Enviar");
      return;
    } 
    frq.d("Seguros_Sinistro_MeusSinistros_PagamentoRecusado_Contestacao_Acao", "Enviar");
  }
  
  @Deprecated
  private void c(String paramString) {
    this.i.a(paramString, this.j.a(), this.j.b(), this.j.c(), this.j.d(), (kxk)new lxk(this), (kxl)new lxl(this));
  }
  
  private void d() {
    this.h.b().setState(aor.LOADING);
    (new Handler()).postDelayed((Runnable)new lxd(this), 2000L);
  }
  
  private void e() {
    if (this.h.d()) {
      frq.d("Seguros_Sinistro_MeusSinistros_PagamentoAprovado_Contestacao_Acao", "AnexarDocumento");
      return;
    } 
    frq.d("Seguros_Sinistro_MeusSinistros_PagamentoRecusado_Contestacao_Acao", "AnexarDocumento");
  }
  
  private void f() {
    if (this.k != null) {
      String str1 = mhj.a(this.k.a);
      String str2 = mhj.a(this.k.b);
      knv knv = new knv();
      if (!TextUtils.isEmpty(str1)) {
        knv.b(this.k.c);
        knv.b(str1);
      } 
      if (!TextUtils.isEmpty(str2))
        if (TextUtils.isEmpty(str1)) {
          knv.b(this.k.d);
          knv.b(str2);
        } else {
          knv.a(this.k.d);
          knv.a(str2);
        }  
      knv.e(this.j.v());
      knv.f(mzr.g());
      knv.g(mhj.x(this.j.j()));
      knv.d(getResources().getString(2131297239));
      knv.c("095");
      if (!TextUtils.isEmpty(str1)) {
        knv.b(this.k.c);
        knv.b(str1);
      } 
      if (!TextUtils.isEmpty(str2))
        if (TextUtils.isEmpty(str1)) {
          knv.b(this.k.d);
          knv.b(str2);
        } else {
          knv.a(this.k.d);
          knv.a(str2);
        }  
      this.h.b().setState(aor.LOADING);
      this.i.a(knv, (kxl)new lxi(this), (kxl)new lxj(this));
    } 
  }
  
  public View.OnClickListener a() {
    return (View.OnClickListener)new lxh(this);
  }
  
  @nfq
  public void a(kxf paramkxf) {
    this.k = paramkxf;
    Toast.makeText((Context)this.h, getResources().getString(2131296542), 0).show();
  }
  
  @nfq
  public void a(kxi paramkxi) {
    if (paramkxi.a) {
      String str = b(this.f.getText().toString());
      if (TextUtils.isEmpty(str)) {
        mhj.c((Context)this.h, getResources().getString(2131297369));
      } else if (str.length() > 210) {
        mhj.c((Context)this.h, getResources().getString(2131298069));
      } else if (this.k == null) {
        mhj.c((Context)this.h, getResources().getString(2131297357));
      } else {
        f();
      } 
      c();
    } 
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof ContestationActivity)
      this.h = (ContestationActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.h.a(getResources().getString(2131298540), false);
    if (getArguments() != null && getArguments().containsKey("sinister-key"))
      this.j = (kvp)mys.a().a(getArguments().getString("sinister-key"), kvp.class); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969074, paramViewGroup, false);
    a(view);
    b();
    return view;
  }
  
  public void onPause() {
    super.onPause();
    kws.a().b().c(this);
  }
  
  public void onResume() {
    super.onResume();
    kws.a().b().b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lxc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */