package com.santander.app.seguros.ui.widgets;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import flv;
import mbs;
import mbt;
import mbu;

public class ExpandableLayoutV2 extends LinearLayout {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  public static final String d = "super_state";
  
  public static final String e = "expansion";
  
  private static final int f = 0;
  
  private static final int g = 1;
  
  private static final int h = 300;
  
  private int i = 300;
  
  private boolean j;
  
  private float k;
  
  private int l;
  
  private int m = 0;
  
  private boolean n = false;
  
  private Interpolator o = (Interpolator)new FastOutSlowInInterpolator();
  
  private ValueAnimator p;
  
  private mbu q;
  
  public ExpandableLayoutV2(Context paramContext) {
    super(paramContext);
    a((AttributeSet)null);
  }
  
  public ExpandableLayoutV2(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public ExpandableLayoutV2(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  @TargetApi(21)
  public ExpandableLayoutV2(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramAttributeSet);
  }
  
  private void a(int paramInt) {
    if (this.p != null) {
      this.p.cancel();
      this.p = null;
    } 
    this.p = ValueAnimator.ofFloat(new float[] { this.k, paramInt });
    this.p.setInterpolator((TimeInterpolator)this.o);
    this.p.setDuration(this.i);
    this.p.addUpdateListener((ValueAnimator.AnimatorUpdateListener)new mbs(this));
    this.p.addListener((Animator.AnimatorListener)new mbt(this, paramInt));
    this.p.start();
  }
  
  private void a(AttributeSet paramAttributeSet) {
    if (paramAttributeSet != null) {
      float f;
      TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, flv.ExpandableLayoutV2);
      this.i = typedArray.getInt(1, 300);
      if (typedArray.getBoolean(2, false)) {
        f = 1.0F;
      } else {
        f = 0.0F;
      } 
      this.k = f;
      this.j = typedArray.getBoolean(3, true);
      this.l = 1;
      typedArray.recycle();
    } 
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2) {
    boolean bool = true;
    if ((!paramBoolean1 || (this.m != 1 && this.k != 1.0F)) && (paramBoolean1 || (this.m != 2 && this.k != 0.0F))) {
      if (!paramBoolean1)
        bool = false; 
      if (paramBoolean2) {
        a(bool);
        return;
      } 
      setExpansion(bool);
      return;
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.n = paramBoolean;
    if (a()) {
      c(paramBoolean);
      return;
    } 
    b(paramBoolean);
  }
  
  public boolean a() {
    return (this.m == 1 || this.k == 1.0F);
  }
  
  public void b() {
    a(true);
  }
  
  public void b(boolean paramBoolean) {
    this.n = paramBoolean;
    a(true, paramBoolean);
  }
  
  public void c() {
    b(true);
  }
  
  public void c(boolean paramBoolean) {
    this.n = paramBoolean;
    a(false, paramBoolean);
  }
  
  public void d() {
    c(true);
  }
  
  public mbu e() {
    return this.q;
  }
  
  public int f() {
    return this.m;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration) {
    if (this.p != null)
      this.p.cancel(); 
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    paramInt2 = getMeasuredWidth();
    int i = getMeasuredHeight();
    if (this.l == 0) {
      paramInt1 = paramInt2;
    } else {
      paramInt1 = i;
    } 
    if (this.k == 0.0F && paramInt1 == 0) {
      if (this.n) {
        ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, View.ALPHA, new float[] { 0.0F, 1.0F });
        objectAnimator.setDuration(200L);
        objectAnimator.start();
      } else {
        setAlpha(1.0F);
      } 
      (getLayoutParams()).height = 0;
    } else {
      (getLayoutParams()).height = -2;
    } 
    int j = paramInt1 - Math.round(paramInt1 * this.k);
    if (this.j)
      for (paramInt1 = 0; paramInt1 < getChildCount(); paramInt1++) {
        View view = getChildAt(paramInt1);
        if (this.l == 0) {
          view.setTranslationX(-j);
        } else {
          view.setTranslationY(-j);
        } 
      }  
    if (this.l == 0) {
      setMeasuredDimension(paramInt2 - j, i);
      return;
    } 
    setMeasuredDimension(paramInt2, i - j);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    Bundle bundle = (Bundle)paramParcelable;
    this.k = bundle.getFloat("expansion");
    super.onRestoreInstanceState(bundle.getParcelable("super_state"));
  }
  
  protected Parcelable onSaveInstanceState() {
    Parcelable parcelable = super.onSaveInstanceState();
    Bundle bundle = new Bundle();
    if (a()) {
      float f1 = 1.0F;
      this.k = f1;
      bundle.putFloat("expansion", this.k);
      bundle.putParcelable("super_state", parcelable);
      return (Parcelable)bundle;
    } 
    float f = 0.0F;
    this.k = f;
    bundle.putFloat("expansion", this.k);
    bundle.putParcelable("super_state", parcelable);
    return (Parcelable)bundle;
  }
  
  public void setDuration(int paramInt) {
    this.i = paramInt;
  }
  
  public void setExpansion(float paramFloat) {
    if (this.k != paramFloat) {
      if (paramFloat == 0.0F) {
        if (this.n) {
          ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this, View.ALPHA, new float[] { 0.0F, 1.0F });
          objectAnimator.setDuration(200L);
          objectAnimator.start();
        } else {
          setAlpha(1.0F);
        } 
        (getLayoutParams()).height = 0;
      } else {
        (getLayoutParams()).height = -2;
      } 
      this.k = paramFloat;
      requestLayout();
      if (this.q != null) {
        this.q.a(paramFloat);
        return;
      } 
    } 
  }
  
  public void setOnExpansionUpdateListener(mbu parammbu) {
    this.q = parammbu;
  }
  
  public void setState(int paramInt) {
    this.m = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\ExpandableLayoutV2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */