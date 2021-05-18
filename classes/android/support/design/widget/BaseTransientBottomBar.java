package android.support.design.widget;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.design.R;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
  static final int ANIMATION_DURATION = 250;
  
  static final int ANIMATION_FADE_DURATION = 180;
  
  public static final int LENGTH_INDEFINITE = -2;
  
  public static final int LENGTH_LONG = 0;
  
  public static final int LENGTH_SHORT = -1;
  
  static final int MSG_DISMISS = 1;
  
  static final int MSG_SHOW = 0;
  
  static final Handler sHandler = new Handler(Looper.getMainLooper(), new BaseTransientBottomBar$1());
  
  private final AccessibilityManager mAccessibilityManager;
  
  private List<BaseTransientBottomBar$BaseCallback<B>> mCallbacks;
  
  private final BaseTransientBottomBar$ContentViewCallback mContentViewCallback;
  
  private final Context mContext;
  
  private int mDuration;
  
  final SnackbarManager$Callback mManagerCallback = new BaseTransientBottomBar$3(this);
  
  private final ViewGroup mTargetParent;
  
  final BaseTransientBottomBar$SnackbarBaseLayout mView;
  
  protected BaseTransientBottomBar(@NonNull ViewGroup paramViewGroup, @NonNull View paramView, @NonNull BaseTransientBottomBar$ContentViewCallback paramBaseTransientBottomBar$ContentViewCallback) {
    if (paramViewGroup == null)
      throw new IllegalArgumentException("Transient bottom bar must have non-null parent"); 
    if (paramView == null)
      throw new IllegalArgumentException("Transient bottom bar must have non-null content"); 
    if (paramBaseTransientBottomBar$ContentViewCallback == null)
      throw new IllegalArgumentException("Transient bottom bar must have non-null callback"); 
    this.mTargetParent = paramViewGroup;
    this.mContentViewCallback = paramBaseTransientBottomBar$ContentViewCallback;
    this.mContext = paramViewGroup.getContext();
    ThemeUtils.checkAppCompatTheme(this.mContext);
    this.mView = (BaseTransientBottomBar$SnackbarBaseLayout)LayoutInflater.from(this.mContext).inflate(R.layout.design_layout_snackbar, this.mTargetParent, false);
    this.mView.addView(paramView);
    ViewCompat.setAccessibilityLiveRegion((View)this.mView, 1);
    ViewCompat.setImportantForAccessibility((View)this.mView, 1);
    ViewCompat.setFitsSystemWindows((View)this.mView, true);
    ViewCompat.setOnApplyWindowInsetsListener((View)this.mView, new BaseTransientBottomBar$2(this));
    this.mAccessibilityManager = (AccessibilityManager)this.mContext.getSystemService("accessibility");
  }
  
  private void animateViewOut(int paramInt) {
    if (Build.VERSION.SDK_INT >= 14) {
      ViewCompat.animate((View)this.mView).translationY(this.mView.getHeight()).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).setDuration(250L).setListener((ViewPropertyAnimatorListener)new BaseTransientBottomBar$9(this, paramInt)).start();
      return;
    } 
    Animation animation = AnimationUtils.loadAnimation(this.mView.getContext(), R.anim.design_snackbar_out);
    animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    animation.setDuration(250L);
    animation.setAnimationListener(new BaseTransientBottomBar$10(this, paramInt));
    this.mView.startAnimation(animation);
  }
  
  @NonNull
  public B addCallback(@NonNull BaseTransientBottomBar$BaseCallback<B> paramBaseTransientBottomBar$BaseCallback) {
    if (paramBaseTransientBottomBar$BaseCallback == null)
      return (B)this; 
    if (this.mCallbacks == null)
      this.mCallbacks = new ArrayList<BaseTransientBottomBar$BaseCallback<B>>(); 
    this.mCallbacks.add(paramBaseTransientBottomBar$BaseCallback);
    return (B)this;
  }
  
  void animateViewIn() {
    if (Build.VERSION.SDK_INT >= 14) {
      ViewCompat.setTranslationY((View)this.mView, this.mView.getHeight());
      ViewCompat.animate((View)this.mView).translationY(0.0F).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).setDuration(250L).setListener((ViewPropertyAnimatorListener)new BaseTransientBottomBar$7(this)).start();
      return;
    } 
    Animation animation = AnimationUtils.loadAnimation(this.mView.getContext(), R.anim.design_snackbar_in);
    animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    animation.setDuration(250L);
    animation.setAnimationListener(new BaseTransientBottomBar$8(this));
    this.mView.startAnimation(animation);
  }
  
  public void dismiss() {
    dispatchDismiss(3);
  }
  
  void dispatchDismiss(int paramInt) {
    SnackbarManager.getInstance().dismiss(this.mManagerCallback, paramInt);
  }
  
  @NonNull
  public Context getContext() {
    return this.mContext;
  }
  
  public int getDuration() {
    return this.mDuration;
  }
  
  @NonNull
  public View getView() {
    return (View)this.mView;
  }
  
  final void hideView(int paramInt) {
    if (shouldAnimate() && this.mView.getVisibility() == 0) {
      animateViewOut(paramInt);
      return;
    } 
    onViewHidden(paramInt);
  }
  
  public boolean isShown() {
    return SnackbarManager.getInstance().isCurrent(this.mManagerCallback);
  }
  
  public boolean isShownOrQueued() {
    return SnackbarManager.getInstance().isCurrentOrNext(this.mManagerCallback);
  }
  
  void onViewHidden(int paramInt) {
    SnackbarManager.getInstance().onDismissed(this.mManagerCallback);
    if (this.mCallbacks != null)
      for (int i = this.mCallbacks.size() - 1; i >= 0; i--)
        ((BaseTransientBottomBar$BaseCallback<BaseTransientBottomBar>)this.mCallbacks.get(i)).onDismissed(this, paramInt);  
    if (Build.VERSION.SDK_INT < 11)
      this.mView.setVisibility(8); 
    ViewParent viewParent = this.mView.getParent();
    if (viewParent instanceof ViewGroup)
      ((ViewGroup)viewParent).removeView((View)this.mView); 
  }
  
  void onViewShown() {
    SnackbarManager.getInstance().onShown(this.mManagerCallback);
    if (this.mCallbacks != null)
      for (int i = this.mCallbacks.size() - 1; i >= 0; i--)
        ((BaseTransientBottomBar$BaseCallback<BaseTransientBottomBar>)this.mCallbacks.get(i)).onShown(this);  
  }
  
  @NonNull
  public B removeCallback(@NonNull BaseTransientBottomBar$BaseCallback<B> paramBaseTransientBottomBar$BaseCallback) {
    if (paramBaseTransientBottomBar$BaseCallback != null && this.mCallbacks != null) {
      this.mCallbacks.remove(paramBaseTransientBottomBar$BaseCallback);
      return (B)this;
    } 
    return (B)this;
  }
  
  @NonNull
  public B setDuration(int paramInt) {
    this.mDuration = paramInt;
    return (B)this;
  }
  
  boolean shouldAnimate() {
    return !this.mAccessibilityManager.isEnabled();
  }
  
  public void show() {
    SnackbarManager.getInstance().show(this.mDuration, this.mManagerCallback);
  }
  
  final void showView() {
    if (this.mView.getParent() == null) {
      ViewGroup.LayoutParams layoutParams = this.mView.getLayoutParams();
      if (layoutParams instanceof CoordinatorLayout$LayoutParams) {
        CoordinatorLayout$LayoutParams coordinatorLayout$LayoutParams = (CoordinatorLayout$LayoutParams)layoutParams;
        BaseTransientBottomBar$Behavior baseTransientBottomBar$Behavior = new BaseTransientBottomBar$Behavior(this);
        baseTransientBottomBar$Behavior.setStartAlphaSwipeDistance(0.1F);
        baseTransientBottomBar$Behavior.setEndAlphaSwipeDistance(0.6F);
        baseTransientBottomBar$Behavior.setSwipeDirection(0);
        baseTransientBottomBar$Behavior.setListener(new BaseTransientBottomBar$4(this));
        coordinatorLayout$LayoutParams.setBehavior(baseTransientBottomBar$Behavior);
        coordinatorLayout$LayoutParams.insetEdge = 80;
      } 
      this.mTargetParent.addView((View)this.mView);
    } 
    this.mView.setOnAttachStateChangeListener(new BaseTransientBottomBar$5(this));
    if (ViewCompat.isLaidOut((View)this.mView)) {
      if (shouldAnimate()) {
        animateViewIn();
        return;
      } 
      onViewShown();
      return;
    } 
    this.mView.setOnLayoutChangeListener(new BaseTransientBottomBar$6(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BaseTransientBottomBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */