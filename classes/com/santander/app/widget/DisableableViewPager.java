package com.santander.app.widget;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class DisableableViewPager extends ViewPager {
  private boolean a = false;
  
  public DisableableViewPager(Context paramContext) {
    super(paramContext);
  }
  
  public DisableableViewPager(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public void a() {
    this.a = true;
  }
  
  public void b() {
    this.a = false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    return this.a ? false : super.onInterceptTouchEvent(paramMotionEvent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\widget\DisableableViewPager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */