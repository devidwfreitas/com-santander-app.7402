package com.santander.app.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import flv;

public class PagerIndicator extends RadioGroup {
  private int a;
  
  private int b;
  
  private int c;
  
  private int d;
  
  private int e;
  
  public PagerIndicator(Context paramContext) {
    super(paramContext);
    setGravity(1);
  }
  
  public PagerIndicator(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    setGravity(1);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, flv.PagerIndicator);
    this.a = typedArray.getResourceId(0, 0);
    this.b = typedArray.getDimensionPixelSize(1, 0);
    this.c = typedArray.getInt(3, 0);
    this.d = typedArray.getDimensionPixelSize(2, 0);
    this.e = typedArray.getInt(4, 0);
    typedArray.recycle();
    a();
  }
  
  private void a() {
    removeAllViews();
    if (this.c > 0) {
      RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(this.b, this.b);
      layoutParams.setMargins(this.d / 2, 0, this.d / 2, 0);
      for (int i = 0; i < this.c; i++) {
        RadioButton radioButton = new RadioButton(getContext());
        radioButton.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        radioButton.setClickable(false);
        radioButton.setButtonDrawable((Drawable)new StateListDrawable());
        radioButton.setBackgroundResource(this.a);
        if (i == this.e)
          radioButton.setChecked(true); 
        addView((View)radioButton);
      } 
    } 
  }
  
  public void setDividaerSpace(int paramInt) {
    this.d = paramInt;
    a();
  }
  
  public void setIndicatorCount(int paramInt) {
    this.c = paramInt;
    a();
  }
  
  public void setIndicatorDrawable(int paramInt) {
    this.a = paramInt;
    a();
  }
  
  public void setIndicatorSize(int paramInt) {
    this.b = paramInt;
    a();
  }
  
  public void setPageSelected(int paramInt) {
    this.e = paramInt;
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\widget\PagerIndicator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */