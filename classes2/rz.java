import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableStringBuilder;
import android.util.Log;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class rz extends acr {
  private acg a = (acg)e().a();
  
  private List<tk> c = new ArrayList<tk>();
  
  private ImageView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private RecyclerView h;
  
  private Button i;
  
  private ImageButton j;
  
  private TextView k;
  
  private TextView l;
  
  private LinearLayout m;
  
  private TextView n;
  
  private LinearLayout o;
  
  private RelativeLayout p;
  
  private TextView q;
  
  private TextView r;
  
  private TextView s;
  
  private re t;
  
  private RelativeLayout u;
  
  public rz(Activity paramActivity) {
    super((ack)paramActivity);
    a();
    c();
  }
  
  private void a() {
    this.d = (ImageView)e().findViewById(la.header_cancel);
    this.k = (TextView)e().findViewById(la.header_titulo);
    this.e = (TextView)e().findViewById(la.inv2_det_supp_produto);
    this.n = (TextView)e().findViewById(la.inv2_det_subp_data_ultima_atualizacao);
    this.f = (TextView)e().findViewById(la.inv2_det_supp_valor_investido);
    this.g = (TextView)e().findViewById(la.inv2_det_subp_valor_disponivel);
    this.h = (RecyclerView)e().findViewById(la.det_subp_lista_detalhe);
    this.m = (LinearLayout)e().findViewById(la.inv2_det_subp_bottomcontainer);
    this.i = (Button)e().findViewById(la.det_subp_botao_aplicar);
    this.j = (ImageButton)e().findViewById(la.icon_info);
    this.l = (TextView)e().findViewById(la.det_subp_total_contracts);
    this.o = (LinearLayout)e().findViewById(la.ll_container_valor_resgate);
    this.p = (RelativeLayout)e().findViewById(la.ll_container_text_corretora);
    this.r = (TextView)e().findViewById(la.det_subp_text_corretora);
    this.s = (TextView)e().findViewById(la.inv2_det_subp_lbl_investido);
    this.c = ((acg)e().a()).n().t();
    this.u = (RelativeLayout)e().findViewById(la.inv2_det_subp_layout_loadinig);
    b();
  }
  
  private void a(String[] paramArrayOfString) {
    String str = e().getResources().getString(lg.app_corretora_url_prd, new Object[] { paramArrayOfString[0] });
    if (abp.b().c())
      str = e().getResources().getString(lg.app_corretora_url_hk, new Object[] { paramArrayOfString[0] }); 
    zs.a().b((Context)e(), str);
    Log.d("TRACE-MOD-VM", "Via Browser:  PRODUTO: " + this.a.n().k() + " URL: " + str + " PAREMETRO[0]: " + paramArrayOfString[0] + " PAREMETRO[1]: " + paramArrayOfString[1]);
  }
  
  private void b() {
    this.k.setText(this.a.p());
    this.d.setImageResource(kz.ic_back);
    this.n.setText(this.a.n().s().k());
    this.e.setText(this.a.n().k());
    this.f.setText(aat.b(this.a.n().s().b()));
    this.g.setText(aat.a(this.a.n().s().a()));
    String str = e().getResources().getString(lg.det_subp_lbl_qntd_contratos, new Object[] { Integer.valueOf(this.c.size()) });
    if (this.a.p().equalsIgnoreCase("corretora")) {
      this.o.setVisibility(8);
      this.p.setVisibility(0);
      SpannableStringBuilder spannableStringBuilder = aat.b(e().getString(lg.det_subp_text_go_corretora) + " " + e().getString(lg.det_subp_label_app_corretora), e().getString(lg.det_subp_label_app_corretora));
      this.r.setText((CharSequence)spannableStringBuilder);
      this.r.setOnClickListener(new sa(this));
      if (this.c.size() > 1) {
        str = str + " " + e().getResources().getString(lg.det_subp_lbl_detalhe_operacao_plural);
      } else {
        str = str + " " + e().getResources().getString(lg.det_subp_label_operacao_corretora_singular);
      } 
    } else {
      this.o.setVisibility(0);
      this.p.setVisibility(8);
      if (this.c.size() > 1) {
        str = str + " " + e().getResources().getString(lg.det_subp_lbl_detalhe_operacao_plural);
      } else {
        str = str + " " + e().getResources().getString(lg.det_subp_lbl_detalhe_operacao_singular);
      } 
    } 
    this.l.setText(str);
    if (this.a.p().equalsIgnoreCase("coe"))
      this.s.setText(e().getString(lg.det_subp_lbl_valor_nominal)); 
    this.d.setOnClickListener(new sc(this));
    if (this.a.p().equalsIgnoreCase("coe")) {
      this.m.setVisibility(0);
      this.i.setOnClickListener(new sd(this));
      this.i.setText(e().getResources().getString(lg.app_continuar));
    } else if (!this.a.n().m() && this.a.n().n()) {
      this.m.setVisibility(0);
      this.i.setOnClickListener(new se(this));
    } else {
      this.m.setVisibility(8);
    } 
    if (this.a.p().equalsIgnoreCase("poupança")) {
      this.j.setVisibility(0);
      this.j.setOnClickListener(new sf(this));
    } 
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)e());
    this.h.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.h.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.t = new re(this.c, this.a.p(), this.a.n().j(), this.a.n().k(), (Context)e());
    this.h.setAdapter(this.t);
    this.h.setNestedScrollingEnabled(false);
  }
  
  private void c() {
    if (this.a.p().equalsIgnoreCase("fundos")) {
      qw qw = new qw((Context)e());
      for (tk tk : this.c) {
        this.u.setVisibility(0);
        qw.a(this.a.n().j(), tk, new sh(this, tk));
      } 
    } else {
      this.u.setVisibility(8);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\rz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */