import android.content.Context;
import android.os.Bundle;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class mr extends acr {
  public lk a;
  
  private lo c;
  
  private acg d;
  
  private ImageButton e;
  
  private NestedScrollView f;
  
  private LinearLayout g;
  
  private RelativeLayout h;
  
  private LinearLayout i;
  
  private TextView j;
  
  private Button k;
  
  private RecyclerView l;
  
  private RecyclerView m;
  
  private View n;
  
  private Button o;
  
  private TextView p;
  
  private TextView q;
  
  private boolean r;
  
  private boolean s;
  
  private mn t;
  
  public mr(ack paramack) {
    super(paramack);
    boolean bool1;
    this.r = false;
    this.d = (acg)e().a();
    this.c = new lo((Context)e());
    if (!this.d.w().isEmpty()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.s = bool1;
    Bundle bundle = paramack.getIntent().getExtras();
    if (bundle.containsKey("KD") && bundle.getBoolean("KD")) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    this.r = bool1;
    c();
    if (this.d.v() == null || this.d.v().isEmpty()) {
      i();
      return;
    } 
    j();
  }
  
  private void c() {
    this.e = (ImageButton)e().findViewById(la.header_cancel);
    this.f = (NestedScrollView)e().findViewById(la.carinho_layout_tela);
    this.g = (LinearLayout)e().findViewById(la.carrinho_layout_botao);
    this.h = (RelativeLayout)e().findViewById(la.inv2_portifolio_layout_loadinig);
    this.i = (LinearLayout)e().findViewById(la.car_terms_container);
    this.j = (TextView)e().findViewById(la.header_titulo);
    this.l = (RecyclerView)e().findViewById(la.car_lista);
    this.m = (RecyclerView)e().findViewById(la.car_lista_termos);
    this.k = (Button)e().findViewById(la.empty_btn_voltar);
    this.n = e().findViewById(la.carr_empty);
    this.p = (TextView)e().findViewById(la.car_text_content);
    this.q = (TextView)e().findViewById(la.car_text_disclaimer);
    SpannableString spannableString = new SpannableString(e().getString(lg.car_texto_termo_recusa_completo));
    spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
    this.o = (Button)e().findViewById(la.car_btn_finalizar_contratacao);
    this.h.setVisibility(0);
    this.f.setVisibility(8);
    this.g.setVisibility(8);
  }
  
  private void d() {
    Integer integer;
    if (!this.s) {
      integer = Integer.valueOf(lg.tit_revisao);
    } else {
      integer = Integer.valueOf(lg.resgate_titulo);
      this.o.setText(lg.app_finalizar_resgate);
    } 
    this.j.setText(integer.intValue());
    this.e.setImageResource(kz.ic_back);
    if (this.d.f()) {
      b(e().getString(lg.app_msg_sucesso));
      this.d.e(false);
    } 
    this.l.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.l.setAdapter(new ma(this.d, this, e().getApplicationContext()));
    this.l.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.l.setNestedScrollingEnabled(false);
    ArrayList<lx> arrayList = new ArrayList();
    if (!this.s)
      arrayList.addAll(((ace)this.d.l().get(0)).x()); 
    if (!arrayList.isEmpty()) {
      this.i.setVisibility(0);
      this.m.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
      this.t = new mn(arrayList, (Context)e(), this.d, k(), this.o);
      this.m.setAdapter(this.t);
      this.m.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
      this.m.setNestedScrollingEnabled(false);
    } else {
      this.i.setVisibility(8);
      if (!k().booleanValue()) {
        this.o.setEnabled(true);
        this.o.setTextColor(e().getResources().getColor(kx.inv_white_three));
      } 
    } 
    this.h.setVisibility(8);
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    g();
  }
  
  private void g() {
    this.e.setOnClickListener(new ms(this));
    this.k.setOnClickListener(new mt(this));
    this.o.setOnClickListener(new mu(this));
  }
  
  private void h() {
    ArrayList arrayList = new ArrayList();
    if (!this.d.l().isEmpty()) {
      (new AlertDialog.Builder((Context)e())).setTitle(lg.car_card_tit_dialog_abandonar).setMessage(lg.car_card_msg_dialog_remover).setPositiveButton(lg.app_sim, new mw(this, arrayList)).setNegativeButton(lg.app_cancelar, new mv(this)).create().show();
      return;
    } 
    zs.a().a((Context)e(), arrayList);
  }
  
  private void i() {
    mx mx = new mx(this);
    if (this.r) {
      this.c.a(mx);
      return;
    } 
    if (!this.s) {
      this.c.a(this.d.l(), mx);
      return;
    } 
    this.c.b(this.d.w(), mx);
  }
  
  private void j() {
    if (this.d.w().isEmpty()) {
      this.d.b(this.d.v());
    } else {
      this.d.c(this.d.v().get(0));
    } 
    this.d.d(new ArrayList());
    d();
    List<acb> list = this.d.x();
    int i = 0;
    String str = "";
    while (i < list.size()) {
      if (((acb)list.get(i)).e().equals("header"))
        this.p.setText(((acb)list.get(i)).b()); 
      if (((acb)list.get(i)).e().equals("disclaimer"))
        if (str.equals("")) {
          str = ((acb)list.get(i)).b();
        } else {
          str = str + System.getProperty("line.separator") + System.getProperty("line.separator") + ((acb)list.get(i)).b();
        }  
      i++;
    } 
    this.q.setText(str);
  }
  
  private Boolean k() {
    List list;
    if (this.d.w().isEmpty()) {
      list = this.d.l();
    } else {
      list = this.d.w();
    } 
    Iterator<ace> iterator = list.iterator();
    while (iterator.hasNext()) {
      if (((ace)iterator.next()).D())
        return Boolean.valueOf(true); 
    } 
    return Boolean.valueOf(false);
  }
  
  public acg a() {
    return this.d;
  }
  
  public void b() {
    this.n.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */