package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.MenuRes;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.support.v4.view.MenuItemCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class Toolbar extends ViewGroup {
  private static final String TAG = "Toolbar";
  
  private MenuPresenter.Callback mActionMenuPresenterCallback;
  
  int mButtonGravity;
  
  ImageButton mCollapseButtonView;
  
  private CharSequence mCollapseDescription;
  
  private Drawable mCollapseIcon;
  
  private boolean mCollapsible;
  
  private int mContentInsetEndWithActions;
  
  private int mContentInsetStartWithNavigation;
  
  private RtlSpacingHelper mContentInsets;
  
  private boolean mEatingHover;
  
  private boolean mEatingTouch;
  
  View mExpandedActionView;
  
  private Toolbar$ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
  
  private int mGravity = 8388627;
  
  private final ArrayList<View> mHiddenViews = new ArrayList<View>();
  
  private ImageView mLogoView;
  
  private int mMaxButtonHeight;
  
  private MenuBuilder.Callback mMenuBuilderCallback;
  
  private ActionMenuView mMenuView;
  
  private final ActionMenuView$OnMenuItemClickListener mMenuViewItemClickListener = new Toolbar$1(this);
  
  private ImageButton mNavButtonView;
  
  Toolbar$OnMenuItemClickListener mOnMenuItemClickListener;
  
  private ActionMenuPresenter mOuterActionMenuPresenter;
  
  private Context mPopupContext;
  
  private int mPopupTheme;
  
  private final Runnable mShowOverflowMenuRunnable = new Toolbar$2(this);
  
  private CharSequence mSubtitleText;
  
  private int mSubtitleTextAppearance;
  
  private int mSubtitleTextColor;
  
  private TextView mSubtitleTextView;
  
  private final int[] mTempMargins = new int[2];
  
  private final ArrayList<View> mTempViews = new ArrayList<View>();
  
  private int mTitleMarginBottom;
  
  private int mTitleMarginEnd;
  
  private int mTitleMarginStart;
  
  private int mTitleMarginTop;
  
  private CharSequence mTitleText;
  
  private int mTitleTextAppearance;
  
  private int mTitleTextColor;
  
  private TextView mTitleTextView;
  
  private ToolbarWidgetWrapper mWrapper;
  
  public Toolbar(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public Toolbar(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, R.attr.toolbarStyle);
  }
  
  public Toolbar(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(getContext(), paramAttributeSet, R.styleable.Toolbar, paramInt, 0);
    this.mTitleTextAppearance = tintTypedArray.getResourceId(R.styleable.Toolbar_titleTextAppearance, 0);
    this.mSubtitleTextAppearance = tintTypedArray.getResourceId(R.styleable.Toolbar_subtitleTextAppearance, 0);
    this.mGravity = tintTypedArray.getInteger(R.styleable.Toolbar_android_gravity, this.mGravity);
    this.mButtonGravity = tintTypedArray.getInteger(R.styleable.Toolbar_buttonGravity, 48);
    int i = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMargin, 0);
    paramInt = i;
    if (tintTypedArray.hasValue(R.styleable.Toolbar_titleMargins))
      paramInt = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMargins, i); 
    this.mTitleMarginBottom = paramInt;
    this.mTitleMarginTop = paramInt;
    this.mTitleMarginEnd = paramInt;
    this.mTitleMarginStart = paramInt;
    paramInt = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginStart, -1);
    if (paramInt >= 0)
      this.mTitleMarginStart = paramInt; 
    paramInt = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginEnd, -1);
    if (paramInt >= 0)
      this.mTitleMarginEnd = paramInt; 
    paramInt = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginTop, -1);
    if (paramInt >= 0)
      this.mTitleMarginTop = paramInt; 
    paramInt = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginBottom, -1);
    if (paramInt >= 0)
      this.mTitleMarginBottom = paramInt; 
    this.mMaxButtonHeight = tintTypedArray.getDimensionPixelSize(R.styleable.Toolbar_maxButtonHeight, -1);
    paramInt = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStart, -2147483648);
    i = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEnd, -2147483648);
    int j = tintTypedArray.getDimensionPixelSize(R.styleable.Toolbar_contentInsetLeft, 0);
    int k = tintTypedArray.getDimensionPixelSize(R.styleable.Toolbar_contentInsetRight, 0);
    ensureContentInsets();
    this.mContentInsets.setAbsolute(j, k);
    if (paramInt != Integer.MIN_VALUE || i != Integer.MIN_VALUE)
      this.mContentInsets.setRelative(paramInt, i); 
    this.mContentInsetStartWithNavigation = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStartWithNavigation, -2147483648);
    this.mContentInsetEndWithActions = tintTypedArray.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEndWithActions, -2147483648);
    this.mCollapseIcon = tintTypedArray.getDrawable(R.styleable.Toolbar_collapseIcon);
    this.mCollapseDescription = tintTypedArray.getText(R.styleable.Toolbar_collapseContentDescription);
    CharSequence charSequence3 = tintTypedArray.getText(R.styleable.Toolbar_title);
    if (!TextUtils.isEmpty(charSequence3))
      setTitle(charSequence3); 
    charSequence3 = tintTypedArray.getText(R.styleable.Toolbar_subtitle);
    if (!TextUtils.isEmpty(charSequence3))
      setSubtitle(charSequence3); 
    this.mPopupContext = getContext();
    setPopupTheme(tintTypedArray.getResourceId(R.styleable.Toolbar_popupTheme, 0));
    Drawable drawable2 = tintTypedArray.getDrawable(R.styleable.Toolbar_navigationIcon);
    if (drawable2 != null)
      setNavigationIcon(drawable2); 
    CharSequence charSequence2 = tintTypedArray.getText(R.styleable.Toolbar_navigationContentDescription);
    if (!TextUtils.isEmpty(charSequence2))
      setNavigationContentDescription(charSequence2); 
    Drawable drawable1 = tintTypedArray.getDrawable(R.styleable.Toolbar_logo);
    if (drawable1 != null)
      setLogo(drawable1); 
    CharSequence charSequence1 = tintTypedArray.getText(R.styleable.Toolbar_logoDescription);
    if (!TextUtils.isEmpty(charSequence1))
      setLogoDescription(charSequence1); 
    if (tintTypedArray.hasValue(R.styleable.Toolbar_titleTextColor))
      setTitleTextColor(tintTypedArray.getColor(R.styleable.Toolbar_titleTextColor, -1)); 
    if (tintTypedArray.hasValue(R.styleable.Toolbar_subtitleTextColor))
      setSubtitleTextColor(tintTypedArray.getColor(R.styleable.Toolbar_subtitleTextColor, -1)); 
    tintTypedArray.recycle();
  }
  
  private void addCustomViewsWithGravity(List<View> paramList, int paramInt) {
    boolean bool1 = true;
    boolean bool2 = false;
    if (ViewCompat.getLayoutDirection((View)this) != 1)
      bool1 = false; 
    int j = getChildCount();
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection((View)this));
    paramList.clear();
    paramInt = bool2;
    if (bool1) {
      for (paramInt = j - 1; paramInt >= 0; paramInt--) {
        View view = getChildAt(paramInt);
        Toolbar$LayoutParams toolbar$LayoutParams = (Toolbar$LayoutParams)view.getLayoutParams();
        if (toolbar$LayoutParams.mViewType == 0 && shouldLayout(view) && getChildHorizontalGravity(toolbar$LayoutParams.gravity) == i)
          paramList.add(view); 
      } 
    } else {
      while (paramInt < j) {
        View view = getChildAt(paramInt);
        Toolbar$LayoutParams toolbar$LayoutParams = (Toolbar$LayoutParams)view.getLayoutParams();
        if (toolbar$LayoutParams.mViewType == 0 && shouldLayout(view) && getChildHorizontalGravity(toolbar$LayoutParams.gravity) == i)
          paramList.add(view); 
        paramInt++;
      } 
    } 
  }
  
  private void addSystemView(View paramView, boolean paramBoolean) {
    Toolbar$LayoutParams toolbar$LayoutParams;
    ViewGroup.LayoutParams layoutParams = paramView.getLayoutParams();
    if (layoutParams == null) {
      toolbar$LayoutParams = generateDefaultLayoutParams();
    } else if (!checkLayoutParams((ViewGroup.LayoutParams)toolbar$LayoutParams)) {
      toolbar$LayoutParams = generateLayoutParams((ViewGroup.LayoutParams)toolbar$LayoutParams);
    } else {
      toolbar$LayoutParams = toolbar$LayoutParams;
    } 
    toolbar$LayoutParams.mViewType = 1;
    if (paramBoolean && this.mExpandedActionView != null) {
      paramView.setLayoutParams((ViewGroup.LayoutParams)toolbar$LayoutParams);
      this.mHiddenViews.add(paramView);
      return;
    } 
    addView(paramView, (ViewGroup.LayoutParams)toolbar$LayoutParams);
  }
  
  private void ensureContentInsets() {
    if (this.mContentInsets == null)
      this.mContentInsets = new RtlSpacingHelper(); 
  }
  
  private void ensureLogoView() {
    if (this.mLogoView == null)
      this.mLogoView = new AppCompatImageView(getContext()); 
  }
  
  private void ensureMenu() {
    ensureMenuView();
    if (this.mMenuView.peekMenu() == null) {
      MenuBuilder menuBuilder = (MenuBuilder)this.mMenuView.getMenu();
      if (this.mExpandedMenuPresenter == null)
        this.mExpandedMenuPresenter = new Toolbar$ExpandedActionViewMenuPresenter(this); 
      this.mMenuView.setExpandedActionViewsExclusive(true);
      menuBuilder.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
    } 
  }
  
  private void ensureMenuView() {
    if (this.mMenuView == null) {
      this.mMenuView = new ActionMenuView(getContext());
      this.mMenuView.setPopupTheme(this.mPopupTheme);
      this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
      this.mMenuView.setMenuCallbacks(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
      Toolbar$LayoutParams toolbar$LayoutParams = generateDefaultLayoutParams();
      toolbar$LayoutParams.gravity = 0x800005 | this.mButtonGravity & 0x70;
      this.mMenuView.setLayoutParams((ViewGroup.LayoutParams)toolbar$LayoutParams);
      addSystemView((View)this.mMenuView, false);
    } 
  }
  
  private void ensureNavButtonView() {
    if (this.mNavButtonView == null) {
      this.mNavButtonView = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
      Toolbar$LayoutParams toolbar$LayoutParams = generateDefaultLayoutParams();
      toolbar$LayoutParams.gravity = 0x800003 | this.mButtonGravity & 0x70;
      this.mNavButtonView.setLayoutParams((ViewGroup.LayoutParams)toolbar$LayoutParams);
    } 
  }
  
  private int getChildHorizontalGravity(int paramInt) {
    int j = ViewCompat.getLayoutDirection((View)this);
    int i = GravityCompat.getAbsoluteGravity(paramInt, j) & 0x7;
    paramInt = i;
    switch (i) {
      default:
        if (j == 1) {
          paramInt = 5;
          break;
        } 
        return 3;
      case 1:
      case 3:
      case 5:
        break;
    } 
    return paramInt;
  }
  
  private int getChildTop(View paramView, int paramInt) {
    int i;
    int k;
    int m;
    Toolbar$LayoutParams toolbar$LayoutParams = (Toolbar$LayoutParams)paramView.getLayoutParams();
    int j = paramView.getMeasuredHeight();
    if (paramInt > 0) {
      paramInt = (j - paramInt) / 2;
    } else {
      paramInt = 0;
    } 
    switch (getChildVerticalGravity(toolbar$LayoutParams.gravity)) {
      default:
        i = getPaddingTop();
        k = getPaddingBottom();
        m = getHeight();
        paramInt = (m - i - k - j) / 2;
        if (paramInt < toolbar$LayoutParams.topMargin) {
          paramInt = toolbar$LayoutParams.topMargin;
          return paramInt + i;
        } 
        break;
      case 48:
        return getPaddingTop() - paramInt;
      case 80:
        return getHeight() - getPaddingBottom() - j - toolbar$LayoutParams.bottomMargin - paramInt;
    } 
    j = m - k - j - paramInt - i;
    if (j < toolbar$LayoutParams.bottomMargin)
      paramInt = Math.max(0, paramInt - toolbar$LayoutParams.bottomMargin - j); 
    return paramInt + i;
  }
  
  private int getChildVerticalGravity(int paramInt) {
    int i = paramInt & 0x70;
    paramInt = i;
    switch (i) {
      default:
        paramInt = this.mGravity & 0x70;
        break;
      case 16:
      case 48:
      case 80:
        break;
    } 
    return paramInt;
  }
  
  private int getHorizontalMargins(View paramView) {
    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
    return MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams) + i;
  }
  
  private MenuInflater getMenuInflater() {
    return (MenuInflater)new SupportMenuInflater(getContext());
  }
  
  private int getVerticalMargins(View paramView) {
    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = marginLayoutParams.topMargin;
    return marginLayoutParams.bottomMargin + i;
  }
  
  private int getViewListMeasuredWidth(List<View> paramList, int[] paramArrayOfint) {
    int m = paramArrayOfint[0];
    int k = paramArrayOfint[1];
    int n = paramList.size();
    int j = 0;
    int i;
    for (i = 0; j < n; i += i3 + i1 + i2) {
      View view = paramList.get(j);
      Toolbar$LayoutParams toolbar$LayoutParams = (Toolbar$LayoutParams)view.getLayoutParams();
      m = toolbar$LayoutParams.leftMargin - m;
      k = toolbar$LayoutParams.rightMargin - k;
      int i1 = Math.max(0, m);
      int i2 = Math.max(0, k);
      m = Math.max(0, -m);
      k = Math.max(0, -k);
      int i3 = view.getMeasuredWidth();
      j++;
    } 
    return i;
  }
  
  private boolean isChildOrHidden(View paramView) {
    return (paramView.getParent() == this || this.mHiddenViews.contains(paramView));
  }
  
  private static boolean isCustomView(View paramView) {
    return (((Toolbar$LayoutParams)paramView.getLayoutParams()).mViewType == 0);
  }
  
  private int layoutChildLeft(View paramView, int paramInt1, int[] paramArrayOfint, int paramInt2) {
    Toolbar$LayoutParams toolbar$LayoutParams = (Toolbar$LayoutParams)paramView.getLayoutParams();
    int i = toolbar$LayoutParams.leftMargin - paramArrayOfint[0];
    paramInt1 = Math.max(0, i) + paramInt1;
    paramArrayOfint[0] = Math.max(0, -i);
    paramInt2 = getChildTop(paramView, paramInt2);
    i = paramView.getMeasuredWidth();
    paramView.layout(paramInt1, paramInt2, paramInt1 + i, paramView.getMeasuredHeight() + paramInt2);
    return toolbar$LayoutParams.rightMargin + i + paramInt1;
  }
  
  private int layoutChildRight(View paramView, int paramInt1, int[] paramArrayOfint, int paramInt2) {
    Toolbar$LayoutParams toolbar$LayoutParams = (Toolbar$LayoutParams)paramView.getLayoutParams();
    int i = toolbar$LayoutParams.rightMargin - paramArrayOfint[1];
    paramInt1 -= Math.max(0, i);
    paramArrayOfint[1] = Math.max(0, -i);
    paramInt2 = getChildTop(paramView, paramInt2);
    i = paramView.getMeasuredWidth();
    paramView.layout(paramInt1 - i, paramInt2, paramInt1, paramView.getMeasuredHeight() + paramInt2);
    return paramInt1 - toolbar$LayoutParams.leftMargin + i;
  }
  
  private int measureChildCollapseMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfint) {
    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = marginLayoutParams.leftMargin - paramArrayOfint[0];
    int j = marginLayoutParams.rightMargin - paramArrayOfint[1];
    int k = Math.max(0, i) + Math.max(0, j);
    paramArrayOfint[0] = Math.max(0, -i);
    paramArrayOfint[1] = Math.max(0, -j);
    paramView.measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + k + paramInt2, marginLayoutParams.width), getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + paramInt4, marginLayoutParams.height));
    return paramView.getMeasuredWidth() + k;
  }
  
  private void measureChildConstrained(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams)paramView.getLayoutParams();
    int i = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + paramInt2, marginLayoutParams.width);
    paramInt2 = getChildMeasureSpec(paramInt3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + paramInt4, marginLayoutParams.height);
    paramInt3 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = paramInt2;
    if (paramInt3 != 1073741824) {
      paramInt1 = paramInt2;
      if (paramInt5 >= 0) {
        paramInt1 = paramInt5;
        if (paramInt3 != 0)
          paramInt1 = Math.min(View.MeasureSpec.getSize(paramInt2), paramInt5); 
        paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
      } 
    } 
    paramView.measure(i, paramInt1);
  }
  
  private void postShowOverflowMenu() {
    removeCallbacks(this.mShowOverflowMenuRunnable);
    post(this.mShowOverflowMenuRunnable);
  }
  
  private boolean shouldCollapse() {
    if (this.mCollapsible) {
      int j = getChildCount();
      int i = 0;
      while (i < j) {
        View view = getChildAt(i);
        if (!shouldLayout(view) || view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
          i++;
          continue;
        } 
        return false;
      } 
      return true;
    } 
    return false;
  }
  
  private boolean shouldLayout(View paramView) {
    return (paramView != null && paramView.getParent() == this && paramView.getVisibility() != 8);
  }
  
  void addChildrenForExpandedActionView() {
    for (int i = this.mHiddenViews.size() - 1; i >= 0; i--)
      addView(this.mHiddenViews.get(i)); 
    this.mHiddenViews.clear();
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean canShowOverflowMenu() {
    return (getVisibility() == 0 && this.mMenuView != null && this.mMenuView.isOverflowReserved());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (super.checkLayoutParams(paramLayoutParams) && paramLayoutParams instanceof Toolbar$LayoutParams);
  }
  
  public void collapseActionView() {
    MenuItemImpl menuItemImpl;
    if (this.mExpandedMenuPresenter == null) {
      menuItemImpl = null;
    } else {
      menuItemImpl = this.mExpandedMenuPresenter.mCurrentExpandedItem;
    } 
    if (menuItemImpl != null)
      menuItemImpl.collapseActionView(); 
  }
  
  public void dismissPopupMenus() {
    if (this.mMenuView != null)
      this.mMenuView.dismissPopupMenus(); 
  }
  
  void ensureCollapseButtonView() {
    if (this.mCollapseButtonView == null) {
      this.mCollapseButtonView = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
      this.mCollapseButtonView.setImageDrawable(this.mCollapseIcon);
      this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
      Toolbar$LayoutParams toolbar$LayoutParams = generateDefaultLayoutParams();
      toolbar$LayoutParams.gravity = 0x800003 | this.mButtonGravity & 0x70;
      toolbar$LayoutParams.mViewType = 2;
      this.mCollapseButtonView.setLayoutParams((ViewGroup.LayoutParams)toolbar$LayoutParams);
      this.mCollapseButtonView.setOnClickListener(new Toolbar$3(this));
    } 
  }
  
  protected Toolbar$LayoutParams generateDefaultLayoutParams() {
    return new Toolbar$LayoutParams(-2, -2);
  }
  
  public Toolbar$LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return new Toolbar$LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected Toolbar$LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams) {
    return (paramLayoutParams instanceof Toolbar$LayoutParams) ? new Toolbar$LayoutParams((Toolbar$LayoutParams)paramLayoutParams) : ((paramLayoutParams instanceof ActionBar.LayoutParams) ? new Toolbar$LayoutParams((ActionBar.LayoutParams)paramLayoutParams) : ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams) ? new Toolbar$LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams) : new Toolbar$LayoutParams(paramLayoutParams)));
  }
  
  public int getContentInsetEnd() {
    return (this.mContentInsets != null) ? this.mContentInsets.getEnd() : 0;
  }
  
  public int getContentInsetEndWithActions() {
    return (this.mContentInsetEndWithActions != Integer.MIN_VALUE) ? this.mContentInsetEndWithActions : getContentInsetEnd();
  }
  
  public int getContentInsetLeft() {
    return (this.mContentInsets != null) ? this.mContentInsets.getLeft() : 0;
  }
  
  public int getContentInsetRight() {
    return (this.mContentInsets != null) ? this.mContentInsets.getRight() : 0;
  }
  
  public int getContentInsetStart() {
    return (this.mContentInsets != null) ? this.mContentInsets.getStart() : 0;
  }
  
  public int getContentInsetStartWithNavigation() {
    return (this.mContentInsetStartWithNavigation != Integer.MIN_VALUE) ? this.mContentInsetStartWithNavigation : getContentInsetStart();
  }
  
  public int getCurrentContentInsetEnd() {
    boolean bool;
    if (this.mMenuView != null) {
      MenuBuilder menuBuilder = this.mMenuView.peekMenu();
      if (menuBuilder != null && menuBuilder.hasVisibleItems()) {
        bool = true;
      } else {
        bool = false;
      } 
    } else {
      bool = false;
    } 
    return bool ? Math.max(getContentInsetEnd(), Math.max(this.mContentInsetEndWithActions, 0)) : getContentInsetEnd();
  }
  
  public int getCurrentContentInsetLeft() {
    return (ViewCompat.getLayoutDirection((View)this) == 1) ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
  }
  
  public int getCurrentContentInsetRight() {
    return (ViewCompat.getLayoutDirection((View)this) == 1) ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
  }
  
  public int getCurrentContentInsetStart() {
    return (getNavigationIcon() != null) ? Math.max(getContentInsetStart(), Math.max(this.mContentInsetStartWithNavigation, 0)) : getContentInsetStart();
  }
  
  public Drawable getLogo() {
    return (this.mLogoView != null) ? this.mLogoView.getDrawable() : null;
  }
  
  public CharSequence getLogoDescription() {
    return (this.mLogoView != null) ? this.mLogoView.getContentDescription() : null;
  }
  
  public Menu getMenu() {
    ensureMenu();
    return this.mMenuView.getMenu();
  }
  
  @Nullable
  public CharSequence getNavigationContentDescription() {
    return (this.mNavButtonView != null) ? this.mNavButtonView.getContentDescription() : null;
  }
  
  @Nullable
  public Drawable getNavigationIcon() {
    return (this.mNavButtonView != null) ? this.mNavButtonView.getDrawable() : null;
  }
  
  @Nullable
  public Drawable getOverflowIcon() {
    ensureMenu();
    return this.mMenuView.getOverflowIcon();
  }
  
  public int getPopupTheme() {
    return this.mPopupTheme;
  }
  
  public CharSequence getSubtitle() {
    return this.mSubtitleText;
  }
  
  public CharSequence getTitle() {
    return this.mTitleText;
  }
  
  public int getTitleMarginBottom() {
    return this.mTitleMarginBottom;
  }
  
  public int getTitleMarginEnd() {
    return this.mTitleMarginEnd;
  }
  
  public int getTitleMarginStart() {
    return this.mTitleMarginStart;
  }
  
  public int getTitleMarginTop() {
    return this.mTitleMarginTop;
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public DecorToolbar getWrapper() {
    if (this.mWrapper == null)
      this.mWrapper = new ToolbarWidgetWrapper(this, true); 
    return this.mWrapper;
  }
  
  public boolean hasExpandedActionView() {
    return (this.mExpandedMenuPresenter != null && this.mExpandedMenuPresenter.mCurrentExpandedItem != null);
  }
  
  public boolean hideOverflowMenu() {
    return (this.mMenuView != null && this.mMenuView.hideOverflowMenu());
  }
  
  public void inflateMenu(@MenuRes int paramInt) {
    getMenuInflater().inflate(paramInt, getMenu());
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isOverflowMenuShowPending() {
    return (this.mMenuView != null && this.mMenuView.isOverflowMenuShowPending());
  }
  
  public boolean isOverflowMenuShowing() {
    return (this.mMenuView != null && this.mMenuView.isOverflowMenuShowing());
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public boolean isTitleTruncated() {
    if (this.mTitleTextView != null) {
      Layout layout = this.mTitleTextView.getLayout();
      if (layout != null) {
        int j = layout.getLineCount();
        int i = 0;
        while (true) {
          if (i < j) {
            if (layout.getEllipsisCount(i) > 0)
              return true; 
            i++;
            continue;
          } 
          return false;
        } 
      } 
    } 
    return false;
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    removeCallbacks(this.mShowOverflowMenuRunnable);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent) {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i == 9)
      this.mEatingHover = false; 
    if (!this.mEatingHover) {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if (i == 9 && !bool)
        this.mEatingHover = true; 
    } 
    if (i == 10 || i == 3)
      this.mEatingHover = false; 
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic getLayoutDirection : (Landroid/view/View;)I
    //   4: iconst_1
    //   5: if_icmpne -> 886
    //   8: iconst_1
    //   9: istore #8
    //   11: aload_0
    //   12: invokevirtual getWidth : ()I
    //   15: istore #11
    //   17: aload_0
    //   18: invokevirtual getHeight : ()I
    //   21: istore #14
    //   23: aload_0
    //   24: invokevirtual getPaddingLeft : ()I
    //   27: istore #7
    //   29: aload_0
    //   30: invokevirtual getPaddingRight : ()I
    //   33: istore #12
    //   35: aload_0
    //   36: invokevirtual getPaddingTop : ()I
    //   39: istore #13
    //   41: aload_0
    //   42: invokevirtual getPaddingBottom : ()I
    //   45: istore #15
    //   47: iload #11
    //   49: iload #12
    //   51: isub
    //   52: istore_2
    //   53: aload_0
    //   54: getfield mTempMargins : [I
    //   57: astore #19
    //   59: aload #19
    //   61: iconst_1
    //   62: iconst_0
    //   63: iastore
    //   64: aload #19
    //   66: iconst_0
    //   67: iconst_0
    //   68: iastore
    //   69: aload_0
    //   70: invokestatic getMinimumHeight : (Landroid/view/View;)I
    //   73: istore #4
    //   75: iload #4
    //   77: iflt -> 892
    //   80: iload #4
    //   82: iload #5
    //   84: iload_3
    //   85: isub
    //   86: invokestatic min : (II)I
    //   89: istore #6
    //   91: aload_0
    //   92: aload_0
    //   93: getfield mNavButtonView : Landroid/widget/ImageButton;
    //   96: invokespecial shouldLayout : (Landroid/view/View;)Z
    //   99: ifeq -> 1587
    //   102: iload #8
    //   104: ifeq -> 898
    //   107: aload_0
    //   108: aload_0
    //   109: getfield mNavButtonView : Landroid/widget/ImageButton;
    //   112: iload_2
    //   113: aload #19
    //   115: iload #6
    //   117: invokespecial layoutChildRight : (Landroid/view/View;I[II)I
    //   120: istore_2
    //   121: iload #7
    //   123: istore_3
    //   124: iload_2
    //   125: istore #4
    //   127: iload_3
    //   128: istore #5
    //   130: aload_0
    //   131: aload_0
    //   132: getfield mCollapseButtonView : Landroid/widget/ImageButton;
    //   135: invokespecial shouldLayout : (Landroid/view/View;)Z
    //   138: ifeq -> 164
    //   141: iload #8
    //   143: ifeq -> 916
    //   146: aload_0
    //   147: aload_0
    //   148: getfield mCollapseButtonView : Landroid/widget/ImageButton;
    //   151: iload_2
    //   152: aload #19
    //   154: iload #6
    //   156: invokespecial layoutChildRight : (Landroid/view/View;I[II)I
    //   159: istore #4
    //   161: iload_3
    //   162: istore #5
    //   164: iload #4
    //   166: istore_2
    //   167: iload #5
    //   169: istore_3
    //   170: aload_0
    //   171: aload_0
    //   172: getfield mMenuView : Landroid/support/v7/widget/ActionMenuView;
    //   175: invokespecial shouldLayout : (Landroid/view/View;)Z
    //   178: ifeq -> 204
    //   181: iload #8
    //   183: ifeq -> 937
    //   186: aload_0
    //   187: aload_0
    //   188: getfield mMenuView : Landroid/support/v7/widget/ActionMenuView;
    //   191: iload #5
    //   193: aload #19
    //   195: iload #6
    //   197: invokespecial layoutChildLeft : (Landroid/view/View;I[II)I
    //   200: istore_3
    //   201: iload #4
    //   203: istore_2
    //   204: aload_0
    //   205: invokevirtual getCurrentContentInsetLeft : ()I
    //   208: istore #4
    //   210: aload_0
    //   211: invokevirtual getCurrentContentInsetRight : ()I
    //   214: istore #5
    //   216: aload #19
    //   218: iconst_0
    //   219: iconst_0
    //   220: iload #4
    //   222: iload_3
    //   223: isub
    //   224: invokestatic max : (II)I
    //   227: iastore
    //   228: aload #19
    //   230: iconst_1
    //   231: iconst_0
    //   232: iload #5
    //   234: iload #11
    //   236: iload #12
    //   238: isub
    //   239: iload_2
    //   240: isub
    //   241: isub
    //   242: invokestatic max : (II)I
    //   245: iastore
    //   246: iload_3
    //   247: iload #4
    //   249: invokestatic max : (II)I
    //   252: istore #4
    //   254: iload_2
    //   255: iload #11
    //   257: iload #12
    //   259: isub
    //   260: iload #5
    //   262: isub
    //   263: invokestatic min : (II)I
    //   266: istore #5
    //   268: iload #5
    //   270: istore_3
    //   271: iload #4
    //   273: istore_2
    //   274: aload_0
    //   275: aload_0
    //   276: getfield mExpandedActionView : Landroid/view/View;
    //   279: invokespecial shouldLayout : (Landroid/view/View;)Z
    //   282: ifeq -> 308
    //   285: iload #8
    //   287: ifeq -> 958
    //   290: aload_0
    //   291: aload_0
    //   292: getfield mExpandedActionView : Landroid/view/View;
    //   295: iload #5
    //   297: aload #19
    //   299: iload #6
    //   301: invokespecial layoutChildRight : (Landroid/view/View;I[II)I
    //   304: istore_3
    //   305: iload #4
    //   307: istore_2
    //   308: aload_0
    //   309: aload_0
    //   310: getfield mLogoView : Landroid/widget/ImageView;
    //   313: invokespecial shouldLayout : (Landroid/view/View;)Z
    //   316: ifeq -> 1581
    //   319: iload #8
    //   321: ifeq -> 979
    //   324: aload_0
    //   325: aload_0
    //   326: getfield mLogoView : Landroid/widget/ImageView;
    //   329: iload_3
    //   330: aload #19
    //   332: iload #6
    //   334: invokespecial layoutChildRight : (Landroid/view/View;I[II)I
    //   337: istore_3
    //   338: iload_2
    //   339: istore #4
    //   341: aload_0
    //   342: aload_0
    //   343: getfield mTitleTextView : Landroid/widget/TextView;
    //   346: invokespecial shouldLayout : (Landroid/view/View;)Z
    //   349: istore_1
    //   350: aload_0
    //   351: aload_0
    //   352: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   355: invokespecial shouldLayout : (Landroid/view/View;)Z
    //   358: istore #16
    //   360: iconst_0
    //   361: istore_2
    //   362: iload_1
    //   363: ifeq -> 406
    //   366: aload_0
    //   367: getfield mTitleTextView : Landroid/widget/TextView;
    //   370: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   373: checkcast android/support/v7/widget/Toolbar$LayoutParams
    //   376: astore #17
    //   378: aload #17
    //   380: getfield topMargin : I
    //   383: istore_2
    //   384: aload_0
    //   385: getfield mTitleTextView : Landroid/widget/TextView;
    //   388: invokevirtual getMeasuredHeight : ()I
    //   391: istore #5
    //   393: iconst_0
    //   394: aload #17
    //   396: getfield bottomMargin : I
    //   399: iload_2
    //   400: iload #5
    //   402: iadd
    //   403: iadd
    //   404: iadd
    //   405: istore_2
    //   406: iload #16
    //   408: ifeq -> 1575
    //   411: aload_0
    //   412: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   415: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   418: checkcast android/support/v7/widget/Toolbar$LayoutParams
    //   421: astore #17
    //   423: aload #17
    //   425: getfield topMargin : I
    //   428: istore #5
    //   430: aload_0
    //   431: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   434: invokevirtual getMeasuredHeight : ()I
    //   437: istore #9
    //   439: aload #17
    //   441: getfield bottomMargin : I
    //   444: iload #5
    //   446: iload #9
    //   448: iadd
    //   449: iadd
    //   450: iload_2
    //   451: iadd
    //   452: istore #10
    //   454: iload_1
    //   455: ifne -> 469
    //   458: iload_3
    //   459: istore #5
    //   461: iload #4
    //   463: istore_2
    //   464: iload #16
    //   466: ifeq -> 832
    //   469: iload_1
    //   470: ifeq -> 997
    //   473: aload_0
    //   474: getfield mTitleTextView : Landroid/widget/TextView;
    //   477: astore #17
    //   479: iload #16
    //   481: ifeq -> 1006
    //   484: aload_0
    //   485: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   488: astore #18
    //   490: aload #17
    //   492: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   495: checkcast android/support/v7/widget/Toolbar$LayoutParams
    //   498: astore #17
    //   500: aload #18
    //   502: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   505: checkcast android/support/v7/widget/Toolbar$LayoutParams
    //   508: astore #18
    //   510: iload_1
    //   511: ifeq -> 524
    //   514: aload_0
    //   515: getfield mTitleTextView : Landroid/widget/TextView;
    //   518: invokevirtual getMeasuredWidth : ()I
    //   521: ifgt -> 539
    //   524: iload #16
    //   526: ifeq -> 1015
    //   529: aload_0
    //   530: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   533: invokevirtual getMeasuredWidth : ()I
    //   536: ifle -> 1015
    //   539: iconst_1
    //   540: istore #9
    //   542: aload_0
    //   543: getfield mGravity : I
    //   546: bipush #112
    //   548: iand
    //   549: lookupswitch default -> 576, 48 -> 1021, 80 -> 1095
    //   576: iload #14
    //   578: iload #13
    //   580: isub
    //   581: iload #15
    //   583: isub
    //   584: iload #10
    //   586: isub
    //   587: iconst_2
    //   588: idiv
    //   589: istore_2
    //   590: iload_2
    //   591: aload #17
    //   593: getfield topMargin : I
    //   596: aload_0
    //   597: getfield mTitleMarginTop : I
    //   600: iadd
    //   601: if_icmpge -> 1042
    //   604: aload #17
    //   606: getfield topMargin : I
    //   609: aload_0
    //   610: getfield mTitleMarginTop : I
    //   613: iadd
    //   614: istore_2
    //   615: iload #13
    //   617: iload_2
    //   618: iadd
    //   619: istore_2
    //   620: iload #8
    //   622: ifeq -> 1124
    //   625: iload #9
    //   627: ifeq -> 1118
    //   630: aload_0
    //   631: getfield mTitleMarginStart : I
    //   634: istore #5
    //   636: iload #5
    //   638: aload #19
    //   640: iconst_1
    //   641: iaload
    //   642: isub
    //   643: istore #5
    //   645: iload_3
    //   646: iconst_0
    //   647: iload #5
    //   649: invokestatic max : (II)I
    //   652: isub
    //   653: istore_3
    //   654: aload #19
    //   656: iconst_1
    //   657: iconst_0
    //   658: iload #5
    //   660: ineg
    //   661: invokestatic max : (II)I
    //   664: iastore
    //   665: iload_1
    //   666: ifeq -> 1566
    //   669: aload_0
    //   670: getfield mTitleTextView : Landroid/widget/TextView;
    //   673: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   676: checkcast android/support/v7/widget/Toolbar$LayoutParams
    //   679: astore #17
    //   681: iload_3
    //   682: aload_0
    //   683: getfield mTitleTextView : Landroid/widget/TextView;
    //   686: invokevirtual getMeasuredWidth : ()I
    //   689: isub
    //   690: istore #5
    //   692: aload_0
    //   693: getfield mTitleTextView : Landroid/widget/TextView;
    //   696: invokevirtual getMeasuredHeight : ()I
    //   699: iload_2
    //   700: iadd
    //   701: istore #8
    //   703: aload_0
    //   704: getfield mTitleTextView : Landroid/widget/TextView;
    //   707: iload #5
    //   709: iload_2
    //   710: iload_3
    //   711: iload #8
    //   713: invokevirtual layout : (IIII)V
    //   716: aload_0
    //   717: getfield mTitleMarginEnd : I
    //   720: istore #10
    //   722: iload #8
    //   724: aload #17
    //   726: getfield bottomMargin : I
    //   729: iadd
    //   730: istore_2
    //   731: iload #5
    //   733: iload #10
    //   735: isub
    //   736: istore #5
    //   738: iload #16
    //   740: ifeq -> 1561
    //   743: aload_0
    //   744: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   747: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   750: checkcast android/support/v7/widget/Toolbar$LayoutParams
    //   753: astore #17
    //   755: aload #17
    //   757: getfield topMargin : I
    //   760: iload_2
    //   761: iadd
    //   762: istore_2
    //   763: aload_0
    //   764: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   767: invokevirtual getMeasuredWidth : ()I
    //   770: istore #8
    //   772: aload_0
    //   773: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   776: invokevirtual getMeasuredHeight : ()I
    //   779: iload_2
    //   780: iadd
    //   781: istore #10
    //   783: aload_0
    //   784: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   787: iload_3
    //   788: iload #8
    //   790: isub
    //   791: iload_2
    //   792: iload_3
    //   793: iload #10
    //   795: invokevirtual layout : (IIII)V
    //   798: aload_0
    //   799: getfield mTitleMarginEnd : I
    //   802: istore_2
    //   803: aload #17
    //   805: getfield bottomMargin : I
    //   808: istore #8
    //   810: iload_3
    //   811: iload_2
    //   812: isub
    //   813: istore_2
    //   814: iload #9
    //   816: ifeq -> 1556
    //   819: iload #5
    //   821: iload_2
    //   822: invokestatic min : (II)I
    //   825: istore_2
    //   826: iload_2
    //   827: istore #5
    //   829: iload #4
    //   831: istore_2
    //   832: aload_0
    //   833: aload_0
    //   834: getfield mTempViews : Ljava/util/ArrayList;
    //   837: iconst_3
    //   838: invokespecial addCustomViewsWithGravity : (Ljava/util/List;I)V
    //   841: aload_0
    //   842: getfield mTempViews : Ljava/util/ArrayList;
    //   845: invokevirtual size : ()I
    //   848: istore #4
    //   850: iconst_0
    //   851: istore_3
    //   852: iload_3
    //   853: iload #4
    //   855: if_icmpge -> 1356
    //   858: aload_0
    //   859: aload_0
    //   860: getfield mTempViews : Ljava/util/ArrayList;
    //   863: iload_3
    //   864: invokevirtual get : (I)Ljava/lang/Object;
    //   867: checkcast android/view/View
    //   870: iload_2
    //   871: aload #19
    //   873: iload #6
    //   875: invokespecial layoutChildLeft : (Landroid/view/View;I[II)I
    //   878: istore_2
    //   879: iload_3
    //   880: iconst_1
    //   881: iadd
    //   882: istore_3
    //   883: goto -> 852
    //   886: iconst_0
    //   887: istore #8
    //   889: goto -> 11
    //   892: iconst_0
    //   893: istore #6
    //   895: goto -> 91
    //   898: aload_0
    //   899: aload_0
    //   900: getfield mNavButtonView : Landroid/widget/ImageButton;
    //   903: iload #7
    //   905: aload #19
    //   907: iload #6
    //   909: invokespecial layoutChildLeft : (Landroid/view/View;I[II)I
    //   912: istore_3
    //   913: goto -> 124
    //   916: aload_0
    //   917: aload_0
    //   918: getfield mCollapseButtonView : Landroid/widget/ImageButton;
    //   921: iload_3
    //   922: aload #19
    //   924: iload #6
    //   926: invokespecial layoutChildLeft : (Landroid/view/View;I[II)I
    //   929: istore #5
    //   931: iload_2
    //   932: istore #4
    //   934: goto -> 164
    //   937: aload_0
    //   938: aload_0
    //   939: getfield mMenuView : Landroid/support/v7/widget/ActionMenuView;
    //   942: iload #4
    //   944: aload #19
    //   946: iload #6
    //   948: invokespecial layoutChildRight : (Landroid/view/View;I[II)I
    //   951: istore_2
    //   952: iload #5
    //   954: istore_3
    //   955: goto -> 204
    //   958: aload_0
    //   959: aload_0
    //   960: getfield mExpandedActionView : Landroid/view/View;
    //   963: iload #4
    //   965: aload #19
    //   967: iload #6
    //   969: invokespecial layoutChildLeft : (Landroid/view/View;I[II)I
    //   972: istore_2
    //   973: iload #5
    //   975: istore_3
    //   976: goto -> 308
    //   979: aload_0
    //   980: aload_0
    //   981: getfield mLogoView : Landroid/widget/ImageView;
    //   984: iload_2
    //   985: aload #19
    //   987: iload #6
    //   989: invokespecial layoutChildLeft : (Landroid/view/View;I[II)I
    //   992: istore #4
    //   994: goto -> 341
    //   997: aload_0
    //   998: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   1001: astore #17
    //   1003: goto -> 479
    //   1006: aload_0
    //   1007: getfield mTitleTextView : Landroid/widget/TextView;
    //   1010: astore #18
    //   1012: goto -> 490
    //   1015: iconst_0
    //   1016: istore #9
    //   1018: goto -> 542
    //   1021: aload_0
    //   1022: invokevirtual getPaddingTop : ()I
    //   1025: istore_2
    //   1026: aload #17
    //   1028: getfield topMargin : I
    //   1031: iload_2
    //   1032: iadd
    //   1033: aload_0
    //   1034: getfield mTitleMarginTop : I
    //   1037: iadd
    //   1038: istore_2
    //   1039: goto -> 620
    //   1042: iload #14
    //   1044: iload #15
    //   1046: isub
    //   1047: iload #10
    //   1049: isub
    //   1050: iload_2
    //   1051: isub
    //   1052: iload #13
    //   1054: isub
    //   1055: istore #5
    //   1057: iload #5
    //   1059: aload #17
    //   1061: getfield bottomMargin : I
    //   1064: aload_0
    //   1065: getfield mTitleMarginBottom : I
    //   1068: iadd
    //   1069: if_icmpge -> 1572
    //   1072: iconst_0
    //   1073: iload_2
    //   1074: aload #18
    //   1076: getfield bottomMargin : I
    //   1079: aload_0
    //   1080: getfield mTitleMarginBottom : I
    //   1083: iadd
    //   1084: iload #5
    //   1086: isub
    //   1087: isub
    //   1088: invokestatic max : (II)I
    //   1091: istore_2
    //   1092: goto -> 615
    //   1095: iload #14
    //   1097: iload #15
    //   1099: isub
    //   1100: aload #18
    //   1102: getfield bottomMargin : I
    //   1105: isub
    //   1106: aload_0
    //   1107: getfield mTitleMarginBottom : I
    //   1110: isub
    //   1111: iload #10
    //   1113: isub
    //   1114: istore_2
    //   1115: goto -> 620
    //   1118: iconst_0
    //   1119: istore #5
    //   1121: goto -> 636
    //   1124: iload #9
    //   1126: ifeq -> 1350
    //   1129: aload_0
    //   1130: getfield mTitleMarginStart : I
    //   1133: istore #5
    //   1135: iload #5
    //   1137: aload #19
    //   1139: iconst_0
    //   1140: iaload
    //   1141: isub
    //   1142: istore #5
    //   1144: iload #4
    //   1146: iconst_0
    //   1147: iload #5
    //   1149: invokestatic max : (II)I
    //   1152: iadd
    //   1153: istore #4
    //   1155: aload #19
    //   1157: iconst_0
    //   1158: iconst_0
    //   1159: iload #5
    //   1161: ineg
    //   1162: invokestatic max : (II)I
    //   1165: iastore
    //   1166: iload_1
    //   1167: ifeq -> 1549
    //   1170: aload_0
    //   1171: getfield mTitleTextView : Landroid/widget/TextView;
    //   1174: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   1177: checkcast android/support/v7/widget/Toolbar$LayoutParams
    //   1180: astore #17
    //   1182: aload_0
    //   1183: getfield mTitleTextView : Landroid/widget/TextView;
    //   1186: invokevirtual getMeasuredWidth : ()I
    //   1189: iload #4
    //   1191: iadd
    //   1192: istore #8
    //   1194: aload_0
    //   1195: getfield mTitleTextView : Landroid/widget/TextView;
    //   1198: invokevirtual getMeasuredHeight : ()I
    //   1201: iload_2
    //   1202: iadd
    //   1203: istore #5
    //   1205: aload_0
    //   1206: getfield mTitleTextView : Landroid/widget/TextView;
    //   1209: iload #4
    //   1211: iload_2
    //   1212: iload #8
    //   1214: iload #5
    //   1216: invokevirtual layout : (IIII)V
    //   1219: aload_0
    //   1220: getfield mTitleMarginEnd : I
    //   1223: istore #10
    //   1225: aload #17
    //   1227: getfield bottomMargin : I
    //   1230: istore_2
    //   1231: iload #8
    //   1233: iload #10
    //   1235: iadd
    //   1236: istore #8
    //   1238: iload_2
    //   1239: iload #5
    //   1241: iadd
    //   1242: istore_2
    //   1243: iload #16
    //   1245: ifeq -> 1542
    //   1248: aload_0
    //   1249: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   1252: invokevirtual getLayoutParams : ()Landroid/view/ViewGroup$LayoutParams;
    //   1255: checkcast android/support/v7/widget/Toolbar$LayoutParams
    //   1258: astore #17
    //   1260: iload_2
    //   1261: aload #17
    //   1263: getfield topMargin : I
    //   1266: iadd
    //   1267: istore #5
    //   1269: aload_0
    //   1270: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   1273: invokevirtual getMeasuredWidth : ()I
    //   1276: iload #4
    //   1278: iadd
    //   1279: istore_2
    //   1280: aload_0
    //   1281: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   1284: invokevirtual getMeasuredHeight : ()I
    //   1287: iload #5
    //   1289: iadd
    //   1290: istore #10
    //   1292: aload_0
    //   1293: getfield mSubtitleTextView : Landroid/widget/TextView;
    //   1296: iload #4
    //   1298: iload #5
    //   1300: iload_2
    //   1301: iload #10
    //   1303: invokevirtual layout : (IIII)V
    //   1306: aload_0
    //   1307: getfield mTitleMarginEnd : I
    //   1310: istore #5
    //   1312: aload #17
    //   1314: getfield bottomMargin : I
    //   1317: istore #10
    //   1319: iload #5
    //   1321: iload_2
    //   1322: iadd
    //   1323: istore #10
    //   1325: iload_3
    //   1326: istore #5
    //   1328: iload #4
    //   1330: istore_2
    //   1331: iload #9
    //   1333: ifeq -> 832
    //   1336: iload #8
    //   1338: iload #10
    //   1340: invokestatic max : (II)I
    //   1343: istore_2
    //   1344: iload_3
    //   1345: istore #5
    //   1347: goto -> 832
    //   1350: iconst_0
    //   1351: istore #5
    //   1353: goto -> 1135
    //   1356: aload_0
    //   1357: aload_0
    //   1358: getfield mTempViews : Ljava/util/ArrayList;
    //   1361: iconst_5
    //   1362: invokespecial addCustomViewsWithGravity : (Ljava/util/List;I)V
    //   1365: aload_0
    //   1366: getfield mTempViews : Ljava/util/ArrayList;
    //   1369: invokevirtual size : ()I
    //   1372: istore #4
    //   1374: iconst_0
    //   1375: istore_3
    //   1376: iload_3
    //   1377: iload #4
    //   1379: if_icmpge -> 1412
    //   1382: aload_0
    //   1383: aload_0
    //   1384: getfield mTempViews : Ljava/util/ArrayList;
    //   1387: iload_3
    //   1388: invokevirtual get : (I)Ljava/lang/Object;
    //   1391: checkcast android/view/View
    //   1394: iload #5
    //   1396: aload #19
    //   1398: iload #6
    //   1400: invokespecial layoutChildRight : (Landroid/view/View;I[II)I
    //   1403: istore #5
    //   1405: iload_3
    //   1406: iconst_1
    //   1407: iadd
    //   1408: istore_3
    //   1409: goto -> 1376
    //   1412: aload_0
    //   1413: aload_0
    //   1414: getfield mTempViews : Ljava/util/ArrayList;
    //   1417: iconst_1
    //   1418: invokespecial addCustomViewsWithGravity : (Ljava/util/List;I)V
    //   1421: aload_0
    //   1422: aload_0
    //   1423: getfield mTempViews : Ljava/util/ArrayList;
    //   1426: aload #19
    //   1428: invokespecial getViewListMeasuredWidth : (Ljava/util/List;[I)I
    //   1431: istore #4
    //   1433: iload #11
    //   1435: iload #7
    //   1437: isub
    //   1438: iload #12
    //   1440: isub
    //   1441: iconst_2
    //   1442: idiv
    //   1443: iload #7
    //   1445: iadd
    //   1446: iload #4
    //   1448: iconst_2
    //   1449: idiv
    //   1450: isub
    //   1451: istore_3
    //   1452: iload #4
    //   1454: iload_3
    //   1455: iadd
    //   1456: istore #4
    //   1458: iload_3
    //   1459: iload_2
    //   1460: if_icmpge -> 1514
    //   1463: aload_0
    //   1464: getfield mTempViews : Ljava/util/ArrayList;
    //   1467: invokevirtual size : ()I
    //   1470: istore #5
    //   1472: iconst_0
    //   1473: istore #4
    //   1475: iload_2
    //   1476: istore_3
    //   1477: iload #4
    //   1479: istore_2
    //   1480: iload_2
    //   1481: iload #5
    //   1483: if_icmpge -> 1534
    //   1486: aload_0
    //   1487: aload_0
    //   1488: getfield mTempViews : Ljava/util/ArrayList;
    //   1491: iload_2
    //   1492: invokevirtual get : (I)Ljava/lang/Object;
    //   1495: checkcast android/view/View
    //   1498: iload_3
    //   1499: aload #19
    //   1501: iload #6
    //   1503: invokespecial layoutChildLeft : (Landroid/view/View;I[II)I
    //   1506: istore_3
    //   1507: iload_2
    //   1508: iconst_1
    //   1509: iadd
    //   1510: istore_2
    //   1511: goto -> 1480
    //   1514: iload_3
    //   1515: istore_2
    //   1516: iload #4
    //   1518: iload #5
    //   1520: if_icmple -> 1463
    //   1523: iload_3
    //   1524: iload #4
    //   1526: iload #5
    //   1528: isub
    //   1529: isub
    //   1530: istore_2
    //   1531: goto -> 1463
    //   1534: aload_0
    //   1535: getfield mTempViews : Ljava/util/ArrayList;
    //   1538: invokevirtual clear : ()V
    //   1541: return
    //   1542: iload #4
    //   1544: istore #10
    //   1546: goto -> 1325
    //   1549: iload #4
    //   1551: istore #8
    //   1553: goto -> 1243
    //   1556: iload_3
    //   1557: istore_2
    //   1558: goto -> 826
    //   1561: iload_3
    //   1562: istore_2
    //   1563: goto -> 814
    //   1566: iload_3
    //   1567: istore #5
    //   1569: goto -> 738
    //   1572: goto -> 615
    //   1575: iload_2
    //   1576: istore #10
    //   1578: goto -> 454
    //   1581: iload_2
    //   1582: istore #4
    //   1584: goto -> 341
    //   1587: iload #7
    //   1589: istore_3
    //   1590: goto -> 124
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int m = 0;
    int k = 0;
    int[] arrayOfInt = this.mTempMargins;
    if (ViewUtils.isLayoutRtl((View)this)) {
      n = 0;
      i1 = 1;
    } else {
      n = 1;
      i1 = 0;
    } 
    int i = 0;
    if (shouldLayout((View)this.mNavButtonView)) {
      measureChildConstrained((View)this.mNavButtonView, paramInt1, 0, paramInt2, 0, this.mMaxButtonHeight);
      i = this.mNavButtonView.getMeasuredWidth() + getHorizontalMargins((View)this.mNavButtonView);
      m = Math.max(0, this.mNavButtonView.getMeasuredHeight() + getVerticalMargins((View)this.mNavButtonView));
      k = ViewUtils.combineMeasuredStates(0, ViewCompat.getMeasuredState((View)this.mNavButtonView));
    } 
    int i2 = i;
    i = k;
    int j = m;
    if (shouldLayout((View)this.mCollapseButtonView)) {
      measureChildConstrained((View)this.mCollapseButtonView, paramInt1, 0, paramInt2, 0, this.mMaxButtonHeight);
      i2 = this.mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins((View)this.mCollapseButtonView);
      j = Math.max(m, this.mCollapseButtonView.getMeasuredHeight() + getVerticalMargins((View)this.mCollapseButtonView));
      i = ViewUtils.combineMeasuredStates(k, ViewCompat.getMeasuredState((View)this.mCollapseButtonView));
    } 
    k = getCurrentContentInsetStart();
    int i3 = 0 + Math.max(k, i2);
    arrayOfInt[i1] = Math.max(0, k - i2);
    int i1 = 0;
    k = i;
    m = j;
    if (shouldLayout((View)this.mMenuView)) {
      measureChildConstrained((View)this.mMenuView, paramInt1, i3, paramInt2, 0, this.mMaxButtonHeight);
      i1 = this.mMenuView.getMeasuredWidth() + getHorizontalMargins((View)this.mMenuView);
      m = Math.max(j, this.mMenuView.getMeasuredHeight() + getVerticalMargins((View)this.mMenuView));
      k = ViewUtils.combineMeasuredStates(i, ViewCompat.getMeasuredState((View)this.mMenuView));
    } 
    i = getCurrentContentInsetEnd();
    i2 = i3 + Math.max(i, i1);
    arrayOfInt[n] = Math.max(0, i - i1);
    i1 = i2;
    i = k;
    j = m;
    if (shouldLayout(this.mExpandedActionView)) {
      i1 = i2 + measureChildCollapseMargins(this.mExpandedActionView, paramInt1, i2, paramInt2, 0, arrayOfInt);
      j = Math.max(m, this.mExpandedActionView.getMeasuredHeight() + getVerticalMargins(this.mExpandedActionView));
      i = ViewUtils.combineMeasuredStates(k, ViewCompat.getMeasuredState(this.mExpandedActionView));
    } 
    k = i1;
    m = i;
    int n = j;
    if (shouldLayout((View)this.mLogoView)) {
      k = i1 + measureChildCollapseMargins((View)this.mLogoView, paramInt1, i1, paramInt2, 0, arrayOfInt);
      n = Math.max(j, this.mLogoView.getMeasuredHeight() + getVerticalMargins((View)this.mLogoView));
      m = ViewUtils.combineMeasuredStates(i, ViewCompat.getMeasuredState((View)this.mLogoView));
    } 
    i2 = getChildCount();
    i1 = 0;
    j = n;
    i = m;
    m = i1;
    i1 = k;
    while (m < i2) {
      View view = getChildAt(m);
      if (((Toolbar$LayoutParams)view.getLayoutParams()).mViewType == 0 && shouldLayout(view)) {
        i1 += measureChildCollapseMargins(view, paramInt1, i1, paramInt2, 0, arrayOfInt);
        j = Math.max(j, view.getMeasuredHeight() + getVerticalMargins(view));
        i = ViewUtils.combineMeasuredStates(i, ViewCompat.getMeasuredState(view));
      } 
      m++;
    } 
    n = 0;
    m = 0;
    int i4 = this.mTitleMarginTop + this.mTitleMarginBottom;
    int i5 = this.mTitleMarginStart + this.mTitleMarginEnd;
    k = i;
    if (shouldLayout((View)this.mTitleTextView)) {
      measureChildCollapseMargins((View)this.mTitleTextView, paramInt1, i1 + i5, paramInt2, i4, arrayOfInt);
      k = this.mTitleTextView.getMeasuredWidth();
      n = getHorizontalMargins((View)this.mTitleTextView) + k;
      m = this.mTitleTextView.getMeasuredHeight() + getVerticalMargins((View)this.mTitleTextView);
      k = ViewUtils.combineMeasuredStates(i, ViewCompat.getMeasuredState((View)this.mTitleTextView));
    } 
    i3 = m;
    i2 = n;
    i = k;
    if (shouldLayout((View)this.mSubtitleTextView)) {
      i2 = Math.max(n, measureChildCollapseMargins((View)this.mSubtitleTextView, paramInt1, i1 + i5, paramInt2, i4 + m, arrayOfInt));
      i3 = m + this.mSubtitleTextView.getMeasuredHeight() + getVerticalMargins((View)this.mSubtitleTextView);
      i = ViewUtils.combineMeasuredStates(k, ViewCompat.getMeasuredState((View)this.mSubtitleTextView));
    } 
    j = Math.max(j, i3);
    n = getPaddingLeft();
    i3 = getPaddingRight();
    k = getPaddingTop();
    m = getPaddingBottom();
    n = ViewCompat.resolveSizeAndState(Math.max(i2 + i1 + n + i3, getSuggestedMinimumWidth()), paramInt1, 0xFF000000 & i);
    paramInt1 = ViewCompat.resolveSizeAndState(Math.max(j + k + m, getSuggestedMinimumHeight()), paramInt2, i << 16);
    if (shouldCollapse())
      paramInt1 = 0; 
    setMeasuredDimension(n, paramInt1);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof Toolbar$SavedState)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    Toolbar$SavedState toolbar$SavedState = (Toolbar$SavedState)paramParcelable;
    super.onRestoreInstanceState(toolbar$SavedState.getSuperState());
    if (this.mMenuView != null) {
      MenuBuilder menuBuilder = this.mMenuView.peekMenu();
    } else {
      paramParcelable = null;
    } 
    if (toolbar$SavedState.expandedMenuItemId != 0 && this.mExpandedMenuPresenter != null && paramParcelable != null) {
      MenuItem menuItem = paramParcelable.findItem(toolbar$SavedState.expandedMenuItemId);
      if (menuItem != null)
        MenuItemCompat.expandActionView(menuItem); 
    } 
    if (toolbar$SavedState.isOverflowOpen) {
      postShowOverflowMenu();
      return;
    } 
  }
  
  public void onRtlPropertiesChanged(int paramInt) {
    boolean bool = true;
    if (Build.VERSION.SDK_INT >= 17)
      super.onRtlPropertiesChanged(paramInt); 
    ensureContentInsets();
    RtlSpacingHelper rtlSpacingHelper = this.mContentInsets;
    if (paramInt != 1)
      bool = false; 
    rtlSpacingHelper.setDirection(bool);
  }
  
  protected Parcelable onSaveInstanceState() {
    Toolbar$SavedState toolbar$SavedState = new Toolbar$SavedState(super.onSaveInstanceState());
    if (this.mExpandedMenuPresenter != null && this.mExpandedMenuPresenter.mCurrentExpandedItem != null)
      toolbar$SavedState.expandedMenuItemId = this.mExpandedMenuPresenter.mCurrentExpandedItem.getItemId(); 
    toolbar$SavedState.isOverflowOpen = isOverflowMenuShowing();
    return (Parcelable)toolbar$SavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i == 0)
      this.mEatingTouch = false; 
    if (!this.mEatingTouch) {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if (i == 0 && !bool)
        this.mEatingTouch = true; 
    } 
    if (i == 1 || i == 3)
      this.mEatingTouch = false; 
    return true;
  }
  
  void removeChildrenForExpandedActionView() {
    for (int i = getChildCount() - 1; i >= 0; i--) {
      View view = getChildAt(i);
      if (((Toolbar$LayoutParams)view.getLayoutParams()).mViewType != 2 && view != this.mMenuView) {
        removeViewAt(i);
        this.mHiddenViews.add(view);
      } 
    } 
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setCollapsible(boolean paramBoolean) {
    this.mCollapsible = paramBoolean;
    requestLayout();
  }
  
  public void setContentInsetEndWithActions(int paramInt) {
    int i = paramInt;
    if (paramInt < 0)
      i = Integer.MIN_VALUE; 
    if (i != this.mContentInsetEndWithActions) {
      this.mContentInsetEndWithActions = i;
      if (getNavigationIcon() != null)
        requestLayout(); 
    } 
  }
  
  public void setContentInsetStartWithNavigation(int paramInt) {
    int i = paramInt;
    if (paramInt < 0)
      i = Integer.MIN_VALUE; 
    if (i != this.mContentInsetStartWithNavigation) {
      this.mContentInsetStartWithNavigation = i;
      if (getNavigationIcon() != null)
        requestLayout(); 
    } 
  }
  
  public void setContentInsetsAbsolute(int paramInt1, int paramInt2) {
    ensureContentInsets();
    this.mContentInsets.setAbsolute(paramInt1, paramInt2);
  }
  
  public void setContentInsetsRelative(int paramInt1, int paramInt2) {
    ensureContentInsets();
    this.mContentInsets.setRelative(paramInt1, paramInt2);
  }
  
  public void setLogo(@DrawableRes int paramInt) {
    setLogo(AppCompatResources.getDrawable(getContext(), paramInt));
  }
  
  public void setLogo(Drawable paramDrawable) {
    if (paramDrawable != null) {
      ensureLogoView();
      if (!isChildOrHidden((View)this.mLogoView))
        addSystemView((View)this.mLogoView, true); 
    } else if (this.mLogoView != null && isChildOrHidden((View)this.mLogoView)) {
      removeView((View)this.mLogoView);
      this.mHiddenViews.remove(this.mLogoView);
    } 
    if (this.mLogoView != null)
      this.mLogoView.setImageDrawable(paramDrawable); 
  }
  
  public void setLogoDescription(@StringRes int paramInt) {
    setLogoDescription(getContext().getText(paramInt));
  }
  
  public void setLogoDescription(CharSequence paramCharSequence) {
    if (!TextUtils.isEmpty(paramCharSequence))
      ensureLogoView(); 
    if (this.mLogoView != null)
      this.mLogoView.setContentDescription(paramCharSequence); 
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setMenu(MenuBuilder paramMenuBuilder, ActionMenuPresenter paramActionMenuPresenter) {
    if (paramMenuBuilder != null || this.mMenuView != null) {
      ensureMenuView();
      MenuBuilder menuBuilder = this.mMenuView.peekMenu();
      if (menuBuilder != paramMenuBuilder) {
        if (menuBuilder != null) {
          menuBuilder.removeMenuPresenter((MenuPresenter)this.mOuterActionMenuPresenter);
          menuBuilder.removeMenuPresenter(this.mExpandedMenuPresenter);
        } 
        if (this.mExpandedMenuPresenter == null)
          this.mExpandedMenuPresenter = new Toolbar$ExpandedActionViewMenuPresenter(this); 
        paramActionMenuPresenter.setExpandedActionViewsExclusive(true);
        if (paramMenuBuilder != null) {
          paramMenuBuilder.addMenuPresenter((MenuPresenter)paramActionMenuPresenter, this.mPopupContext);
          paramMenuBuilder.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        } else {
          paramActionMenuPresenter.initForMenu(this.mPopupContext, null);
          this.mExpandedMenuPresenter.initForMenu(this.mPopupContext, null);
          paramActionMenuPresenter.updateMenuView(true);
          this.mExpandedMenuPresenter.updateMenuView(true);
        } 
        this.mMenuView.setPopupTheme(this.mPopupTheme);
        this.mMenuView.setPresenter(paramActionMenuPresenter);
        this.mOuterActionMenuPresenter = paramActionMenuPresenter;
        return;
      } 
    } 
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public void setMenuCallbacks(MenuPresenter.Callback paramCallback, MenuBuilder.Callback paramCallback1) {
    this.mActionMenuPresenterCallback = paramCallback;
    this.mMenuBuilderCallback = paramCallback1;
    if (this.mMenuView != null)
      this.mMenuView.setMenuCallbacks(paramCallback, paramCallback1); 
  }
  
  public void setNavigationContentDescription(@StringRes int paramInt) {
    CharSequence charSequence;
    if (paramInt != 0) {
      charSequence = getContext().getText(paramInt);
    } else {
      charSequence = null;
    } 
    setNavigationContentDescription(charSequence);
  }
  
  public void setNavigationContentDescription(@Nullable CharSequence paramCharSequence) {
    if (!TextUtils.isEmpty(paramCharSequence))
      ensureNavButtonView(); 
    if (this.mNavButtonView != null)
      this.mNavButtonView.setContentDescription(paramCharSequence); 
  }
  
  public void setNavigationIcon(@DrawableRes int paramInt) {
    setNavigationIcon(AppCompatResources.getDrawable(getContext(), paramInt));
  }
  
  public void setNavigationIcon(@Nullable Drawable paramDrawable) {
    if (paramDrawable != null) {
      ensureNavButtonView();
      if (!isChildOrHidden((View)this.mNavButtonView))
        addSystemView((View)this.mNavButtonView, true); 
    } else if (this.mNavButtonView != null && isChildOrHidden((View)this.mNavButtonView)) {
      removeView((View)this.mNavButtonView);
      this.mHiddenViews.remove(this.mNavButtonView);
    } 
    if (this.mNavButtonView != null)
      this.mNavButtonView.setImageDrawable(paramDrawable); 
  }
  
  public void setNavigationOnClickListener(View.OnClickListener paramOnClickListener) {
    ensureNavButtonView();
    this.mNavButtonView.setOnClickListener(paramOnClickListener);
  }
  
  public void setOnMenuItemClickListener(Toolbar$OnMenuItemClickListener paramToolbar$OnMenuItemClickListener) {
    this.mOnMenuItemClickListener = paramToolbar$OnMenuItemClickListener;
  }
  
  public void setOverflowIcon(@Nullable Drawable paramDrawable) {
    ensureMenu();
    this.mMenuView.setOverflowIcon(paramDrawable);
  }
  
  public void setPopupTheme(@StyleRes int paramInt) {
    if (this.mPopupTheme != paramInt) {
      this.mPopupTheme = paramInt;
      if (paramInt == 0) {
        this.mPopupContext = getContext();
        return;
      } 
    } else {
      return;
    } 
    this.mPopupContext = (Context)new ContextThemeWrapper(getContext(), paramInt);
  }
  
  public void setSubtitle(@StringRes int paramInt) {
    setSubtitle(getContext().getText(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence) {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      if (this.mSubtitleTextView == null) {
        Context context = getContext();
        this.mSubtitleTextView = new AppCompatTextView(context);
        this.mSubtitleTextView.setSingleLine();
        this.mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        if (this.mSubtitleTextAppearance != 0)
          this.mSubtitleTextView.setTextAppearance(context, this.mSubtitleTextAppearance); 
        if (this.mSubtitleTextColor != 0)
          this.mSubtitleTextView.setTextColor(this.mSubtitleTextColor); 
      } 
      if (!isChildOrHidden((View)this.mSubtitleTextView))
        addSystemView((View)this.mSubtitleTextView, true); 
    } else if (this.mSubtitleTextView != null && isChildOrHidden((View)this.mSubtitleTextView)) {
      removeView((View)this.mSubtitleTextView);
      this.mHiddenViews.remove(this.mSubtitleTextView);
    } 
    if (this.mSubtitleTextView != null)
      this.mSubtitleTextView.setText(paramCharSequence); 
    this.mSubtitleText = paramCharSequence;
  }
  
  public void setSubtitleTextAppearance(Context paramContext, @StyleRes int paramInt) {
    this.mSubtitleTextAppearance = paramInt;
    if (this.mSubtitleTextView != null)
      this.mSubtitleTextView.setTextAppearance(paramContext, paramInt); 
  }
  
  public void setSubtitleTextColor(@ColorInt int paramInt) {
    this.mSubtitleTextColor = paramInt;
    if (this.mSubtitleTextView != null)
      this.mSubtitleTextView.setTextColor(paramInt); 
  }
  
  public void setTitle(@StringRes int paramInt) {
    setTitle(getContext().getText(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    if (!TextUtils.isEmpty(paramCharSequence)) {
      if (this.mTitleTextView == null) {
        Context context = getContext();
        this.mTitleTextView = new AppCompatTextView(context);
        this.mTitleTextView.setSingleLine();
        this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
        if (this.mTitleTextAppearance != 0)
          this.mTitleTextView.setTextAppearance(context, this.mTitleTextAppearance); 
        if (this.mTitleTextColor != 0)
          this.mTitleTextView.setTextColor(this.mTitleTextColor); 
      } 
      if (!isChildOrHidden((View)this.mTitleTextView))
        addSystemView((View)this.mTitleTextView, true); 
    } else if (this.mTitleTextView != null && isChildOrHidden((View)this.mTitleTextView)) {
      removeView((View)this.mTitleTextView);
      this.mHiddenViews.remove(this.mTitleTextView);
    } 
    if (this.mTitleTextView != null)
      this.mTitleTextView.setText(paramCharSequence); 
    this.mTitleText = paramCharSequence;
  }
  
  public void setTitleMargin(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.mTitleMarginStart = paramInt1;
    this.mTitleMarginTop = paramInt2;
    this.mTitleMarginEnd = paramInt3;
    this.mTitleMarginBottom = paramInt4;
    requestLayout();
  }
  
  public void setTitleMarginBottom(int paramInt) {
    this.mTitleMarginBottom = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginEnd(int paramInt) {
    this.mTitleMarginEnd = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginStart(int paramInt) {
    this.mTitleMarginStart = paramInt;
    requestLayout();
  }
  
  public void setTitleMarginTop(int paramInt) {
    this.mTitleMarginTop = paramInt;
    requestLayout();
  }
  
  public void setTitleTextAppearance(Context paramContext, @StyleRes int paramInt) {
    this.mTitleTextAppearance = paramInt;
    if (this.mTitleTextView != null)
      this.mTitleTextView.setTextAppearance(paramContext, paramInt); 
  }
  
  public void setTitleTextColor(@ColorInt int paramInt) {
    this.mTitleTextColor = paramInt;
    if (this.mTitleTextView != null)
      this.mTitleTextView.setTextColor(paramInt); 
  }
  
  public boolean showOverflowMenu() {
    return (this.mMenuView != null && this.mMenuView.showOverflowMenu());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\Toolbar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */