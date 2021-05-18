package br.com.zup.multistatelayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.LayoutRes;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import aoq;
import aor;
import aot;
import aoy;

public class MultiStateLayout extends FrameLayout {
  private static final int a = -1;
  
  private static final int b = 0;
  
  private static final int c = 1;
  
  private static final int d = 2;
  
  private static final int e = 3;
  
  private static final int f = 0;
  
  private LayoutInflater g;
  
  private View h;
  
  private View i;
  
  private View j;
  
  private View k;
  
  private aor l = aor.CONTENT;
  
  private Animation m;
  
  private Animation n;
  
  public MultiStateLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public MultiStateLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public MultiStateLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet) {
    this.g = LayoutInflater.from(getContext());
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, aoy.MultiStateLayout);
    int i = typedArray.getResourceId(aoy.MultiStateLayout_msl_loadingLayout, -1);
    if (i > -1) {
      this.i = this.g.inflate(i, (ViewGroup)this, false);
      addView(this.i, this.i.getLayoutParams());
    } 
    i = typedArray.getResourceId(aoy.MultiStateLayout_msl_emptyLayout, -1);
    if (i > -1) {
      this.k = this.g.inflate(i, (ViewGroup)this, false);
      addView(this.k, this.k.getLayoutParams());
    } 
    i = typedArray.getResourceId(aoy.MultiStateLayout_msl_errorLayout, -1);
    if (i > -1) {
      this.j = this.g.inflate(i, (ViewGroup)this, false);
      addView(this.j, this.j.getLayoutParams());
    } 
    i = typedArray.getInt(aoy.MultiStateLayout_msl_state, -1);
    if (i != -1) {
      switch (i) {
        default:
          this.m = AnimationUtils.loadAnimation(getContext(), aot.fade_in);
          this.n = AnimationUtils.loadAnimation(getContext(), aot.fade_out);
          typedArray.recycle();
          return;
        case 0:
          this.l = aor.CONTENT;
        case 1:
          this.l = aor.EMPTY;
        case 2:
          this.l = aor.EMPTY;
        case 3:
          break;
      } 
      this.l = aor.LOADING;
    } 
  }
  
  private void a(boolean paramBoolean) {
    switch (aoq.a[this.l.ordinal()]) {
      default:
        if (this.h == null)
          throw new NullPointerException("Content View"); 
        break;
      case 1:
        if (this.i == null)
          throw new NullPointerException("Loading View"); 
        this.i.setVisibility(0);
        if (this.h != null)
          if (paramBoolean) {
            this.h.setVisibility(8);
          } else {
            this.h.setVisibility(0);
          }  
        if (this.j != null)
          this.j.setVisibility(8); 
        if (this.k != null)
          this.k.setVisibility(8); 
        this.i.bringToFront();
        requestLayout();
        invalidate();
        this.i.requestLayout();
        this.i.invalidate();
        this.i.startAnimation(this.m);
        return;
      case 3:
        if (this.k == null)
          throw new NullPointerException("Empty View"); 
        this.k.setVisibility(0);
        if (this.i != null)
          this.i.setVisibility(8); 
        if (this.j != null)
          this.j.setVisibility(8); 
        if (this.h != null) {
          this.h.setVisibility(8);
          return;
        } 
        return;
      case 4:
        if (this.j == null)
          throw new NullPointerException("Error View"); 
        this.j.setVisibility(0);
        if (this.i != null)
          this.i.setVisibility(8); 
        if (this.h != null)
          this.h.setVisibility(8); 
        if (this.k != null) {
          this.k.setVisibility(8);
          return;
        } 
        return;
    } 
    this.h.setVisibility(0);
    if (this.i != null) {
      this.i.startAnimation(this.n);
      this.i.setVisibility(8);
    } 
    if (this.j != null)
      this.j.setVisibility(8); 
    if (this.k != null) {
      this.k.setVisibility(8);
      return;
    } 
  }
  
  private boolean a(View paramView) {
    return ((this.h == null || this.h == paramView) && paramView != this.i && paramView != this.j && paramView != this.k);
  }
  
  @Nullable
  public View a(aor paramaor) {
    switch (aoq.a[paramaor.ordinal()]) {
      default:
        return null;
      case 1:
        return this.i;
      case 2:
        return this.h;
      case 3:
        return this.k;
      case 4:
        break;
    } 
    return this.j;
  }
  
  public aor a() {
    return this.l;
  }
  
  public void addView(View paramView) {
    if (a(paramView))
      this.h = paramView; 
    super.addView(paramView);
  }
  
  public void addView(View paramView, int paramInt) {
    if (a(paramView))
      this.h = paramView; 
    super.addView(paramView, paramInt);
  }
  
  public void addView(View paramView, int paramInt1, int paramInt2) {
    if (a(paramView))
      this.h = paramView; 
    super.addView(paramView, paramInt1, paramInt2);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    if (a(paramView))
      this.h = paramView; 
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    if (a(paramView))
      this.h = paramView; 
    super.addView(paramView, paramLayoutParams);
  }
  
  protected boolean addViewInLayout(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    if (a(paramView))
      this.h = paramView; 
    return super.addViewInLayout(paramView, paramInt, paramLayoutParams);
  }
  
  protected boolean addViewInLayout(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean) {
    if (a(paramView))
      this.h = paramView; 
    return super.addViewInLayout(paramView, paramInt, paramLayoutParams, paramBoolean);
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    if (this.h == null)
      throw new IllegalArgumentException("Content view is not defined"); 
    a(true);
  }
  
  public void setState(aor paramaor) {
    if (paramaor != this.l) {
      this.l = paramaor;
      a(false);
    } 
  }
  
  public void setState(aor paramaor, boolean paramBoolean) {
    if (paramaor != this.l) {
      this.l = paramaor;
      a(paramBoolean);
    } 
  }
  
  public void setViewForState(@LayoutRes int paramInt, aor paramaor) {
    setViewForState(paramInt, paramaor, false);
  }
  
  public void setViewForState(@LayoutRes int paramInt, aor paramaor, boolean paramBoolean) {
    if (this.g == null)
      this.g = LayoutInflater.from(getContext()); 
    setViewForState(this.g.inflate(paramInt, (ViewGroup)this, false), paramaor, paramBoolean);
  }
  
  public void setViewForState(View paramView, aor paramaor) {
    setViewForState(paramView, paramaor, false);
  }
  
  public void setViewForState(View paramView, aor paramaor, boolean paramBoolean) {
    switch (aoq.a[paramaor.ordinal()]) {
      default:
        if (paramBoolean)
          setState(paramaor, true); 
        return;
      case 1:
        if (this.i != null)
          removeView(this.i); 
        this.i = paramView;
        addView(this.i);
      case 3:
        if (this.k != null)
          removeView(this.k); 
        this.k = paramView;
        addView(this.k);
      case 4:
        if (this.j != null)
          removeView(this.j); 
        this.j = paramView;
        addView(this.j);
      case 2:
        break;
    } 
    if (this.h != null)
      removeView(this.h); 
    this.h = paramView;
    addView(this.h);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\zup\multistatelayout\MultiStateLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */