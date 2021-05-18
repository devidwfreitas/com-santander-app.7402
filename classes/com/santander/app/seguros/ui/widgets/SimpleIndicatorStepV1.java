package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import flv;

public class SimpleIndicatorStepV1 extends LinearLayout {
  private int a = 0;
  
  private float b = 0.0F;
  
  private GradientDrawable c = new GradientDrawable();
  
  private GradientDrawable d = new GradientDrawable();
  
  private int e = 0;
  
  private int f = 0;
  
  private float g;
  
  private float h;
  
  public SimpleIndicatorStepV1(Context paramContext) {
    super(paramContext);
    a(paramContext, (AttributeSet)null);
  }
  
  public SimpleIndicatorStepV1(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet) {
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.SimpleIndicatorStepV1, 0, 0);
    this.a = typedArray.getColor(0, getResources().getColor(2131624025));
    this.b = typedArray.getDimension(3, 3.0F);
    this.h = typedArray.getDimension(2, 2.0F);
    this.g = typedArray.getDimension(1, 5.0F);
    setOrientation(0);
    setGravity(1);
    this.d.setShape(0);
    this.d.setColor(this.a);
    this.c.setShape(0);
    this.c.setColor(getResources().getColor(2131624119));
    this.c.setStroke((int)typedArray.getDimension(4, 3.0F), this.a);
    typedArray.recycle();
  }
  
  public boolean a() {
    return (this.e == this.f);
  }
  
  public void setStep(int paramInt) {
    boolean bool = false;
    int i = 0;
    if (paramInt < this.f) {
      if (this.f > 0)
        i = this.f - 1; 
      while (true) {
        if (i >= 0 && i != paramInt - 1) {
          View view = getChildAt(i);
          if (view != null && view.getBackground() != this.c)
            view.setBackgroundDrawable((Drawable)this.c); 
          i--;
          continue;
        } 
        this.f = paramInt;
        return;
      } 
    } 
    if (paramInt > this.f) {
      if (this.f == 0) {
        i = bool;
      } else {
        i = this.f - 1;
      } 
      while (true) {
        if (i < paramInt) {
          if (i + 1 > getChildCount()) {
            this.f = paramInt;
            return;
          } 
          View view = getChildAt(i);
          if (view != null && view.getBackground() != this.d)
            view.setBackgroundDrawable((Drawable)this.d); 
          i++;
          continue;
        } 
        this.f = paramInt;
        return;
      } 
    } 
    this.f = paramInt;
  }
  
  public void setSteps(int paramInt) {
    if (paramInt <= 0) {
      removeAllViews();
      return;
    } 
    this.e = paramInt;
    int i = getChildCount();
    if (i < paramInt)
      while (true) {
        if (i < paramInt) {
          View view = new View(getContext());
          LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int)this.g, (int)this.h);
          if (i > 0)
            layoutParams.setMargins((int)this.b, 0, 0, 0); 
          view.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
          view.setBackgroundDrawable((Drawable)this.c);
          addView(view);
          i++;
          continue;
        } 
        return;
      }  
    if (i > paramInt) {
      i--;
      while (true) {
        if (i >= paramInt) {
          if (i + 1 > getChildCount()) {
            this.f = this.e;
            return;
          } 
          removeView(getChildAt(i));
          invalidate();
          i--;
          continue;
        } 
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\SimpleIndicatorStepV1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */