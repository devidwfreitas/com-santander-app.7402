import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class wh extends acr {
  private String A;
  
  private View.OnClickListener B = new wn(this);
  
  private ImageButton a;
  
  private Activity c;
  
  private wc d;
  
  private RecyclerView.LayoutManager e;
  
  private RecyclerView.LayoutManager f;
  
  private TextView g;
  
  private TextView h;
  
  private TextView i;
  
  private TextView j;
  
  private TextView k;
  
  private TextView l;
  
  private TextView m;
  
  private TextView n;
  
  private RecyclerView o;
  
  private RecyclerView p;
  
  private wf q;
  
  private wf r;
  
  private View s;
  
  private View t;
  
  private Button u;
  
  private acg v;
  
  private ace w;
  
  private List<ace> x = new ArrayList<ace>();
  
  private String y;
  
  private String z;
  
  public wh(ack paramack) {
    super(paramack);
    this.c = (Activity)paramack;
    a();
    b();
  }
  
  private void a() {
    this.a = (ImageButton)e().findViewById(la.header_cancel);
    this.a.setOnClickListener(new wi(this));
    this.a.setImageResource(kz.ic_back);
    this.n = (TextView)this.c.findViewById(la.header_titulo);
    this.n.setText(this.c.getString(lg.recomendacao_investimento_header));
    this.s = this.c.findViewById(la.recomendacao_loading_state);
    this.t = this.c.findViewById(la.recomendacao_content);
    this.s.setVisibility(0);
    this.t.setVisibility(8);
    this.g = (TextView)this.c.findViewById(la.recomendacao_text_view_titulo);
    this.j = (TextView)this.c.findViewById(la.recomendacao_text_view_info);
    this.h = (TextView)this.c.findViewById(la.recomendacao_text_view_titulo_valor_total);
    this.i = (TextView)this.c.findViewById(la.recomendacao_text_view_valor_total);
    this.k = (TextView)this.c.findViewById(la.recomendacao_text_view_central_informacoes);
    this.k.setOnClickListener(new wj(this));
    this.l = (TextView)this.c.findViewById(la.recomendacao_text_view_1_ano);
    this.m = (TextView)this.c.findViewById(la.recomendacao_text_view_mais_anos);
    this.o = (RecyclerView)this.c.findViewById(la.recomendacao_recycler_view_curto_prazo);
    this.p = (RecyclerView)this.c.findViewById(la.recomendacao_recycler_view_longo_prazo);
    this.u = (Button)this.c.findViewById(la.recomendacao_button_continuar);
    this.u.setOnClickListener(this.B);
    this.e = (RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.c);
    this.o.setLayoutManager(this.e);
    this.o.setHasFixedSize(true);
    this.f = (RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.c);
    this.p.setLayoutManager(this.f);
    this.p.setHasFixedSize(true);
    this.q = new wf(this.c.getApplicationContext());
    this.r = new wf(this.c.getApplicationContext());
    this.o.setAdapter(this.q);
    this.p.setAdapter(this.r);
    this.v = (acg)e().a();
    String str = this.c.getIntent().getExtras().getString("recomendacaoApplicationEntity");
    this.w = (new eju()).j().<ace>a(str, ace.class);
    this.d = new wc(this.c.getApplicationContext());
    this.i.setText(aat.e(this.c.getIntent().getStringExtra("recomendacaoValorTotalInvestimento").replace(",", ".")));
    this.y = this.c.getIntent().getStringExtra("tipoRecomendacao");
    this.z = aat.j(this.c.getIntent().getStringExtra("recomendacaoValorTotalInvestimento"));
    this.A = aat.j(this.c.getIntent().getStringExtra("recomendacaoValorParcialInvestimento"));
  }
  
  private void a(List<vx> paramList) {
    if (!paramList.isEmpty())
      for (vx vx : paramList) {
        Integer integer;
        we we = vx.a();
        ace ace1 = new ace(new to(we.c(), we.a(), we.b(), we.e()), we.h().b(), Integer.valueOf(Color.parseColor(we.h().c())), null, we.h().a());
        ace1.a(this.w.h());
        ace1.a(vx.c());
        ace1.c("");
        if (vx.e().isEmpty()) {
          integer = Integer.valueOf(0);
        } else {
          integer = Integer.valueOf(Integer.parseInt(vx.e()));
        } 
        ace1.a(integer);
        Calendar calendar = Calendar.getInstance();
        String[] arrayOfString = vx.d().split("/");
        if (arrayOfString.length > 1)
          calendar.set(Integer.parseInt(arrayOfString[0]), Integer.parseInt(arrayOfString[1]), Integer.parseInt(arrayOfString[2])); 
        ace1.a(calendar);
        ace1.f(true);
        this.x.add(ace1);
      }  
  }
  
  private void a(wa paramwa) {
    b(paramwa);
    try {
      this.g.setText(paramwa.a());
      this.j.setText(paramwa.b());
      this.h.setText(paramwa.c());
      this.k.setText((CharSequence)aat.d(paramwa.d(), paramwa.e()));
      if (paramwa.f() != null && paramwa.f().a() != null && !paramwa.f().a().isEmpty()) {
        this.l.setText(paramwa.f().b());
        this.q.a(paramwa.f().a());
      } else {
        this.o.setVisibility(8);
        this.l.setVisibility(8);
      } 
      if (paramwa.g() != null && paramwa.g().a() != null && !paramwa.g().a().isEmpty()) {
        this.m.setText(paramwa.g().b());
        this.r.a(paramwa.g().a());
      } else {
        this.p.setVisibility(8);
        this.m.setVisibility(8);
      } 
      this.s.setVisibility(8);
      this.t.setVisibility(0);
      return;
    } catch (Exception exception) {
      return;
    } 
  }
  
  private void b() {
    this.d.a(this.y, this.A, this.z, new wk(this));
  }
  
  private void b(wa paramwa) {
    List<vx> list2 = paramwa.g().a();
    List<vx> list1 = paramwa.f().a();
    this.x.clear();
    a(list1);
    a(list2);
    this.v.b(this.x);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */