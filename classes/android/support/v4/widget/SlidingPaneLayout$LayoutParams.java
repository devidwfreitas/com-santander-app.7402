package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class SlidingPaneLayout$LayoutParams extends ViewGroup.MarginLayoutParams {
  private static final int[] ATTRS = new int[] { 16843137 };
  
  Paint dimPaint;
  
  boolean dimWhenOffset;
  
  boolean slideable;
  
  public float weight = 0.0F;
  
  public SlidingPaneLayout$LayoutParams() {
    super(-1, -1);
  }
  
  public SlidingPaneLayout$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  public SlidingPaneLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ATTRS);
    this.weight = typedArray.getFloat(0, 0.0F);
    typedArray.recycle();
  }
  
  public SlidingPaneLayout$LayoutParams(SlidingPaneLayout$LayoutParams paramSlidingPaneLayout$LayoutParams) {
    super(paramSlidingPaneLayout$LayoutParams);
    this.weight = paramSlidingPaneLayout$LayoutParams.weight;
  }
  
  public SlidingPaneLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public SlidingPaneLayout$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SlidingPaneLayout$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */