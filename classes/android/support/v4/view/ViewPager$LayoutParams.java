package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class ViewPager$LayoutParams extends ViewGroup.LayoutParams {
  int childIndex;
  
  public int gravity;
  
  public boolean isDecor;
  
  boolean needsMeasure;
  
  int position;
  
  float widthFactor = 0.0F;
  
  public ViewPager$LayoutParams() {
    super(-1, -1);
  }
  
  public ViewPager$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.LAYOUT_ATTRS);
    this.gravity = typedArray.getInteger(0, 48);
    typedArray.recycle();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPager$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */