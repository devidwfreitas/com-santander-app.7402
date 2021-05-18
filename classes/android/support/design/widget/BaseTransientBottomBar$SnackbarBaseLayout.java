package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class BaseTransientBottomBar$SnackbarBaseLayout extends FrameLayout {
  private BaseTransientBottomBar$OnAttachStateChangeListener mOnAttachStateChangeListener;
  
  private BaseTransientBottomBar$OnLayoutChangeListener mOnLayoutChangeListener;
  
  BaseTransientBottomBar$SnackbarBaseLayout(Context paramContext) {
    this(paramContext, null);
  }
  
  BaseTransientBottomBar$SnackbarBaseLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SnackbarLayout);
    if (typedArray.hasValue(R.styleable.SnackbarLayout_elevation))
      ViewCompat.setElevation((View)this, typedArray.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0)); 
    typedArray.recycle();
    setClickable(true);
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    if (this.mOnAttachStateChangeListener != null)
      this.mOnAttachStateChangeListener.onViewAttachedToWindow((View)this); 
    ViewCompat.requestApplyInsets((View)this);
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.mOnAttachStateChangeListener != null)
      this.mOnAttachStateChangeListener.onViewDetachedFromWindow((View)this); 
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mOnLayoutChangeListener != null)
      this.mOnLayoutChangeListener.onLayoutChange((View)this, paramInt1, paramInt2, paramInt3, paramInt4); 
  }
  
  void setOnAttachStateChangeListener(BaseTransientBottomBar$OnAttachStateChangeListener paramBaseTransientBottomBar$OnAttachStateChangeListener) {
    this.mOnAttachStateChangeListener = paramBaseTransientBottomBar$OnAttachStateChangeListener;
  }
  
  void setOnLayoutChangeListener(BaseTransientBottomBar$OnLayoutChangeListener paramBaseTransientBottomBar$OnLayoutChangeListener) {
    this.mOnLayoutChangeListener = paramBaseTransientBottomBar$OnLayoutChangeListener;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar$SnackbarBaseLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */