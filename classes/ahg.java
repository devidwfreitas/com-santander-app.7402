import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.PieEntry;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Locale;

public class ahg {
  private TextView A;
  
  private TextView B;
  
  private View a;
  
  private Activity b;
  
  private ajg c;
  
  private ImageView d;
  
  private TextView e;
  
  private PieChart f;
  
  private RelativeLayout g;
  
  private RelativeLayout h;
  
  private RelativeLayout i;
  
  private RelativeLayout j;
  
  private RelativeLayout k;
  
  private FrameLayout l;
  
  private RelativeLayout m;
  
  private RelativeLayout n;
  
  private RelativeLayout o;
  
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
  
  public ahg(View paramView, Activity paramActivity, ajg paramajg) {
    this.a = paramView;
    this.b = paramActivity;
    this.c = paramajg;
    b(paramView);
    a(paramView);
  }
  
  private void a() {
    this.f.setUsePercentValues(true);
    this.f.au().g(false);
    this.f.setTouchEnabled(false);
    this.f.setDrawHoleEnabled(true);
    this.f.setHoleColor(-1);
    this.f.setTransparentCircleColor(-1);
    this.f.setTransparentCircleAlpha(110);
    this.f.setTransparentCircleRadius(0.0F);
    this.f.setHoleRadius(70.0F);
    this.f.av().g(false);
    this.f.setRotationAngle(0.0F);
    this.f.b(1400, cew.EaseInOutQuad);
    b();
  }
  
  private void b() {
    ArrayList<PieEntry> arrayList1 = new ArrayList();
    ArrayList<Integer> arrayList = new ArrayList();
    NumberFormat numberFormat = NumberFormat.getNumberInstance(new Locale("en", "US"));
    int i = 0;
    try {
      if (this.c.f() > 0) {
        arrayList1.add(new PieEntry(Float.valueOf(numberFormat.parse(this.c.o().replace(".", "").replace(",", ".")).floatValue()).floatValue(), "0"));
        arrayList.add(Integer.valueOf(this.b.getResources().getColor(agd.emprestimos_chart)));
        i = 1;
      } 
      int j = i;
      if (this.c.e() > 0) {
        arrayList1.add(new PieEntry(Float.valueOf(numberFormat.parse(this.c.m().replace(".", "").replace(",", ".")).floatValue()).floatValue(), String.valueOf(i)));
        arrayList.add(Integer.valueOf(this.b.getResources().getColor(agd.cheque_chart)));
        j = i + 1;
      } 
      i = j;
      if (this.c.d() > 0) {
        arrayList1.add(new PieEntry(Float.valueOf(numberFormat.parse(this.c.n().replace(".", "").replace(",", ".")).floatValue()).floatValue(), String.valueOf(j)));
        arrayList.add(Integer.valueOf(this.b.getResources().getColor(agd.cartoes_chart)));
        i = j + 1;
      } 
      j = i;
      if (this.c.g() > 0) {
        arrayList1.add(new PieEntry(Float.valueOf(numberFormat.parse(this.c.p().replace(".", "").replace(",", ".")).floatValue()).floatValue(), String.valueOf(i)));
        arrayList.add(Integer.valueOf(this.b.getResources().getColor(agd.financiamentos_chart)));
        j = i + 1;
      } 
      if (this.c.c() > 0) {
        arrayList1.add(new PieEntry(Float.valueOf(numberFormat.parse(this.c.q().replace(".", "").replace(",", ".")).floatValue()).floatValue(), String.valueOf(j)));
        arrayList.add(Integer.valueOf(this.b.getResources().getColor(agd.renegociacoes_chart)));
      } 
    } catch (ParseException parseException) {
      Log.d("TotalViewFragViewModel:", parseException.getMessage());
    } 
    cgz cgz = new cgz(arrayList1, "");
    cgz.f(5.0F);
    cgz.a(5.0F);
    cgz.a(arrayList);
    cgy cgy = new cgy(cgz);
    cgy.a(new chq());
    cgy.b(11.0F);
    cgy.c(-1);
    this.f.setData(cgy);
    this.f.b(null);
    this.f.invalidate();
  }
  
  public void a(View paramView) {}
  
  public void b(View paramView) {
    this.d = (ImageView)paramView.findViewById(agg.duvidas_button);
    this.u = (TextView)paramView.findViewById(agg.debt_cheque_count);
    this.v = (TextView)paramView.findViewById(agg.debt_cartoes_count);
    this.w = (TextView)paramView.findViewById(agg.debt_emprestimo_count);
    this.x = (TextView)paramView.findViewById(agg.debt_financiamentos_count);
    this.y = (TextView)paramView.findViewById(agg.debt_renegociacao_count);
    this.e = (TextView)paramView.findViewById(agg.total_debt_value_text);
    this.g = (RelativeLayout)paramView.findViewById(agg.field_debt_cheque);
    this.h = (RelativeLayout)paramView.findViewById(agg.field_debt_cartoes);
    this.i = (RelativeLayout)paramView.findViewById(agg.field_debt_emprestimo);
    this.j = (RelativeLayout)paramView.findViewById(agg.field_debt_financiamentos);
    this.k = (RelativeLayout)paramView.findViewById(agg.field_debt_renegociacao);
    this.p = (TextView)paramView.findViewById(agg.debt_cheque_value_text);
    this.q = (TextView)paramView.findViewById(agg.debt_cartoes_value_text);
    this.r = (TextView)paramView.findViewById(agg.debt_emprestimo_value_text);
    this.s = (TextView)paramView.findViewById(agg.debt_financiamentos_value_text);
    this.t = (TextView)paramView.findViewById(agg.debt_renegociacao_value_text);
    this.z = (TextView)paramView.findViewById(agg.total_emprestimo_atraso_text);
    this.A = (TextView)paramView.findViewById(agg.total_financ_atraso_text);
    this.B = (TextView)paramView.findViewById(agg.total_reneg_atraso_text);
    if (this.c.f() > 0 && this.c.u())
      this.z.setVisibility(0); 
    if (this.c.g() > 0 && this.c.v())
      this.A.setVisibility(0); 
    if (this.c.c() > 0 && this.c.w())
      this.B.setVisibility(0); 
    this.l = (FrameLayout)paramView.findViewById(agg.oportunidades_field);
    this.m = (RelativeLayout)this.l.findViewById(agg.field_oportunidade_cartoes);
    this.n = (RelativeLayout)this.l.findViewById(agg.field_oportunidade_emprestimo);
    this.o = (RelativeLayout)this.l.findViewById(agg.field_oportunidade_financiamentos);
    this.d.setOnClickListener(new ahv(this));
    this.e.setText(this.c.a().a());
    if (this.c.e() > 0) {
      this.p.setText(this.c.m());
      if (this.c.e() > 1)
        this.u.setText(this.b.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.c.e()) })); 
    } else {
      this.g.setVisibility(8);
    } 
    if (this.c.d() > 0) {
      this.q.setText(this.c.n());
      if (this.c.d() > 1)
        this.v.setText(this.b.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.c.d()) })); 
    } else {
      this.h.setVisibility(8);
    } 
    if (this.c.f() > 0) {
      this.r.setText(this.c.o());
      if (this.c.f() > 1)
        this.w.setText(this.b.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.c.f()) })); 
    } else {
      this.i.setVisibility(8);
    } 
    if (this.c.g() > 0) {
      this.s.setText(this.c.p());
      if (this.c.g() > 1)
        this.x.setText(this.b.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.c.g()) })); 
    } else {
      this.j.setVisibility(8);
    } 
    if (this.c.c() > 0) {
      this.t.setText(this.c.q());
      if (this.c.c() > 1)
        this.y.setText(this.b.getResources().getString(agl.number_of_items, new Object[] { String.valueOf(this.c.c()) })); 
    } else {
      this.k.setVisibility(8);
    } 
    this.i.setOnClickListener(new ahw(this));
    this.j.setOnClickListener(new ahy(this));
    this.k.setOnClickListener(new aia(this));
    this.g.setOnClickListener(new aic(this));
    this.h.setOnClickListener(new aid(this));
    this.l.setVisibility(0);
    this.m.setVisibility(8);
    this.o.setVisibility(8);
    this.n.setVisibility(0);
    this.n.setOnClickListener(new aie(this));
    if (this.c.g() == 0) {
      this.o.setVisibility(0);
      this.o.setOnClickListener(new aif(this));
    } 
    if (ajd.a().b().equals(aju.USER_PRIVATE))
      this.l.setVisibility(8); 
    this.f = (PieChart)paramView.findViewById(agg.chart);
    if (this.c.a().a().equals("0,00")) {
      this.f.setVisibility(8);
      return;
    } 
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */