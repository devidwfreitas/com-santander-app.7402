package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RequiresApi;
import android.support.design.R;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;

public class AppBarLayout$LayoutParams extends LinearLayout.LayoutParams {
  static final int COLLAPSIBLE_FLAGS = 10;
  
  static final int FLAG_QUICK_RETURN = 5;
  
  static final int FLAG_SNAP = 17;
  
  public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
  
  public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
  
  public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
  
  public static final int SCROLL_FLAG_SCROLL = 1;
  
  public static final int SCROLL_FLAG_SNAP = 16;
  
  int mScrollFlags = 1;
  
  Interpolator mScrollInterpolator;
  
  public AppBarLayout$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  public AppBarLayout$LayoutParams(int paramInt1, int paramInt2, float paramFloat) {
    super(paramInt1, paramInt2, paramFloat);
  }
  
  public AppBarLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppBarLayout_Layout);
    this.mScrollFlags = typedArray.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
    if (typedArray.hasValue(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator))
      this.mScrollInterpolator = AnimationUtils.loadInterpolator(paramContext, typedArray.getResourceId(R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0)); 
    typedArray.recycle();
  }
  
  @TargetApi(19)
  @RequiresApi(19)
  public AppBarLayout$LayoutParams(AppBarLayout$LayoutParams paramAppBarLayout$LayoutParams) {
    super(paramAppBarLayout$LayoutParams);
    this.mScrollFlags = paramAppBarLayout$LayoutParams.mScrollFlags;
    this.mScrollInterpolator = paramAppBarLayout$LayoutParams.mScrollInterpolator;
  }
  
  public AppBarLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public AppBarLayout$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
  
  @TargetApi(19)
  @RequiresApi(19)
  public AppBarLayout$LayoutParams(LinearLayout.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public int getScrollFlags() {
    return this.mScrollFlags;
  }
  
  public Interpolator getScrollInterpolator() {
    return this.mScrollInterpolator;
  }
  
  boolean isCollapsible() {
    return ((this.mScrollFlags & 0x1) == 1 && (this.mScrollFlags & 0xA) != 0);
  }
  
  public void setScrollFlags(int paramInt) {
    this.mScrollFlags = paramInt;
  }
  
  public void setScrollInterpolator(Interpolator paramInterpolator) {
    this.mScrollInterpolator = paramInterpolator;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\AppBarLayout$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */