package com.santander.app.boasvindas;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.LinearLayout;

class DotView extends AppCompatImageView {
  private LinearLayout.LayoutParams a;
  
  public DotView(Context paramContext) {
    super(paramContext);
    c();
  }
  
  public DotView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  public DotView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    c();
  }
  
  private void c() {
    this.a = new LinearLayout.LayoutParams(-2, -2);
    setLayoutParams((ViewGroup.LayoutParams)this.a);
    setImageResource(2130837725);
    d();
    b();
  }
  
  private void d() {
    int i = (int)TypedValue.applyDimension(1, 3.0F, getResources().getDisplayMetrics());
    this.a.setMarginStart(i);
    this.a.setMarginEnd(i);
    setLayoutParams((ViewGroup.LayoutParams)this.a);
  }
  
  public void a() {
    int i = (int)TypedValue.applyDimension(1, 10.0F, getResources().getDisplayMetrics());
    this.a.width = i;
    this.a.height = i;
    setLayoutParams((ViewGroup.LayoutParams)this.a);
    setAlpha(1.0F);
  }
  
  public void b() {
    int i = (int)TypedValue.applyDimension(1, 6.0F, getResources().getDisplayMetrics());
    this.a.width = i;
    this.a.height = i;
    setLayoutParams((ViewGroup.LayoutParams)this.a);
    setAlpha(0.4F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\boasvindas\DotView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */