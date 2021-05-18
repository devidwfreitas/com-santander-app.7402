package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RequiresApi;
import android.support.design.R;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;

public class CollapsingToolbarLayout$LayoutParams extends FrameLayout.LayoutParams {
  public static final int COLLAPSE_MODE_OFF = 0;
  
  public static final int COLLAPSE_MODE_PARALLAX = 2;
  
  public static final int COLLAPSE_MODE_PIN = 1;
  
  private static final float DEFAULT_PARALLAX_MULTIPLIER = 0.5F;
  
  int mCollapseMode = 0;
  
  float mParallaxMult = 0.5F;
  
  public CollapsingToolbarLayout$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
  }
  
  public CollapsingToolbarLayout$LayoutParams(int paramInt1, int paramInt2, int paramInt3) {
    super(paramInt1, paramInt2, paramInt3);
  }
  
  public CollapsingToolbarLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CollapsingToolbarLayout_Layout);
    this.mCollapseMode = typedArray.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
    setParallaxMultiplier(typedArray.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5F));
    typedArray.recycle();
  }
  
  public CollapsingToolbarLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public CollapsingToolbarLayout$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super(paramMarginLayoutParams);
  }
  
  @TargetApi(19)
  @RequiresApi(19)
  public CollapsingToolbarLayout$LayoutParams(FrameLayout.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public int getCollapseMode() {
    return this.mCollapseMode;
  }
  
  public float getParallaxMultiplier() {
    return this.mParallaxMult;
  }
  
  public void setCollapseMode(int paramInt) {
    this.mCollapseMode = paramInt;
  }
  
  public void setParallaxMultiplier(float paramFloat) {
    this.mParallaxMult = paramFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CollapsingToolbarLayout$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */