import android.app.Activity;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import com.santander.app.widget.Indicator;
import java.util.List;
import java.util.Vector;

public class goo extends fom implements ViewPager.OnPageChangeListener {
  public ImageView a;
  
  private ViewPager b;
  
  private ImageView c;
  
  private int d;
  
  private Indicator e;
  
  private List<? extends fuu> f;
  
  private Activity g;
  
  private Spinner h;
  
  private Spinner i;
  
  private EditText j;
  
  private EditText k;
  
  private EditText l;
  
  private CheckBox m;
  
  private CheckBox n;
  
  private nez o = null;
  
  public goo(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2) {
    this(paramActivity, paramViewPager, paramIndicator, paramImageView1, paramImageView2, 1);
  }
  
  public goo(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2, int paramInt) {
    this.b = paramViewPager;
    this.a = paramImageView1;
    this.c = paramImageView2;
    this.d = paramInt;
    this.e = paramIndicator;
    this.g = paramActivity;
  }
  
  public goo(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2, Spinner paramSpinner1, Spinner paramSpinner2, EditText paramEditText1, EditText paramEditText2, EditText paramEditText3, CheckBox paramCheckBox1, CheckBox paramCheckBox2) {
    this.b = paramViewPager;
    this.a = paramImageView1;
    this.c = paramImageView2;
    this.d = 1;
    this.e = paramIndicator;
    this.g = paramActivity;
    this.h = paramSpinner1;
    this.i = paramSpinner2;
    this.j = paramEditText1;
    this.k = paramEditText2;
    this.l = paramEditText3;
    this.m = paramCheckBox1;
    this.n = paramCheckBox2;
  }
  
  public ViewPager a() {
    return this.b;
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
  }
  
  public void a(ViewPager paramViewPager) {
    this.b = paramViewPager;
  }
  
  public void a(ImageView paramImageView) {
    this.a = paramImageView;
  }
  
  public void a(Indicator paramIndicator) {
    this.e = paramIndicator;
  }
  
  public void a(List<? extends fuu> paramList, int paramInt) {
    this.f = paramList;
    fps fps = new fps(this.g, this.f);
    this.b.setAdapter(fps);
    this.b.setCurrentItem(paramInt);
    this.b.setOnPageChangeListener(this);
    gpm.a(this.e, fps.getCount(), this.c, this.a, this.b);
    onPageSelected(paramInt);
  }
  
  public void a(Vector<fuu> paramVector, int paramInt) {
    this.f = paramVector;
    fol fol = new fol(this.g, this.f);
    this.b.setAdapter(fol);
    this.b.setCurrentItem(paramInt);
    this.b.setOnPageChangeListener(this);
    gpm.a(this.e, fol.getCount(), this.c, this.a, this.b);
    onPageSelected(paramInt);
  }
  
  public void a(nez paramnez) {
    this.o = paramnez;
  }
  
  public ImageView b() {
    return this.a;
  }
  
  public void b(ImageView paramImageView) {
    this.c = paramImageView;
  }
  
  public ImageView c() {
    return this.c;
  }
  
  public int d() {
    return this.d;
  }
  
  public Indicator e() {
    return this.e;
  }
  
  public int getCount() {
    return 0;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return false;
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    gpm.a(this.b, this.c, this.a, this.e, paramInt, this.g);
    if (this.o != null) {
      this.o.b(paramInt);
      return;
    } 
    hau.a().b(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\goo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */