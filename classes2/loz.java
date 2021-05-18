import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.design.widget.TextInputEditText;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import com.santander.app.seguros.ui.contract.activities.TermsOfUseActivity;
import com.santander.app.seguros.ui.widgets.ContractPaymentView;
import com.santander.app.seguros.ui.widgets.SegurosTextView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class loz extends Fragment {
  private TextWatcher A;
  
  private ksa B;
  
  private kqy C;
  
  private boolean D = false;
  
  private lkm E;
  
  private TextWatcher F;
  
  private TextWatcher G;
  
  private SegurosTextView a;
  
  private ImageButton b;
  
  private SegurosTextView c;
  
  private TextView d;
  
  private SegurosTextView e;
  
  private TextView f;
  
  private SegurosTextView g;
  
  private TextView h;
  
  private SegurosTextView i;
  
  private TextView j;
  
  private SegurosTextView k;
  
  private View l;
  
  private LinearLayout m;
  
  private TextInputLayout n;
  
  private TextInputEditText o;
  
  private TextInputLayout p;
  
  private TextInputEditText q;
  
  private FrameLayout r;
  
  private FrameLayout s;
  
  private Button t;
  
  private ContractPaymentView u;
  
  private RecyclerView v;
  
  private TextView w;
  
  private ContractActivity x;
  
  private kye y = new kyf();
  
  private LinearLayout z;
  
  private Date a(Date paramDate) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(paramDate);
    calendar.add(1, 1);
    return calendar.getTime();
  }
  
  public static loz a() {
    Bundle bundle = new Bundle();
    loz loz1 = new loz();
    loz1.setArguments(bundle);
    return loz1;
  }
  
  private void a(View paramView) {
    this.a = (SegurosTextView)paramView.findViewById(2131758971);
    this.b = (ImageButton)paramView.findViewById(2131758970);
    this.c = (SegurosTextView)paramView.findViewById(2131758972);
    this.d = (TextView)paramView.findViewById(2131758973);
    this.e = (SegurosTextView)paramView.findViewById(2131758974);
    this.f = (TextView)paramView.findViewById(2131758975);
    this.g = (SegurosTextView)paramView.findViewById(2131758976);
    this.h = (TextView)paramView.findViewById(2131758977);
    this.i = (SegurosTextView)paramView.findViewById(2131758978);
    this.j = (TextView)paramView.findViewById(2131758979);
    this.k = (SegurosTextView)paramView.findViewById(2131758980);
    this.w = (TextView)paramView.findViewById(2131758981);
    this.l = paramView.findViewById(2131758982);
    this.m = (LinearLayout)paramView.findViewById(2131758823);
    this.n = (TextInputLayout)paramView.findViewById(2131758984);
    this.o = (TextInputEditText)paramView.findViewById(2131758985);
    this.p = (TextInputLayout)paramView.findViewById(2131758986);
    this.q = (TextInputEditText)paramView.findViewById(2131758987);
    this.r = (FrameLayout)paramView.findViewById(2131757398);
    this.s = (FrameLayout)paramView.findViewById(2131757399);
    this.v = (RecyclerView)paramView.findViewById(2131755292);
    this.t = (Button)paramView.findViewById(2131756561);
    this.u = (ContractPaymentView)paramView.findViewById(2131758983);
    this.z = (LinearLayout)paramView.findViewById(2131757397);
    this.r.setOnClickListener(b());
    this.t.setOnClickListener(new lpn(this));
    this.s.setOnClickListener(new lpo(this));
    this.b.setOnClickListener(new lpc(this));
  }
  
  private void a(String paramString) {
    this.x.a(true);
    kro kro = new kro();
    kro.a(paramString);
    krf krf = new krf();
    krf.a("FORM");
    krf.b(kro);
    this.y.a(krf, new lpa(this), this.x.f());
  }
  
  private void d() {
    if (mgt.d(this.x.i())) {
      frq.d("Seguros_Contratacao_Vida_Resumo_Acao", "TelaResumo");
      return;
    } 
    if (mgt.b(this.x.i())) {
      frq.d("Seguros_Contratacao_AP_Resumo_Acao", "TelaResumo");
      return;
    } 
  }
  
  private void e() {
    this.u.setFamily(this.x.i());
    this.u.setFragmentManager(getFragmentManager());
    h();
    i();
    (new Handler()).postDelayed(new lpj(this), 500L);
  }
  
  private void f() {
    this.A = mhb.a("(##)####-####", "(##)#####-####", (EditText)this.o);
    this.o.addTextChangedListener(this.A);
    kqj kqj = this.x.c().i();
    if (kqj != null) {
      String str1;
      String str2;
      String str3;
      if (kqj.a() != null && !TextUtils.isEmpty(kqj.a().b())) {
        if (kqj.a().a()) {
          str1 = kqj.a().b();
        } else {
          str1 = nab.a().c(kqj.a().b());
        } 
      } else {
        str1 = "";
      } 
      if (kqj.a() != null && !TextUtils.isEmpty(kqj.a().c())) {
        if (kqj.a().a()) {
          str2 = kqj.a().c();
        } else {
          str2 = nab.a().c(kqj.a().c());
        } 
      } else {
        str2 = "";
      } 
      if (kqj.b() != null && !TextUtils.isEmpty(kqj.b().c())) {
        if (kqj.b().a()) {
          str3 = kqj.b().c();
        } else {
          str3 = nab.a().c(kqj.b().c());
        } 
      } else {
        str3 = "";
      } 
      this.B = kqj.a();
      this.C = kqj.b();
      this.q.setText(str3.toLowerCase());
      this.o.setText(str1 + str2);
      this.F = new lpk(this);
      this.o.addTextChangedListener(this.F);
      this.G = new lpl(this);
      this.q.addTextChangedListener(this.G);
    } 
  }
  
  private void g() {
    this.o.removeTextChangedListener(this.A);
    this.o.removeTextChangedListener(this.F);
    this.q.removeTextChangedListener(this.G);
    this.A = null;
    this.F = null;
    this.G = null;
  }
  
  private void h() {
    this.x.a(true);
    if (this.x.c().c().containsKey(this.x.c().m().a())) {
      a(this.x.c().c().get(this.x.c().m().a()));
      return;
    } 
    kti kti = new kti();
    kqg kqg = new kqg();
    kqg.e("939");
    kqg.c("0000000002");
    kqg.a(nab.a().b("00888885"));
    kqg.b(nab.a().b("0001"));
    ktk ktk = new ktk("UPD070", "01");
    kti.a(this.x.c().m());
    kti.a(kqg);
    kti.a(ktk);
    this.y.a(kti, new lpm(this), this.x.f());
  }
  
  private void i() {
    String str1;
    String str2 = this.x.c().h().get(this.x.c().g().getCode());
    if (mgt.d(this.x.i())) {
      if (str2 != null) {
        str1 = str2;
      } else {
        str1 = getResources().getString(2131298068);
      } 
    } else {
      str1 = str2;
      if (str2 == null)
        str1 = getResources().getString(2131298365); 
    } 
    Double double_1 = Double.valueOf(mhj.G(this.x.c().n().e()));
    Double double_2 = Double.valueOf(mhj.G(this.x.c().n().b()));
    Date date1 = new Date();
    Date date2 = a(date1);
    this.a.setText(str1);
    this.d.setText(mhj.c(double_2));
    this.f.setText("12 x " + mhj.c(double_1));
    this.h.setText("Anual");
    this.j.setText(mhj.a(date1, "dd/MM/yyyy"));
    this.w.setText(mhj.a(date2, "dd/MM/yyyy"));
  }
  
  private void j() {
    this.x.a(true);
    ktb ktb = new ktb();
    ktb.a(nab.a().b(this.q.getText().toString()));
    ktd ktd = new ktd();
    String str = mhj.f(this.o.getText().toString());
    ktd.a(nab.a().b(str.substring(0, 2)));
    ktd.b(nab.a().b(str.substring(2)));
    ktb.a(ktd);
    this.y.a(new ktc(ktb), new lpd(this), new lpe(this));
  }
  
  private List<ksv> k() {
    ArrayList<ksv> arrayList = new ArrayList();
    if (this.u.h().isChecked() && this.x.c().p() != null) {
      ksg ksg = new ksg(nab.a().b(this.x.c().p().a().b()), nab.a().b(this.x.c().p().a().c()));
      ksw ksw = this.u.j();
      ksv ksv = new ksv();
      ksv.a(ksg);
      ksv.a(ksw);
      ksv.a("0033");
      ksv.a(new ksm(nab.a().b(""), nab.a().b(""), "", nab.a().b("")));
      arrayList.add(ksv);
      if (this.x.c().q() != null) {
        ksc ksc = this.x.c().q().a();
        ksw ksw1 = this.u.k();
        ksg ksg1 = new ksg(nab.a().b(""), nab.a().b(""));
        ksm ksm = new ksm(nab.a().b("S"), nab.a().b(ksc.c()), "", nab.a().b(ksc.e()));
        ksv ksv1 = new ksv();
        ksv1.a(ksm);
        ksv1.a(ksg1);
        ksv1.a(ksw1);
        ksv1.a("0033");
        arrayList.add(ksv1);
      } 
      return arrayList;
    } 
    if (this.u.i().isChecked() && this.x.c().q() != null) {
      ksc ksc = this.x.c().q().a();
      ksw ksw = this.u.j();
      ksm ksm = new ksm(nab.a().b("S"), nab.a().b(ksc.c()), "", nab.a().b(ksc.e()));
      ksg ksg = new ksg(nab.a().b(""), nab.a().b(""));
      ksv ksv = new ksv();
      ksv.a(ksm);
      ksv.a(ksw);
      ksv.a("0033");
      ksv.a(ksg);
      arrayList.add(ksv);
      if (this.x.c().p() != null) {
        ksg ksg1 = new ksg(nab.a().b(this.x.c().p().a().b()), nab.a().b(this.x.c().p().a().c()));
        ksw ksw1 = this.u.k();
        ksm ksm1 = new ksm(nab.a().b(""), nab.a().b(""), "", nab.a().b(""));
        ksv = new ksv();
        ksv.a(ksg1);
        ksv.a(ksw1);
        ksv.a(ksm1);
        ksv.a("0033");
        arrayList.add(ksv);
        return arrayList;
      } 
    } 
    return arrayList;
  }
  
  private boolean l() {
    if (this.o.getText().toString().equals("") || this.q.getText().toString().equals("") || !this.u.l()) {
      mhj.c((Context)this.x, getResources().getString(2131297444));
      return false;
    } 
    if (!mhj.c(this.q.getText().toString().trim())) {
      mhj.c((Context)this.x, getResources().getString(2131297359));
      return false;
    } 
    if (mhj.f(this.o.getText().toString().trim()).length() != 11 && mhj.f(this.o.getText().toString().trim()).length() != 10) {
      mhj.c((Context)this.x, getResources().getString(2131297380));
      return false;
    } 
    return true;
  }
  
  private void m() {
    kqj kqj = new kqj();
    kqy kqy1 = new kqy();
    kqy1.b(nab.a().b(this.q.getText().toString().toLowerCase()));
    if (this.C != null) {
      if (this.C.b() != null) {
        if (this.D) {
          String str3 = nab.a().c(this.C.c());
          String str4 = this.q.getText().toString().toLowerCase();
          if (str3.toLowerCase().equals(str4)) {
            kqy1.a(this.C.b());
          } else {
            kqy1.a("001");
          } 
        } else {
          kqy1.a(this.C.b());
        } 
      } else {
        kqy1.a("001");
      } 
    } else {
      kqy1.a("001");
    } 
    kqj.a(kqy1);
    String str2 = mhj.f(this.o.getText().toString());
    String str1 = str2.substring(0, 2);
    str2 = str2.substring(2, str2.length());
    ksa ksa1 = new ksa();
    ksa1.a(nab.a().b(str1));
    ksa1.b(nab.a().b(str2));
    ksa1.d(this.B.e());
    ksa1.e(this.B.f());
    ksa1.c(this.B.d());
    kqj.a(ksa1);
    ksq.INSTANCE.setBeneficiaries(this.x.c().e());
    ksq.INSTANCE.setContactData(kqj);
    ksq.INSTANCE.setQuestions(this.x.c().f());
    ksq.INSTANCE.setQuotationSelected(this.x.c().n());
    ksq.INSTANCE.setPaymentList(k());
    Intent intent = new Intent((Context)this.x, TermsOfUseActivity.class);
    intent.putExtra("products-key", mys.a().b(this.x.c().n().a()));
    intent.putExtra("prize-value", c());
    intent.putExtra("insurance-name-key", this.x.c().h().get(this.x.c().g().getCode()));
    startActivity(intent);
  }
  
  public void a(Context paramContext, String paramString) {
    if (paramContext != null) {
      AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle(null).setMessage(paramString).setCancelable(false).setPositiveButton("OK", new lph(this)).create();
      alertDialog.setOnShowListener(new lpi(this, alertDialog, paramContext));
      alertDialog.show();
    } 
  }
  
  public View.OnClickListener b() {
    return new lpf(this);
  }
  
  public String c() {
    try {
      return mhj.G(this.x.c().n().e()).replace(",", "").replace(".", "");
    } catch (Exception exception) {
      exception.printStackTrace();
      return "";
    } 
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof ContractActivity)
      this.x = (ContractActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    d();
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969062, paramViewGroup, false);
    a(view);
    e();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\loz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */