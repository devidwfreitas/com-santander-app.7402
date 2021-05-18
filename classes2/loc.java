import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.santander.app.seguros.ui.contract.activities.ContractActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class loc extends Fragment {
  private static final String a = "0000000001";
  
  private ContractActivity b;
  
  private List<krt> c;
  
  private RecyclerView d;
  
  private Button e;
  
  private lld f;
  
  private kye g;
  
  private List<krt> a(List<krt> paramList) {
    ArrayList<krt> arrayList = new ArrayList();
    Iterator<krt> iterator = paramList.iterator();
    while (iterator.hasNext())
      arrayList.add(iterator.next()); 
    return arrayList;
  }
  
  public static loc a() {
    Bundle bundle = new Bundle();
    loc loc1 = new loc();
    loc1.setArguments(bundle);
    return loc1;
  }
  
  private void a(View paramView) {
    this.b.b().scrollTo(0, 0);
    this.d = (RecyclerView)paramView.findViewById(2131757382);
    this.e = (Button)paramView.findViewById(2131755733);
    this.e.setEnabled(false);
    this.e.setOnClickListener(new lof(this));
  }
  
  private kru b() {
    kru kru = new kru();
    mhz mhz = this.b.c();
    krr krr = new krr();
    krr.a(mhz.n().a().a());
    krr.d(mhz.o());
    krr.e(mhz.n().h());
    krr.c(mhz.n().a().b());
    kru.a(krr);
    kru.a("LISPERGDPS");
    return kru;
  }
  
  private void b(List<krt> paramList) {
    this.f = new lld(paramList, (Context)this.b);
    this.f.a(new loe(this));
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this.b, 1, false);
    this.d.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.d.setAdapter(this.f);
  }
  
  private void c() {
    kru kru = b();
    this.b.a(true);
    this.g.a(kru, new lod(this), this.b.f());
  }
  
  private void d() {
    if (this.b.c().f() != null && this.b.c().f().size() > 0) {
      this.c = this.b.c().f();
      b(this.c);
      return;
    } 
    c();
  }
  
  private void e() {
    f();
    this.b.c().b(this.c);
    this.b.a(new log(this), new loh(this));
  }
  
  private void f() {
    frq.d("Seguros_Contratacao_Vida_Proposta_Questionario_Acao", "Avancar");
    for (krt krt : this.c) {
      String str;
      if (krt.d()) {
        str = "sim";
      } else {
        str = "não";
      } 
      frq.d("Seguros_Contratacao_Vida_Proposta_Questionario_Acao", str);
      StringBuilder stringBuilder = (new StringBuilder()).append(mhj.I(krt.a()));
      if (krt.d()) {
        str = "sim";
      } else {
        str = "não";
      } 
      frq.d("Seguros_Contratacao_Vida_Proposta_Questionario", stringBuilder.append(str).toString());
      if (krt.f() != null && krt.f().equalsIgnoreCase("0000000001")) {
        if (krt.d()) {
          str = "sim";
        } else {
          str = "não";
        } 
        frq.d("Seguros_Contratacao_Vida_Proposta_Questionario_MedicamentosContinuos_Acao", str);
        if (!krt.c().equals(krt.e()) && !TextUtils.isEmpty(krt.b()))
          frq.d("Seguros_Contratacao_Vida_Proposta_Questionario_MedicamentosContinuos_Qual", krt.b()); 
      } 
    } 
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof android.support.v7.app.AppCompatActivity)
      this.b = (ContractActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.b.a(mfn.WAVE_GREEN_THREE, false);
    this.g = new kyf();
    this.b.c().b((List<krt>)null);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969059, paramViewGroup, false);
    frq.d("Seguros_Contratacao_Vida_Proposta_Questionario_Acao", "TelaQuestionario");
    a(view);
    d();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\loc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */