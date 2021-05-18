import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Indicator;
import java.util.List;

public class gln implements glb, glc {
  public ViewPager a;
  
  private Conta b = new Conta();
  
  private List<Conta> c = miq.C().f().q().a();
  
  private int d;
  
  private Context e;
  
  private gla f;
  
  private TextView g;
  
  private ImageView h;
  
  private Indicator i;
  
  private glt j = null;
  
  private boolean k = false;
  
  private int l;
  
  public gln(Context paramContext) {
    this.e = paramContext;
  }
  
  private ViewPager.OnPageChangeListener d() {
    return (ViewPager.OnPageChangeListener)new glo(this);
  }
  
  public int a() {
    return 2130968863;
  }
  
  public PagerAdapter a(View paramView, Context paramContext, List<?> paramList) {
    return new glp(this, paramContext, paramList);
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
  }
  
  public void a(View paramView) {
    this.g = (TextView)paramView.findViewById(2131756489);
    this.g.setText(this.e.getString(2131297887));
    this.h = (ImageView)paramView.findViewById(2131756488);
    this.h.setImageResource(2130838556);
    this.i = (Indicator)paramView.findViewById(2131756042);
    this.a = (ViewPager)paramView.findViewById(2131756490);
    PagerAdapter pagerAdapter = a(paramView, this.e, this.c);
    this.a.setAdapter(pagerAdapter);
    this.a.setOffscreenPageLimit(pagerAdapter.getCount());
    this.a.setOnPageChangeListener(d());
    this.i.setSize(pagerAdapter.getCount());
    if (pagerAdapter.getCount() <= 1)
      this.i.setVisibility(8); 
  }
  
  public void a(gla paramgla) {
    this.f = paramgla;
  }
  
  public <T> void a(T paramT) {
    this.b = (Conta)paramT;
  }
  
  public <T> T b() {
    return (T)this.b;
  }
  
  public void b(@ColorInt int paramInt) {
    this.l = paramInt;
  }
  
  public void b(View paramView) {
    a(paramView);
  }
  
  public void b(Object paramObject) {}
  
  public int c() {
    return this.d;
  }
  
  public void c(Object paramObject) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gln.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */