import android.app.Activity;
import android.support.v4.view.ViewPager;
import android.widget.ImageView;
import com.santander.app.widget.Indicator;

public class gom implements ViewPager.OnPageChangeListener {
  public static final int a = 0;
  
  public static final int b = 1;
  
  private ViewPager c;
  
  private ImageView d;
  
  private ImageView e;
  
  private Indicator f;
  
  private Activity g;
  
  private fpq h;
  
  private int i;
  
  private int j;
  
  public gom(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2, fpq paramfpq) {
    this(paramActivity, paramViewPager, paramIndicator, paramImageView1, paramImageView2, paramfpq, 0);
  }
  
  public gom(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2, fpq paramfpq, int paramInt) {
    this.c = paramViewPager;
    this.d = paramImageView1;
    this.e = paramImageView2;
    this.f = paramIndicator;
    this.g = paramActivity;
    this.h = paramfpq;
    this.i = paramInt;
  }
  
  public void a() {
    fpp fpp = new fpp(this.g, this.h);
    this.c.setAdapter(fpp);
    this.c.setOnPageChangeListener(this);
    gpm.a(this.f, fpp.getCount(), this.e, this.d, this.c);
    if (fpp.getCount() > 0)
      onPageSelected(0); 
  }
  
  public void a(int paramInt) {
    this.j = paramInt;
    fpp fpp = new fpp(this.g, this.h);
    this.c.setAdapter(fpp);
    this.c.setOnPageChangeListener(this);
    if (fpp.getCount() > 0)
      onPageSelected(0); 
    gpm.a(this.g, this.j, fpp.getCount(), this.e, this.d, this.c);
  }
  
  public int b() {
    return this.i;
  }
  
  public void b(int paramInt) {
    this.i = paramInt;
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    if (this.i == 0) {
      gpm.a(this.c, this.e, this.d, this.f, paramInt, this.g);
      return;
    } 
    if (1 == this.i) {
      gpm.a(this.j, this.c, this.e, this.d, paramInt + 1, this.g);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */