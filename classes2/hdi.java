import android.app.Activity;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import com.santander.app.dpp.DPPPreenchimentoActivity;
import com.santander.app.widget.Indicator;
import java.util.List;
import java.util.Vector;

public class hdi extends fqg implements ViewPager.OnPageChangeListener {
  private ViewPager a;
  
  private ImageView b;
  
  private ImageView c;
  
  private int d;
  
  private Indicator e;
  
  private List<ftl> f;
  
  private Activity g;
  
  private nfd h = null;
  
  private DPPPreenchimentoActivity i;
  
  public hdi(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2) {
    this(paramActivity, paramViewPager, paramIndicator, paramImageView1, paramImageView2, 1);
  }
  
  public hdi(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2, int paramInt) {
    this.a = paramViewPager;
    this.b = paramImageView1;
    this.c = paramImageView2;
    this.d = paramInt;
    this.e = paramIndicator;
    this.g = paramActivity;
    this.i = (DPPPreenchimentoActivity)paramActivity;
  }
  
  public int a() {
    return this.a.getCurrentItem();
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
  }
  
  public void a(ViewPager paramViewPager) {
    this.a = paramViewPager;
  }
  
  public void a(ImageView paramImageView) {
    this.b = paramImageView;
  }
  
  public void a(Indicator paramIndicator) {
    this.e = paramIndicator;
  }
  
  public void a(Vector<ftl> paramVector, int paramInt1, int paramInt2, boolean paramBoolean) {
    this.f = paramVector;
    if (paramInt2 != 1) {
      ftl ftl = new ftl();
      this.f.add(ftl);
    } 
    hdj hdj = new hdj(this.g, this.f, paramInt2, paramBoolean);
    this.a.setAdapter(hdj);
    this.a.setOnPageChangeListener(this);
    this.e.setIndicatorLayout(null);
    gpm.a(this.e, hdj.getCount(), this.c, this.b, this.a);
    this.a.setCurrentItem(paramInt1);
    onPageSelected(paramInt1);
  }
  
  public void a(nfd paramnfd) {
    this.h = paramnfd;
  }
  
  public ViewPager b() {
    return this.a;
  }
  
  public void b(ImageView paramImageView) {
    this.c = paramImageView;
  }
  
  public ImageView c() {
    return this.b;
  }
  
  public ImageView d() {
    return this.c;
  }
  
  public int e() {
    return this.d;
  }
  
  public Indicator f() {
    return this.e;
  }
  
  public List<ftl> g() {
    return this.f;
  }
  
  public int getCount() {
    return this.f.size();
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return false;
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    gpm.a(this.a, this.c, this.b, this.e, paramInt, this.g);
    if (this.h != null)
      this.h.a(paramInt); 
    if (paramInt + 1 == this.f.size()) {
      this.i.a(true);
      return;
    } 
    this.i.a(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */