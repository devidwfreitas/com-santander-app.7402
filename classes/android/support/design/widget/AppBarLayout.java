package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.annotation.VisibleForTesting;
import android.support.design.R;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;

@CoordinatorLayout$DefaultBehavior(AppBarLayout$Behavior.class)
public class AppBarLayout extends LinearLayout {
  private static final int INVALID_SCROLL_RANGE = -1;
  
  static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
  
  static final int PENDING_ACTION_COLLAPSED = 2;
  
  static final int PENDING_ACTION_EXPANDED = 1;
  
  static final int PENDING_ACTION_FORCE = 8;
  
  static final int PENDING_ACTION_NONE = 0;
  
  private boolean mCollapsed;
  
  private boolean mCollapsible;
  
  private int mDownPreScrollRange = -1;
  
  private int mDownScrollRange = -1;
  
  private boolean mHaveChildWithInterpolator;
  
  private WindowInsetsCompat mLastInsets;
  
  private List<AppBarLayout$OnOffsetChangedListener> mListeners;
  
  private int mPendingAction = 0;
  
  private final int[] mTmpStatesArray = new int[2];
  
  private int mTotalScrollRange = -1;
  
  public AppBarLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public AppBarLayout(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    ThemeUtils.checkAppCompatTheme(paramContext);
    if (Build.VERSION.SDK_INT >= 21) {
      ViewUtilsLollipop.setBoundsViewOutlineProvider((View)this);
      ViewUtilsLollipop.setStateListAnimatorFromAttrs((View)this, paramAttributeSet, 0, R.style.Widget_Design_AppBarLayout);
    } 
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppBarLayout, 0, R.style.Widget_Design_AppBarLayout);
    ViewCompat.setBackground((View)this, typedArray.getDrawable(R.styleable.AppBarLayout_android_background));
    if (typedArray.hasValue(R.styleable.AppBarLayout_expanded))
      setExpanded(typedArray.getBoolean(R.styleable.AppBarLayout_expanded, false), false, false); 
    if (Build.VERSION.SDK_INT >= 21 && typedArray.hasValue(R.styleable.AppBarLayout_elevation))
      ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator((View)this, typedArray.getDimensionPixelSize(R.styleable.AppBarLayout_elevation, 0)); 
    typedArray.recycle();
    ViewCompat.setOnApplyWindowInsetsListener((View)this, new AppBarLayout$1(this));
  }
  
  private void invalidateScrollRanges() {
    this.mTotalScrollRange = -1;
    this.mDownPreScrollRange = -1;
    this.mDownScrollRange = -1;
  }
  
  private boolean setCollapsibleState(boolean paramBoolean) {
    if (this.mCollapsible != paramBoolean) {
      this.mCollapsible = paramBoolean;
      refreshDrawableState();
      return true;
    } 
    return false;
  }
  
  private void setExpanded(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    byte b1;
    byte b2;
    byte b3 = 0;
    if (paramBoolean1) {
      b1 = 1;
    } else {
      b1 = 2;
    } 
    if (paramBoolean2) {
      b2 = 4;
    } else {
      b2 = 0;
    } 
    if (paramBoolean3)
      b3 = 8; 
    this.mPendingAction = b3 | b2 | b1;
    requestLayout();
  }
  
  private void updateCollapsible() {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getChildCount : ()I
    //   4: istore_2
    //   5: iconst_0
    //   6: istore_1
    //   7: iload_1
    //   8: iload_2
    //   9: if_icmpge -> 45
    //   12: aload_0
    //   13: iload_1
    //   14: invokevirtual getChildAt : (I)Landroid/view/View;
    //   17: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   20: checkcast android/support/design/widget/AppBarLayout$LayoutParams
    //   23: invokevirtual isCollapsible : ()Z
    //   26: ifeq -> 38
    //   29: iconst_1
    //   30: istore_3
    //   31: aload_0
    //   32: iload_3
    //   33: invokespecial setCollapsibleState : (Z)Z
    //   36: pop
    //   37: return
    //   38: iload_1
    //   39: iconst_1
    //   40: iadd
    //   41: istore_1
    //   42: goto -> 7
    //   45: iconst_0
    //   46: istore_3
    //   47: goto -> 31
  }
  
  public void addOnOffsetChangedListener(AppBarLayout$OnOffsetChangedListener paramAppBarLayout$OnOffsetChangedListener) {
    if (this.mListeners == null)
      this.mListeners = new ArrayList<AppBarLayout$OnOffsetChangedListener>(); 
    if (paramAppBarLayout$OnOffsetChangedListener != null && !this.mListeners.contains(paramAppBarLayout$OnOffsetChangedListener))
      this.mListeners.add(paramAppBarLayout$OnOffsetChangedListener); 
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return paramLayoutParams instanceof AppBarLayout$LayoutParams;
  }
  
  void dispatchOffsetUpdates(int paramInt) {
    if (this.mListeners != null) {
      int j = this.mListeners.size();
      for (int i = 0; i < j; i++) {
        AppBarLayout$OnOffsetChangedListener appBarLayout$OnOffsetChangedListener = this.mListeners.get(i);
        if (appBarLayout$OnOffsetChangedListener != null)
          appBarLayout$OnOffsetChangedListener.onOffsetChanged(this, paramInt); 
      } 
    } 
  }
  
  protected AppBarLayout$LayoutParams generateDefaultLayoutParams() {
    return new AppBarLayout$LayoutParams(-1, -2);
  }
  
  public AppBarLayout$LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new AppBarLayout$LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected AppBarLayout$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (Build.VERSION.SDK_INT >= 19 && paramLayoutParams instanceof LinearLayout.LayoutParams) ? new AppBarLayout$LayoutParams((LinearLayout.LayoutParams)paramLayoutParams) : ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams) ? new AppBarLayout$LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams) : new AppBarLayout$LayoutParams(paramLayoutParams));
  }
  
  int getDownNestedPreScrollRange() {
    if (this.mDownPreScrollRange != -1)
      return this.mDownPreScrollRange; 
    int j = getChildCount() - 1;
    int i = 0;
    while (j >= 0) {
      View view = getChildAt(j);
      AppBarLayout$LayoutParams appBarLayout$LayoutParams = (AppBarLayout$LayoutParams)view.getLayoutParams();
      int k = view.getMeasuredHeight();
      int m = appBarLayout$LayoutParams.mScrollFlags;
      if ((m & 0x5) == 5) {
        int n = appBarLayout$LayoutParams.topMargin;
        i = appBarLayout$LayoutParams.bottomMargin + n + i;
        if ((m & 0x8) != 0) {
          i += ViewCompat.getMinimumHeight(view);
        } else if ((m & 0x2) != 0) {
          i += k - ViewCompat.getMinimumHeight(view);
        } else {
          i += k - getTopInset();
        } 
      } else if (i > 0) {
        break;
      } 
      j--;
    } 
    i = Math.max(0, i);
    this.mDownPreScrollRange = i;
    return i;
  }
  
  int getDownNestedScrollRange() {
    if (this.mDownScrollRange != -1)
      return this.mDownScrollRange; 
    int k = getChildCount();
    int j = 0;
    int i = 0;
    while (true) {
      if (j < k) {
        View view = getChildAt(j);
        AppBarLayout$LayoutParams appBarLayout$LayoutParams = (AppBarLayout$LayoutParams)view.getLayoutParams();
        int n = view.getMeasuredHeight();
        int i1 = appBarLayout$LayoutParams.topMargin;
        int i2 = appBarLayout$LayoutParams.bottomMargin;
        int m = appBarLayout$LayoutParams.mScrollFlags;
        if ((m & 0x1) != 0) {
          i += n + i1 + i2;
          if ((m & 0x2) != 0) {
            i -= ViewCompat.getMinimumHeight(view) + getTopInset();
            i = Math.max(0, i);
            this.mDownScrollRange = i;
            return i;
          } 
        } else {
          i = Math.max(0, i);
          this.mDownScrollRange = i;
          return i;
        } 
      } else {
        i = Math.max(0, i);
        this.mDownScrollRange = i;
        return i;
      } 
      j++;
    } 
  }
  
  final int getMinimumHeightForVisibleOverlappingContent() {
    int j = getTopInset();
    int i = ViewCompat.getMinimumHeight((View)this);
    if (i != 0)
      return i * 2 + j; 
    i = getChildCount();
    if (i >= 1) {
      i = ViewCompat.getMinimumHeight(getChildAt(i - 1));
    } else {
      i = 0;
    } 
    return (i != 0) ? (i * 2 + j) : (getHeight() / 3);
  }
  
  int getPendingAction() {
    return this.mPendingAction;
  }
  
  @Deprecated
  public float getTargetElevation() {
    return 0.0F;
  }
  
  @VisibleForTesting
  final int getTopInset() {
    return (this.mLastInsets != null) ? this.mLastInsets.getSystemWindowInsetTop() : 0;
  }
  
  public final int getTotalScrollRange() {
    if (this.mTotalScrollRange != -1)
      return this.mTotalScrollRange; 
    int k = getChildCount();
    int j = 0;
    int i = 0;
    while (true) {
      if (j < k) {
        View view = getChildAt(j);
        AppBarLayout$LayoutParams appBarLayout$LayoutParams = (AppBarLayout$LayoutParams)view.getLayoutParams();
        int n = view.getMeasuredHeight();
        int m = appBarLayout$LayoutParams.mScrollFlags;
        if ((m & 0x1) != 0) {
          int i1 = appBarLayout$LayoutParams.topMargin;
          i += appBarLayout$LayoutParams.bottomMargin + n + i1;
          if ((m & 0x2) != 0) {
            i -= ViewCompat.getMinimumHeight(view);
            i = Math.max(0, i - getTopInset());
            this.mTotalScrollRange = i;
            return i;
          } 
        } else {
          i = Math.max(0, i - getTopInset());
          this.mTotalScrollRange = i;
          return i;
        } 
      } else {
        i = Math.max(0, i - getTopInset());
        this.mTotalScrollRange = i;
        return i;
      } 
      j++;
    } 
  }
  
  int getUpNestedPreScrollRange() {
    return getTotalScrollRange();
  }
  
  boolean hasChildWithInterpolator() {
    return this.mHaveChildWithInterpolator;
  }
  
  boolean hasScrollableChildren() {
    return (getTotalScrollRange() != 0);
  }
  
  protected int[] onCreateDrawableState(int paramInt) {
    int[] arrayOfInt1 = this.mTmpStatesArray;
    int[] arrayOfInt2 = super.onCreateDrawableState(arrayOfInt1.length + paramInt);
    if (this.mCollapsible) {
      paramInt = R.attr.state_collapsible;
    } else {
      paramInt = -R.attr.state_collapsible;
    } 
    arrayOfInt1[0] = paramInt;
    if (this.mCollapsible && this.mCollapsed) {
      paramInt = R.attr.state_collapsed;
      arrayOfInt1[1] = paramInt;
      return mergeDrawableStates(arrayOfInt2, arrayOfInt1);
    } 
    paramInt = -R.attr.state_collapsed;
    arrayOfInt1[1] = paramInt;
    return mergeDrawableStates(arrayOfInt2, arrayOfInt1);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    invalidateScrollRanges();
    this.mHaveChildWithInterpolator = false;
    paramInt2 = getChildCount();
    paramInt1 = 0;
    while (true) {
      if (paramInt1 < paramInt2)
        if (((AppBarLayout$LayoutParams)getChildAt(paramInt1).getLayoutParams()).getScrollInterpolator() != null) {
          this.mHaveChildWithInterpolator = true;
        } else {
          paramInt1++;
          continue;
        }  
      updateCollapsible();
      return;
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    super.onMeasure(paramInt1, paramInt2);
    invalidateScrollRanges();
  }
  
  WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat paramWindowInsetsCompat) {
    WindowInsetsCompat windowInsetsCompat = null;
    if (ViewCompat.getFitsSystemWindows((View)this))
      windowInsetsCompat = paramWindowInsetsCompat; 
    if (!ViewUtils.objectEquals(this.mLastInsets, windowInsetsCompat)) {
      this.mLastInsets = windowInsetsCompat;
      invalidateScrollRanges();
    } 
    return paramWindowInsetsCompat;
  }
  
  public void removeOnOffsetChangedListener(AppBarLayout$OnOffsetChangedListener paramAppBarLayout$OnOffsetChangedListener) {
    if (this.mListeners != null && paramAppBarLayout$OnOffsetChangedListener != null)
      this.mListeners.remove(paramAppBarLayout$OnOffsetChangedListener); 
  }
  
  void resetPendingAction() {
    this.mPendingAction = 0;
  }
  
  boolean setCollapsedState(boolean paramBoolean) {
    if (this.mCollapsed != paramBoolean) {
      this.mCollapsed = paramBoolean;
      refreshDrawableState();
      return true;
    } 
    return false;
  }
  
  public void setExpanded(boolean paramBoolean) {
    setExpanded(paramBoolean, ViewCompat.isLaidOut((View)this));
  }
  
  public void setExpanded(boolean paramBoolean1, boolean paramBoolean2) {
    setExpanded(paramBoolean1, paramBoolean2, true);
  }
  
  public void setOrientation(int paramInt) {
    if (paramInt != 1)
      throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation"); 
    super.setOrientation(paramInt);
  }
  
  @Deprecated
  public void setTargetElevation(float paramFloat) {
    if (Build.VERSION.SDK_INT >= 21)
      ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator((View)this, paramFloat); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\AppBarLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */