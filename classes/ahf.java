import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Calendar;

public class ahf {
  private TextView A;
  
  private LinearLayout B;
  
  private LinearLayout C;
  
  private Activity a;
  
  private ajg b;
  
  private TextView c;
  
  private ImageView d;
  
  private TextView e;
  
  private RelativeLayout f;
  
  private RelativeLayout g;
  
  private RelativeLayout h;
  
  private RelativeLayout i;
  
  private RelativeLayout j;
  
  private FrameLayout k;
  
  private RelativeLayout l;
  
  private RelativeLayout m;
  
  private RelativeLayout n;
  
  private TextView o;
  
  private TextView p;
  
  private TextView q;
  
  private TextView r;
  
  private TextView s;
  
  private TextView t;
  
  private TextView u;
  
  private TextView v;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  public ahf(View paramView, Activity paramActivity, ajg paramajg) {
    this.a = paramActivity;
    this.b = paramajg;
    a(paramView);
  }
  
  private String a() {
    Calendar calendar = Calendar.getInstance();
    calendar.setTimeInMillis(System.currentTimeMillis());
    int i = calendar.get(2);
    (new String[12])[0] = "Janeiro";
    (new String[12])[1] = "Fevereiro";
    (new String[12])[2] = "Março";
    (new String[12])[3] = "Abril";
    (new String[12])[4] = "Maio";
    (new String[12])[5] = "Junho";
    (new String[12])[6] = "Julho";
    (new String[12])[7] = "Agosto";
    (new String[12])[8] = "Setembro";
    (new String[12])[9] = "Outubro";
    (new String[12])[10] = "Novembro";
    (new String[12])[11] = "Dezembro";
    return (new String[12])[i];
  }
  
  public void a(View paramView) {
    this.c = (TextView)paramView.findViewById(agg.month_header_text);
    this.d = (ImageView)paramView.findViewById(agg.duvidas_button);
    this.e = (TextView)paramView.findViewById(agg.month_value_text);
    this.f = (RelativeLayout)paramView.findViewById(agg.field_debt_cheque);
    this.g = (RelativeLayout)paramView.findViewById(agg.field_debt_cartoes);
    this.h = (RelativeLayout)paramView.findViewById(agg.field_debt_emprestimo);
    this.i = (RelativeLayout)paramView.findViewById(agg.field_debt_financiamentos);
    this.j = (RelativeLayout)paramView.findViewById(agg.field_debt_renegociacao);
    this.o = (TextView)paramView.findViewById(agg.debt_cheque_value_text);
    this.p = (TextView)paramView.findViewById(agg.debt_cartoes_value_text);
    this.q = (TextView)paramView.findViewById(agg.debt_emprestimo_value_text);
    this.r = (TextView)paramView.findViewById(agg.debt_financiamentos_value_text);
    this.s = (TextView)paramView.findViewById(agg.debt_renegociacao_value_text);
    this.k = (FrameLayout)paramView.findViewById(agg.oportunidades_field);
    this.l = (RelativeLayout)this.k.findViewById(agg.field_oportunidade_cartoes);
    this.m = (RelativeLayout)this.k.findViewById(agg.field_oportunidade_emprestimo);
    this.n = (RelativeLayout)this.k.findViewById(agg.field_oportunidade_financiamentos);
    this.t = (TextView)paramView.findViewById(agg.debt_cheque_count);
    this.u = (TextView)paramView.findViewById(agg.debt_cartoes_count);
    this.v = (TextView)paramView.findViewById(agg.debt_emprestimo_count);
    this.w = (TextView)paramView.findViewById(agg.debt_financiamentos_count);
    this.x = (TextView)paramView.findViewById(agg.debt_renegociacao_count);
    this.C = (LinearLayout)paramView.findViewById(agg.month_data_layout);
    this.B = (LinearLayout)paramView.findViewById(agg.empty_month_layout);
    this.y = (TextView)paramView.findViewById(agg.month_emprestimo_atraso_text);
    this.z = (TextView)paramView.findViewById(agg.month_financ_atraso_text);
    this.A = (TextView)paramView.findViewById(agg.month_reneg_atraso_text);
    if (this.b.f() > 0 && this.b.u())
      this.y.setVisibility(0); 
    if (this.b.g() > 0 && this.b.v())
      this.z.setVisibility(0); 
    if (this.b.c() > 0 && this.b.w())
      this.A.setVisibility(0); 
    this.c.setText(this.a.getString(agl.compromissos_em, new Object[] { a() }));
    this.d.setOnClickListener(new ahl(this));
    if (this.b.c() == 0 && this.b.f() == 0 && this.b.d() == 0 && this.b.g() == 0) {
      this.C.setVisibility(8);
      this.B.setVisibility(0);
    } 
    this.e.setText(this.b.a().b());
    this.f.setVisibility(8);
    if (this.b.d() > 0) {
      this.p.setText(this.b.i());
      if (this.b.d() > 1)
        this.u.setText(this.a.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.b.d()) })); 
    } else {
      this.g.setVisibility(8);
    } 
    if (this.b.f() > 0) {
      this.q.setText(this.b.j());
      if (this.b.f() > 1)
        this.v.setText(this.a.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.b.f()) })); 
    } else {
      this.h.setVisibility(8);
    } 
    if (this.b.g() > 0) {
      this.r.setText(this.b.k());
      if (this.b.g() > 1)
        this.w.setText(this.a.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.b.g()) })); 
    } else {
      this.i.setVisibility(8);
    } 
    if (this.b.c() > 0) {
      this.s.setText(this.b.l());
      if (this.b.c() > 1)
        this.x.setText(this.a.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.b.c()) })); 
    } else {
      this.j.setVisibility(8);
    } 
    this.h.setOnClickListener(new ahm(this));
    this.i.setOnClickListener(new aho(this));
    this.j.setOnClickListener(new ahq(this));
    this.g.setOnClickListener(new ahs(this));
    this.k.setVisibility(0);
    this.l.setVisibility(8);
    this.n.setVisibility(8);
    this.m.setVisibility(0);
    this.m.setOnClickListener(new aht(this));
    if (this.b.g() == 0) {
      this.n.setVisibility(0);
      this.n.setOnClickListener(new ahu(this));
    } 
    if (ajd.a().b().equals(aju.USER_PRIVATE))
      this.k.setVisibility(8); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */