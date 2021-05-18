package android.support.v7.widget.helper;

import android.support.v4.animation.AnimatorCompatHelper;
import android.support.v4.animation.AnimatorListenerCompat;
import android.support.v4.animation.ValueAnimatorCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;

class ItemTouchHelper$RecoverAnimation implements AnimatorListenerCompat {
  final int mActionState;
  
  final int mAnimationType;
  
  boolean mEnded = false;
  
  private float mFraction;
  
  public boolean mIsPendingCleanup;
  
  boolean mOverridden = false;
  
  final float mStartDx;
  
  final float mStartDy;
  
  final float mTargetX;
  
  final float mTargetY;
  
  private final ValueAnimatorCompat mValueAnimator;
  
  final RecyclerView.ViewHolder mViewHolder;
  
  float mX;
  
  float mY;
  
  public ItemTouchHelper$RecoverAnimation(RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    this.mActionState = paramInt2;
    this.mAnimationType = paramInt1;
    this.mViewHolder = paramViewHolder;
    this.mStartDx = paramFloat1;
    this.mStartDy = paramFloat2;
    this.mTargetX = paramFloat3;
    this.mTargetY = paramFloat4;
    this.mValueAnimator = AnimatorCompatHelper.emptyValueAnimator();
    this.mValueAnimator.addUpdateListener(new ItemTouchHelper$RecoverAnimation$1(this, paramItemTouchHelper));
    this.mValueAnimator.setTarget(paramViewHolder.itemView);
    this.mValueAnimator.addListener(this);
    setFraction(0.0F);
  }
  
  public void cancel() {
    this.mValueAnimator.cancel();
  }
  
  public void onAnimationCancel(ValueAnimatorCompat paramValueAnimatorCompat) {
    setFraction(1.0F);
  }
  
  public void onAnimationEnd(ValueAnimatorCompat paramValueAnimatorCompat) {
    if (!this.mEnded)
      this.mViewHolder.setIsRecyclable(true); 
    this.mEnded = true;
  }
  
  public void onAnimationRepeat(ValueAnimatorCompat paramValueAnimatorCompat) {}
  
  public void onAnimationStart(ValueAnimatorCompat paramValueAnimatorCompat) {}
  
  public void setDuration(long paramLong) {
    this.mValueAnimator.setDuration(paramLong);
  }
  
  public void setFraction(float paramFloat) {
    this.mFraction = paramFloat;
  }
  
  public void start() {
    this.mViewHolder.setIsRecyclable(false);
    this.mValueAnimator.start();
  }
  
  public void update() {
    if (this.mStartDx == this.mTargetX) {
      this.mX = ViewCompat.getTranslationX(this.mViewHolder.itemView);
    } else {
      this.mX = this.mStartDx + this.mFraction * (this.mTargetX - this.mStartDx);
    } 
    if (this.mStartDy == this.mTargetY) {
      this.mY = ViewCompat.getTranslationY(this.mViewHolder.itemView);
      return;
    } 
    this.mY = this.mStartDy + this.mFraction * (this.mTargetY - this.mStartDy);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$RecoverAnimation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */