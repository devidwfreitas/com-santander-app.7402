import android.app.Activity;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Indicator;
import java.util.List;

public class hdg extends fqg implements ViewPager.OnPageChangeListener {
  private ViewPager a;
  
  private ImageView b;
  
  private ImageView c;
  
  private int d;
  
  private Indicator e;
  
  private List<Conta> f;
  
  private Activity g;
  
  private nfd h = null;
  
  public hdg(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2) {
    this(paramActivity, paramViewPager, paramIndicator, paramImageView1, paramImageView2, 1);
  }
  
  public hdg(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2, int paramInt) {
    this.a = paramViewPager;
    this.b = paramImageView1;
    this.c = paramImageView2;
    this.d = paramInt;
    this.e = paramIndicator;
    this.g = paramActivity;
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
  
  public void a(List<Conta> paramList, int paramInt) {
    this.f = paramList;
    hdh hdh = new hdh(this.g, this.f, Boolean.valueOf(false));
    this.a.setAdapter(hdh);
    this.a.setOnPageChangeListener(this);
    gpm.a(this.e, hdh.getCount(), this.c, this.b, this.a);
    this.a.setCurrentItem(paramInt);
    onPageSelected(paramInt);
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
  
  public List<Conta> g() {
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
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */