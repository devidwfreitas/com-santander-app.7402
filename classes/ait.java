import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ait extends akb {
  private Activity a;
  
  private Dialog b;
  
  private ajv c;
  
  private RecyclerView d;
  
  private RecyclerView.LayoutManager e;
  
  private boolean f;
  
  private TextView g;
  
  private RelativeLayout h;
  
  private TextView i;
  
  private ImageView j;
  
  private NestedScrollView k;
  
  private LinearLayout l;
  
  private LinearLayout m;
  
  public ait(Activity paramActivity) {
    super(paramActivity);
    this.a = paramActivity;
    ((TextView)d().findViewById(agg.header_titulo)).setText(agl.ajustar_limites);
    (new aim((Context)this.a, new aiu(this))).a();
    this.b = ano.b(this.a);
  }
  
  private int a(String paramString) {
    paramString = paramString.replaceAll("[.]", "").replace(",00", "");
    return (paramString == null || paramString.isEmpty()) ? 0 : Integer.valueOf(paramString).intValue();
  }
  
  public void a() {
    if (this.c == null || this.c.j() == null || this.c.j().isEmpty()) {
      this.l = (LinearLayout)this.a.findViewById(agg.remanejamento_sem_produto);
      this.l.setVisibility(0);
      return;
    } 
    this.k = (NestedScrollView)this.a.findViewById(agg.layout_remanejamento_main);
    this.k.setVisibility(0);
    this.g = (TextView)this.a.findViewById(agg.total_limit_value_text);
    this.g.setText(this.a.getString(agl.money_value, new Object[] { this.c.g() }));
    this.h = (RelativeLayout)this.a.findViewById(agg.suggestion_layout);
    this.i = (TextView)this.a.findViewById(agg.suggestion_text);
    this.j = (ImageView)this.a.findViewById(agg.icon_suggestion);
    if (a(this.c.i()) > 0) {
      this.i.setText((CharSequence)Html.fromHtml(this.a.getString(agl.voce_tem_x_liberado, new Object[] { this.c.i() })));
    } else if (a(this.c.i()) == 0 || ajd.a().d()) {
      this.i.setText(this.a.getString(agl.voce_pode_alterar));
      this.j.setImageResource(agf.remanejamento_ic_ajuste_nao_disponivel);
    } 
    this.d = (RecyclerView)this.a.findViewById(agg.main_contracts_list);
    this.d.setHasFixedSize(false);
    this.e = (RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.a);
    this.d.setLayoutManager(this.e);
    if (this.c.c().equals(ajx.a)) {
      this.f = true;
    } else {
      this.f = false;
    } 
    aip aip = new aip(this.c.j(), this.a, this.f);
    this.d.setAdapter(aip);
  }
  
  public void b() {
    this.m = (LinearLayout)this.a.findViewById(agg.remanejamento_servico_indisponivel);
    this.m.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ait.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */