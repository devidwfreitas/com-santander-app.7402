package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.design.R;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.appcompat.R;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;

public class CollapsingToolbarLayout extends FrameLayout {
  private static final int DEFAULT_SCRIM_ANIMATION_DURATION = 600;
  
  final CollapsingTextHelper mCollapsingTextHelper;
  
  private boolean mCollapsingTitleEnabled;
  
  private Drawable mContentScrim;
  
  int mCurrentOffset;
  
  private boolean mDrawCollapsingTitle;
  
  private View mDummyView;
  
  private int mExpandedMarginBottom;
  
  private int mExpandedMarginEnd;
  
  private int mExpandedMarginStart;
  
  private int mExpandedMarginTop;
  
  WindowInsetsCompat mLastInsets;
  
  private AppBarLayout$OnOffsetChangedListener mOnOffsetChangedListener;
  
  private boolean mRefreshToolbar = true;
  
  private int mScrimAlpha;
  
  private long mScrimAnimationDuration;
  
  private ValueAnimatorCompat mScrimAnimator;
  
  private int mScrimVisibleHeightTrigger = -1;
  
  private boolean mScrimsAreShown;
  
  Drawable mStatusBarScrim;
  
  private final Rect mTmpRect = new Rect();
  
  private Toolbar mToolbar;
  
  private View mToolbarDirectChild;
  
  private int mToolbarId;
  
  public CollapsingToolbarLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    ThemeUtils.checkAppCompatTheme(paramContext);
    this.mCollapsingTextHelper = new CollapsingTextHelper((View)this);
    this.mCollapsingTextHelper.setTextSizeInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
    TypedArray typedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CollapsingToolbarLayout, paramInt, R.style.Widget_Design_CollapsingToolbar);
    this.mCollapsingTextHelper.setExpandedTextGravity(typedArray.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
    this.mCollapsingTextHelper.setCollapsedTextGravity(typedArray.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
    paramInt = typedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
    this.mExpandedMarginBottom = paramInt;
    this.mExpandedMarginEnd = paramInt;
    this.mExpandedMarginTop = paramInt;
    this.mExpandedMarginStart = paramInt;
    if (typedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart))
      this.mExpandedMarginStart = typedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0); 
    if (typedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd))
      this.mExpandedMarginEnd = typedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0); 
    if (typedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop))
      this.mExpandedMarginTop = typedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0); 
    if (typedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom))
      this.mExpandedMarginBottom = typedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0); 
    this.mCollapsingTitleEnabled = typedArray.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
    setTitle(typedArray.getText(R.styleable.CollapsingToolbarLayout_title));
    this.mCollapsingTextHelper.setExpandedTextAppearance(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
    this.mCollapsingTextHelper.setCollapsedTextAppearance(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
    if (typedArray.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance))
      this.mCollapsingTextHelper.setExpandedTextAppearance(typedArray.getResourceId(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0)); 
    if (typedArray.hasValue(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance))
      this.mCollapsingTextHelper.setCollapsedTextAppearance(typedArray.getResourceId(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0)); 
    this.mScrimVisibleHeightTrigger = typedArray.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
    this.mScrimAnimationDuration = typedArray.getInt(R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
    setContentScrim(typedArray.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
    setStatusBarScrim(typedArray.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
    this.mToolbarId = typedArray.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
    typedArray.recycle();
    setWillNotDraw(false);
    ViewCompat.setOnApplyWindowInsetsListener((View)this, new CollapsingToolbarLayout$1(this));
  }
  
  private void animateScrim(int paramInt) {
    ensureToolbar();
    if (this.mScrimAnimator == null) {
      Interpolator interpolator;
      this.mScrimAnimator = ViewUtils.createAnimator();
      this.mScrimAnimator.setDuration(this.mScrimAnimationDuration);
      ValueAnimatorCompat valueAnimatorCompat = this.mScrimAnimator;
      if (paramInt > this.mScrimAlpha) {
        interpolator = AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
      } else {
        interpolator = AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
      } 
      valueAnimatorCompat.setInterpolator(interpolator);
      this.mScrimAnimator.addUpdateListener(new CollapsingToolbarLayout$2(this));
    } else if (this.mScrimAnimator.isRunning()) {
      this.mScrimAnimator.cancel();
    } 
    this.mScrimAnimator.setIntValues(this.mScrimAlpha, paramInt);
    this.mScrimAnimator.start();
  }
  
  private void ensureToolbar() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mRefreshToolbar : Z
    //   4: ifne -> 8
    //   7: return
    //   8: aload_0
    //   9: aconst_null
    //   10: putfield mToolbar : Landroid/support/v7/widget/Toolbar;
    //   13: aload_0
    //   14: aconst_null
    //   15: putfield mToolbarDirectChild : Landroid/view/View;
    //   18: aload_0
    //   19: getfield mToolbarId : I
    //   22: iconst_m1
    //   23: if_icmpeq -> 60
    //   26: aload_0
    //   27: aload_0
    //   28: aload_0
    //   29: getfield mToolbarId : I
    //   32: invokevirtual findViewById : (I)Landroid/view/View;
    //   35: checkcast android/support/v7/widget/Toolbar
    //   38: putfield mToolbar : Landroid/support/v7/widget/Toolbar;
    //   41: aload_0
    //   42: getfield mToolbar : Landroid/support/v7/widget/Toolbar;
    //   45: ifnull -> 60
    //   48: aload_0
    //   49: aload_0
    //   50: aload_0
    //   51: getfield mToolbar : Landroid/support/v7/widget/Toolbar;
    //   54: invokespecial findDirectChild : (Landroid/view/View;)Landroid/view/View;
    //   57: putfield mToolbarDirectChild : Landroid/view/View;
    //   60: aload_0
    //   61: getfield mToolbar : Landroid/support/v7/widget/Toolbar;
    //   64: ifnonnull -> 102
    //   67: aload_0
    //   68: invokevirtual getChildCount : ()I
    //   71: istore_2
    //   72: iconst_0
    //   73: istore_1
    //   74: iload_1
    //   75: iload_2
    //   76: if_icmpge -> 119
    //   79: aload_0
    //   80: iload_1
    //   81: invokevirtual getChildAt : (I)Landroid/view/View;
    //   84: astore_3
    //   85: aload_3
    //   86: instanceof android/support/v7/widget/Toolbar
    //   89: ifeq -> 112
    //   92: aload_3
    //   93: checkcast android/support/v7/widget/Toolbar
    //   96: astore_3
    //   97: aload_0
    //   98: aload_3
    //   99: putfield mToolbar : Landroid/support/v7/widget/Toolbar;
    //   102: aload_0
    //   103: invokespecial updateDummyView : ()V
    //   106: aload_0
    //   107: iconst_0
    //   108: putfield mRefreshToolbar : Z
    //   111: return
    //   112: iload_1
    //   113: iconst_1
    //   114: iadd
    //   115: istore_1
    //   116: goto -> 74
    //   119: aconst_null
    //   120: astore_3
    //   121: goto -> 97
  }
  
  private View findDirectChild(View paramView) {
    ViewParent viewParent2 = paramView.getParent();
    View view = paramView;
    for (ViewParent viewParent1 = viewParent2; viewParent1 != this && viewParent1 != null; viewParent1 = viewParent1.getParent()) {
      if (viewParent1 instanceof View)
        view = (View)viewParent1; 
    } 
    return view;
  }
  
  private static int getHeightWithMargins(@NonNull View paramView) {
    ViewGroup.LayoutParams layoutParams = paramView.getLayoutParams();
    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
      ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)layoutParams;
      int i = paramView.getHeight();
      int j = marginLayoutParams.topMargin;
      return marginLayoutParams.bottomMargin + i + j;
    } 
    return paramView.getHeight();
  }
  
  static ViewOffsetHelper getViewOffsetHelper(View paramView) {
    ViewOffsetHelper viewOffsetHelper2 = (ViewOffsetHelper)paramView.getTag(R.id.view_offset_helper);
    ViewOffsetHelper viewOffsetHelper1 = viewOffsetHelper2;
    if (viewOffsetHelper2 == null) {
      viewOffsetHelper1 = new ViewOffsetHelper(paramView);
      paramView.setTag(R.id.view_offset_helper, viewOffsetHelper1);
    } 
    return viewOffsetHelper1;
  }
  
  private boolean isToolbarChild(View paramView) {
    return (this.mToolbarDirectChild == null || this.mToolbarDirectChild == this) ? (!(paramView != this.mToolbar)) : (!(paramView != this.mToolbarDirectChild));
  }
  
  private void updateDummyView() {
    if (!this.mCollapsingTitleEnabled && this.mDummyView != null) {
      ViewParent viewParent = this.mDummyView.getParent();
      if (viewParent instanceof ViewGroup)
        ((ViewGroup)viewParent).removeView(this.mDummyView); 
    } 
    if (this.mCollapsingTitleEnabled && this.mToolbar != null) {
      if (this.mDummyView == null)
        this.mDummyView = new View(getContext()); 
      if (this.mDummyView.getParent() == null)
        this.mToolbar.addView(this.mDummyView, -1, -1); 
    } 
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return paramLayoutParams instanceof CollapsingToolbarLayout$LayoutParams;
  }
  
  public void draw(Canvas paramCanvas) {
    super.draw(paramCanvas);
    ensureToolbar();
    if (this.mToolbar == null && this.mContentScrim != null && this.mScrimAlpha > 0) {
      this.mContentScrim.mutate().setAlpha(this.mScrimAlpha);
      this.mContentScrim.draw(paramCanvas);
    } 
    if (this.mCollapsingTitleEnabled && this.mDrawCollapsingTitle)
      this.mCollapsingTextHelper.draw(paramCanvas); 
    if (this.mStatusBarScrim != null && this.mScrimAlpha > 0) {
      byte b;
      if (this.mLastInsets != null) {
        b = this.mLastInsets.getSystemWindowInsetTop();
      } else {
        b = 0;
      } 
      if (b) {
        this.mStatusBarScrim.setBounds(0, -this.mCurrentOffset, getWidth(), b - this.mCurrentOffset);
        this.mStatusBarScrim.mutate().setAlpha(this.mScrimAlpha);
        this.mStatusBarScrim.draw(paramCanvas);
      } 
    } 
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong) {
    boolean bool1;
    boolean bool2 = false;
    if (this.mContentScrim != null && this.mScrimAlpha > 0 && isToolbarChild(paramView)) {
      this.mContentScrim.mutate().setAlpha(this.mScrimAlpha);
      this.mContentScrim.draw(paramCanvas);
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (super.drawChild(paramCanvas, paramView, paramLong) || bool1)
      bool2 = true; 
    return bool2;
  }
  
  protected void drawableStateChanged() {
    boolean bool2;
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    int j = 0;
    Drawable drawable = this.mStatusBarScrim;
    int i = j;
    if (drawable != null) {
      i = j;
      if (drawable.isStateful())
        i = false | drawable.setState(arrayOfInt); 
    } 
    drawable = this.mContentScrim;
    j = i;
    if (drawable != null) {
      j = i;
      if (drawable.isStateful())
        bool2 = i | drawable.setState(arrayOfInt); 
    } 
    boolean bool1 = bool2;
    if (this.mCollapsingTextHelper != null)
      bool1 = bool2 | this.mCollapsingTextHelper.setState(arrayOfInt); 
    if (bool1)
      invalidate(); 
  }
  
  protected CollapsingToolbarLayout$LayoutParams generateDefaultLayoutParams() {
    return new CollapsingToolbarLayout$LayoutParams(-1, -1);
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new CollapsingToolbarLayout$LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return new CollapsingToolbarLayout$LayoutParams(paramLayoutParams);
  }
  
  public int getCollapsedTitleGravity() {
    return this.mCollapsingTextHelper.getCollapsedTextGravity();
  }
  
  @NonNull
  public Typeface getCollapsedTitleTypeface() {
    return this.mCollapsingTextHelper.getCollapsedTypeface();
  }
  
  @Nullable
  public Drawable getContentScrim() {
    return this.mContentScrim;
  }
  
  public int getExpandedTitleGravity() {
    return this.mCollapsingTextHelper.getExpandedTextGravity();
  }
  
  public int getExpandedTitleMarginBottom() {
    return this.mExpandedMarginBottom;
  }
  
  public int getExpandedTitleMarginEnd() {
    return this.mExpandedMarginEnd;
  }
  
  public int getExpandedTitleMarginStart() {
    return this.mExpandedMarginStart;
  }
  
  public int getExpandedTitleMarginTop() {
    return this.mExpandedMarginTop;
  }
  
  @NonNull
  public Typeface getExpandedTitleTypeface() {
    return this.mCollapsingTextHelper.getExpandedTypeface();
  }
  
  final int getMaxOffsetForPinChild(View paramView) {
    ViewOffsetHelper viewOffsetHelper = getViewOffsetHelper(paramView);
    CollapsingToolbarLayout$LayoutParams collapsingToolbarLayout$LayoutParams = (CollapsingToolbarLayout$LayoutParams)paramView.getLayoutParams();
    return getHeight() - viewOffsetHelper.getLayoutTop() - paramView.getHeight() - collapsingToolbarLayout$LayoutParams.bottomMargin;
  }
  
  int getScrimAlpha() {
    return this.mScrimAlpha;
  }
  
  public long getScrimAnimationDuration() {
    return this.mScrimAnimationDuration;
  }
  
  public int getScrimVisibleHeightTrigger() {
    byte b;
    if (this.mScrimVisibleHeightTrigger >= 0)
      return this.mScrimVisibleHeightTrigger; 
    if (this.mLastInsets != null) {
      b = this.mLastInsets.getSystemWindowInsetTop();
    } else {
      b = 0;
    } 
    int i = ViewCompat.getMinimumHeight((View)this);
    return (i > 0) ? Math.min(b + i * 2, getHeight()) : (getHeight() / 3);
  }
  
  @Nullable
  public Drawable getStatusBarScrim() {
    return this.mStatusBarScrim;
  }
  
  @Nullable
  public CharSequence getTitle() {
    return this.mCollapsingTitleEnabled ? this.mCollapsingTextHelper.getText() : null;
  }
  
  public boolean isTitleEnabled() {
    return this.mCollapsingTitleEnabled;
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    ViewParent viewParent = getParent();
    if (viewParent instanceof AppBarLayout) {
      ViewCompat.setFitsSystemWindows((View)this, ViewCompat.getFitsSystemWindows((View)viewParent));
      if (this.mOnOffsetChangedListener == null)
        this.mOnOffsetChangedListener = new CollapsingToolbarLayout$OffsetUpdateListener(this); 
      ((AppBarLayout)viewParent).addOnOffsetChangedListener(this.mOnOffsetChangedListener);
      ViewCompat.requestApplyInsets((View)this);
    } 
  }
  
  protected void onDetachedFromWindow() {
    ViewParent viewParent = getParent();
    if (this.mOnOffsetChangedListener != null && viewParent instanceof AppBarLayout)
      ((AppBarLayout)viewParent).removeOnOffsetChangedListener(this.mOnOffsetChangedListener); 
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    int i = 1;
    boolean bool = false;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mLastInsets != null) {
      int k = this.mLastInsets.getSystemWindowInsetTop();
      int m = getChildCount();
      int j;
      for (j = 0; j < m; j++) {
        View view = getChildAt(j);
        if (!ViewCompat.getFitsSystemWindows(view) && view.getTop() < k)
          ViewCompat.offsetTopAndBottom(view, k); 
      } 
    } 
    if (this.mCollapsingTitleEnabled && this.mDummyView != null) {
      if (ViewCompat.isAttachedToWindow(this.mDummyView) && this.mDummyView.getVisibility() == 0) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      } 
      this.mDrawCollapsingTitle = paramBoolean;
      if (this.mDrawCollapsingTitle) {
        int j;
        Toolbar toolbar;
        if (ViewCompat.getLayoutDirection((View)this) == 1) {
          j = i;
        } else {
          j = 0;
        } 
        if (this.mToolbarDirectChild != null) {
          View view = this.mToolbarDirectChild;
        } else {
          toolbar = this.mToolbar;
        } 
        int m = getMaxOffsetForPinChild((View)toolbar);
        ViewGroupUtils.getDescendantRect((ViewGroup)this, this.mDummyView, this.mTmpRect);
        CollapsingTextHelper collapsingTextHelper = this.mCollapsingTextHelper;
        int n = this.mTmpRect.left;
        if (j) {
          i = this.mToolbar.getTitleMarginEnd();
        } else {
          i = this.mToolbar.getTitleMarginStart();
        } 
        int i1 = this.mTmpRect.top;
        int i2 = this.mToolbar.getTitleMarginTop();
        int i3 = this.mTmpRect.right;
        if (j) {
          k = this.mToolbar.getTitleMarginStart();
        } else {
          k = this.mToolbar.getTitleMarginEnd();
        } 
        collapsingTextHelper.setCollapsedBounds(n + i, i2 + i1 + m, k + i3, m + this.mTmpRect.bottom - this.mToolbar.getTitleMarginBottom());
        collapsingTextHelper = this.mCollapsingTextHelper;
        if (j) {
          i = this.mExpandedMarginEnd;
        } else {
          i = this.mExpandedMarginStart;
        } 
        int k = this.mTmpRect.top;
        m = this.mExpandedMarginTop;
        if (j) {
          j = this.mExpandedMarginStart;
        } else {
          j = this.mExpandedMarginEnd;
        } 
        collapsingTextHelper.setExpandedBounds(i, k + m, paramInt3 - paramInt1 - j, paramInt4 - paramInt2 - this.mExpandedMarginBottom);
        this.mCollapsingTextHelper.recalculate();
      } 
    } 
    paramInt2 = getChildCount();
    for (paramInt1 = bool; paramInt1 < paramInt2; paramInt1++)
      getViewOffsetHelper(getChildAt(paramInt1)).onViewLayout(); 
    if (this.mToolbar != null) {
      if (this.mCollapsingTitleEnabled && TextUtils.isEmpty(this.mCollapsingTextHelper.getText()))
        this.mCollapsingTextHelper.setText(this.mToolbar.getTitle()); 
      if (this.mToolbarDirectChild == null || this.mToolbarDirectChild == this) {
        setMinimumHeight(getHeightWithMargins((View)this.mToolbar));
      } else {
        setMinimumHeight(getHeightWithMargins(this.mToolbarDirectChild));
      } 
    } 
    updateScrimVisibility();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    ensureToolbar();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mContentScrim != null)
      this.mContentScrim.setBounds(0, 0, paramInt1, paramInt2); 
  }
  
  WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat paramWindowInsetsCompat) {
    WindowInsetsCompat windowInsetsCompat = null;
    if (ViewCompat.getFitsSystemWindows((View)this))
      windowInsetsCompat = paramWindowInsetsCompat; 
    if (!ViewUtils.objectEquals(this.mLastInsets, windowInsetsCompat)) {
      this.mLastInsets = windowInsetsCompat;
      requestLayout();
    } 
    return paramWindowInsetsCompat.consumeSystemWindowInsets();
  }
  
  public void setCollapsedTitleGravity(int paramInt) {
    this.mCollapsingTextHelper.setCollapsedTextGravity(paramInt);
  }
  
  public void setCollapsedTitleTextAppearance(@StyleRes int paramInt) {
    this.mCollapsingTextHelper.setCollapsedTextAppearance(paramInt);
  }
  
  public void setCollapsedTitleTextColor(@ColorInt int paramInt) {
    setCollapsedTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setCollapsedTitleTextColor(@NonNull ColorStateList paramColorStateList) {
    this.mCollapsingTextHelper.setCollapsedTextColor(paramColorStateList);
  }
  
  public void setCollapsedTitleTypeface(@Nullable Typeface paramTypeface) {
    this.mCollapsingTextHelper.setCollapsedTypeface(paramTypeface);
  }
  
  public void setContentScrim(@Nullable Drawable paramDrawable) {
    Drawable drawable = null;
    if (this.mContentScrim != paramDrawable) {
      if (this.mContentScrim != null)
        this.mContentScrim.setCallback(null); 
      if (paramDrawable != null)
        drawable = paramDrawable.mutate(); 
      this.mContentScrim = drawable;
      if (this.mContentScrim != null) {
        this.mContentScrim.setBounds(0, 0, getWidth(), getHeight());
        this.mContentScrim.setCallback((Drawable.Callback)this);
        this.mContentScrim.setAlpha(this.mScrimAlpha);
      } 
      ViewCompat.postInvalidateOnAnimation((View)this);
    } 
  }
  
  public void setContentScrimColor(@ColorInt int paramInt) {
    setContentScrim((Drawable)new ColorDrawable(paramInt));
  }
  
  public void setContentScrimResource(@DrawableRes int paramInt) {
    setContentScrim(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setExpandedTitleColor(@ColorInt int paramInt) {
    setExpandedTitleTextColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setExpandedTitleGravity(int paramInt) {
    this.mCollapsingTextHelper.setExpandedTextGravity(paramInt);
  }
  
  public void setExpandedTitleMargin(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mExpandedMarginStart = paramInt1;
    this.mExpandedMarginTop = paramInt2;
    this.mExpandedMarginEnd = paramInt3;
    this.mExpandedMarginBottom = paramInt4;
    requestLayout();
  }
  
  public void setExpandedTitleMarginBottom(int paramInt) {
    this.mExpandedMarginBottom = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginEnd(int paramInt) {
    this.mExpandedMarginEnd = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginStart(int paramInt) {
    this.mExpandedMarginStart = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleMarginTop(int paramInt) {
    this.mExpandedMarginTop = paramInt;
    requestLayout();
  }
  
  public void setExpandedTitleTextAppearance(@StyleRes int paramInt) {
    this.mCollapsingTextHelper.setExpandedTextAppearance(paramInt);
  }
  
  public void setExpandedTitleTextColor(@NonNull ColorStateList paramColorStateList) {
    this.mCollapsingTextHelper.setExpandedTextColor(paramColorStateList);
  }
  
  public void setExpandedTitleTypeface(@Nullable Typeface paramTypeface) {
    this.mCollapsingTextHelper.setExpandedTypeface(paramTypeface);
  }
  
  void setScrimAlpha(int paramInt) {
    if (paramInt != this.mScrimAlpha) {
      if (this.mContentScrim != null && this.mToolbar != null)
        ViewCompat.postInvalidateOnAnimation((View)this.mToolbar); 
      this.mScrimAlpha = paramInt;
      ViewCompat.postInvalidateOnAnimation((View)this);
    } 
  }
  
  public void setScrimAnimationDuration(@IntRange(from = 0L) long paramLong) {
    this.mScrimAnimationDuration = paramLong;
  }
  
  public void setScrimVisibleHeightTrigger(@IntRange(from = 0L) int paramInt) {
    if (this.mScrimVisibleHeightTrigger != paramInt) {
      this.mScrimVisibleHeightTrigger = paramInt;
      updateScrimVisibility();
    } 
  }
  
  public void setScrimsShown(boolean paramBoolean) {
    boolean bool;
    if (ViewCompat.isLaidOut((View)this) && !isInEditMode()) {
      bool = true;
    } else {
      bool = false;
    } 
    setScrimsShown(paramBoolean, bool);
  }
  
  public void setScrimsShown(boolean paramBoolean1, boolean paramBoolean2) {
    char c = 'ÿ';
    if (this.mScrimsAreShown != paramBoolean1) {
      if (paramBoolean2) {
        if (!paramBoolean1)
          c = Character.MIN_VALUE; 
        animateScrim(c);
      } else {
        if (!paramBoolean1)
          c = Character.MIN_VALUE; 
        setScrimAlpha(c);
      } 
      this.mScrimsAreShown = paramBoolean1;
    } 
  }
  
  public void setStatusBarScrim(@Nullable Drawable paramDrawable) {
    Drawable drawable = null;
    if (this.mStatusBarScrim != paramDrawable) {
      if (this.mStatusBarScrim != null)
        this.mStatusBarScrim.setCallback(null); 
      if (paramDrawable != null)
        drawable = paramDrawable.mutate(); 
      this.mStatusBarScrim = drawable;
      if (this.mStatusBarScrim != null) {
        boolean bool;
        if (this.mStatusBarScrim.isStateful())
          this.mStatusBarScrim.setState(getDrawableState()); 
        DrawableCompat.setLayoutDirection(this.mStatusBarScrim, ViewCompat.getLayoutDirection((View)this));
        paramDrawable = this.mStatusBarScrim;
        if (getVisibility() == 0) {
          bool = true;
        } else {
          bool = false;
        } 
        paramDrawable.setVisible(bool, false);
        this.mStatusBarScrim.setCallback((Drawable.Callback)this);
        this.mStatusBarScrim.setAlpha(this.mScrimAlpha);
      } 
      ViewCompat.postInvalidateOnAnimation((View)this);
    } 
  }
  
  public void setStatusBarScrimColor(@ColorInt int paramInt) {
    setStatusBarScrim((Drawable)new ColorDrawable(paramInt));
  }
  
  public void setStatusBarScrimResource(@DrawableRes int paramInt) {
    setStatusBarScrim(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setTitle(@Nullable CharSequence paramCharSequence) {
    this.mCollapsingTextHelper.setText(paramCharSequence);
  }
  
  public void setTitleEnabled(boolean paramBoolean) {
    if (paramBoolean != this.mCollapsingTitleEnabled) {
      this.mCollapsingTitleEnabled = paramBoolean;
      updateDummyView();
      requestLayout();
    } 
  }
  
  public void setVisibility(int paramInt) {
    boolean bool;
    super.setVisibility(paramInt);
    if (paramInt == 0) {
      bool = true;
    } else {
      bool = false;
    } 
    if (this.mStatusBarScrim != null && this.mStatusBarScrim.isVisible() != bool)
      this.mStatusBarScrim.setVisible(bool, false); 
    if (this.mContentScrim != null && this.mContentScrim.isVisible() != bool)
      this.mContentScrim.setVisible(bool, false); 
  }
  
  final void updateScrimVisibility() {
    if (this.mContentScrim != null || this.mStatusBarScrim != null) {
      boolean bool;
      if (getHeight() + this.mCurrentOffset < getScrimVisibleHeightTrigger()) {
        bool = true;
      } else {
        bool = false;
      } 
      setScrimsShown(bool);
    } 
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable) {
    return (super.verifyDrawable(paramDrawable) || paramDrawable == this.mContentScrim || paramDrawable == this.mStatusBarScrim);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CollapsingToolbarLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */