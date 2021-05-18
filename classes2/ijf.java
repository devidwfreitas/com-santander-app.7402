import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import com.santander.app.widget.Indicator;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;

public class ijf extends Fragment implements ViewPager.OnPageChangeListener, nez {
  private LinearLayout A;
  
  private TextView B;
  
  private mip C = (mip)miq.C();
  
  public Dialog a = null;
  
  public View b;
  
  public Context c;
  
  public int d = 0;
  
  private final String e = "FazerPagamentoCartorioFragment";
  
  private List<fpv> f;
  
  private Indicator g;
  
  private ViewPager h;
  
  private ImageView i;
  
  private ImageView j;
  
  private gon k;
  
  private Indicator l;
  
  private ViewPager m;
  
  private ImageView n;
  
  private ImageView o;
  
  private Carrossel p;
  
  private Activity q;
  
  private ijm r;
  
  private fud s;
  
  private fos t;
  
  private fos u;
  
  private Carrossel v;
  
  private boolean w;
  
  private ghu x;
  
  private List<ghu> y;
  
  private int z = 0;
  
  private boolean c() {
    return (this.C.f().s().d() != null && ((ghu)this.C.f().s().d().get(0)).A() == null);
  }
  
  private void d() {
    this.C.f().t().a(new ijh(this));
  }
  
  private void e() {
    ArrayList<Conta> arrayList = new ArrayList();
    for (int i = 0; i < this.C.f().q().a().size(); i++)
      arrayList.add(this.C.f().q().a().get(i)); 
    this.v = (Carrossel)this.b.findViewById(2131757239);
    foo foo = new foo(this.c, (List)arrayList);
    this.v.setAdapter(foo);
    if (arrayList.size() == 0)
      ((Button)this.b.findViewById(2131759167)).setEnabled(true); 
  }
  
  private void f() {
    this.p = (Carrossel)this.b.findViewById(2131759165);
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    this.t = new fos();
    this.t.a("PAGAR HOJE");
    this.t.b(simpleDateFormat.format(new Date()));
    this.u = new fos();
    this.u.a("AGENDAR PARA");
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, 1);
    this.u.b(simpleDateFormat.format(calendar.getTime()));
    this.u.a(fot.PICKER);
    vector.add(this.t);
    vector.add(this.u);
    if (this.w) {
      vector.remove(this.u);
      this.w = false;
    } 
    fou fou = new fou(this.c, vector, (Activity)getActivity());
    this.p.setAdapter(fou);
  }
  
  private void g() {
    this.m = (ViewPager)this.b.findViewById(2131759148);
    this.m.setOnTouchListener(new iji(this));
    this.l = (Indicator)this.b.findViewById(2131759149);
    this.o = (ImageView)this.b.findViewById(2131759146);
    this.n = (ImageView)this.b.findViewById(2131759147);
    this.o.setOnClickListener(new ijj(this));
    this.n.setOnClickListener(new ijk(this));
    this.k = new gon((Activity)getActivity(), this.m, this.l, this.o, this.n, 0);
    this.k.a(this.z);
    this.k.a(this);
    this.y = this.C.f().s().d();
    if (this.y.size() > 0)
      this.x = this.y.get(this.k.a()); 
  }
  
  private void h() {
    e();
    f();
    j();
  }
  
  private void i() {
    this.h = (ViewPager)this.b.findViewById(2131759161);
    this.h.setOnTouchListener(new ijl(this));
    this.f = new ArrayList<fpv>();
    try {
      Long.parseLong(this.s.h().replaceAll("[^\\d]", ""));
    } catch (Exception exception) {
      Log.e("PagamentoFacturaCartoesActivity", "onPageSelected - Parse long", exception);
    } 
    try {
      Long.parseLong(this.s.m().replaceAll("[^\\d]", ""));
    } catch (Exception exception) {
      Log.e("PagamentoFacturaCartoesActivity", "onPageSelected - Parse long", exception);
    } 
    try {
      Long.parseLong(this.s.g().replaceAll("[^\\d]", ""));
    } catch (Exception exception) {
      Log.e("PagamentoFacturaCartoesActivity", "onPageSelected - Parse long", exception);
    } 
    fpv fpv = new fpv();
    fpv.a("PAGAR VALOR TOTAL");
    fpv.b(naj.f(this.s.h()));
    fpv.a(0);
    this.f.add(fpv);
    fpv = new fpv();
    fpv.a("PAGAR VALOR ATUALIZADO");
    fpv.b(naj.f(this.s.m()).replace("R$", ""));
    fpv.a(1);
    this.f.add(fpv);
    fpv = new fpv();
    fpv.a("PAGAR MÍNIMO");
    fpv.b(naj.f(this.s.g()));
    fpv.a(2);
    this.f.add(fpv);
    fpv = new fpv();
    fpv.a("PAGAR OUTRO VALOR");
    fpv.b(naj.f(this.s.g()).replace("R$", ""));
    fpv.a(3);
    this.f.add(fpv);
    fpw fpw = new fpw(this.c, this.f);
    this.h.setAdapter(fpw);
    this.h.setOnPageChangeListener(this);
    this.g = (Indicator)this.b.findViewById(2131759162);
    this.j = (ImageView)this.b.findViewById(2131759159);
    this.i = (ImageView)this.b.findViewById(2131759160);
    gpm.a(this.g, fpw.getCount(), this.i, this.j, this.h);
  }
  
  private void j() {
    ((TextView)this.b.findViewById(2131759150)).setText("");
    ((TextView)this.b.findViewById(2131759151)).setText("");
    ((TextView)this.b.findViewById(2131759154)).setText("");
    this.h = (ViewPager)this.b.findViewById(2131759161);
    this.h.setVisibility(4);
    this.r = new ijm(this, null);
    this.r.execute((Object[])new Void[0]);
  }
  
  private void k() {
    Button button;
    if (this.s != null && this.s.h() != null) {
      ((TextView)this.b.findViewById(2131759150)).setText(nak.l(this.s.c()));
      TextView textView = (TextView)this.b.findViewById(2131759151);
      textView.setText(naj.f(this.s.h()));
      if (this.s.h() != null && this.s.h().contains("-"))
        textView.setTextColor(getResources().getColor(2131623961)); 
      ((TextView)this.b.findViewById(2131759154)).setText(naj.f(this.s.g()));
      ((TextView)this.b.findViewById(2131759152)).setVisibility(0);
      textView = (TextView)this.b.findViewById(2131759153);
      textView.setVisibility(0);
      textView.setText(naj.f(this.s.m()));
      this.h = (ViewPager)this.b.findViewById(2131759161);
      this.h.setVisibility(0);
      i();
      onPageSelected(0);
      button = (Button)this.b.findViewById(2131759167);
      if (this.s.h() == null || this.s.h().length() == 0 || this.s.h().equals("N/A")) {
        button.setEnabled(false);
        return;
      } 
    } else {
      return;
    } 
    button.setEnabled(true);
  }
  
  public String a() {
    return (this.p.a() == 0) ? this.t.b() : this.u.b();
  }
  
  public void a(int paramInt) {}
  
  public Boolean b() {
    return (this.p.a() == 0) ? Boolean.valueOf(false) : Boolean.valueOf(true);
  }
  
  public void b(int paramInt) {
    j();
    e();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    this.b = paramLayoutInflater.inflate(2130969398, paramViewGroup, false);
    this.c = paramViewGroup.getContext();
    this.A = (LinearLayout)this.b.findViewById(2131757561);
    this.B = (TextView)this.b.findViewById(2131756940);
    ((Button)this.b.findViewById(2131759167)).setOnClickListener(new ijg(this));
    hau.a().a(false);
    if (c()) {
      d();
      e();
      f();
      return this.b;
    } 
    g();
    j();
    e();
    f();
    return this.b;
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    gpm.a(this.h, this.i, this.j, this.g, paramInt, (Activity)getActivity());
    TextView textView = (TextView)this.b.findViewById(2131759184);
    if (textView != null)
      textView.setText("0"); 
    if (((fpv)this.f.get(paramInt)).c() == 1)
      this.w = true; 
    f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ijf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */