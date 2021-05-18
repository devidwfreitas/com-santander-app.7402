import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.widgets.liquidindicator.LiquidIndicatorView;

public class ldn extends Fragment implements lde, ldl, ldx {
  public static String a;
  
  public static String b;
  
  private static final String c = "FIRE_INSURANCE_VIEW_MODEL_KEY";
  
  private MultiStateLayout d;
  
  private kxm e;
  
  private ldq f;
  
  private LiquidIndicatorView g;
  
  private int h = 0;
  
  private ldr i;
  
  private String j;
  
  private String k;
  
  private String l;
  
  public static ldn a(ldr paramldr) {
    ldn ldn1 = new ldn();
    Bundle bundle = new Bundle();
    bundle.putString("FIRE_INSURANCE_VIEW_MODEL_KEY", paramldr.toString());
    ldn1.setArguments(bundle);
    return ldn1;
  }
  
  private void a(View paramView) {
    this.g = (LiquidIndicatorView)paramView.findViewById(2131757481);
    this.d = (MultiStateLayout)paramView.findViewById(2131755279);
  }
  
  private void e() {
    String str1 = getResources().getString(2131296966);
    String str2 = getResources().getString(2131298509);
    String str3 = getResources().getString(2131298488);
    if (this.i.e()) {
      this.g.a(new String[] { str1, str3 });
    } else {
      this.g.a(new String[] { str1, str2, str3 });
    } 
    f();
  }
  
  private void f() {
    lcy lcy;
    lds lds;
    boolean bool = true;
    if (this.i.e() && this.h == 1)
      this.h++; 
    switch (this.h) {
      default:
        if (this.f != null)
          this.f.a(this.l); 
        return;
      case 0:
        bool = false;
        lcy = lcy.a();
        lcy.a(this);
        this.g.a(mfn.COMPLETED_GREEN, bool);
        this.h++;
        getChildFragmentManager().beginTransaction().replace(2131755280, lcy).commit();
        return;
      case 1:
        lds = lds.a();
        lds.a(this);
        this.g.a(mfn.COMPLETED_GREEN, bool);
        this.h++;
        getChildFragmentManager().beginTransaction().replace(2131755280, lds).commit();
        return;
      case 2:
        break;
    } 
    ldf ldf = g();
    this.g.a(mfn.COMPLETED_GREEN, bool);
    this.h++;
    getChildFragmentManager().beginTransaction().replace(2131755280, ldf).commit();
  }
  
  private ldf g() {
    String str1 = null;
    String str2 = this.i.c().d();
    if (this.i.d()) {
      ldf = (ldf)this.i.b().c();
    } else {
      ldf = null;
    } 
    if (!this.i.e())
      str1 = this.k; 
    koi koi = this.i.a();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(koi.c());
    stringBuilder.append(",");
    stringBuilder.append("\n");
    stringBuilder.append(koi.d());
    stringBuilder.append(" - ");
    stringBuilder.append(koi.f());
    ldf ldf = ldf.a(new ldm(str2, (String)ldf, str1, stringBuilder.toString()));
    ldf.a((ldl)this);
    return ldf;
  }
  
  private koo h() {
    koo koo = new koo();
    koi koi = this.i.a();
    String str3 = b.replaceAll("[^\\d]", "");
    koo.a(str3.substring(0, 2), str3.substring(2, str3.length()));
    kps kps = this.i.c();
    String str4 = mhj.a((Context)getActivity(), "jsons/assistance/accountProductsMapping.json");
    if (kps != null) {
      koo.e(this.i.c().g().a());
      koo.f(kps.a());
      koo.g(kps.d());
      koo.h(kps.b());
      koo.a(kof.a(str4, koi.b(), this.i.c().g().a()));
    } 
    String str2 = kpq.a(mhj.a((Context)getActivity(), "jsons/assistance/statesAndCityMapping.json"), koi.f(), koi.d());
    koo.n(koi.c());
    koo.l(koi.g());
    koo.m(koi.e());
    koo.p(koi.f());
    koo.o(str2);
    koo.j(koi.b());
    koo.b(this.i.a().a());
    if (this.j != null && !this.j.equals(""))
      koo.i(this.j); 
    String str1 = this.i.f();
    if (str1 != null && !str1.equals(""))
      koo.d(str1); 
    koo.c(miq.C().f().j());
    return koo;
  }
  
  public void a() {
    if (this.i.d())
      getFragmentManager().popBackStack(); 
    getFragmentManager().popBackStack();
  }
  
  public void a(String paramString1, String paramString2) {
    this.j = paramString1;
    this.k = paramString2;
    f();
  }
  
  public void a(ldq paramldq) {
    this.f = paramldq;
  }
  
  public void b() {
    getFragmentManager().popBackStack();
  }
  
  public void b(String paramString1, String paramString2) {
    a = paramString1;
    b = paramString2;
    f();
  }
  
  public void c() {
    this.h = 1;
    this.g.c();
    this.g.c();
    f();
  }
  
  public void d() {
    this.d.setState(aor.LOADING);
    this.e.a(h(), new ldo(this), new ldp(this));
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null)
      this.i = (new ejm()).<ldr>a(getArguments().getString("FIRE_INSURANCE_VIEW_MODEL_KEY"), ldr.class); 
    this.e = new kxn();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969072, paramViewGroup, false);
    a(view);
    e();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ldn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */