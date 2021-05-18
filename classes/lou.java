import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.CardView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import com.santander.app.seguros.ui.widgets.SegurosTextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class lou extends Fragment implements lmr {
  public static final int a = 100;
  
  public static final String b = "mBeneficiaries-key";
  
  int c = -1;
  
  private CardView d;
  
  private LinearLayout e;
  
  private Button f;
  
  private Button g;
  
  private RecyclerView h;
  
  private SegurosTextView i;
  
  private loy j;
  
  private ContractActivity k;
  
  private lfh l;
  
  private int m = 0;
  
  private lki n;
  
  private List<kpw> o;
  
  public static lou a(List<kpw> paramList) {
    Bundle bundle = new Bundle();
    bundle.putString("mBeneficiaries-key", (new ejm()).b(paramList));
    lou lou1 = new lou();
    lou1.setArguments(bundle);
    return lou1;
  }
  
  private void a(int paramInt) {
    this.c = paramInt;
    lmi lmi = lmi.a(this.o.get(paramInt));
    lmi.a(this);
    lmi.show(getChildFragmentManager(), "add-mBeneficiaries-contract-summary");
  }
  
  private void a(View paramView) {
    this.d = (CardView)paramView.findViewById(2131757392);
    this.e = (LinearLayout)paramView.findViewById(2131757393);
    this.f = (Button)paramView.findViewById(2131757394);
    this.g = (Button)paramView.findViewById(2131755733);
    this.h = (RecyclerView)paramView.findViewById(2131757395);
    this.i = (SegurosTextView)paramView.findViewById(2131757396);
  }
  
  private void a(String paramString) {
    this.l = lfh.a(paramString);
    this.l.show(getFragmentManager(), "message-fragment");
  }
  
  private void a(boolean paramBoolean) {
    if (this.m <= 0) {
      this.k.c().a(new ArrayList());
      if (paramBoolean && this.j != null)
        this.j.a(); 
      if (mgt.d(this.k.i())) {
        frq.d("Seguros_Contratacao_Vida_Proposta_Escolha_Beneficiarios", "0");
      } else if (mgt.b(this.k.i())) {
        frq.d("Seguros_Contratacao_AP_Proposta_Escolha_Beneficiarios", "0");
      } 
      this.k.c(false);
      this.k.b(false);
      return;
    } 
    if (this.m > 100) {
      a(getResources().getString(2131299249));
      this.k.c(true);
      return;
    } 
    if (this.m < 100) {
      a(getResources().getString(2131299249));
      this.k.c(true);
      return;
    } 
    this.k.c().a(this.o);
    if (paramBoolean && this.j != null)
      this.j.a(); 
    if (mgt.d(this.k.i())) {
      String str;
      if (this.o == null) {
        str = "0";
      } else {
        str = String.valueOf(this.o.size());
      } 
      frq.d("Seguros_Contratacao_Vida_Proposta_Escolha_Beneficiarios", str);
    } else if (mgt.b(this.k.i())) {
      String str;
      if (this.o == null) {
        str = "0";
      } else {
        str = String.valueOf(this.o.size());
      } 
      frq.d("Seguros_Contratacao_AP_Proposta_Escolha_Beneficiarios", str);
    } 
    this.k.c(false);
    this.k.b(false);
  }
  
  public static lou b() {
    Bundle bundle = new Bundle();
    lou lou1 = new lou();
    lou1.setArguments(bundle);
    return lou1;
  }
  
  private void c() {
    this.g.setOnClickListener((View.OnClickListener)new lov(this));
    this.f.setOnClickListener((View.OnClickListener)new low(this));
    d();
    if (this.o != null && this.o.size() > 0) {
      this.e.setVisibility(8);
      this.h.setVisibility(0);
      (this.i.getLayoutParams()).height = 0;
    } else {
      (this.i.getLayoutParams()).height = -2;
      this.e.setVisibility(0);
      this.h.setVisibility(8);
    } 
    e();
  }
  
  private void d() {
    this.m = 0;
    for (kpw kpw : this.o) {
      int i = this.m;
      this.m = Integer.parseInt(kpw.d()) + i;
    } 
  }
  
  private void e() {
    this.h.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.k, 1, false));
    this.n = new lki(this.o);
    this.n.a((lkl)new lox(this));
    this.h.setAdapter((RecyclerView.Adapter)this.n);
  }
  
  public void a() {
    if (this.c > -1) {
      kpw kpw = this.o.get(this.c);
      this.m -= Integer.parseInt(kpw.d());
      this.n.a(this.c);
      if (this.o == null || this.o.isEmpty()) {
        this.e.setVisibility(0);
        this.h.setVisibility(8);
        mhj.a((View)this.i);
      } 
    } 
    this.c = -1;
  }
  
  public void a(kpw paramkpw) {
    paramkpw.a(String.valueOf(Double.valueOf(mhj.G(this.k.c().n().b()).replaceAll(" ", "").replace(",", ".")).doubleValue() * Double.parseDouble(paramkpw.d()) / 100.0D));
    if (this.c <= -1) {
      this.n.a(paramkpw);
      this.m += Integer.parseInt(paramkpw.d());
      this.e.setVisibility(8);
      (this.i.getLayoutParams()).height = 0;
      this.h.setVisibility(0);
    } else {
      kpw kpw1 = this.o.get(this.c);
      this.m -= Integer.parseInt(kpw1.d());
      this.m += Integer.parseInt(paramkpw.d());
      this.n.a(paramkpw, this.c);
    } 
    this.c = -1;
  }
  
  @nfq
  public void a(kxd paramkxd) {
    a(false);
  }
  
  public void a(loy paramloy) {
    this.j = paramloy;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof ContractActivity)
      this.k = (ContractActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.k.c(true);
    this.k.b(true);
    if (getArguments() != null && getArguments().containsKey("mBeneficiaries-key")) {
      String str = getArguments().getString("mBeneficiaries-key");
      this.o = new ArrayList<kpw>(Arrays.asList((Object[])(new ejm()).a(str, kpw[].class)));
      return;
    } 
    this.o = new ArrayList<kpw>();
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969061, paramViewGroup, false);
    a(view);
    c();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lou.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */