package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.widget.ScrollerCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.MenuPresenter;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ActionBarOverlayLayout extends ViewGroup implements NestedScrollingParent, DecorContentParent {
  static final int[] ATTRS = new int[] { R.attr.actionBarSize, 16842841 };
  
  private static final String TAG = "ActionBarOverlayLayout";
  
  private final int ACTION_BAR_ANIMATE_DELAY = 600;
  
  private int mActionBarHeight;
  
  ActionBarContainer mActionBarTop;
  
  private ActionBarOverlayLayout$ActionBarVisibilityCallback mActionBarVisibilityCallback;
  
  private final Runnable mAddActionBarHideOffset = new ActionBarOverlayLayout$3(this);
  
  boolean mAnimatingForFling;
  
  private final Rect mBaseContentInsets = new Rect();
  
  private final Rect mBaseInnerInsets = new Rect();
  
  private ContentFrameLayout mContent;
  
  private final Rect mContentInsets = new Rect();
  
  ViewPropertyAnimatorCompat mCurrentActionBarTopAnimator;
  
  private DecorToolbar mDecorToolbar;
  
  private ScrollerCompat mFlingEstimator;
  
  private boolean mHasNonEmbeddedTabs;
  
  private boolean mHideOnContentScroll;
  
  private int mHideOnContentScrollReference;
  
  private boolean mIgnoreWindowContentOverlay;
  
  private final Rect mInnerInsets = new Rect();
  
  private final Rect mLastBaseContentInsets = new Rect();
  
  private final Rect mLastInnerInsets = new Rect();
  
  private int mLastSystemUiVisibility;
  
  private boolean mOverlayMode;
  
  private final NestedScrollingParentHelper mParentHelper;
  
  private final Runnable mRemoveActionBarHideOffset = new ActionBarOverlayLayout$2(this);
  
  final ViewPropertyAnimatorListener mTopAnimatorListener = (ViewPropertyAnimatorListener)new ActionBarOverlayLayout$1(this);
  
  private Drawable mWindowContentOverlay;
  
  private int mWindowVisibility = 0;
  
  public ActionBarOverlayLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    init(paramContext);
    this.mParentHelper = new NestedScrollingParentHelper(this);
  }
  
  private void addActionBarHideOffset() {
    haltActionBarHideOffsetAnimations();
    this.mAddActionBarHideOffset.run();
  }
  
  private boolean applyInsets(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4) {
    boolean bool2 = false;
    ActionBarOverlayLayout$LayoutParams actionBarOverlayLayout$LayoutParams = (ActionBarOverlayLayout$LayoutParams)paramView.getLayoutParams();
    boolean bool1 = bool2;
    if (paramBoolean1) {
      bool1 = bool2;
      if (actionBarOverlayLayout$LayoutParams.leftMargin != paramRect.left) {
        actionBarOverlayLayout$LayoutParams.leftMargin = paramRect.left;
        bool1 = true;
      } 
    } 
    paramBoolean1 = bool1;
    if (paramBoolean2) {
      paramBoolean1 = bool1;
      if (actionBarOverlayLayout$LayoutParams.topMargin != paramRect.top) {
        actionBarOverlayLayout$LayoutParams.topMargin = paramRect.top;
        paramBoolean1 = true;
      } 
    } 
    paramBoolean2 = paramBoolean1;
    if (paramBoolean4) {
      paramBoolean2 = paramBoolean1;
      if (actionBarOverlayLayout$LayoutParams.rightMargin != paramRect.right) {
        actionBarOverlayLayout$LayoutParams.rightMargin = paramRect.right;
        paramBoolean2 = true;
      } 
    } 
    if (paramBoolean3 && actionBarOverlayLayout$LayoutParams.bottomMargin != paramRect.bottom) {
      actionBarOverlayLayout$LayoutParams.bottomMargin = paramRect.bottom;
      return true;
    } 
    return paramBoolean2;
  }
  
  private DecorToolbar getDecorToolbar(View paramView) {
    if (paramView instanceof DecorToolbar)
      return (DecorToolbar)paramView; 
    if (paramView instanceof Toolbar)
      return ((Toolbar)paramView).getWrapper(); 
    throw new IllegalStateException("Can't make a decor toolbar out of " + paramView.getClass().getSimpleName());
  }
  
  private void init(Context paramContext) {
    boolean bool1;
    boolean bool2 = true;
    TypedArray typedArray = getContext().getTheme().obtainStyledAttributes(ATTRS);
    this.mActionBarHeight = typedArray.getDimensionPixelSize(0, 0);
    this.mWindowContentOverlay = typedArray.getDrawable(1);
    if (this.mWindowContentOverlay == null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    setWillNotDraw(bool1);
    typedArray.recycle();
    if ((paramContext.getApplicationInfo()).targetSdkVersion < 19) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    this.mIgnoreWindowContentOverlay = bool1;
    this.mFlingEstimator = ScrollerCompat.create(paramContext);
  }
  
  private void postAddActionBarHideOffset() {
    haltActionBarHideOffsetAnimations();
    postDelayed(this.mAddActionBarHideOffset, 600L);
  }
  
  private void postRemoveActionBarHideOffset() {
    haltActionBarHideOffsetAnimations();
    postDelayed(this.mRemoveActionBarHideOffset, 600L);
  }
  
  private void removeActionBarHideOffset() {
    haltActionBarHideOffsetAnimations();
    this.mRemoveActionBarHideOffset.run();
  }
  
  private boolean shouldHideActionBarOnFling(float paramFloat1, float paramFloat2) {
    boolean bool = false;
    this.mFlingEstimator.fling(0, 0, 0, (int)paramFloat2, 0, 0, -2147483648, 2147483647);
    if (this.mFlingEstimator.getFinalY() > this.mActionBarTop.getHeight())
      bool = true; 
    return bool;
  }
  
  public boolean canShowOverflowMenu() {
    pullChildren();
    return this.mDecorToolbar.canShowOverflowMenu();
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return paramLayoutParams instanceof ActionBarOverlayLayout$LayoutParams;
  }
  
  public void dismissPopups() {
    pullChildren();
    this.mDecorToolbar.dismissPopupMenus();
  }
  
  public void draw(Canvas paramCanvas) {
    super.draw(paramCanvas);
    if (this.mWindowContentOverlay != null && !this.mIgnoreWindowContentOverlay) {
      byte b;
      if (this.mActionBarTop.getVisibility() == 0) {
        b = (int)(this.mActionBarTop.getBottom() + ViewCompat.getTranslationY((View)this.mActionBarTop) + 0.5F);
      } else {
        b = 0;
      } 
      this.mWindowContentOverlay.setBounds(0, b, getWidth(), this.mWindowContentOverlay.getIntrinsicHeight() + b);
      this.mWindowContentOverlay.draw(paramCanvas);
    } 
  }
  
  protected boolean fitSystemWindows(Rect paramRect) {
    pullChildren();
    if ((ViewCompat.getWindowSystemUiVisibility((View)this) & 0x100) != 0);
    boolean bool = applyInsets((View)this.mActionBarTop, paramRect, true, true, false, true);
    this.mBaseInnerInsets.set(paramRect);
    ViewUtils.computeFitSystemWindows((View)this, this.mBaseInnerInsets, this.mBaseContentInsets);
    if (!this.mLastBaseContentInsets.equals(this.mBaseContentInsets)) {
      this.mLastBaseContentInsets.set(this.mBaseContentInsets);
      bool = true;
    } 
    if (bool)
      requestLayout(); 
    return true;
  }
  
  protected ActionBarOverlayLayout$LayoutParams generateDefaultLayoutParams() {
    return new ActionBarOverlayLayout$LayoutParams(-1, -1);
  }
  
  public ActionBarOverlayLayout$LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new ActionBarOverlayLayout$LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (ViewGroup.LayoutParams)new ActionBarOverlayLayout$LayoutParams(paramLayoutParams);
  }
  
  public int getActionBarHideOffset() {
    return (this.mActionBarTop != null) ? -((int)ViewCompat.getTranslationY((View)this.mActionBarTop)) : 0;
  }
  
  public int getNestedScrollAxes() {
    return this.mParentHelper.getNestedScrollAxes();
  }
  
  public CharSequence getTitle() {
    pullChildren();
    return this.mDecorToolbar.getTitle();
  }
  
  void haltActionBarHideOffsetAnimations() {
    removeCallbacks(this.mRemoveActionBarHideOffset);
    removeCallbacks(this.mAddActionBarHideOffset);
    if (this.mCurrentActionBarTopAnimator != null)
      this.mCurrentActionBarTopAnimator.cancel(); 
  }
  
  public boolean hasIcon() {
    pullChildren();
    return this.mDecorToolbar.hasIcon();
  }
  
  public boolean hasLogo() {
    pullChildren();
    return this.mDecorToolbar.hasLogo();
  }
  
  public boolean hideOverflowMenu() {
    pullChildren();
    return this.mDecorToolbar.hideOverflowMenu();
  }
  
  public void initFeature(int paramInt) {
    pullChildren();
    switch (paramInt) {
      default:
        return;
      case 2:
        this.mDecorToolbar.initProgress();
        return;
      case 5:
        this.mDecorToolbar.initIndeterminateProgress();
        return;
      case 109:
        break;
    } 
    setOverlayMode(true);
  }
  
  public boolean isHideOnContentScrollEnabled() {
    return this.mHideOnContentScroll;
  }
  
  public boolean isInOverlayMode() {
    return this.mOverlayMode;
  }
  
  public boolean isOverflowMenuShowPending() {
    pullChildren();
    return this.mDecorToolbar.isOverflowMenuShowPending();
  }
  
  public boolean isOverflowMenuShowing() {
    pullChildren();
    return this.mDecorToolbar.isOverflowMenuShowing();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration) {
    super.onConfigurationChanged(paramConfiguration);
    init(getContext());
    ViewCompat.requestApplyInsets((View)this);
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    haltActionBarHideOffsetAnimations();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    paramInt2 = getChildCount();
    paramInt3 = getPaddingLeft();
    getPaddingRight();
    paramInt4 = getPaddingTop();
    getPaddingBottom();
    for (paramInt1 = 0; paramInt1 < paramInt2; paramInt1++) {
      View view = getChildAt(paramInt1);
      if (view.getVisibility() != 8) {
        ActionBarOverlayLayout$LayoutParams actionBarOverlayLayout$LayoutParams = (ActionBarOverlayLayout$LayoutParams)view.getLayoutParams();
        int i = view.getMeasuredWidth();
        int j = view.getMeasuredHeight();
        int k = actionBarOverlayLayout$LayoutParams.leftMargin + paramInt3;
        int m = actionBarOverlayLayout$LayoutParams.topMargin + paramInt4;
        view.layout(k, m, i + k, j + m);
      } 
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    pullChildren();
    measureChildWithMargins((View)this.mActionBarTop, paramInt1, 0, paramInt2, 0);
    ActionBarOverlayLayout$LayoutParams actionBarOverlayLayout$LayoutParams = (ActionBarOverlayLayout$LayoutParams)this.mActionBarTop.getLayoutParams();
    int i1 = Math.max(0, this.mActionBarTop.getMeasuredWidth() + actionBarOverlayLayout$LayoutParams.leftMargin + actionBarOverlayLayout$LayoutParams.rightMargin);
    int i = this.mActionBarTop.getMeasuredHeight();
    int j = actionBarOverlayLayout$LayoutParams.topMargin;
    int n = Math.max(0, actionBarOverlayLayout$LayoutParams.bottomMargin + i + j);
    int m = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState((View)this.mActionBarTop));
    if ((ViewCompat.getWindowSystemUiVisibility((View)this) & 0x100) != 0) {
      j = 1;
    } else {
      j = 0;
    } 
    if (j != 0) {
      int i2 = this.mActionBarHeight;
      i = i2;
      if (this.mHasNonEmbeddedTabs) {
        i = i2;
        if (this.mActionBarTop.getTabContainer() != null)
          i = i2 + this.mActionBarHeight; 
      } 
    } else if (this.mActionBarTop.getVisibility() != 8) {
      i = this.mActionBarTop.getMeasuredHeight();
    } else {
      i = 0;
    } 
    this.mContentInsets.set(this.mBaseContentInsets);
    this.mInnerInsets.set(this.mBaseInnerInsets);
    if (!this.mOverlayMode && j == 0) {
      Rect rect = this.mContentInsets;
      rect.top = i + rect.top;
      rect = this.mContentInsets;
      rect.bottom += 0;
    } else {
      Rect rect = this.mInnerInsets;
      rect.top = i + rect.top;
      rect = this.mInnerInsets;
      rect.bottom += 0;
    } 
    applyInsets((View)this.mContent, this.mContentInsets, true, true, true, true);
    if (!this.mLastInnerInsets.equals(this.mInnerInsets)) {
      this.mLastInnerInsets.set(this.mInnerInsets);
      this.mContent.dispatchFitSystemWindows(this.mInnerInsets);
    } 
    measureChildWithMargins((View)this.mContent, paramInt1, 0, paramInt2, 0);
    actionBarOverlayLayout$LayoutParams = (ActionBarOverlayLayout$LayoutParams)this.mContent.getLayoutParams();
    i = Math.max(i1, this.mContent.getMeasuredWidth() + actionBarOverlayLayout$LayoutParams.leftMargin + actionBarOverlayLayout$LayoutParams.rightMargin);
    j = this.mContent.getMeasuredHeight();
    int k = actionBarOverlayLayout$LayoutParams.topMargin;
    j = Math.max(n, actionBarOverlayLayout$LayoutParams.bottomMargin + j + k);
    k = ViewUtils.combineMeasuredStates(m, ViewCompat.getMeasuredState((View)this.mContent));
    m = getPaddingLeft();
    n = getPaddingRight();
    j = Math.max(j + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight());
    setMeasuredDimension(ViewCompat.resolveSizeAndState(Math.max(i + m + n, getSuggestedMinimumWidth()), paramInt1, k), ViewCompat.resolveSizeAndState(j, paramInt2, k << 16));
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    if (!this.mHideOnContentScroll || !paramBoolean)
      return false; 
    if (shouldHideActionBarOnFling(paramFloat1, paramFloat2)) {
      addActionBarHideOffset();
      this.mAnimatingForFling = true;
      return true;
    } 
    removeActionBarHideOffset();
    this.mAnimatingForFling = true;
    return true;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2) {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mHideOnContentScrollReference += paramInt2;
    setActionBarHideOffset(this.mHideOnContentScrollReference);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt) {
    this.mParentHelper.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    this.mHideOnContentScrollReference = getActionBarHideOffset();
    haltActionBarHideOffsetAnimations();
    if (this.mActionBarVisibilityCallback != null)
      this.mActionBarVisibilityCallback.onContentScrollStarted(); 
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt) {
    return ((paramInt & 0x2) == 0 || this.mActionBarTop.getVisibility() != 0) ? false : this.mHideOnContentScroll;
  }
  
  public void onStopNestedScroll(View paramView) {
    if (this.mHideOnContentScroll && !this.mAnimatingForFling)
      if (this.mHideOnContentScrollReference <= this.mActionBarTop.getHeight()) {
        postRemoveActionBarHideOffset();
      } else {
        postAddActionBarHideOffset();
      }  
    if (this.mActionBarVisibilityCallback != null)
      this.mActionBarVisibilityCallback.onContentScrollStopped(); 
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt) {
    boolean bool1;
    boolean bool2;
    boolean bool3 = true;
    if (Build.VERSION.SDK_INT >= 16)
      super.onWindowSystemUiVisibilityChanged(paramInt); 
    pullChildren();
    int i = this.mLastSystemUiVisibility;
    this.mLastSystemUiVisibility = paramInt;
    if ((paramInt & 0x4) == 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if ((paramInt & 0x100) != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (this.mActionBarVisibilityCallback != null) {
      ActionBarOverlayLayout$ActionBarVisibilityCallback actionBarOverlayLayout$ActionBarVisibilityCallback = this.mActionBarVisibilityCallback;
      if (bool2)
        bool3 = false; 
      actionBarOverlayLayout$ActionBarVisibilityCallback.enableContentAnimations(bool3);
      if (bool1 || !bool2) {
        this.mActionBarVisibilityCallback.showForSystem();
      } else {
        this.mActionBarVisibilityCallback.hideForSystem();
      } 
    } 
    if (((i ^ paramInt) & 0x100) != 0 && this.mActionBarVisibilityCallback != null)
      ViewCompat.requestApplyInsets((View)this); 
  }
  
  protected void onWindowVisibilityChanged(int paramInt) {
    super.onWindowVisibilityChanged(paramInt);
    this.mWindowVisibility = paramInt;
    if (this.mActionBarVisibilityCallback != null)
      this.mActionBarVisibilityCallback.onWindowVisibilityChanged(paramInt); 
  }
  
  void pullChildren() {
    if (this.mContent == null) {
      this.mContent = (ContentFrameLayout)findViewById(R.id.action_bar_activity_content);
      this.mActionBarTop = (ActionBarContainer)findViewById(R.id.action_bar_container);
      this.mDecorToolbar = getDecorToolbar(findViewById(R.id.action_bar));
    } 
  }
  
  public void restoreToolbarHierarchyState(SparseArray<Parcelable> paramSparseArray) {
    pullChildren();
    this.mDecorToolbar.restoreHierarchyState(paramSparseArray);
  }
  
  public void saveToolbarHierarchyState(SparseArray<Parcelable> paramSparseArray) {
    pullChildren();
    this.mDecorToolbar.saveHierarchyState(paramSparseArray);
  }
  
  public void setActionBarHideOffset(int paramInt) {
    haltActionBarHideOffsetAnimations();
    paramInt = Math.max(0, Math.min(paramInt, this.mActionBarTop.getHeight()));
    ViewCompat.setTranslationY((View)this.mActionBarTop, -paramInt);
  }
  
  public void setActionBarVisibilityCallback(ActionBarOverlayLayout$ActionBarVisibilityCallback paramActionBarOverlayLayout$ActionBarVisibilityCallback) {
    this.mActionBarVisibilityCallback = paramActionBarOverlayLayout$ActionBarVisibilityCallback;
    if (getWindowToken() != null) {
      this.mActionBarVisibilityCallback.onWindowVisibilityChanged(this.mWindowVisibility);
      if (this.mLastSystemUiVisibility != 0) {
        onWindowSystemUiVisibilityChanged(this.mLastSystemUiVisibility);
        ViewCompat.requestApplyInsets((View)this);
      } 
    } 
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean) {
    this.mHasNonEmbeddedTabs = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean) {
    if (paramBoolean != this.mHideOnContentScroll) {
      this.mHideOnContentScroll = paramBoolean;
      if (!paramBoolean) {
        haltActionBarHideOffsetAnimations();
        setActionBarHideOffset(0);
      } 
    } 
  }
  
  public void setIcon(int paramInt) {
    pullChildren();
    this.mDecorToolbar.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable) {
    pullChildren();
    this.mDecorToolbar.setIcon(paramDrawable);
  }
  
  public void setLogo(int paramInt) {
    pullChildren();
    this.mDecorToolbar.setLogo(paramInt);
  }
  
  public void setMenu(Menu paramMenu, MenuPresenter.Callback paramCallback) {
    pullChildren();
    this.mDecorToolbar.setMenu(paramMenu, paramCallback);
  }
  
  public void setMenuPrepared() {
    pullChildren();
    this.mDecorToolbar.setMenuPrepared();
  }
  
  public void setOverlayMode(boolean paramBoolean) {
    this.mOverlayMode = paramBoolean;
    if (paramBoolean && (getContext().getApplicationInfo()).targetSdkVersion < 19) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    } 
    this.mIgnoreWindowContentOverlay = paramBoolean;
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(Window.Callback paramCallback) {
    pullChildren();
    this.mDecorToolbar.setWindowCallback(paramCallback);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence) {
    pullChildren();
    this.mDecorToolbar.setWindowTitle(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState() {
    return false;
  }
  
  public boolean showOverflowMenu() {
    pullChildren();
    return this.mDecorToolbar.showOverflowMenu();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionBarOverlayLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */