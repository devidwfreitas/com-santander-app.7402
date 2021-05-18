package me.relex.circleindicator;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.support.annotation.AnimatorRes;
import android.support.annotation.DrawableRes;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import nnj;
import nnk;
import nnl;
import nnn;
import nnp;
import nnr;

public class CircleIndicator extends LinearLayout {
  private static final int a = 5;
  
  private ViewPager b;
  
  private int c = -1;
  
  private int d = -1;
  
  private int e = -1;
  
  private int f = nnn.scale_with_alpha;
  
  private int g = 0;
  
  private int h = nnp.white_radius;
  
  private int i = nnp.white_radius;
  
  private Animator j;
  
  private Animator k;
  
  private Animator l;
  
  private Animator m;
  
  private int n = -1;
  
  private final ViewPager.OnPageChangeListener o = (ViewPager.OnPageChangeListener)new nnj(this);
  
  private DataSetObserver p = (DataSetObserver)new nnk(this);
  
  public CircleIndicator(Context paramContext) {
    super(paramContext);
    a(paramContext, (AttributeSet)null);
  }
  
  public CircleIndicator(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public CircleIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  @TargetApi(21)
  public CircleIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(int paramInt1, @DrawableRes int paramInt2, Animator paramAnimator) {
    if (paramAnimator.isRunning()) {
      paramAnimator.end();
      paramAnimator.cancel();
    } 
    View view = new View(getContext());
    view.setBackgroundResource(paramInt2);
    addView(view, this.d, this.e);
    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams)view.getLayoutParams();
    if (paramInt1 == 0) {
      layoutParams.leftMargin = this.c;
      layoutParams.rightMargin = this.c;
    } else {
      layoutParams.topMargin = this.c;
      layoutParams.bottomMargin = this.c;
    } 
    view.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
    paramAnimator.setTarget(view);
    paramAnimator.start();
  }
  
  private void a(Context paramContext) {
    int i;
    if (this.d < 0) {
      i = a(5.0F);
    } else {
      i = this.d;
    } 
    this.d = i;
    if (this.e < 0) {
      i = a(5.0F);
    } else {
      i = this.e;
    } 
    this.e = i;
    if (this.c < 0) {
      i = a(5.0F);
    } else {
      i = this.c;
    } 
    this.c = i;
    if (this.f == 0) {
      i = nnn.scale_with_alpha;
    } else {
      i = this.f;
    } 
    this.f = i;
    this.j = b(paramContext);
    this.l = b(paramContext);
    this.l.setDuration(0L);
    this.k = c(paramContext);
    this.m = c(paramContext);
    this.m.setDuration(0L);
    if (this.h == 0) {
      i = nnp.white_radius;
    } else {
      i = this.h;
    } 
    this.h = i;
    if (this.i == 0) {
      i = this.h;
    } else {
      i = this.i;
    } 
    this.i = i;
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    b(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private Animator b(Context paramContext) {
    return AnimatorInflater.loadAnimator(paramContext, this.f);
  }
  
  private void b() {
    removeAllViews();
    int i = this.b.getAdapter().getCount();
    if (i > 0) {
      int k = this.b.getCurrentItem();
      int m = getOrientation();
      int j = 0;
      while (true) {
        if (j < i) {
          if (k == j) {
            a(m, this.h, this.l);
          } else {
            a(m, this.i, this.m);
          } 
          j++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet) {
    int i = 1;
    if (paramAttributeSet == null)
      return; 
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, nnr.CircleIndicator);
    this.d = typedArray.getDimensionPixelSize(nnr.CircleIndicator_ci_width, -1);
    this.e = typedArray.getDimensionPixelSize(nnr.CircleIndicator_ci_height, -1);
    this.c = typedArray.getDimensionPixelSize(nnr.CircleIndicator_ci_margin, -1);
    this.f = typedArray.getResourceId(nnr.CircleIndicator_ci_animator, nnn.scale_with_alpha);
    this.g = typedArray.getResourceId(nnr.CircleIndicator_ci_animator_reverse, 0);
    this.h = typedArray.getResourceId(nnr.CircleIndicator_ci_drawable, nnp.white_radius);
    this.i = typedArray.getResourceId(nnr.CircleIndicator_ci_drawable_unselected, this.h);
    if (typedArray.getInt(nnr.CircleIndicator_ci_orientation, -1) != 1)
      i = 0; 
    setOrientation(i);
    i = typedArray.getInt(nnr.CircleIndicator_ci_gravity, -1);
    if (i < 0)
      i = 17; 
    setGravity(i);
    typedArray.recycle();
  }
  
  private Animator c(Context paramContext) {
    Animator animator;
    if (this.g == 0) {
      animator = AnimatorInflater.loadAnimator(paramContext, this.f);
      animator.setInterpolator((TimeInterpolator)new nnl(this, null));
      return animator;
    } 
    return AnimatorInflater.loadAnimator((Context)animator, this.g);
  }
  
  public int a(float paramFloat) {
    return (int)((getResources().getDisplayMetrics()).density * paramFloat + 0.5F);
  }
  
  public DataSetObserver a() {
    return this.p;
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3) {
    a(paramInt1, paramInt2, paramInt3, nnn.scale_with_alpha, 0, nnp.white_radius, nnp.white_radius);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, @AnimatorRes int paramInt4, @AnimatorRes int paramInt5, @DrawableRes int paramInt6, @DrawableRes int paramInt7) {
    this.d = paramInt1;
    this.e = paramInt2;
    this.c = paramInt3;
    this.f = paramInt4;
    this.g = paramInt5;
    this.h = paramInt6;
    this.i = paramInt7;
    a(getContext());
  }
  
  @Deprecated
  public void setOnPageChangeListener(ViewPager.OnPageChangeListener paramOnPageChangeListener) {
    if (this.b == null)
      throw new NullPointerException("can not find Viewpager , setViewPager first"); 
    this.b.removeOnPageChangeListener(paramOnPageChangeListener);
    this.b.addOnPageChangeListener(paramOnPageChangeListener);
  }
  
  public void setViewPager(ViewPager paramViewPager) {
    this.b = paramViewPager;
    if (this.b != null && this.b.getAdapter() != null) {
      this.n = -1;
      b();
      this.b.removeOnPageChangeListener(this.o);
      this.b.addOnPageChangeListener(this.o);
      this.o.onPageSelected(this.b.getCurrentItem());
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\me\relex\circleindicator\CircleIndicator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */