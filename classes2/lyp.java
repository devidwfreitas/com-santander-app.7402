import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import br.com.zup.multistatelayout.MultiStateLayout;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class lyp extends DialogFragment {
  public static final String a = "sinister-code-key";
  
  private EditText b;
  
  private Button c;
  
  private Button d;
  
  private MultiStateLayout e;
  
  private RatingBar f;
  
  private TextView g;
  
  private LinearLayout h;
  
  private RecyclerView i;
  
  private kwy j;
  
  private List<kvh> k;
  
  private Map<kvk, kvh> l;
  
  private ltd m;
  
  private mgv n;
  
  private kvk o;
  
  private String p = "";
  
  private kvh q;
  
  public static lyp a(String paramString) {
    Bundle bundle = new Bundle();
    lyp lyp1 = new lyp();
    bundle.putString("sinister-code-key", paramString);
    lyp1.setArguments(bundle);
    return lyp1;
  }
  
  private void a(View paramView) {
    this.b = (EditText)paramView.findViewById(2131756984);
    this.c = (Button)paramView.findViewById(2131756986);
    this.e = (MultiStateLayout)paramView.findViewById(2131755279);
    this.f = (RatingBar)paramView.findViewById(2131756972);
    this.g = (TextView)paramView.findViewById(2131756974);
    this.h = (LinearLayout)paramView.findViewById(2131756973);
    this.d = (Button)paramView.findViewById(2131756985);
    this.i = (RecyclerView)paramView.findViewById(2131756983);
    this.j = new kwy(this.e);
    a();
  }
  
  private void a(kvk paramkvk) {
    this.o = paramkvk;
    if (paramkvk != null && this.l.containsKey(paramkvk)) {
      kvh kvh1 = this.l.get(paramkvk);
    } else {
      paramkvk = null;
    } 
    this.q = (kvh)paramkvk;
    if (this.q != null) {
      this.g.setText(this.q.d());
      List<kvi> list = this.q.f();
      if (list.size() > 0 && list.size() % 2 != 0) {
        kvi kvi = new kvi();
        kvi.a(true);
        list.add(kvi);
      } 
      if (this.m != null) {
        this.m.a(list);
      } else {
        this.i.setLayoutManager((RecyclerView.LayoutManager)new GridLayoutManager((Context)getActivity(), 2));
        this.m = new ltd(list, this.i);
        this.i.setAdapter(this.m);
      } 
      this.m.a(new lys(this));
      if (this.m.getItemCount() > 0) {
        this.c.setEnabled(false);
      } else {
        this.c.setEnabled(true);
      } 
      f();
      if (this.h.getVisibility() == 8)
        this.h.setVisibility(0); 
      return;
    } 
    if (this.f.getProgress() <= 0) {
      this.c.setEnabled(false);
    } else {
      this.c.setEnabled(true);
    } 
    if (this.h.getVisibility() == 0)
      this.h.setVisibility(8); 
    if (this.m != null) {
      this.m.a(new ArrayList<kvi>());
      return;
    } 
  }
  
  private void b() {
    this.i.setNestedScrollingEnabled(false);
    this.i.setHasFixedSize(true);
    this.c.setEnabled(false);
    c();
  }
  
  private void c() {
    this.e.setState(aor.LOADING);
    this.j.a(new lyq(this));
  }
  
  private void d() {
    kvk[] arrayOfKvk = kvk.values();
    this.l = new HashMap<kvk, kvh>();
    int j = arrayOfKvk.length;
    for (int i = 0; i < j; i++) {
      kvk kvk1 = arrayOfKvk[i];
      for (kvh kvh1 : this.k) {
        if (kvh1.c() && kvh1.g().contains(kvk1)) {
          this.l.put(kvk1, kvh1);
          break;
        } 
      } 
    } 
  }
  
  private void e() {
    this.f.setOnRatingBarChangeListener(new lyr(this));
  }
  
  private void f() {
    if (this.n != null) {
      this.i.removeItemDecoration(this.n);
      this.n = null;
    } 
    if (this.m.getItemCount() > 0) {
      this.n = new mgv(5, this.m.getItemCount());
      this.i.addItemDecoration(this.n);
      this.i.invalidateItemDecorations();
    } 
  }
  
  private void g() {
    String str;
    this.e.setViewForState(2130969358, aor.LOADING);
    this.e.setState(aor.LOADING);
    kvm kvm = new kvm();
    kvm.a(mhj.a(new Date(), "yyyyMMdd"));
    kvm.a(this.o);
    kvm.b(this.p);
    if (this.q != null) {
      str = String.valueOf(this.q.a());
    } else {
      str = null;
    } 
    kvm.c(str);
    if (this.m != null && this.m.b() != null)
      kvm.a(this.m.b()); 
    kvm.d("Origin");
    kvm.e("1");
    try {
      this.j.a(kvm, new lyv(this));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void h() {
    List<kvi> list = this.m.a();
    if (list != null && list.size() > 0)
      for (int i = 0; i < list.size(); i++) {
        kvi kvi = list.get(i);
        if (!TextUtils.isEmpty(kvi.g()))
          frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_PopUpAvaliacao_OndeErramos", mhj.p(mhj.m(kvi.g().replaceAll(" ", "")))); 
      }  
  }
  
  public void a() {
    this.c.setOnClickListener(new lyt(this));
    this.d.setOnClickListener(new lyu(this));
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (getArguments() != null && getArguments().containsKey("sinister-code-key"))
      this.p = getArguments().getString("sinister-code-key"); 
  }
  
  @NonNull
  public Dialog onCreateDialog(Bundle paramBundle) {
    Dialog dialog = super.onCreateDialog(paramBundle);
    dialog.getWindow().requestFeature(1);
    dialog.setCancelable(false);
    dialog.setCanceledOnTouchOutside(false);
    return dialog;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130968990, paramViewGroup, false);
    a(view);
    b();
    frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Concluido_Acao", "PopUpAvaliacao");
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lyp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */