import android.content.Context;
import android.content.Intent;
import android.support.annotation.ColorRes;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import com.santander.app.widget.Indicator;
import java.util.List;

public class gld implements glb {
  public ViewPager a;
  
  private ghu b;
  
  private List<ghu> c;
  
  private int d;
  
  private Context e;
  
  private gla f;
  
  private TextView g;
  
  private ImageView h;
  
  private Indicator i;
  
  private glm j;
  
  private boolean k;
  
  private mip l;
  
  @ColorRes
  private int m;
  
  private final View.OnClickListener n;
  
  private ipp o;
  
  private PagerAdapter p;
  
  public gld(Context paramContext, View.OnClickListener paramOnClickListener, ipp paramipp) {
    List<ghu> list;
    this.b = new ghu();
    this.j = null;
    this.k = false;
    this.o = paramipp;
    this.n = paramOnClickListener;
    this.l = (mip)miq.C();
    paramOnClickListener = onClickListener;
    if (paramipp == null)
      list = this.l.f().s().a(); 
    this.c = list;
    this.e = paramContext;
  }
  
  private void a(Context paramContext) {
    Intent intent = new Intent(paramContext, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.USUARIO_CONSULTIVO);
    paramContext.startActivity(intent);
  }
  
  private ViewPager.OnPageChangeListener e() {
    return (ViewPager.OnPageChangeListener)new gle(this);
  }
  
  public int a() {
    return 2130968863;
  }
  
  public PagerAdapter a(View paramView, Context paramContext, List<?> paramList) {
    return new glf(this, paramContext, paramList);
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
  }
  
  public void a(View paramView) {
    this.g = (TextView)paramView.findViewById(2131756489);
    this.g.setText(this.e.getString(2131297862));
    this.h = (ImageView)paramView.findViewById(2131756488);
    this.h.setImageResource(2130838553);
    this.a = (ViewPager)paramView.findViewById(2131756490);
    this.i = (Indicator)paramView.findViewById(2131756042);
    this.p = a(paramView, this.e, this.c);
    this.a.setAdapter(this.p);
    this.a.setOffscreenPageLimit(this.p.getCount());
    this.a.setOnPageChangeListener(e());
    this.i.setSize(this.p.getCount());
  }
  
  public void a(gla paramgla) {
    this.f = paramgla;
  }
  
  public <T> void a(T paramT) {
    this.b = (ghu)paramT;
  }
  
  public <T> T b() {
    return (T)this.b;
  }
  
  public void b(@ColorRes int paramInt) {
    this.m = paramInt;
  }
  
  public void b(View paramView) {
    a(paramView);
  }
  
  public void b(Object paramObject) {}
  
  public int c() {
    return this.d;
  }
  
  public void d() {
    List<ghu> list = this.l.f().s().a();
    if (list.size() == 0) {
      glm.a(this.j).setText("Você não possui cartão");
      return;
    } 
    this.o = null;
    this.c = list;
    this.p = a(null, this.e, this.c);
    this.a.setAdapter(this.p);
    this.a.setOffscreenPageLimit(this.p.getCount());
    this.a.setOnPageChangeListener(e());
    this.i.setSize(this.p.getCount());
    if (this.p.getCount() > 1) {
      this.i.setVisibility(0);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */