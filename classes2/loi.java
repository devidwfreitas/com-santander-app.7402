import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import com.santander.app.seguros.ui.widgets.AssistanceOffer;
import com.santander.app.seguros.ui.widgets.SegurosTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class loi extends Fragment implements lns {
  public static final String a = "quotation-selected";
  
  public static final String b = "family-id-key";
  
  public static final String c = "order-number-key";
  
  private kri A;
  
  private kqs B = new kqs();
  
  private krs C = new krs();
  
  private krn D = new krn();
  
  private List<krz> E = new ArrayList<krz>();
  
  private Map<String, String> F = new HashMap<String, String>();
  
  private ContractActivity d;
  
  private SegurosTextView e;
  
  private ImageView f;
  
  private ImageView g;
  
  private FrameLayout h;
  
  private RelativeLayout i;
  
  private SegurosTextView j;
  
  private Button k;
  
  private TextView l;
  
  private TextView m;
  
  private ImageView n;
  
  private lnp o;
  
  private List<krn> p;
  
  private List<krn> q;
  
  private AssistanceOffer r;
  
  private krw s;
  
  private kye t;
  
  private krz u;
  
  private String v;
  
  private String w;
  
  private String x;
  
  private String y;
  
  private List<ksb> z;
  
  private List<krl> a(kqn paramkqn) {
    List<krl> list = null;
    this.z = new ArrayList<ksb>(Arrays.asList((Object[])(new ejm()).a(mhj.a((Context)this.d, "jsons/contract/textAssistance.json"), ksb[].class)));
    for (int i = 0; i < this.z.size(); i++) {
      if (kqn.valueOf(((ksb)this.z.get(i)).a()) == paramkqn)
        list = ((ksb)this.z.get(i)).b(); 
    } 
    return list;
  }
  
  private List<krn> a(lot paramlot) {
    return (paramlot == lot.PLUS) ? this.p : this.q;
  }
  
  public static loi a(krz paramkrz, String paramString1, String paramString2) {
    Bundle bundle = new Bundle();
    bundle.putString("quotation-selected", (new ejm()).b(paramkrz));
    bundle.putString("family-id-key", paramString1);
    bundle.putString("order-number-key", paramString2);
    loi loi1 = new loi();
    loi1.setArguments(bundle);
    return loi1;
  }
  
  private void a() {
    this.g.setOnClickListener(new loo(this));
    this.f.setOnClickListener(new lop(this));
  }
  
  private void a(View paramView) {
    this.d.b().scrollTo(0, 0);
    this.e = (SegurosTextView)paramView.findViewById(2131757388);
    this.j = (SegurosTextView)paramView.findViewById(2131757390);
    this.h = (FrameLayout)paramView.findViewById(2131757378);
    this.f = (ImageView)paramView.findViewById(2131757386);
    this.g = (ImageView)paramView.findViewById(2131757387);
    this.i = (RelativeLayout)paramView.findViewById(2131757377);
    this.l = (TextView)paramView.findViewById(2131757384);
    this.m = (TextView)paramView.findViewById(2131757385);
    this.n = (ImageView)paramView.findViewById(2131757383);
    this.k = (Button)paramView.findViewById(2131755733);
    this.h.setOnClickListener(new los(this));
    this.r = (AssistanceOffer)paramView.findViewById(2131757376);
    a();
  }
  
  private void a(String paramString) {
    if (ksq.INSTANCE.getIdealProductResponse() != null) {
      this.A = ksq.INSTANCE.getIdealProductResponse();
      this.d.c().c(this.A.e().d());
      ksq.INSTANCE.setIdealProductResponse(this.A);
      a(this.A, this.v);
      return;
    } 
    this.d.a(true);
    this.t.a(paramString, new loj(this), this.d.f());
  }
  
  private void a(String paramString1, String paramString2) {
    String str;
    if (mgt.d(paramString1)) {
      if (paramString2 != null) {
        str = paramString2;
      } else {
        str = getResources().getString(2131298068);
      } 
    } else {
      str = paramString2;
      if (paramString2 == null)
        str = getResources().getString(2131298365); 
    } 
    this.l.setText(str);
    if (mgt.d(paramString1)) {
      this.n.setImageDrawable(getResources().getDrawable(2130838474));
      this.m.setText(getResources().getString(2131297401));
      return;
    } 
    if (mgt.b(paramString1)) {
      this.n.setImageDrawable(getResources().getDrawable(2130838593));
      this.m.setText(getResources().getString(2131298366));
      return;
    } 
    this.n.setImageDrawable(getResources().getDrawable(2130838474));
    this.m.setText("");
  }
  
  private void a(kri paramkri) {
    Collections.sort(paramkri.d(), new lon(this));
  }
  
  private void a(kri paramkri, String paramString) {
    ArrayList<krn> arrayList1 = new ArrayList();
    ArrayList<krn> arrayList2 = new ArrayList();
    a(paramkri);
    Double double_ = Double.valueOf(paramString);
    for (int i = 0; i < paramkri.d().size(); i++) {
      Double double_1;
      if (((krn)paramkri.d().get(i)).c() != null && !((krn)paramkri.d().get(i)).c().isEmpty()) {
        double_1 = Double.valueOf(mhj.G(mhj.a(((krn)paramkri.d().get(i)).c() + "00", '0', 15)));
      } else {
        double_1 = Double.valueOf(0.0D);
      } 
      if (double_.doubleValue() < double_1.doubleValue()) {
        arrayList1.add(paramkri.d().get(i));
      } else if (double_.doubleValue() > double_1.doubleValue()) {
        arrayList2.add(paramkri.d().get(i));
      } 
    } 
    this.p = arrayList1;
    this.q = arrayList2;
  }
  
  private void a(krw paramkrw) {
    this.d.a(true);
    this.t.a(paramkrw, new lor(this), this.d.f());
  }
  
  private void a(krz paramkrz) {
    Double double_ = Double.valueOf(mhj.G(paramkrz.e()));
    String str = paramkrz.a().a() + paramkrz.a().b();
    this.e.setText("R$ " + mhj.c(Double.valueOf(this.v)));
    this.r.setInformations(a(mhj.H(str)));
    this.j.setText(mhj.c(double_));
    kqm.INSTANCE.setmAssistances(paramkrz.f());
    kqm.INSTANCE.setmCoverages(paramkrz.g());
    this.d.c().a(paramkrz);
    ktl ktl = new ktl(paramkrz.c(), paramkrz.d());
    this.d.c().c(ktl);
  }
  
  private String b(String paramString) {
    String str = "";
    for (int i = 0; i < this.A.d().size(); i++) {
      if (mhj.a(((krn)this.A.d().get(i)).c() + "00", '0', 15).equals(paramString))
        str = ((krn)this.A.d().get(i)).a(); 
    } 
    return str;
  }
  
  private void b() {
    if (a(lot.PLUS).size() > 0) {
      this.o = lnp.a(a(lot.PLUS));
      this.o.a(this);
      this.o.show(getFragmentManager(), "dialog-coverage-values");
      return;
    } 
    mhj.c((Context)getActivity(), getResources().getString(2131298152) + " " + mhj.a(this.v) + " " + getResources().getString(2131296550) + ".");
  }
  
  private void b(krn paramkrn) {
    String str1 = nab.a().c(this.A.a().d());
    String str2 = nab.a().c(this.A.a().e());
    String str3 = nab.a().c(this.A.a().f());
    String str4 = nab.a().c(this.A.b().f());
    String str5 = nab.a().c(this.A.b().g().a());
    kqx kqx = new kqx();
    kqx.a(nab.a().b(str5));
    kqx.b(this.A.b().g().b());
    kqg kqg = new kqg();
    kqg.g(nab.a().b("0033"));
    kqg.d(nab.a().b(str1));
    kqg.e(nab.a().b(str2));
    kqg.f(nab.a().b(str3));
    this.B.a(kqx);
    this.B.a(this.A.b().b());
    this.B.b(this.A.b().c());
    this.B.c(this.A.b().d());
    this.B.d(this.A.b().e());
    this.B.e(nab.a().b(str4));
    this.C.a(this.A.e().a());
    this.C.c(mhj.a(paramkrn.c() + "00", '0', 15));
    this.C.d(this.A.e().d());
    this.C.e(paramkrn.a());
    this.C.b(this.A.e().c());
    this.A.a().g(nab.a().b("0033"));
    this.s = new krw(this.x, kqg, this.B, this.C);
  }
  
  private krz c(String paramString) {
    String str = mhj.a(paramString + "00", '0', 15);
    krz krz1 = new krz();
    krz krz2 = krz1;
    if (this.E != null) {
      krz2 = krz1;
      if (this.E.size() > 0) {
        for (int i = 0; i < this.E.size(); i++) {
          if (((krz)this.E.get(i)).b().equals(str))
            krz1 = this.E.get(i); 
        } 
        krz2 = krz1;
      } 
    } 
    return krz2;
  }
  
  private void c() {
    if (a(lot.MINUS).size() > 0) {
      this.o = lnp.a(a(lot.MINUS));
      this.o.a(this);
      this.o.show(getFragmentManager(), "dialog-coverage-values");
      return;
    } 
    mhj.c((Context)getActivity(), getResources().getString(2131298151) + " " + mhj.a(this.v) + " " + getResources().getString(2131296550) + ".");
  }
  
  private void d() {
    Double double_ = Double.valueOf(mhj.G(this.u.e()));
    this.y = this.u.a().a() + this.u.a().b();
    this.e.setText(mhj.a(this.v));
    this.r.setInformations(a(mhj.H(this.y)));
    this.r.setListener(new loq(this));
    this.j.setText(mhj.c(double_));
    kqn kqn = mhj.H(this.y);
    a(this.w, this.F.get(kqn.getCode()));
  }
  
  private boolean d(String paramString) {
    boolean bool = false;
    paramString = mhj.a(paramString + "00", '0', 15);
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < this.E.size()) {
        if (((krz)this.E.get(i)).b().equals(paramString))
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public void a(krn paramkrn) {
    if (paramkrn != null && !paramkrn.c().isEmpty()) {
      this.v = mhj.G(mhj.a(paramkrn.c() + "00", '0', 15));
    } else {
      this.v = mhj.G("0000");
    } 
    this.e.setText("R$ " + mhj.c(Double.valueOf(this.v)));
    if (d(paramkrn.c())) {
      a(c(paramkrn.c()));
    } else {
      b(paramkrn);
      a(this.s);
    } 
    a(this.A, this.v);
    this.o.dismiss();
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof android.support.v7.app.AppCompatActivity)
      this.d = (ContractActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (this.d != null)
      this.d.a(mfn.WAVE_GREEN_ONE, false); 
    if (getArguments() != null && getArguments().containsKey("quotation-selected")) {
      this.u = (new ejm()).<krz>a(getArguments().getString("quotation-selected"), krz.class);
      this.v = mhj.G(this.u.b());
      this.D.c(this.u.b());
      this.E.add(this.u);
    } else {
      this.u = new krz();
    } 
    if (getArguments() != null && getArguments().containsKey("family-id-key"))
      this.w = getArguments().getString("family-id-key"); 
    if (getArguments() != null && getArguments().containsKey("order-number-key"))
      this.x = getArguments().getString("order-number-key"); 
    this.t = new kyf();
    this.F = this.d.c().h();
    a(this.w);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969060, paramViewGroup, false);
    a(view);
    d();
    this.k.setOnClickListener(new lok(this));
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\loi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */