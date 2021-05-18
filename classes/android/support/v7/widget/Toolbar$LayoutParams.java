package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar;
import android.util.AttributeSet;
import android.view.ViewGroup;

public class Toolbar$LayoutParams extends ActionBar.LayoutParams {
  static final int CUSTOM = 0;
  
  static final int EXPANDED = 2;
  
  static final int SYSTEM = 1;
  
  int mViewType = 0;
  
  public Toolbar$LayoutParams(int paramInt) {
    this(-2, -1, paramInt);
  }
  
  public Toolbar$LayoutParams(int paramInt1, int paramInt2) {
    super(paramInt1, paramInt2);
    this.gravity = 8388627;
  }
  
  public Toolbar$LayoutParams(int paramInt1, int paramInt2, int paramInt3) {
    super(paramInt1, paramInt2);
    this.gravity = paramInt3;
  }
  
  public Toolbar$LayoutParams(@NonNull Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
  }
  
  public Toolbar$LayoutParams(ActionBar.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public Toolbar$LayoutParams(Toolbar$LayoutParams paramToolbar$LayoutParams) {
    super(paramToolbar$LayoutParams);
    this.mViewType = paramToolbar$LayoutParams.mViewType;
  }
  
  public Toolbar$LayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    super(paramLayoutParams);
  }
  
  public Toolbar$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    super((ViewGroup.LayoutParams)paramMarginLayoutParams);
    copyMarginsFromCompat(paramMarginLayoutParams);
  }
  
  void copyMarginsFromCompat(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    this.leftMargin = paramMarginLayoutParams.leftMargin;
    this.topMargin = paramMarginLayoutParams.topMargin;
    this.rightMargin = paramMarginLayoutParams.rightMargin;
    this.bottomMargin = paramMarginLayoutParams.bottomMargin;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\Toolbar$LayoutParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */