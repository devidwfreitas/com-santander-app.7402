package android.support.v4.animation;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

class GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator implements ValueAnimatorCompat {
  private long mDuration = 200L;
  
  private boolean mEnded = false;
  
  private float mFraction = 0.0F;
  
  List<AnimatorListenerCompat> mListeners = new ArrayList<AnimatorListenerCompat>();
  
  private Runnable mLoopRunnable = new GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator$1(this);
  
  private long mStartTime;
  
  private boolean mStarted = false;
  
  View mTarget;
  
  List<AnimatorUpdateListenerCompat> mUpdateListeners = new ArrayList<AnimatorUpdateListenerCompat>();
  
  private void dispatchCancel() {
    for (int i = this.mListeners.size() - 1; i >= 0; i--)
      ((AnimatorListenerCompat)this.mListeners.get(i)).onAnimationCancel(this); 
  }
  
  private void dispatchEnd() {
    for (int i = this.mListeners.size() - 1; i >= 0; i--)
      ((AnimatorListenerCompat)this.mListeners.get(i)).onAnimationEnd(this); 
  }
  
  private void dispatchStart() {
    for (int i = this.mListeners.size() - 1; i >= 0; i--)
      ((AnimatorListenerCompat)this.mListeners.get(i)).onAnimationStart(this); 
  }
  
  private long getTime() {
    return this.mTarget.getDrawingTime();
  }
  
  private void notifyUpdateListeners() {
    for (int i = this.mUpdateListeners.size() - 1; i >= 0; i--)
      ((AnimatorUpdateListenerCompat)this.mUpdateListeners.get(i)).onAnimationUpdate(this); 
  }
  
  public void addListener(AnimatorListenerCompat paramAnimatorListenerCompat) {
    this.mListeners.add(paramAnimatorListenerCompat);
  }
  
  public void addUpdateListener(AnimatorUpdateListenerCompat paramAnimatorUpdateListenerCompat) {
    this.mUpdateListeners.add(paramAnimatorUpdateListenerCompat);
  }
  
  public void cancel() {
    if (this.mEnded)
      return; 
    this.mEnded = true;
    if (this.mStarted)
      dispatchCancel(); 
    dispatchEnd();
  }
  
  public float getAnimatedFraction() {
    return this.mFraction;
  }
  
  public void setDuration(long paramLong) {
    if (!this.mStarted)
      this.mDuration = paramLong; 
  }
  
  public void setTarget(View paramView) {
    this.mTarget = paramView;
  }
  
  public void start() {
    if (this.mStarted)
      return; 
    this.mStarted = true;
    dispatchStart();
    this.mFraction = 0.0F;
    this.mStartTime = getTime();
    this.mTarget.postDelayed(this.mLoopRunnable, 16L);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\animation\GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */