package android.support.v4.view;

import android.view.ViewGroup;

class MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase implements MarginLayoutParamsCompat$MarginLayoutParamsCompatImpl {
  public int getLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    return 0;
  }
  
  public int getMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    return paramMarginLayoutParams.rightMargin;
  }
  
  public int getMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    return paramMarginLayoutParams.leftMargin;
  }
  
  public boolean isMarginRelative(ViewGroup.MarginLayoutParams paramMarginLayoutParams) {
    return false;
  }
  
  public void resolveLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {}
  
  public void setLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {}
  
  public void setMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {
    paramMarginLayoutParams.rightMargin = paramInt;
  }
  
  public void setMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {
    paramMarginLayoutParams.leftMargin = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */