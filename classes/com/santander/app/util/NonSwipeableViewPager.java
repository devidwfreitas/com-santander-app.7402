package com.santander.app.util;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class NonSwipeableViewPager extends ViewPager {
  public NonSwipeableViewPager(Context paramContext) {
    super(paramContext);
  }
  
  public NonSwipeableViewPager(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\ap\\util\NonSwipeableViewPager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */