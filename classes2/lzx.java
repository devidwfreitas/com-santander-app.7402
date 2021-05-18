import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class lzx extends Fragment implements lyd {
  private static final String b = "response-key";
  
  public lxx a;
  
  private FrameLayout c;
  
  private RecyclerView d;
  
  private TextView e;
  
  private Button f;
  
  private SinisterActivity g;
  
  private kvb h;
  
  private kva i;
  
  private List<kux> j;
  
  private ltu k;
  
  public static lzx a(kvb paramkvb) {
    Bundle bundle = new Bundle();
    bundle.putString("response-key", (new ejm()).b(paramkvb));
    lzx lzx1 = new lzx();
    lzx1.setArguments(bundle);
    return lzx1;
  }
  
  private void a(View paramView) {
    this.c = (FrameLayout)paramView.findViewById(2131756083);
    this.d = (RecyclerView)paramView.findViewById(2131757479);
    this.e = (TextView)paramView.findViewById(2131756279);
    this.f = (Button)paramView.findViewById(2131755733);
    g();
  }
  
  private void a(Double paramDouble) {
    if (this.j.size() <= 10) {
      kva kva1 = new kva();
      kva1.a(kuz.NEXT);
      if (mhv.INSTANCE.getCoverageId() != -1L)
        kva1.b(Long.valueOf(mhv.INSTANCE.getCoverageId())); 
      kva1.a(this.h.q());
      kva1.a(this.j);
      kva1.a(String.valueOf(paramDouble.floatValue()));
      kva1.a(kuq.EQUIPMENT_LIST);
      this.g.a(kva1);
      return;
    } 
    mhj.c((Context)this.g, getResources().getString(2131297340));
  }
  
  private void a(kva paramkva) {
    this.g.D.setState(aor.LOADING);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", String.valueOf(mzx.a().c().get("appKey")));
      jSONObject2.put("userId", 1);
      jSONObject2.put("Content-Type", "application/json");
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    JSONObject jSONObject1 = new JSONObject();
    try {
      JSONObject jSONObject = new JSONObject((new ejm()).b(paramkva));
      jSONObject1 = jSONObject;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.SINISTER_STEP_CONTINUE.getEndpoint(), im.POST, jSONObject2, jSONObject1, true);
    gnv gnv = new gnv(b(paramkva), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  private gkw<is> b(kva paramkva) {
    return new mac(this, paramkva);
  }
  
  private void d() {
    this.a = lxx.a(lye.ADD);
    this.a.a(this);
    this.a.show(this.g.getFragmentManager(), "add-equipment");
  }
  
  private void e() {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual b : ()Ljava/lang/Double;
    //   4: astore #4
    //   6: ldc_w 'Seguros_Sinistro_Acionar_EquipamentoDanificado_SomaValores_Acao'
    //   9: aload #4
    //   11: invokevirtual floatValue : ()F
    //   14: invokestatic valueOf : (F)Ljava/lang/String;
    //   17: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   20: aload #4
    //   22: ifnull -> 97
    //   25: aload_0
    //   26: invokespecial f : ()Z
    //   29: ifeq -> 97
    //   32: aload_0
    //   33: getfield g : Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;
    //   36: getfield B : Ljava/lang/String;
    //   39: invokestatic parseDouble : (Ljava/lang/String;)D
    //   42: dstore_1
    //   43: dload_1
    //   44: invokestatic valueOf : (D)Ljava/lang/Double;
    //   47: astore_3
    //   48: aload_3
    //   49: ifnull -> 104
    //   52: aload_0
    //   53: invokevirtual b : ()Ljava/lang/Double;
    //   56: invokevirtual doubleValue : ()D
    //   59: aload_3
    //   60: invokevirtual doubleValue : ()D
    //   63: dcmpl
    //   64: ifle -> 104
    //   67: aload_0
    //   68: getfield g : Lcom/santander/app/seguros/ui/sinister/activities/SinisterActivity;
    //   71: new java/lang/StringBuilder
    //   74: dup
    //   75: invokespecial <init> : ()V
    //   78: ldc_w 'O valor total precisa ser menor ou igual '
    //   81: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: aload_3
    //   85: invokestatic a : (Ljava/lang/Double;)Ljava/lang/String;
    //   88: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual toString : ()Ljava/lang/String;
    //   94: invokestatic c : (Landroid/content/Context;Ljava/lang/String;)V
    //   97: return
    //   98: astore_3
    //   99: aconst_null
    //   100: astore_3
    //   101: goto -> 48
    //   104: aload_0
    //   105: invokevirtual c : ()Z
    //   108: ifeq -> 97
    //   111: aload_0
    //   112: aload #4
    //   114: invokespecial a : (Ljava/lang/Double;)V
    //   117: return
    // Exception table:
    //   from	to	target	type
    //   32	43	98	java/lang/Exception
  }
  
  private boolean f() {
    if (this.k == null || this.k.getItemCount() <= 0) {
      mhj.c((Context)this.g, getResources().getString(2131297367));
      return false;
    } 
    if (this.e.getText().toString().equals("R$ 0,00")) {
      mhj.c((Context)this.g, getResources().getString(2131297388));
      return false;
    } 
    return true;
  }
  
  private void g() {
    this.f.setOnClickListener(new lzz(this));
    this.c.setOnClickListener(new maa(this));
  }
  
  public void a() {
    if (this.i != null) {
      this.j = this.i.d();
      this.e.setText(mhj.a(c(this.j)));
    } else {
      this.j = new ArrayList<kux>();
      this.e.setText(getResources().getString(2131299250));
    } 
    a(this.j);
  }
  
  public void a(int paramInt) {
    this.a = lxx.a(lye.EDIT, this.j.get(paramInt), paramInt);
    this.a.a(this);
    this.a.show(this.g.getFragmentManager(), "edit-equipment");
  }
  
  public void a(List<kux> paramList) {
    this.k = new ltu(paramList);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this.g, 1, false);
    this.d.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.d.setAdapter(this.k);
    this.k.a(new lzy(this));
  }
  
  public void a(kux paramkux) {
    this.k.a(paramkux);
    b(this.j);
  }
  
  public void a(kux paramkux, int paramInt) {
    this.k.a(paramkux, paramInt);
    b(this.j);
  }
  
  public Double b() {
    double d = 0.0D;
    for (int i = 0; i < this.j.size(); i++)
      d += Double.parseDouble(((kux)this.j.get(i)).d()); 
    return Double.valueOf(d);
  }
  
  public void b(List<kux> paramList) {
    double d = 0.0D;
    int i;
    for (i = 0; i < paramList.size(); i++)
      d += Double.parseDouble(((kux)paramList.get(i)).d()); 
    this.e.setText(mhj.a(Double.valueOf(d)));
  }
  
  public String c(List<kux> paramList) {
    double d = 0.0D;
    int i;
    for (i = 0; i < paramList.size(); i++)
      d += Double.parseDouble(((kux)paramList.get(i)).d()); 
    return String.valueOf(d);
  }
  
  public boolean c() {
    kva kva1 = mhv.INSTANCE.getRequest(kuq.SLIDER_VALUE);
    if (kva1 != null && b().doubleValue() != kva1.k().doubleValue()) {
      lyl lyl = lyl.a(b().doubleValue());
      lyl.a(new mab(this, lyl, kva1));
      lyl.show(this.g.getSupportFragmentManager(), "replace-equipament-value-tag");
      return false;
    } 
    return true;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof SinisterActivity)
      this.g = (SinisterActivity)paramContext; 
  }
  
  public void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.h = (new ejm()).<kvb>a(getArguments().getString("response-key"), kvb.class);
    if (mhv.INSTANCE.containsRequest(kuq.EQUIPMENT_LIST))
      this.i = mhv.INSTANCE.getRequest(kuq.EQUIPMENT_LIST); 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969070, paramViewGroup, false);
    a(view);
    if (mhv.INSTANCE.containsRequest(kuq.EQUIPMENT_LIST))
      this.i = mhv.INSTANCE.getRequest(kuq.EQUIPMENT_LIST); 
    a();
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */