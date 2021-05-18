package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class DrawerLayout$LayoutParams extends ViewGroup.MarginLayoutParams {
  private static final int FLAG_IS_CLOSING = 4;
  
  private static final int FLAG_IS_OPENED = 1;
  
  private static final int FLAG_IS_OPENING = 2;
  
  public int gravity = 0;
  
  boolean isPeeking;
  
  float onScreen;
  
  int openState;
  
  public DrawerLayout$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  public DrawerLayout$LayoutParams(int paramInt1, int paramInt2, int paramInt3) {
    this(paramInt1, paramInt2);
    this.gravity = paramInt3;
  }
  
  public DrawerLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, DrawerLayout.LAYOUT_ATTRS);
    this.gravity = typedArray.getInt(0, 0);
    typedArray.recycle();
  }
  
  public DrawerLayout$LayoutParams(DrawerLayout$LayoutParams paramDrawerLayout$LayoutParams) {
    super(paramDrawerLayout$LayoutParams);
    this.gravity = paramDrawerLayout$LayoutParams.gravity;
  }
  
  public DrawerLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public DrawerLayout$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\DrawerLayout$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */