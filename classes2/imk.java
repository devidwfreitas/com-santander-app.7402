import android.app.Activity;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.ImageView;
import com.santander.app.widget.Indicator;
import java.util.ArrayList;
import java.util.List;

public class imk extends fom implements ViewPager.OnPageChangeListener {
  private ViewPager a;
  
  private ImageView b;
  
  private ImageView c;
  
  private int d;
  
  private Indicator e;
  
  private List<ghu> f;
  
  private Activity g;
  
  private nez h = null;
  
  private mip i = (mip)miq.C();
  
  public imk(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2) {
    this(paramActivity, paramViewPager, paramIndicator, paramImageView1, paramImageView2, 1);
  }
  
  public imk(Activity paramActivity, ViewPager paramViewPager, Indicator paramIndicator, ImageView paramImageView1, ImageView paramImageView2, int paramInt) {
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
    this.f = new ArrayList<ghu>();
    for (ghu ghu : this.i.f().s().e())
      this.f.add(ghu); 
    fpr fpr = new fpr(this.g, this.f, Boolean.valueOf(false));
    this.a.setAdapter(fpr);
    this.a.setOnPageChangeListener(this);
    gpm.a(this.e, fpr.getCount(), this.c, this.b, this.a);
    this.a.setCurrentItem(paramInt);
    onPageSelected(paramInt);
  }
  
  public void a(int paramInt, Boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: new java/util/ArrayList
    //   4: dup
    //   5: invokespecial <init> : ()V
    //   8: putfield f : Ljava/util/List;
    //   11: aload_0
    //   12: getfield i : Lmip;
    //   15: invokeinterface f : ()Lmir;
    //   20: invokevirtual s : ()Lght;
    //   23: invokeinterface e : ()Ljava/util/List;
    //   28: invokeinterface iterator : ()Ljava/util/Iterator;
    //   33: astore #4
    //   35: aload #4
    //   37: invokeinterface hasNext : ()Z
    //   42: ifeq -> 72
    //   45: aload #4
    //   47: invokeinterface next : ()Ljava/lang/Object;
    //   52: checkcast ghu
    //   55: astore #5
    //   57: aload_0
    //   58: getfield f : Ljava/util/List;
    //   61: aload #5
    //   63: invokeinterface add : (Ljava/lang/Object;)Z
    //   68: pop
    //   69: goto -> 35
    //   72: aload_0
    //   73: getfield f : Ljava/util/List;
    //   76: iload_1
    //   77: invokeinterface get : (I)Ljava/lang/Object;
    //   82: checkcast ghu
    //   85: invokevirtual H : ()Ljava/lang/String;
    //   88: astore #4
    //   90: iconst_0
    //   91: istore_3
    //   92: iload_3
    //   93: aload_0
    //   94: getfield f : Ljava/util/List;
    //   97: invokeinterface size : ()I
    //   102: if_icmpge -> 206
    //   105: aload_0
    //   106: getfield f : Ljava/util/List;
    //   109: iload_3
    //   110: invokeinterface get : (I)Ljava/lang/Object;
    //   115: checkcast ghu
    //   118: invokevirtual H : ()Ljava/lang/String;
    //   121: aload #4
    //   123: invokevirtual equals : (Ljava/lang/Object;)Z
    //   126: ifeq -> 199
    //   129: new fpr
    //   132: dup
    //   133: aload_0
    //   134: getfield g : Landroid/app/Activity;
    //   137: aload_0
    //   138: getfield f : Ljava/util/List;
    //   141: aload_2
    //   142: invokespecial <init> : (Landroid/app/Activity;Ljava/util/List;Ljava/lang/Boolean;)V
    //   145: astore_2
    //   146: aload_0
    //   147: getfield a : Landroid/support/v4/view/ViewPager;
    //   150: aload_2
    //   151: invokevirtual setAdapter : (Landroid/support/v4/view/PagerAdapter;)V
    //   154: aload_0
    //   155: getfield a : Landroid/support/v4/view/ViewPager;
    //   158: aload_0
    //   159: invokevirtual setOnPageChangeListener : (Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    //   162: aload_0
    //   163: getfield e : Lcom/santander/app/widget/Indicator;
    //   166: aload_2
    //   167: invokevirtual getCount : ()I
    //   170: aload_0
    //   171: getfield c : Landroid/widget/ImageView;
    //   174: aload_0
    //   175: getfield b : Landroid/widget/ImageView;
    //   178: aload_0
    //   179: getfield a : Landroid/support/v4/view/ViewPager;
    //   182: invokestatic a : (Lcom/santander/app/widget/Indicator;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V
    //   185: aload_0
    //   186: getfield a : Landroid/support/v4/view/ViewPager;
    //   189: iload_3
    //   190: invokevirtual setCurrentItem : (I)V
    //   193: aload_0
    //   194: iload_3
    //   195: invokevirtual onPageSelected : (I)V
    //   198: return
    //   199: iload_3
    //   200: iconst_1
    //   201: iadd
    //   202: istore_3
    //   203: goto -> 92
    //   206: iload_1
    //   207: istore_3
    //   208: goto -> 129
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
  
  public void a(List<ghu> paramList, int paramInt) {
    this.f = paramList;
    fpr fpr = new fpr(this.g, this.f, Boolean.valueOf(false));
    this.a.setAdapter(fpr);
    this.a.setOnPageChangeListener(this);
    gpm.a(this.e, fpr.getCount(), this.c, this.b, this.a);
    this.a.setCurrentItem(paramInt);
    onPageSelected(paramInt);
  }
  
  public void a(nez paramnez) {
    this.h = paramnez;
  }
  
  public ViewPager b() {
    return this.a;
  }
  
  public void b(int paramInt) {
    this.d = paramInt;
  }
  
  public void b(ImageView paramImageView) {
    this.c = paramImageView;
  }
  
  public ImageView c() {
    return this.b;
  }
  
  public Object c(int paramInt) {
    return this.f.get(paramInt);
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
  
  public int getCount() {
    return 0;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject) {
    return false;
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    gpm.a(this.a, this.c, this.b, this.e, paramInt, this.g);
    if (this.h != null)
      this.h.b(paramInt); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */