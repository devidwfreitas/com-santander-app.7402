import android.app.Activity;
import android.widget.LinearLayout;
import android.widget.TextView;

public class agu extends akb {
  private TextView A;
  
  private Activity a;
  
  private ajn b;
  
  private boolean c;
  
  private boolean d = false;
  
  private LinearLayout e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView h;
  
  private TextView i;
  
  private TextView j;
  
  private TextView k;
  
  private TextView l;
  
  private LinearLayout m;
  
  private LinearLayout n;
  
  private LinearLayout o;
  
  private TextView p;
  
  private TextView q;
  
  private TextView r;
  
  private TextView s;
  
  private TextView t;
  
  private TextView u;
  
  private LinearLayout v;
  
  private LinearLayout w;
  
  private LinearLayout x;
  
  private TextView y;
  
  private TextView z;
  
  public agu(aka paramaka, ajn paramajn) {
    super((Activity)paramaka);
    this.a = (Activity)paramaka;
    this.b = paramajn;
    if ("N".equals(this.b.c().b())) {
      this.c = true;
    } else {
      this.c = false;
    } 
    a();
  }
  
  public String a(ajn paramajn) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("(");
    stringBuilder.append(paramajn.d().k().d().replaceFirst("^0+(?!$)", ""));
    stringBuilder.append("/");
    stringBuilder.append(paramajn.d().k().g().replaceFirst("^0+(?!$)", ""));
    stringBuilder.append(")");
    return stringBuilder.toString();
  }
  
  public String a(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("Final: ");
    String str = paramString;
    if (paramString != null) {
      if (paramString.length() < 4) {
        str = paramString;
        stringBuilder.append(str);
        return stringBuilder.toString();
      } 
    } else {
      stringBuilder.append(str);
      return stringBuilder.toString();
    } 
    str = paramString.substring(paramString.length() - 4);
    stringBuilder.append(str);
    return stringBuilder.toString();
  }
  
  public void a() {
    ((TextView)d().findViewById(agg.header_titulo)).setText(agl.detalhe);
    this.j = (TextView)this.a.findViewById(agg.proximo_vencimento_text);
    this.p = (TextView)this.a.findViewById(agg.valor_contratado_text);
    this.q = (TextView)this.a.findViewById(agg.taxa_de_juros_mes_text);
    this.r = (TextView)this.a.findViewById(agg.taxa_de_juros_ano_text);
    this.s = (TextView)this.a.findViewById(agg.iof_text);
    this.t = (TextView)this.a.findViewById(agg.numero_do_contrato_text);
    this.u = (TextView)this.a.findViewById(agg.produto_text);
    this.A = (TextView)this.a.findViewById(agg.seguro_value_text);
    this.x = (LinearLayout)this.a.findViewById(agg.field_cet);
    this.y = (TextView)this.a.findViewById(agg.cet_mes_text);
    this.z = (TextView)this.a.findViewById(agg.cet_ano_text);
    this.o = (LinearLayout)this.a.findViewById(agg.field_iof);
    this.v = (LinearLayout)this.a.findViewById(agg.field_produto);
    this.m = (LinearLayout)this.a.findViewById(agg.field_taxa_de_juros);
    this.n = (LinearLayout)this.a.findViewById(agg.field_numero_do_contrato);
    this.w = (LinearLayout)this.a.findViewById(agg.field_valor_total_seguro);
    if (this.c) {
      this.e = (LinearLayout)this.a.findViewById(agg.topo_ativo_layout);
      this.l = (TextView)this.a.findViewById(agg.ativo_atualizado_em_text);
      this.g = (TextView)this.a.findViewById(agg.ativo_inicio_date_text);
      this.k = (TextView)this.a.findViewById(agg.ativo_saldo_devedor_em_date_text);
      this.i = (TextView)this.a.findViewById(agg.parcela_value_text);
      this.f = (TextView)this.a.findViewById(agg.ativo_tipo_credito_text);
      TextView textView = (TextView)this.a.findViewById(agg.ativo_saldo_devedor_em_text);
      this.h = (TextView)this.a.findViewById(agg.parcela_text);
      if ("0,00".equals(this.b.d().k().a())) {
        this.i.setText("");
        ((TextView)this.a.findViewById(agg.parcela_value_title)).setVisibility(4);
        this.d = true;
      } else {
        this.i.setText(this.a.getString(agl.money_value, new Object[] { this.b.d().k().a() }));
      } 
      this.l.setText(ajs.d(this.b.d().d()));
      this.g.setText(ajs.c(this.b.c().c()));
      this.k.setText(ajs.d(this.b.d().d()));
      textView.setText(this.a.getString(agl.money_value, new Object[] { this.b.d().a() }));
      this.h.setText(a(this.b));
      this.f.setText(this.b.e());
    } else {
      this.e = (LinearLayout)this.a.findViewById(agg.topo_atraso_layout);
      TextView textView1 = (TextView)this.a.findViewById(agg.days_late_text);
      TextView textView2 = (TextView)this.a.findViewById(agg.em_atraso_desde_date_text);
      this.l = (TextView)this.a.findViewById(agg.atraso_atualizado_em_text);
      this.g = (TextView)this.a.findViewById(agg.atraso_inicio_date_text);
      this.k = (TextView)this.a.findViewById(agg.atraso_saldo_devedor_em_date_text);
      this.i = (TextView)this.a.findViewById(agg.atraso_regularizar_value_text);
      TextView textView3 = (TextView)this.a.findViewById(agg.atraso_saldo_devedor_em_text);
      this.f = (TextView)this.a.findViewById(agg.atraso_tipo_credito_text);
      textView1.setText(this.b.d().k().e().replaceFirst("^0+(?!$)", ""));
      textView2.setText(ajs.c(this.b.d().k().h().a()));
      this.l.setText(ajs.d(this.b.d().d()));
      this.g.setText(ajs.c(this.b.c().c()));
      this.k.setText(ajs.d(this.b.d().d()));
      if ("0,00".equals(this.b.d().k().h().b())) {
        this.i.setText("");
        ((TextView)this.a.findViewById(agg.atraso_valor_regularizar_label)).setVisibility(4);
        this.d = true;
      } else {
        this.i.setText(this.a.getString(agl.money_value, new Object[] { this.b.d().k().h().b() }));
      } 
      textView3.setText(this.a.getString(agl.money_value, new Object[] { this.b.d().a() }));
      this.f.setText(this.b.e());
    } 
    this.e.setVisibility(0);
    c();
  }
  
  public String b(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    String str = String.valueOf(Integer.valueOf(paramString).intValue() / 100000.0F);
    paramString = str;
    if (str.contains("."))
      paramString = str.replace(".", ","); 
    stringBuilder.append(paramString);
    stringBuilder.append("% a.m.");
    return stringBuilder.toString();
  }
  
  public void b() {}
  
  public String c(String paramString) {
    StringBuilder stringBuilder = new StringBuilder();
    String str = String.valueOf(Integer.valueOf(paramString).intValue() / 100000.0F);
    paramString = str;
    if (str.contains("."))
      paramString = str.replace(".", ","); 
    stringBuilder.append(paramString);
    stringBuilder.append("% a.a.");
    return stringBuilder.toString();
  }
  
  public void c() {
    this.j.setText(ajs.c(this.b.d().k().f()));
    this.p.setText(this.a.getString(agl.money_value, new Object[] { this.b.d().b() }));
    if (this.b.c().a() != null || !this.b.c().a().isEmpty() || !this.b.c().a().equals("")) {
      this.t.setText(a(this.b.c().a()));
    } else {
      this.n.setVisibility(4);
      this.d = true;
    } 
    this.u.setText(this.b.b().a().b());
    if (Integer.valueOf(this.b.d().e()).intValue() == 0) {
      this.q.setText("");
      this.m.setVisibility(4);
      this.d = true;
    } else {
      this.q.setText(b(this.b.d().e()));
    } 
    if (!this.b.d().f().isEmpty()) {
      this.r.setText(c(this.b.d().f()));
    } else {
      this.r.setVisibility(8);
    } 
    if (this.b.d().g().isEmpty() && this.b.d().h().isEmpty()) {
      this.x.setVisibility(8);
    } else {
      if (!this.b.d().g().isEmpty())
        this.y.setText(b(this.b.d().g())); 
      if (!this.b.d().h().isEmpty())
        this.z.setText(c(this.b.d().h())); 
    } 
    if (!this.b.d().i().isEmpty()) {
      this.s.setText(this.a.getString(agl.money_value, new Object[] { this.b.d().i() }));
    } else {
      this.o.setVisibility(8);
    } 
    if (!this.b.d().j().isEmpty()) {
      this.A.setText(this.a.getString(agl.money_value, new Object[] { this.b.d().j() }));
    } else {
      this.w.setVisibility(8);
    } 
    if (this.d)
      b(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\agu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */