package android.support.v4.widget;

import android.view.View;

public abstract class ViewDragHelper$Callback {
  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2) {
    return 0;
  }
  
  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2) {
    return 0;
  }
  
  public int getOrderedChildIndex(int paramInt) {
    return paramInt;
  }
  
  public int getViewHorizontalDragRange(View paramView) {
    return 0;
  }
  
  public int getViewVerticalDragRange(View paramView) {
    return 0;
  }
  
  public void onEdgeDragStarted(int paramInt1, int paramInt2) {}
  
  public boolean onEdgeLock(int paramInt) {
    return false;
  }
  
  public void onEdgeTouched(int paramInt1, int paramInt2) {}
  
  public void onViewCaptured(View paramView, int paramInt) {}
  
  public void onViewDragStateChanged(int paramInt) {}
  
  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2) {}
  
  public abstract boolean tryCaptureView(View paramView, int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ViewDragHelper$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */