package android.support.v4.app;

import android.view.View;

class Fragment$AnimationInfo {
  private Boolean mAllowEnterTransitionOverlap;
  
  private Boolean mAllowReturnTransitionOverlap;
  
  View mAnimatingAway;
  
  private Object mEnterTransition = null;
  
  SharedElementCallback mEnterTransitionCallback = null;
  
  boolean mEnterTransitionPostponed;
  
  private Object mExitTransition = null;
  
  SharedElementCallback mExitTransitionCallback = null;
  
  boolean mIsHideReplaced;
  
  int mNextAnim;
  
  int mNextTransition;
  
  int mNextTransitionStyle;
  
  private Object mReenterTransition = Fragment.USE_DEFAULT_TRANSITION;
  
  private Object mReturnTransition = Fragment.USE_DEFAULT_TRANSITION;
  
  private Object mSharedElementEnterTransition = null;
  
  private Object mSharedElementReturnTransition = Fragment.USE_DEFAULT_TRANSITION;
  
  Fragment$OnStartEnterTransitionListener mStartEnterTransitionListener;
  
  int mStateAfterAnimating;
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\Fragment$AnimationInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */