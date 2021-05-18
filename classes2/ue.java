import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.PieEntry;
import java.util.ArrayList;
import java.util.Iterator;

public class ue extends acr {
  private View a;
  
  private LinearLayout c;
  
  private LinearLayout d;
  
  private LinearLayout e;
  
  private RelativeLayout f;
  
  private ImageButton g;
  
  private TextView h;
  
  private TextView i;
  
  private TextView j;
  
  private TextView k;
  
  private PieChart l;
  
  private Button m;
  
  private Button n;
  
  private RecyclerView o;
  
  private View p;
  
  private ImageView q;
  
  private View r;
  
  private Button s;
  
  private acg t;
  
  private TextView u;
  
  private TextView v;
  
  private TextView w;
  
  private TextView x;
  
  private int y = 0;
  
  private sy z;
  
  public ue(View paramView, Activity paramActivity) {
    super((ack)paramActivity, paramView);
    this.a = paramView;
    d();
    a(new te(paramView.getContext()));
  }
  
  private void a(ArrayList<String> paramArrayList, float[] paramArrayOffloat) {
    ArrayList<PieEntry> arrayList = new ArrayList();
    int j = paramArrayOffloat.length;
    int i = 0;
    float f = 0.0F;
    while (i < j) {
      f += paramArrayOffloat[i];
      i++;
    } 
    j = paramArrayOffloat.length;
    for (i = 0; i < j; i++)
      arrayList.add(new PieEntry(paramArrayOffloat[i] / f)); 
    cgz cgz = new cgz(arrayList, "");
    cgz.a(1.0F);
    cgz.f(0.0F);
    arrayList = new ArrayList<PieEntry>();
    for (i = 0; i < paramArrayList.size(); i++)
      arrayList.add(Integer.valueOf(Color.parseColor(paramArrayList.get(i)))); 
    cgz.a(arrayList);
    cgy cgy = new cgy((cis)cgz);
    cgy.b(0.0F);
    this.l.setData((cgo)cgy);
    this.l.invalidate();
    this.l.av().g(false);
  }
  
  private void a(te paramte) {
    paramte.a(c(aca.a().b().toString()), new uf(this));
  }
  
  private void a(tm paramtm) {
    this.j.setText(aat.b(paramtm.a().b()));
    this.k.setText(aat.a(paramtm.a().a()));
    if (paramtm.a().a().doubleValue() <= 0.0D) {
      this.n.setEnabled(false);
      this.n.setTextColor(e().getResources().getColor(kx.inv_warm_grey_two));
    } 
    this.o.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)e()));
    this.o.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    this.o.setNestedScrollingEnabled(false);
    this.o.setAdapter(new tu(paramtm.b(), this.t, (Context)e()));
    this.m.setOnClickListener(new um(this));
    this.n.setOnClickListener(new un(this, paramtm));
    d(paramtm);
  }
  
  private void b() {
    e().finish();
    zs.a().d();
  }
  
  private void b(te paramte) {
    paramte.a(new ui(this));
  }
  
  private void b(tm paramtm) {
    if (c(paramtm)) {
      zs.a().a((Context)e(), this.t, a());
      return;
    } 
    zs.a().i((Context)e(), this.t);
  }
  
  private void c() {
    e().finish();
  }
  
  private boolean c(tm paramtm) {
    Iterator<sy> iterator = paramtm.b().iterator();
    int i = 0;
    label22: while (iterator.hasNext()) {
      sy sy1 = iterator.next();
      Iterator<to> iterator1 = sy1.h().iterator();
      while (true) {
        boolean bool;
        if (iterator1.hasNext()) {
          if (((to)iterator1.next()).s().a().doubleValue() > 0.0D) {
            bool = true;
          } else {
            bool = false;
          } 
          if (bool) {
            a(sy1);
            i++;
          } else {
            continue;
          } 
        } 
        if (i >= 2) {
          bool = true;
        } else {
          bool = false;
        } 
        if (bool)
          return false; 
        continue label22;
      } 
    } 
    return true;
  }
  
  private void d() {
    ImageButton imageButton = (ImageButton)this.a.findViewById(la.header_cancel);
    this.u = (TextView)this.a.findViewById(la.header_titulo);
    if (te.a) {
      this.u.setText("POUPANÇA");
    } else {
      this.u.setText(lg.app_investimentos_titulo);
    } 
    imageButton.setImageResource(kz.ic_back);
    imageButton.setOnClickListener(new uk(this));
    this.c = (LinearLayout)this.a.findViewById(la.inv2_portifolio_layout_cards);
    this.d = (LinearLayout)this.a.findViewById(la.inv2_portifolio_layout_botao);
    this.e = (LinearLayout)this.a.findViewById(la.inv2_portifolio_layout_vazio);
    this.f = (RelativeLayout)this.a.findViewById(la.inv2_portifolio_layout_loadinig);
    this.r = this.a.findViewById(la.portifolio_carrinho_abandonado);
    this.g = (ImageButton)this.a.findViewById(la.toast_dismiss_btn);
    this.h = (TextView)this.a.findViewById(la.toast_msg_parametrizada);
    this.i = (TextView)this.a.findViewById(la.toast_msg_link);
    this.j = (TextView)this.a.findViewById(la.portifolio_valor_total_investido);
    this.k = (TextView)this.a.findViewById(la.portifolio_valor_disponivel_resgate);
    this.l = (PieChart)this.a.findViewById(la.portifolio_chart1);
    this.o = (RecyclerView)this.a.findViewById(la.portifolio_lista_de_produtos);
    this.m = (Button)this.a.findViewById(la.portifolio_botao_aplicar);
    this.n = (Button)this.a.findViewById(la.portifolio_botao_resgatar);
    this.p = this.a.findViewById(la.empty);
    this.q = (ImageView)this.a.findViewById(la.image_icon_state);
    this.w = (TextView)this.a.findViewById(la.titulo_empty_state);
    this.x = (TextView)this.a.findViewById(la.subTitulo_empty_state);
    this.s = (Button)this.a.findViewById(la.btn_begin);
    imageButton = (ImageButton)this.p.findViewById(la.header_cancel);
    this.v = (TextView)this.p.findViewById(la.header_titulo);
    imageButton.setImageResource(kz.ic_back);
    this.v.setText(lg.app_investimentos_titulo);
    imageButton.setOnClickListener(new ul(this));
  }
  
  private void d(tm paramtm) {
    this.l.setUsePercentValues(true);
    this.l.au().g(false);
    this.l.setExtraOffsets(0.0F, 0.0F, 0.0F, 0.0F);
    this.l.setDragDecelerationFrictionCoef(0.95F);
    this.l.setDrawHoleEnabled(true);
    this.l.setHoleColor(-1);
    this.l.setTransparentCircleColor(-1);
    this.l.setTransparentCircleAlpha(110);
    this.l.setHoleRadius(75.0F);
    this.l.setDrawCenterText(true);
    this.l.setRotationAngle(0.0F);
    this.l.setRotationEnabled(false);
    this.l.setHighlightPerTapEnabled(true);
    float[] arrayOfFloat = new float[paramtm.b().size()];
    ArrayList<String> arrayList = new ArrayList();
    for (int i = 0; i < paramtm.b().size(); i++) {
      arrayOfFloat[i] = ((sy)paramtm.b().get(i)).e().floatValue();
      arrayList.add(((sy)paramtm.b().get(i)).d());
    } 
    a(arrayList, arrayOfFloat);
    this.l.b(1000, cew.Linear);
    this.l.setEntryLabelColor(-65536);
  }
  
  private void e(tm paramtm) {
    f(paramtm);
    zs.a().a((Context)e(), this.t);
    te.a = false;
    e().finish();
  }
  
  private void f(tm paramtm) {
    sy sy1 = paramtm.b().get(this.y);
    this.t.a(sy1.h().get(this.y));
    this.t.b(sy1.b());
    this.t.c(sy1.a());
    int i = Color.parseColor(sy1.d());
    this.t.a(Integer.valueOf(i));
  }
  
  public sy a() {
    return this.z;
  }
  
  public void a(sy paramsy) {
    this.z = paramsy;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar\\ue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */