package com.santander.app.components.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

public class SantanderViewPager extends ViewPager {
  private int a = 0;
  
  public SantanderViewPager(Context paramContext) {
    super(paramContext);
  }
  
  public SantanderViewPager(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
    requestLayout();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int i;
    try {
      View view = getChildAt(this.a);
      i = paramInt2;
      if (view != null) {
        view.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(0, 0));
        i = View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824);
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      i = paramInt2;
    } 
    super.onMeasure(paramInt1, i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\components\view\SantanderViewPager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */