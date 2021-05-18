package android.support.v7.widget;

import android.util.Log;
import android.view.animation.Interpolator;

public class RecyclerView$SmoothScroller$Action {
  public static final int UNDEFINED_DURATION = -2147483648;
  
  private boolean changed = false;
  
  private int consecutiveUpdates = 0;
  
  private int mDuration;
  
  private int mDx;
  
  private int mDy;
  
  private Interpolator mInterpolator;
  
  private int mJumpToPosition = -1;
  
  public RecyclerView$SmoothScroller$Action(int paramInt1, int paramInt2) {
    this(paramInt1, paramInt2, -2147483648, null);
  }
  
  public RecyclerView$SmoothScroller$Action(int paramInt1, int paramInt2, int paramInt3) {
    this(paramInt1, paramInt2, paramInt3, null);
  }
  
  public RecyclerView$SmoothScroller$Action(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator) {
    this.mDx = paramInt1;
    this.mDy = paramInt2;
    this.mDuration = paramInt3;
    this.mInterpolator = paramInterpolator;
  }
  
  private void validate() {
    if (this.mInterpolator != null && this.mDuration < 1)
      throw new IllegalStateException("If you provide an interpolator, you must set a positive duration"); 
    if (this.mDuration < 1)
      throw new IllegalStateException("Scroll duration must be a positive number"); 
  }
  
  public int getDuration() {
    return this.mDuration;
  }
  
  public int getDx() {
    return this.mDx;
  }
  
  public int getDy() {
    return this.mDy;
  }
  
  public Interpolator getInterpolator() {
    return this.mInterpolator;
  }
  
  boolean hasJumpTarget() {
    return (this.mJumpToPosition >= 0);
  }
  
  public void jumpTo(int paramInt) {
    this.mJumpToPosition = paramInt;
  }
  
  void runIfNecessary(RecyclerView paramRecyclerView) {
    if (this.mJumpToPosition >= 0) {
      int i = this.mJumpToPosition;
      this.mJumpToPosition = -1;
      paramRecyclerView.jumpToPositionForSmoothScroller(i);
      this.changed = false;
      return;
    } 
    if (this.changed) {
      validate();
      if (this.mInterpolator == null) {
        if (this.mDuration == Integer.MIN_VALUE) {
          paramRecyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy);
        } else {
          paramRecyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration);
        } 
      } else {
        paramRecyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, this.mDuration, this.mInterpolator);
      } 
      this.consecutiveUpdates++;
      if (this.consecutiveUpdates > 10)
        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"); 
      this.changed = false;
      return;
    } 
    this.consecutiveUpdates = 0;
  }
  
  public void setDuration(int paramInt) {
    this.changed = true;
    this.mDuration = paramInt;
  }
  
  public void setDx(int paramInt) {
    this.changed = true;
    this.mDx = paramInt;
  }
  
  public void setDy(int paramInt) {
    this.changed = true;
    this.mDy = paramInt;
  }
  
  public void setInterpolator(Interpolator paramInterpolator) {
    this.changed = true;
    this.mInterpolator = paramInterpolator;
  }
  
  public void update(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator) {
    this.mDx = paramInt1;
    this.mDy = paramInt2;
    this.mDuration = paramInt3;
    this.mInterpolator = paramInterpolator;
    this.changed = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$SmoothScroller$Action.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */