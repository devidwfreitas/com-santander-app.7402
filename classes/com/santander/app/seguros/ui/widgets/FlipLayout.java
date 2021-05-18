package com.santander.app.seguros.ui.widgets;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import flv;
import mbv;
import mbw;
import mbx;
import mby;

public class FlipLayout extends FrameLayout {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  public static final int d = 3;
  
  public static final int e = 4;
  
  public static final int f = 5;
  
  public static final int g = 6;
  
  int h = 0;
  
  public int i = 200;
  
  int j = 2;
  
  public Interpolator k;
  
  public boolean l;
  
  ViewPropertyAnimator m;
  
  public ViewPropertyAnimator n;
  
  public FlipLayout(@NonNull Context paramContext) {
    this(paramContext, (AttributeSet)null, 0);
  }
  
  public FlipLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FlipLayout(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet, @AttrRes int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    if (paramAttributeSet != null) {
      TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.FlipLayout, paramInt, 0);
      this.h = typedArray.getInteger(0, this.h);
      this.i = typedArray.getInteger(1, this.i);
      this.j = typedArray.getInteger(2, this.j);
      typedArray.recycle();
    } 
  }
  
  private void a(View paramView1, View paramView2, int paramInt, boolean paramBoolean) {
    float f;
    byte b;
    paramView1.setVisibility(0);
    paramView2.setVisibility(4);
    if (paramBoolean) {
      b = 90;
    } else {
      b = -90;
    } 
    g();
    switch (paramInt) {
      default:
        return;
      case 0:
        paramView1.setAlpha(1.0F);
        paramView2.setAlpha(0.0F);
        paramView2.setVisibility(0);
        this.m = paramView1.animate();
        this.m.alpha(0.0F).setDuration(this.i).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mby(this, paramView2, 4));
        this.n = paramView2.animate();
        this.n.alpha(1.0F).setDuration(this.i).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mby(this, paramView2, 0));
        return;
      case 1:
        paramView1.setRotationX(0.0F);
        paramView2.setRotationX(-b);
        this.m = paramView1.animate();
        this.m.rotationX(b).setDuration((this.i / 2)).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mbv(this, paramView1, 4, paramView2));
        return;
      case 2:
        paramView1.setRotationY(0.0F);
        paramView2.setRotationY(-b);
        this.m = paramView1.animate();
        this.m.rotationY(b).setDuration((this.i / 2)).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mbw(this, paramView1, 4, paramView2));
        return;
      case 5:
        paramView1.setPivotY((0 - paramView1.getPaddingTop()));
        paramView1.setRotation(0.0F);
        paramView2.setPivotY((0 - paramView2.getPaddingTop()));
        paramView2.setRotation((-b * 2));
        this.m = paramView1.animate();
        this.m.rotation((b * 2)).setDuration((this.i / 2)).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mbx(this, paramView1, 4, paramView2));
        return;
      case 6:
        paramView1.setPivotY((paramView1.getHeight() / 2));
        paramView1.setPivotX((0 - paramView1.getPaddingLeft() - paramView1.getWidth() / 2));
        paramView1.setRotation(0.0F);
        paramView2.setPivotY((paramView2.getHeight() / 2));
        paramView2.setPivotX((0 - paramView2.getPaddingLeft() - paramView2.getWidth() / 2));
        paramView2.setRotation(-b);
        this.m = paramView1.animate();
        this.m.rotation(b).setDuration(this.i).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mby(this, paramView1, 4));
        this.n = paramView2.animate();
        this.n.rotation(0.0F).setDuration(this.i).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mby(this, paramView2, 0));
        return;
      case 3:
        if (!paramBoolean) {
          f = -getWidth();
        } else {
          f = getWidth();
        } 
        paramView1.setTranslationX(0.0F);
        paramView2.setTranslationX(-f);
        this.m = paramView1.animate();
        this.m.translationXBy(f).setDuration(this.i).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mby(this, paramView1, 4));
        this.n = paramView2.animate();
        this.n.translationXBy(f).setDuration(this.i).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mby(this, paramView2, 0));
        return;
      case 4:
        break;
    } 
    if (!paramBoolean) {
      f = -getHeight();
    } else {
      f = getHeight();
    } 
    paramView1.setTranslationY(0.0F);
    paramView2.setTranslationY(-f);
    this.m = paramView1.animate();
    this.m.translationYBy(f).setDuration(this.i).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mby(this, paramView1, 4));
    this.n = paramView2.animate();
    this.n.translationYBy(f).setDuration(this.i).setInterpolator((TimeInterpolator)this.k).setListener((Animator.AnimatorListener)new mby(this, paramView2, 0));
  }
  
  private void a(View paramView1, View paramView2, boolean paramBoolean) {
    a(paramView1, paramView2, this.j, paramBoolean);
  }
  
  private void g() {
    if (this.n != null)
      this.n.cancel(); 
    if (this.m != null)
      this.m.cancel(); 
  }
  
  private boolean h() {
    return this.l;
  }
  
  public Interpolator a() {
    return this.k;
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    if (paramBoolean && !h() && getChildCount() > 1) {
      a(getChildAt(this.h), getChildAt(paramInt), false);
      this.h = paramInt;
      return;
    } 
    g();
    setVisibleChild(paramInt);
  }
  
  @RequiresApi(api = 21)
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    super.addView(paramView, paramInt, paramLayoutParams);
    int i = paramInt;
    if (paramInt == -1)
      i = getChildCount() - 1; 
    if (i == this.h) {
      paramInt = 0;
    } else {
      paramInt = 4;
    } 
    paramView.setVisibility(paramInt);
    paramView.setClipToOutline(false);
  }
  
  public void b() {
    if (!h() && getChildCount() > 1) {
      int i;
      if (this.h + 1 > getChildCount() - 1) {
        i = 0;
      } else {
        i = this.h + 1;
      } 
      a(getChildAt(this.h), getChildAt(i), false);
      this.h = i;
    } 
  }
  
  public void c() {
    if (!h() && getChildCount() > 1) {
      int i;
      if (this.h - 1 < 0) {
        i = getChildCount() - 1;
      } else {
        i = this.h - 1;
      } 
      a(getChildAt(this.h), getChildAt(i), true);
      this.h = i;
    } 
  }
  
  public int d() {
    return this.h;
  }
  
  public int e() {
    return this.i;
  }
  
  public int f() {
    return this.j;
  }
  
  public void setInterpolator(Interpolator paramInterpolator) {
    this.k = paramInterpolator;
  }
  
  public void setTransition(int paramInt) {
    this.j = paramInt;
  }
  
  public void setTransitionDuration(int paramInt) {
    this.i = paramInt;
  }
  
  public void setVisibleChild(int paramInt) {
    this.h = paramInt;
    for (int i = 0; i < getChildCount(); i++) {
      byte b;
      View view = getChildAt(i);
      if (i == paramInt) {
        b = 0;
      } else {
        b = 4;
      } 
      view.setVisibility(b);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\FlipLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */