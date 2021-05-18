package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class ContentLoadingProgressBar extends ProgressBar {
  private static final int MIN_DELAY = 500;
  
  private static final int MIN_SHOW_TIME = 500;
  
  private final Runnable mDelayedHide = new ContentLoadingProgressBar$1(this);
  
  private final Runnable mDelayedShow = new ContentLoadingProgressBar$2(this);
  
  boolean mDismissed = false;
  
  boolean mPostedHide = false;
  
  boolean mPostedShow = false;
  
  long mStartTime = -1L;
  
  public ContentLoadingProgressBar(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public ContentLoadingProgressBar(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet, 0);
  }
  
  private void removeCallbacks() {
    removeCallbacks(this.mDelayedHide);
    removeCallbacks(this.mDelayedShow);
  }
  
  public void hide() {
    this.mDismissed = true;
    removeCallbacks(this.mDelayedShow);
    long l = System.currentTimeMillis() - this.mStartTime;
    if (l >= 500L || this.mStartTime == -1L) {
      setVisibility(8);
      return;
    } 
    if (!this.mPostedHide) {
      postDelayed(this.mDelayedHide, 500L - l);
      this.mPostedHide = true;
      return;
    } 
  }
  
  public void onAttachedToWindow() {
    super.onAttachedToWindow();
    removeCallbacks();
  }
  
  public void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    removeCallbacks();
  }
  
  public void show() {
    this.mStartTime = -1L;
    this.mDismissed = false;
    removeCallbacks(this.mDelayedHide);
    if (!this.mPostedShow) {
      postDelayed(this.mDelayedShow, 500L);
      this.mPostedShow = true;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ContentLoadingProgressBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */