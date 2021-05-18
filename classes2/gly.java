import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.widget.Indicator;
import java.util.ArrayList;
import java.util.List;

public class gly implements glb {
  public ViewPager a;
  
  private final View.OnClickListener b;
  
  private jde c = new jde();
  
  private List<jde> d = new ArrayList<jde>();
  
  private int e;
  
  private Context f;
  
  private gla g;
  
  private TextView h;
  
  private ImageView i;
  
  private Indicator j;
  
  private gme k = null;
  
  private boolean l = false;
  
  private int m;
  
  public gly(Context paramContext, View.OnClickListener paramOnClickListener) {
    this.b = paramOnClickListener;
    this.d.add(miq.C().f().r().b());
    this.f = paramContext;
  }
  
  private ViewPager.OnPageChangeListener d() {
    return (ViewPager.OnPageChangeListener)new glz(this);
  }
  
  public int a() {
    return 2130968863;
  }
  
  public PagerAdapter a(View paramView, Context paramContext, List<?> paramList) {
    return new gma(this, paramContext, paramList);
  }
  
  public void a(int paramInt) {
    this.e = paramInt;
  }
  
  public void a(View paramView) {
    this.h = (TextView)paramView.findViewById(2131756489);
    this.h.setText(this.f.getString(2131297978));
    this.i = (ImageView)paramView.findViewById(2131756488);
    this.i.setImageResource(2130838566);
    this.j = (Indicator)paramView.findViewById(2131756042);
    this.a = (ViewPager)paramView.findViewById(2131756490);
    PagerAdapter pagerAdapter = a(paramView, this.f, this.d);
    this.a.setAdapter(pagerAdapter);
    this.a.setOffscreenPageLimit(pagerAdapter.getCount());
    this.a.setOnPageChangeListener(d());
    this.j.setSize(pagerAdapter.getCount());
    if (pagerAdapter.getCount() <= 1)
      this.j.setVisibility(8); 
  }
  
  public void a(gla paramgla) {
    this.g = paramgla;
  }
  
  public <T> void a(T paramT) {
    this.c = (jde)paramT;
  }
  
  public void a(jde paramjde) {
    gme.f(this.k).setText(paramjde.d());
    gme.h(this.k).setText(naj.f(paramjde.b().a()));
  }
  
  public <T> T b() {
    return (T)this.c;
  }
  
  public void b(@ColorInt int paramInt) {
    this.m = paramInt;
  }
  
  public void b(View paramView) {
    a(paramView);
  }
  
  public void b(Object paramObject) {}
  
  public int c() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */