import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import com.santander.app.seguros.ui.widgets.AssistanceOffer;
import com.santander.app.seguros.ui.widgets.Plan1OffersView;
import com.santander.app.seguros.ui.widgets.Plan2OffersView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class lnt extends Fragment {
  public static final String a = "OFFERS_IS";
  
  public static final String b = "quotations";
  
  public static final String c = "family-id";
  
  private ContractActivity d;
  
  private Plan1OffersView e;
  
  private Plan2OffersView f;
  
  private AssistanceOffer g;
  
  private FrameLayout h;
  
  private LinearLayout i;
  
  private Button j;
  
  private View k;
  
  private View l;
  
  private kry m;
  
  private List<ksb> n;
  
  private String o;
  
  private Map<String, String> p = new HashMap<String, String>();
  
  private kye q = new kyf();
  
  private List<krl> a(kqn paramkqn) {
    List<krl> list = null;
    this.n = new ArrayList<ksb>(Arrays.asList((Object[])(new ejm()).a(mhj.a((Context)this.d, "jsons/contract/textAssistance.json"), ksb[].class)));
    for (int i = 0; i < this.n.size(); i++) {
      if (kqn.valueOf(((ksb)this.n.get(i)).a()) == paramkqn)
        list = ((ksb)this.n.get(i)).b(); 
    } 
    return list;
  }
  
  private kqp a(kqn paramkqn, List<kqp> paramList) {
    kqp kqp = null;
    for (int i = 0; i < paramList.size(); i++) {
      if (kqn.valueOf(((kqp)paramList.get(i)).a()) == paramkqn)
        kqp = paramList.get(i); 
    } 
    return kqp;
  }
  
  public static lnt a(kry paramkry, String paramString) {
    Bundle bundle = new Bundle();
    bundle.putString("quotations", (new ejm()).b(paramkry));
    bundle.putString("family-id", paramString);
    lnt lnt1 = new lnt();
    lnt1.setArguments(bundle);
    return lnt1;
  }
  
  private void a() {
    if (this.m != null && this.m.a() != null && this.m.a().size() > 0) {
      if (mgt.d(this.o)) {
        if (this.m.a().size() == 1) {
          frq.d("Seguros_Contratacao_Vida_Proposta_Escolha_Plano", "PlanoIdeal1");
          frq.d("Seguros_Contratacao_Vida_Proposta_Plano_Acao", "PlanoIdeal1");
          return;
        } 
        if (this.f.b() == mch.PLAN1) {
          frq.d("Seguros_Contratacao_Vida_Proposta_Escolha_Plano", "PlanoIdeal1");
          frq.d("Seguros_Contratacao_Vida_Proposta_Plano_Acao", "PlanoIdeal1");
          return;
        } 
        if (this.f.b() == mch.PLAN2) {
          frq.d("Seguros_Contratacao_Vida_Proposta_Escolha_Plano", "PlanoIdeal2");
          frq.d("Seguros_Contratacao_Vida_Proposta_Plano_Acao", "PlanoIdeal2");
          return;
        } 
        return;
      } 
    } else {
      return;
    } 
    if (mgt.b(this.o)) {
      if (this.m.a().size() == 1) {
        frq.d("Seguros_Contratacao_AP_Proposta_Escolha_Plano", "PlanoIdeal1");
        frq.d("Seguros_Contratacao_AP_Proposta_Plano_Acao", "PlanoIdeal1");
        return;
      } 
      if (this.f.b() == mch.PLAN1) {
        frq.d("Seguros_Contratacao_AP_Proposta_Escolha_Plano", "PlanoIdeal1");
        frq.d("Seguros_Contratacao_AP_Proposta_Plano_Acao", "PlanoIdeal1");
        return;
      } 
      if (this.f.b() == mch.PLAN2) {
        frq.d("Seguros_Contratacao_AP_Proposta_Escolha_Plano", "PlanoIdeal2");
        frq.d("Seguros_Contratacao_AP_Proposta_Plano_Acao", "PlanoIdeal2");
        return;
      } 
    } 
  }
  
  private void a(int paramInt) {
    kqp kqp;
    ArrayList<kqp> arrayList = new ArrayList(Arrays.asList((Object[])(new ejm()).a(mhj.a((Context)this.d, "jsons/contract/coveragesAndAssistances.json"), kqp[].class)));
    if (paramInt == 1) {
      kqp = a(mhj.H(e()), arrayList);
      this.k.setVisibility(0);
      this.e.a(this.m.a().get(0), (Context)this.d, kqp);
      this.e.setPrizeValue(((krz)this.m.a().get(0)).e());
    } else if (paramInt == 2) {
      this.f.setPlanSelected(mch.PLAN1);
      this.l.setVisibility(0);
      this.f.a();
      this.f.a(this.m.a().get(0));
      this.f.b(this.m.a().get(1));
      kqp = a(mhj.H(e()), (List<kqp>)kqp);
      this.f.a(this.m.a().get(0), this.m.a().get(1), (Context)this.d, kqp, this.o);
    } else {
      this.f.setPlanSelected(mch.PLAN1);
      this.l.setVisibility(0);
      this.f.a();
      this.f.a(this.m.a().get(0));
      this.f.b(this.m.a().get(1));
      kqp = a(mhj.H(e()), (List<kqp>)kqp);
      this.f.a(this.m.a().get(0), this.m.a().get(1), (Context)this.d, kqp, this.o);
    } 
    kqn kqn = mhj.H(e());
    this.d.c().a(kqn);
    a(this.o, paramInt, this.p.get(kqn.getCode()));
    if (kqn != null) {
      this.g.setInformations(a(mhj.H(e())));
    } else {
      this.g.setInformations(a(kqn.DEFAULT));
    } 
    this.g.setListener(new lnu(this));
  }
  
  private void a(View paramView) {
    this.d.b().scrollTo(0, 0);
    this.f = (Plan2OffersView)paramView.findViewById(2131759060);
    this.e = (Plan1OffersView)paramView.findViewById(2131759059);
    this.h = (FrameLayout)paramView.findViewById(2131757378);
    this.i = (LinearLayout)paramView.findViewById(2131757380);
    this.j = (Button)paramView.findViewById(2131755733);
    this.k = paramView.findViewById(2131757374);
    this.l = paramView.findViewById(2131757375);
    this.g = (AssistanceOffer)paramView.findViewById(2131757376);
    b();
  }
  
  private void a(String paramString) {
    this.d.a(true);
    this.q.a(paramString, new lob(this), this.d.g());
  }
  
  private void a(String paramString1, int paramInt, String paramString2) {
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
    if (paramInt == 1) {
      if (mgt.d(paramString1)) {
        this.e.setCardViewPlanOffer(getResources().getDrawable(2130838474), str, getResources().getString(2131297401));
        return;
      } 
      if (mgt.b(paramString1)) {
        this.e.setCardViewPlanOffer(getResources().getDrawable(2130838593), str, getResources().getString(2131298366));
        return;
      } 
      this.e.setCardViewPlanOffer(getResources().getDrawable(2130838593), "", "");
      return;
    } 
    if (mgt.d(paramString1)) {
      this.f.setCardViewPlanOffer(getResources().getDrawable(2130838474), str, getResources().getString(2131297401));
      return;
    } 
    if (mgt.b(paramString1)) {
      this.f.setCardViewPlanOffer(getResources().getDrawable(2130838593), str, getResources().getString(2131298366));
      return;
    } 
    this.f.setCardViewPlanOffer(getResources().getDrawable(2130838593), "", "");
  }
  
  private void a(List<krn> paramList) {
    for (int i = 0; i < paramList.size(); i++) {
      for (int j = 0; j < this.m.a().size(); j++) {
        if (mhj.a(((krn)paramList.get(i)).c() + "00", '0', 15).equals(((krz)this.m.a().get(j)).b()))
          ((krz)this.m.a().get(j)).e(((krn)paramList.get(i)).a()); 
      } 
    } 
  }
  
  private void b() {
    this.f.setListener(new lnv(this));
    this.j.setOnClickListener(new lnw(this));
    this.h.setOnClickListener(new lnz(this));
    this.i.setOnClickListener(new loa(this));
  }
  
  private void c() {
    if (this.m.a().size() == 1) {
      ktl ktl1 = new ktl(((krz)this.m.a().get(0)).c(), ((krz)this.m.a().get(0)).d());
      this.d.c().c(ktl1);
      return;
    } 
    if (this.f.b() == mch.PLAN1) {
      ktl ktl1 = new ktl(((krz)this.m.a().get(0)).c(), ((krz)this.m.a().get(0)).d());
      this.d.c().c(ktl1);
      return;
    } 
    ktl ktl = new ktl(((krz)this.m.a().get(1)).c(), ((krz)this.m.a().get(1)).d());
    this.d.c().c(ktl);
  }
  
  private void d() {
    if (this.m.a().size() == 1) {
      this.d.c().a(this.m.a().get(0));
      return;
    } 
    if (this.f.b() == mch.PLAN1) {
      this.d.c().a(this.m.a().get(0));
      return;
    } 
    if (this.f.b() == mch.PLAN2) {
      this.d.c().a(this.m.a().get(1));
      return;
    } 
  }
  
  private String e() {
    String str = null;
    if (this.m != null) {
      if (this.m.a().size() == 1)
        return ((krz)this.m.a().get(0)).a().a() + ((krz)this.m.a().get(0)).a().b(); 
    } else {
      return str;
    } 
    return this.f.e().a().a() + this.f.e().a().b();
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
    if (getArguments() != null && getArguments().containsKey("quotations")) {
      this.m = (new ejm()).<kry>a(getArguments().getString("quotations"), kry.class);
    } else {
      this.m = new kry();
    } 
    if (getArguments() != null && getArguments().containsKey("family-id"))
      this.o = getArguments().getString("family-id"); 
    this.p.put("571740", "Proteção Vida Select");
    this.p.put("571676", "Proteção Vida Van Gogh");
    this.p.put("571814", "Proteção Vida Homem");
    this.p.put("571815", "Proteção Vida Mulher");
    this.p.put("571813", "Proteção AP Sob Medida");
    this.d.c().b(this.p);
    ksq.INSTANCE.setFamilyId(this.o);
    a(this.o);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969058, paramViewGroup, false);
    if (mgt.d(this.o)) {
      frq.d("Seguros_Contratacao_Vida_Acao", "TelaContratacaoVida");
      a(view);
      a(this.m.a().size());
      return view;
    } 
    if (mgt.b(this.o))
      frq.d("Seguros_Contratacao_AP_Acao", "TelaContratacaoAP"); 
    a(view);
    a(this.m.a().size());
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lnt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */