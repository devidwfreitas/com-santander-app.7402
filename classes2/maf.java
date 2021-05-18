import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bartoszlipinski.recyclerviewheader2.RecyclerViewHeader;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class maf extends Fragment implements lve {
  public static final String a = "edit_key";
  
  public static final String b = "UPDATE_STEP_KEY";
  
  private static final String c = "response-key";
  
  private RecyclerView d;
  
  private RecyclerViewHeader e;
  
  private TextView f;
  
  private List<kvy> g;
  
  private List<kvo> h;
  
  private SinisterActivity i;
  
  private boolean j = false;
  
  private boolean k = true;
  
  public static maf a(boolean paramBoolean1, boolean paramBoolean2) {
    Bundle bundle = new Bundle();
    maf maf1 = new maf();
    bundle.putString("edit_key", (new ejm()).b(Boolean.valueOf(paramBoolean1)));
    bundle.putString("UPDATE_STEP_KEY", (new ejm()).b(Boolean.valueOf(paramBoolean2)));
    maf1.setArguments(bundle);
    return maf1;
  }
  
  private void a(View paramView) {
    this.d = (RecyclerView)paramView.findViewById(2131757552);
    this.e = (RecyclerViewHeader)paramView.findViewById(2131757553);
    this.f = (TextView)paramView.findViewById(2131755789);
  }
  
  public static maf b() {
    Bundle bundle = new Bundle();
    maf maf1 = new maf();
    maf1.setArguments(bundle);
    return maf1;
  }
  
  private void b(kuq paramkuq) {
    switch (mai.a[paramkuq.ordinal()]) {
      default:
        return;
      case 1:
        frq.d("Seguros_Sinistro_Acionar_Confirmacao_Acao", "EditarDataOcorrencia");
        return;
      case 2:
        frq.d("Seguros_Sinistro_Acionar_Confirmacao_Acao", "EditarValorDoBem");
        return;
      case 3:
        break;
    } 
    frq.d("Seguros_Sinistro_Acionar_Confirmacao_Acao", "EditarValorTotalPrejuizo");
  }
  
  private void e() {
    this.h = mhv.INSTANCE.getFlowCache();
    this.i.c(false);
    this.i.f(false);
    this.f.setText(getResources().getString(2131297139));
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.i, 1, false));
    this.d.addItemDecoration(new mgw((Context)this.i, mgx.GRAY_BACKGROUND_DETAILS));
    this.g = f();
    luv luv = new luv(this.d, this.g);
    luv.a(this);
    this.e.a(this.d);
    this.d.setAdapter(luv);
  }
  
  private List<kvy> f() {
    ArrayList<kvy> arrayList = new ArrayList();
    kvy kvy = c();
    if (kvy != null)
      arrayList.add(kvy); 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (kvo kvo : this.h) {
      kva kva = mhv.INSTANCE.getRequest(kvo.b());
      if (!hashMap.containsKey(kvo.b())) {
        hashMap.put(kvo.b(), kvo);
        if (kva != null) {
          String str1;
          String str2;
          kvy kvy1 = new kvy();
          kvy1.a(kva.g());
          kvy1.a(kva);
          switch (mai.a[kvo.b().ordinal()]) {
            case 1:
              if (kva.j() != null)
                kvy1.b(mhj.a(kva.j())); 
              kvy1.a(2130838354);
              kvy1.a(getResources().getString(2131297395));
              arrayList.add(kvy1);
              kvy1.a(kva.a());
              break;
            case 2:
              kvy1.a(getResources().getString(2131299076));
              kvy1.a(kva.d());
              kvy1.b(mhj.a(kva.c()));
              kvy1.a(2130838456);
              arrayList.add(kvy1);
              kvy1.a(kva.a());
              break;
            case 3:
              if (d()) {
                kvy1.a(getResources().getString(2131299075));
                kvy1.b(mhj.a(kva.c()));
                kvy1.a(2130838674);
                arrayList.add(kvy1);
              } 
              kvy1.a(kva.a());
              break;
            case 4:
              kvy1.a(getResources().getString(2131297283));
              if (TextUtils.isEmpty(kva.o())) {
                str1 = "";
              } else {
                str1 = kva.o();
              } 
              if (TextUtils.isEmpty(kva.p())) {
                str2 = "";
              } else {
                str2 = mhj.w(kva.p());
              } 
              kvy1.b(String.format("%s\n%s", new Object[] { str1, str2 }));
              kvy1.a(2130838595);
              arrayList.add(kvy1);
              kvy1.a(kva.a());
              break;
            case 5:
              kvy1.a(2130838354);
              kvy1.a(getResources().getString(2131297112));
              if (kva.b() != null) {
                str1 = mhj.a(kva.b());
              } else {
                str1 = "";
              } 
              if (kva.m() == kvf.AM) {
                str2 = "Manhã";
              } else {
                str2 = "Tarde";
              } 
              kvy1.b(String.format("%s %s ", new Object[] { str1, str2 }));
              arrayList.add(kvy1);
              kvy1.a(kva.a());
              break;
          } 
        } 
      } 
    } 
    return arrayList;
  }
  
  private void g() {
    FragmentTransaction fragmentTransaction = this.i.getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131755534, a(true, false), "summary-step-fragment");
    fragmentTransaction.setCustomAnimations(2131034148, 2131034149, 2131034147, 2131034150);
    fragmentTransaction.addToBackStack("summary-step-fragment");
    fragmentTransaction.commit();
  }
  
  private gkw<is> h() {
    return new mah(this);
  }
  
  public kvo a(kuq paramkuq) {
    for (kvo kvo : this.h) {
      if (kvo.b().equals(paramkuq))
        return kvo; 
    } 
    return null;
  }
  
  public void a() {
    kva kva = new kva();
    kva.b(Long.valueOf(mhv.INSTANCE.getCoverageId()));
    frq.d("Seguros_Sinistro_Acionar_DataOcorrencia", String.valueOf(mhj.a(mhv.INSTANCE.getAllRequest().j(), "ddMMyyyy")));
    if (mhv.INSTANCE.getAllRequest().k() != null) {
      frq.d("Seguros_Sinistro_Acionar_ValorTotalPrejuizo", String.valueOf(mhv.INSTANCE.getAllRequest().k()));
    } else {
      frq.d("Seguros_Sinistro_Acionar_ValorTotalPrejuizo", String.valueOf(mhv.INSTANCE.getAllRequest().c()));
    } 
    if (mhv.INSTANCE.getAllRequest().d() != null && mhv.INSTANCE.getAllRequest().d().size() > 0)
      for (int i = 0; i < mhv.INSTANCE.getAllRequest().d().size(); i++)
        frq.d("Seguros_Sinistro_Acionar_ValorDoBem", ((kux)mhv.INSTANCE.getAllRequest().d().get(i)).d());  
    this.i.D.setState(aor.LOADING);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject2.put("userId", 1);
      jSONObject2.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    JSONObject jSONObject1 = new JSONObject();
    try {
      JSONObject jSONObject = new JSONObject((new ejm()).b(kva));
      jSONObject1 = jSONObject;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.SINISTER_STEP_FINISH.getEndpoint(), im.POST, jSONObject2, jSONObject1, true);
    gnv gnv = new gnv(h(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void a(kvy paramkvy) {
    if (paramkvy.b() == kuq.COVERAGE) {
      this.i.a().a();
      if (this.g != null) {
        for (int i = 0; i < this.g.size(); i++) {
          paramkvy = this.g.get(i);
          if (paramkvy.b() == kuq.EMAIL_PHONE) {
            this.i.a().a(paramkvy.b());
            this.i.a().a(paramkvy.b(), paramkvy.a());
          } 
        } 
        this.i.u();
        this.i.s();
      } 
      return;
    } 
    b(paramkvy.b());
    kvb kvb = mhv.INSTANCE.getResponse(paramkvy.b());
    if (kvb != null) {
      kvo kvo = a(kvb.o());
      if (kvo != null) {
        this.i.r();
        g();
        this.i.a(this.h);
        this.i.a(kvo.a());
        this.i.f(true);
        (new Handler()).postDelayed(new mag(this), 400L);
        this.i.a(kvb, false, true, true);
        return;
      } 
    } 
  }
  
  public void a(boolean paramBoolean) {}
  
  public kvy c() {
    kuy kuy = this.i.t();
    if (kuy != null) {
      kvy kvy = new kvy();
      kvy.a(kuq.COVERAGE);
      kvy.a(kuy.b());
      kvy.a(getResources().getString(2131297026));
      kvy.b(kuy.e());
      return kvy;
    } 
    return null;
  }
  
  public boolean d() {
    if (this.h != null)
      for (kvo kvo : this.h) {
        if (kvo.b() != null && kvo.b() == kuq.EQUIPMENT_LIST)
          return false; 
      }  
    return true;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterActivity)
      this.i = (SinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("edit_key"))
      this.j = ((Boolean)(new ejm()).<Boolean>a(getArguments().getString("edit_key"), (Class)boolean.class)).booleanValue(); 
    if (getArguments() != null && getArguments().containsKey("UPDATE_STEP_KEY"))
      this.k = ((Boolean)(new ejm()).<Boolean>a(getArguments().getString("UPDATE_STEP_KEY"), (Class)boolean.class)).booleanValue(); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969089, paramViewGroup, false);
    a(view);
    e();
    return view;
  }
  
  public void onStart() {
    super.onStart();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\maf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */