package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.R;
import android.support.v4.util.Pools;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.DecorView;
import android.support.v7.appcompat.R;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;

@DecorView
public class TabLayout extends HorizontalScrollView {
  private static final int ANIMATION_DURATION = 300;
  
  static final int DEFAULT_GAP_TEXT_ICON = 8;
  
  private static final int DEFAULT_HEIGHT = 48;
  
  private static final int DEFAULT_HEIGHT_WITH_TEXT_ICON = 72;
  
  static final int FIXED_WRAP_GUTTER_MIN = 16;
  
  public static final int GRAVITY_CENTER = 1;
  
  public static final int GRAVITY_FILL = 0;
  
  private static final int INVALID_WIDTH = -1;
  
  public static final int MODE_FIXED = 1;
  
  public static final int MODE_SCROLLABLE = 0;
  
  static final int MOTION_NON_ADJACENT_OFFSET = 24;
  
  private static final int TAB_MIN_WIDTH_MARGIN = 56;
  
  private static final Pools.Pool<TabLayout$Tab> sTabPool = (Pools.Pool<TabLayout$Tab>)new Pools.SynchronizedPool(16);
  
  private TabLayout$AdapterChangeListener mAdapterChangeListener;
  
  private int mContentInsetStart;
  
  private TabLayout$OnTabSelectedListener mCurrentVpSelectedListener;
  
  int mMode;
  
  private TabLayout$TabLayoutOnPageChangeListener mPageChangeListener;
  
  private PagerAdapter mPagerAdapter;
  
  private DataSetObserver mPagerAdapterObserver;
  
  private final int mRequestedTabMaxWidth;
  
  private final int mRequestedTabMinWidth;
  
  private ValueAnimatorCompat mScrollAnimator;
  
  private final int mScrollableTabMinWidth;
  
  private TabLayout$OnTabSelectedListener mSelectedListener;
  
  private final ArrayList<TabLayout$OnTabSelectedListener> mSelectedListeners;
  
  private TabLayout$Tab mSelectedTab;
  
  private boolean mSetupViewPagerImplicitly;
  
  final int mTabBackgroundResId;
  
  int mTabGravity;
  
  int mTabMaxWidth;
  
  int mTabPaddingBottom;
  
  int mTabPaddingEnd;
  
  int mTabPaddingStart;
  
  int mTabPaddingTop;
  
  private final TabLayout$SlidingTabStrip mTabStrip;
  
  int mTabTextAppearance;
  
  ColorStateList mTabTextColors;
  
  float mTabTextMultiLineSize;
  
  float mTabTextSize;
  
  private final Pools.Pool<TabLayout$TabView> mTabViewPool;
  
  private final ArrayList<TabLayout$Tab> mTabs;
  
  ViewPager mViewPager;
  
  public TabLayout(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet) {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    Resources resources;
    this.mTabs = new ArrayList<TabLayout$Tab>();
    this.mTabMaxWidth = Integer.MAX_VALUE;
    this.mSelectedListeners = new ArrayList<TabLayout$OnTabSelectedListener>();
    this.mTabViewPool = (Pools.Pool<TabLayout$TabView>)new Pools.SimplePool(12);
    ThemeUtils.checkAppCompatTheme(paramContext);
    setHorizontalScrollBarEnabled(false);
    this.mTabStrip = new TabLayout$SlidingTabStrip(this, paramContext);
    super.addView((View)this.mTabStrip, 0, (ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-2, -1));
    null = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TabLayout, paramInt, R.style.Widget_Design_TabLayout);
    this.mTabStrip.setSelectedIndicatorHeight(null.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, 0));
    this.mTabStrip.setSelectedIndicatorColor(null.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
    paramInt = null.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
    this.mTabPaddingBottom = paramInt;
    this.mTabPaddingEnd = paramInt;
    this.mTabPaddingTop = paramInt;
    this.mTabPaddingStart = paramInt;
    this.mTabPaddingStart = null.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, this.mTabPaddingStart);
    this.mTabPaddingTop = null.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.mTabPaddingTop);
    this.mTabPaddingEnd = null.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.mTabPaddingEnd);
    this.mTabPaddingBottom = null.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.mTabPaddingBottom);
    this.mTabTextAppearance = null.getResourceId(R.styleable.TabLayout_tabTextAppearance, R.style.TextAppearance_Design_Tab);
    TypedArray typedArray = paramContext.obtainStyledAttributes(this.mTabTextAppearance, R.styleable.TextAppearance);
    try {
      this.mTabTextSize = typedArray.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
      this.mTabTextColors = typedArray.getColorStateList(R.styleable.TextAppearance_android_textColor);
      typedArray.recycle();
      if (null.hasValue(R.styleable.TabLayout_tabTextColor))
        this.mTabTextColors = null.getColorStateList(R.styleable.TabLayout_tabTextColor); 
      if (null.hasValue(R.styleable.TabLayout_tabSelectedTextColor)) {
        paramInt = null.getColor(R.styleable.TabLayout_tabSelectedTextColor, 0);
        this.mTabTextColors = createColorStateList(this.mTabTextColors.getDefaultColor(), paramInt);
      } 
      this.mRequestedTabMinWidth = null.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
      this.mRequestedTabMaxWidth = null.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
      this.mTabBackgroundResId = null.getResourceId(R.styleable.TabLayout_tabBackground, 0);
      this.mContentInsetStart = null.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
      this.mMode = null.getInt(R.styleable.TabLayout_tabMode, 1);
      this.mTabGravity = null.getInt(R.styleable.TabLayout_tabGravity, 0);
      null.recycle();
      resources = getResources();
      this.mTabTextMultiLineSize = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
      this.mScrollableTabMinWidth = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
      return;
    } finally {
      resources.recycle();
    } 
  }
  
  private void addTabFromItemView(@NonNull TabItem paramTabItem) {
    TabLayout$Tab tabLayout$Tab = newTab();
    if (paramTabItem.mText != null)
      tabLayout$Tab.setText(paramTabItem.mText); 
    if (paramTabItem.mIcon != null)
      tabLayout$Tab.setIcon(paramTabItem.mIcon); 
    if (paramTabItem.mCustomLayout != 0)
      tabLayout$Tab.setCustomView(paramTabItem.mCustomLayout); 
    if (!TextUtils.isEmpty(paramTabItem.getContentDescription()))
      tabLayout$Tab.setContentDescription(paramTabItem.getContentDescription()); 
    addTab(tabLayout$Tab);
  }
  
  private void addTabView(TabLayout$Tab paramTabLayout$Tab) {
    TabLayout$TabView tabLayout$TabView = paramTabLayout$Tab.mView;
    this.mTabStrip.addView((View)tabLayout$TabView, paramTabLayout$Tab.getPosition(), (ViewGroup.LayoutParams)createLayoutParamsForTabs());
  }
  
  private void addViewInternal(View paramView) {
    if (paramView instanceof TabItem) {
      addTabFromItemView((TabItem)paramView);
      return;
    } 
    throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
  }
  
  private void animateToTab(int paramInt) {
    if (paramInt == -1)
      return; 
    if (getWindowToken() == null || !ViewCompat.isLaidOut((View)this) || this.mTabStrip.childrenNeedLayout()) {
      setScrollPosition(paramInt, 0.0F, true);
      return;
    } 
    int i = getScrollX();
    int j = calculateScrollXForTab(paramInt, 0.0F);
    if (i != j) {
      ensureScrollAnimator();
      this.mScrollAnimator.setIntValues(i, j);
      this.mScrollAnimator.start();
    } 
    this.mTabStrip.animateIndicatorToPosition(paramInt, 300);
  }
  
  private void applyModeAndGravity() {
    boolean bool;
    if (this.mMode == 0) {
      bool = Math.max(0, this.mContentInsetStart - this.mTabPaddingStart);
    } else {
      bool = false;
    } 
    ViewCompat.setPaddingRelative((View)this.mTabStrip, bool, 0, 0, 0);
    switch (this.mMode) {
      default:
        updateTabViews(true);
        return;
      case 1:
        this.mTabStrip.setGravity(1);
      case 0:
        break;
    } 
    this.mTabStrip.setGravity(8388611);
  }
  
  private int calculateScrollXForTab(int paramInt, float paramFloat) {
    int i = 0;
    int j = 0;
    if (this.mMode == 0) {
      View view1;
      View view2 = this.mTabStrip.getChildAt(paramInt);
      if (paramInt + 1 < this.mTabStrip.getChildCount()) {
        view1 = this.mTabStrip.getChildAt(paramInt + 1);
      } else {
        view1 = null;
      } 
      if (view2 != null) {
        paramInt = view2.getWidth();
      } else {
        paramInt = 0;
      } 
      i = j;
      if (view1 != null)
        i = view1.getWidth(); 
      j = view2.getLeft() + paramInt / 2 - getWidth() / 2;
      paramInt = (int)((i + paramInt) * 0.5F * paramFloat);
      if (ViewCompat.getLayoutDirection((View)this) == 0)
        return paramInt + j; 
    } else {
      return i;
    } 
    return j - paramInt;
  }
  
  private void configureTab(TabLayout$Tab paramTabLayout$Tab, int paramInt) {
    paramTabLayout$Tab.setPosition(paramInt);
    this.mTabs.add(paramInt, paramTabLayout$Tab);
    int i = this.mTabs.size();
    while (++paramInt < i) {
      ((TabLayout$Tab)this.mTabs.get(paramInt)).setPosition(paramInt);
      paramInt++;
    } 
  }
  
  private static ColorStateList createColorStateList(int paramInt1, int paramInt2) {
    return new ColorStateList(new int[][] { SELECTED_STATE_SET, EMPTY_STATE_SET }, new int[] { paramInt2, paramInt1 });
  }
  
  private LinearLayout.LayoutParams createLayoutParamsForTabs() {
    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
    updateTabViewLayoutParams(layoutParams);
    return layoutParams;
  }
  
  private TabLayout$TabView createTabView(@NonNull TabLayout$Tab paramTabLayout$Tab) {
    TabLayout$TabView tabLayout$TabView1;
    if (this.mTabViewPool != null) {
      tabLayout$TabView1 = (TabLayout$TabView)this.mTabViewPool.acquire();
    } else {
      tabLayout$TabView1 = null;
    } 
    TabLayout$TabView tabLayout$TabView2 = tabLayout$TabView1;
    if (tabLayout$TabView1 == null)
      tabLayout$TabView2 = new TabLayout$TabView(this, getContext()); 
    tabLayout$TabView2.setTab(paramTabLayout$Tab);
    tabLayout$TabView2.setFocusable(true);
    tabLayout$TabView2.setMinimumWidth(getTabMinWidth());
    return tabLayout$TabView2;
  }
  
  private void dispatchTabReselected(@NonNull TabLayout$Tab paramTabLayout$Tab) {
    for (int i = this.mSelectedListeners.size() - 1; i >= 0; i--)
      ((TabLayout$OnTabSelectedListener)this.mSelectedListeners.get(i)).onTabReselected(paramTabLayout$Tab); 
  }
  
  private void dispatchTabSelected(@NonNull TabLayout$Tab paramTabLayout$Tab) {
    for (int i = this.mSelectedListeners.size() - 1; i >= 0; i--)
      ((TabLayout$OnTabSelectedListener)this.mSelectedListeners.get(i)).onTabSelected(paramTabLayout$Tab); 
  }
  
  private void dispatchTabUnselected(@NonNull TabLayout$Tab paramTabLayout$Tab) {
    for (int i = this.mSelectedListeners.size() - 1; i >= 0; i--)
      ((TabLayout$OnTabSelectedListener)this.mSelectedListeners.get(i)).onTabUnselected(paramTabLayout$Tab); 
  }
  
  private void ensureScrollAnimator() {
    if (this.mScrollAnimator == null) {
      this.mScrollAnimator = ViewUtils.createAnimator();
      this.mScrollAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
      this.mScrollAnimator.setDuration(300L);
      this.mScrollAnimator.addUpdateListener(new TabLayout$1(this));
    } 
  }
  
  private int getDefaultHeight() {
    // Byte code:
    //   0: aload_0
    //   1: getfield mTabs : Ljava/util/ArrayList;
    //   4: invokevirtual size : ()I
    //   7: istore_2
    //   8: iconst_0
    //   9: istore_1
    //   10: iload_1
    //   11: iload_2
    //   12: if_icmpge -> 67
    //   15: aload_0
    //   16: getfield mTabs : Ljava/util/ArrayList;
    //   19: iload_1
    //   20: invokevirtual get : (I)Ljava/lang/Object;
    //   23: checkcast android/support/design/widget/TabLayout$Tab
    //   26: astore_3
    //   27: aload_3
    //   28: ifnull -> 57
    //   31: aload_3
    //   32: invokevirtual getIcon : ()Landroid/graphics/drawable/Drawable;
    //   35: ifnull -> 57
    //   38: aload_3
    //   39: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   42: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   45: ifne -> 57
    //   48: iconst_1
    //   49: istore_1
    //   50: iload_1
    //   51: ifeq -> 64
    //   54: bipush #72
    //   56: ireturn
    //   57: iload_1
    //   58: iconst_1
    //   59: iadd
    //   60: istore_1
    //   61: goto -> 10
    //   64: bipush #48
    //   66: ireturn
    //   67: iconst_0
    //   68: istore_1
    //   69: goto -> 50
  }
  
  private float getScrollPosition() {
    return this.mTabStrip.getIndicatorPosition();
  }
  
  private int getTabMinWidth() {
    return (this.mRequestedTabMinWidth != -1) ? this.mRequestedTabMinWidth : ((this.mMode == 0) ? this.mScrollableTabMinWidth : 0);
  }
  
  private int getTabScrollRange() {
    return Math.max(0, this.mTabStrip.getWidth() - getWidth() - getPaddingLeft() - getPaddingRight());
  }
  
  private void removeTabViewAt(int paramInt) {
    TabLayout$TabView tabLayout$TabView = (TabLayout$TabView)this.mTabStrip.getChildAt(paramInt);
    this.mTabStrip.removeViewAt(paramInt);
    if (tabLayout$TabView != null) {
      tabLayout$TabView.reset();
      this.mTabViewPool.release(tabLayout$TabView);
    } 
    requestLayout();
  }
  
  private void setSelectedTabView(int paramInt) {
    int i = this.mTabStrip.getChildCount();
    if (paramInt < i)
      for (int j = 0; j < i; j++) {
        boolean bool;
        View view = this.mTabStrip.getChildAt(j);
        if (j == paramInt) {
          bool = true;
        } else {
          bool = false;
        } 
        view.setSelected(bool);
      }  
  }
  
  private void setupWithViewPager(@Nullable ViewPager paramViewPager, boolean paramBoolean1, boolean paramBoolean2) {
    if (this.mViewPager != null) {
      if (this.mPageChangeListener != null)
        this.mViewPager.removeOnPageChangeListener(this.mPageChangeListener); 
      if (this.mAdapterChangeListener != null)
        this.mViewPager.removeOnAdapterChangeListener(this.mAdapterChangeListener); 
    } 
    if (this.mCurrentVpSelectedListener != null) {
      removeOnTabSelectedListener(this.mCurrentVpSelectedListener);
      this.mCurrentVpSelectedListener = null;
    } 
    if (paramViewPager != null) {
      this.mViewPager = paramViewPager;
      if (this.mPageChangeListener == null)
        this.mPageChangeListener = new TabLayout$TabLayoutOnPageChangeListener(this); 
      this.mPageChangeListener.reset();
      paramViewPager.addOnPageChangeListener(this.mPageChangeListener);
      this.mCurrentVpSelectedListener = new TabLayout$ViewPagerOnTabSelectedListener(paramViewPager);
      addOnTabSelectedListener(this.mCurrentVpSelectedListener);
      PagerAdapter pagerAdapter = paramViewPager.getAdapter();
      if (pagerAdapter != null)
        setPagerAdapter(pagerAdapter, paramBoolean1); 
      if (this.mAdapterChangeListener == null)
        this.mAdapterChangeListener = new TabLayout$AdapterChangeListener(this); 
      this.mAdapterChangeListener.setAutoRefresh(paramBoolean1);
      paramViewPager.addOnAdapterChangeListener(this.mAdapterChangeListener);
      setScrollPosition(paramViewPager.getCurrentItem(), 0.0F, true);
    } else {
      this.mViewPager = null;
      setPagerAdapter((PagerAdapter)null, false);
    } 
    this.mSetupViewPagerImplicitly = paramBoolean2;
  }
  
  private void updateAllTabs() {
    int j = this.mTabs.size();
    for (int i = 0; i < j; i++)
      ((TabLayout$Tab)this.mTabs.get(i)).updateView(); 
  }
  
  private void updateTabViewLayoutParams(LinearLayout.LayoutParams paramLayoutParams) {
    if (this.mMode == 1 && this.mTabGravity == 0) {
      paramLayoutParams.width = 0;
      paramLayoutParams.weight = 1.0F;
      return;
    } 
    paramLayoutParams.width = -2;
    paramLayoutParams.weight = 0.0F;
  }
  
  public void addOnTabSelectedListener(@NonNull TabLayout$OnTabSelectedListener paramTabLayout$OnTabSelectedListener) {
    if (!this.mSelectedListeners.contains(paramTabLayout$OnTabSelectedListener))
      this.mSelectedListeners.add(paramTabLayout$OnTabSelectedListener); 
  }
  
  public void addTab(@NonNull TabLayout$Tab paramTabLayout$Tab) {
    addTab(paramTabLayout$Tab, this.mTabs.isEmpty());
  }
  
  public void addTab(@NonNull TabLayout$Tab paramTabLayout$Tab, int paramInt) {
    addTab(paramTabLayout$Tab, paramInt, this.mTabs.isEmpty());
  }
  
  public void addTab(@NonNull TabLayout$Tab paramTabLayout$Tab, int paramInt, boolean paramBoolean) {
    if (paramTabLayout$Tab.mParent != this)
      throw new IllegalArgumentException("Tab belongs to a different TabLayout."); 
    configureTab(paramTabLayout$Tab, paramInt);
    addTabView(paramTabLayout$Tab);
    if (paramBoolean)
      paramTabLayout$Tab.select(); 
  }
  
  public void addTab(@NonNull TabLayout$Tab paramTabLayout$Tab, boolean paramBoolean) {
    addTab(paramTabLayout$Tab, this.mTabs.size(), paramBoolean);
  }
  
  public void addView(View paramView) {
    addViewInternal(paramView);
  }
  
  public void addView(View paramView, int paramInt) {
    addViewInternal(paramView);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    addViewInternal(paramView);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams) {
    addViewInternal(paramView);
  }
  
  public void clearOnTabSelectedListeners() {
    this.mSelectedListeners.clear();
  }
  
  int dpToPx(int paramInt) {
    return Math.round((getResources().getDisplayMetrics()).density * paramInt);
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet) {
    return generateDefaultLayoutParams();
  }
  
  public int getSelectedTabPosition() {
    return (this.mSelectedTab != null) ? this.mSelectedTab.getPosition() : -1;
  }
  
  @Nullable
  public TabLayout$Tab getTabAt(int paramInt) {
    return (paramInt < 0 || paramInt >= getTabCount()) ? null : this.mTabs.get(paramInt);
  }
  
  public int getTabCount() {
    return this.mTabs.size();
  }
  
  public int getTabGravity() {
    return this.mTabGravity;
  }
  
  int getTabMaxWidth() {
    return this.mTabMaxWidth;
  }
  
  public int getTabMode() {
    return this.mMode;
  }
  
  @Nullable
  public ColorStateList getTabTextColors() {
    return this.mTabTextColors;
  }
  
  @NonNull
  public TabLayout$Tab newTab() {
    TabLayout$Tab tabLayout$Tab2 = (TabLayout$Tab)sTabPool.acquire();
    TabLayout$Tab tabLayout$Tab1 = tabLayout$Tab2;
    if (tabLayout$Tab2 == null)
      tabLayout$Tab1 = new TabLayout$Tab(); 
    tabLayout$Tab1.mParent = this;
    tabLayout$Tab1.mView = createTabView(tabLayout$Tab1);
    return tabLayout$Tab1;
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    if (this.mViewPager == null) {
      ViewParent viewParent = getParent();
      if (viewParent instanceof ViewPager)
        setupWithViewPager((ViewPager)viewParent, true, true); 
    } 
  }
  
  protected void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.mSetupViewPagerImplicitly) {
      setupWithViewPager((ViewPager)null);
      this.mSetupViewPagerImplicitly = false;
    } 
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    View view;
    boolean bool = true;
    int i = dpToPx(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
    switch (View.MeasureSpec.getMode(paramInt2)) {
      default:
        i = View.MeasureSpec.getSize(paramInt1);
        if (View.MeasureSpec.getMode(paramInt1) != 0) {
          if (this.mRequestedTabMaxWidth > 0) {
            i = this.mRequestedTabMaxWidth;
          } else {
            i -= dpToPx(56);
          } 
          this.mTabMaxWidth = i;
        } 
        super.onMeasure(paramInt1, paramInt2);
        if (getChildCount() == 1) {
          view = getChildAt(0);
          switch (this.mMode) {
            default:
              paramInt1 = 0;
              if (paramInt1 != 0) {
                paramInt1 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), (view.getLayoutParams()).height);
                view.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), paramInt1);
              } 
              return;
            case 0:
              if (view.getMeasuredWidth() < getMeasuredWidth()) {
                paramInt1 = 1;
              } else {
                paramInt1 = 0;
              } 
              if (paramInt1 != 0) {
                paramInt1 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), (view.getLayoutParams()).height);
                view.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), paramInt1);
              } 
              return;
            case 1:
              break;
          } 
          break;
        } 
        return;
      case -2147483648:
        paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.min(i, View.MeasureSpec.getSize(paramInt2)), 1073741824);
      case 0:
        paramInt2 = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
    } 
    if (view.getMeasuredWidth() != getMeasuredWidth()) {
      paramInt1 = bool;
    } else {
      paramInt1 = 0;
    } 
    if (paramInt1 != 0) {
      paramInt1 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), (view.getLayoutParams()).height);
      view.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), paramInt1);
    } 
  }
  
  void populateFromPagerAdapter() {
    removeAllTabs();
    if (this.mPagerAdapter != null) {
      int j = this.mPagerAdapter.getCount();
      int i;
      for (i = 0; i < j; i++)
        addTab(newTab().setText(this.mPagerAdapter.getPageTitle(i)), false); 
      if (this.mViewPager != null && j > 0) {
        i = this.mViewPager.getCurrentItem();
        if (i != getSelectedTabPosition() && i < getTabCount())
          selectTab(getTabAt(i)); 
      } 
    } 
  }
  
  public void removeAllTabs() {
    for (int i = this.mTabStrip.getChildCount() - 1; i >= 0; i--)
      removeTabViewAt(i); 
    Iterator<TabLayout$Tab> iterator = this.mTabs.iterator();
    while (iterator.hasNext()) {
      TabLayout$Tab tabLayout$Tab = iterator.next();
      iterator.remove();
      tabLayout$Tab.reset();
      sTabPool.release(tabLayout$Tab);
    } 
    this.mSelectedTab = null;
  }
  
  public void removeOnTabSelectedListener(@NonNull TabLayout$OnTabSelectedListener paramTabLayout$OnTabSelectedListener) {
    this.mSelectedListeners.remove(paramTabLayout$OnTabSelectedListener);
  }
  
  public void removeTab(TabLayout$Tab paramTabLayout$Tab) {
    if (paramTabLayout$Tab.mParent != this)
      throw new IllegalArgumentException("Tab does not belong to this TabLayout."); 
    removeTabAt(paramTabLayout$Tab.getPosition());
  }
  
  public void removeTabAt(int paramInt) {
    int i;
    if (this.mSelectedTab != null) {
      i = this.mSelectedTab.getPosition();
    } else {
      i = 0;
    } 
    removeTabViewAt(paramInt);
    TabLayout$Tab tabLayout$Tab = this.mTabs.remove(paramInt);
    if (tabLayout$Tab != null) {
      tabLayout$Tab.reset();
      sTabPool.release(tabLayout$Tab);
    } 
    int k = this.mTabs.size();
    for (int j = paramInt; j < k; j++)
      ((TabLayout$Tab)this.mTabs.get(j)).setPosition(j); 
    if (i == paramInt) {
      if (this.mTabs.isEmpty()) {
        tabLayout$Tab = null;
      } else {
        tabLayout$Tab = this.mTabs.get(Math.max(0, paramInt - 1));
      } 
      selectTab(tabLayout$Tab);
    } 
  }
  
  void selectTab(TabLayout$Tab paramTabLayout$Tab) {
    selectTab(paramTabLayout$Tab, true);
  }
  
  void selectTab(TabLayout$Tab paramTabLayout$Tab, boolean paramBoolean) {
    byte b;
    TabLayout$Tab tabLayout$Tab = this.mSelectedTab;
    if (tabLayout$Tab == paramTabLayout$Tab) {
      if (tabLayout$Tab != null) {
        dispatchTabReselected(paramTabLayout$Tab);
        animateToTab(paramTabLayout$Tab.getPosition());
      } 
      return;
    } 
    if (paramTabLayout$Tab != null) {
      b = paramTabLayout$Tab.getPosition();
    } else {
      b = -1;
    } 
    if (paramBoolean) {
      if ((tabLayout$Tab == null || tabLayout$Tab.getPosition() == -1) && b != -1) {
        setScrollPosition(b, 0.0F, true);
      } else {
        animateToTab(b);
      } 
      if (b != -1)
        setSelectedTabView(b); 
    } 
    if (tabLayout$Tab != null)
      dispatchTabUnselected(tabLayout$Tab); 
    this.mSelectedTab = paramTabLayout$Tab;
    if (paramTabLayout$Tab != null) {
      dispatchTabSelected(paramTabLayout$Tab);
      return;
    } 
  }
  
  @Deprecated
  public void setOnTabSelectedListener(@Nullable TabLayout$OnTabSelectedListener paramTabLayout$OnTabSelectedListener) {
    if (this.mSelectedListener != null)
      removeOnTabSelectedListener(this.mSelectedListener); 
    this.mSelectedListener = paramTabLayout$OnTabSelectedListener;
    if (paramTabLayout$OnTabSelectedListener != null)
      addOnTabSelectedListener(paramTabLayout$OnTabSelectedListener); 
  }
  
  void setPagerAdapter(@Nullable PagerAdapter paramPagerAdapter, boolean paramBoolean) {
    if (this.mPagerAdapter != null && this.mPagerAdapterObserver != null)
      this.mPagerAdapter.unregisterDataSetObserver(this.mPagerAdapterObserver); 
    this.mPagerAdapter = paramPagerAdapter;
    if (paramBoolean && paramPagerAdapter != null) {
      if (this.mPagerAdapterObserver == null)
        this.mPagerAdapterObserver = new TabLayout$PagerAdapterObserver(this); 
      paramPagerAdapter.registerDataSetObserver(this.mPagerAdapterObserver);
    } 
    populateFromPagerAdapter();
  }
  
  void setScrollAnimatorListener(ValueAnimatorCompat$AnimatorListener paramValueAnimatorCompat$AnimatorListener) {
    ensureScrollAnimator();
    this.mScrollAnimator.addListener(paramValueAnimatorCompat$AnimatorListener);
  }
  
  public void setScrollPosition(int paramInt, float paramFloat, boolean paramBoolean) {
    setScrollPosition(paramInt, paramFloat, paramBoolean, true);
  }
  
  void setScrollPosition(int paramInt, float paramFloat, boolean paramBoolean1, boolean paramBoolean2) {
    int i = Math.round(paramInt + paramFloat);
    if (i >= 0 && i < this.mTabStrip.getChildCount()) {
      if (paramBoolean2)
        this.mTabStrip.setIndicatorPositionFromTabPosition(paramInt, paramFloat); 
      if (this.mScrollAnimator != null && this.mScrollAnimator.isRunning())
        this.mScrollAnimator.cancel(); 
      scrollTo(calculateScrollXForTab(paramInt, paramFloat), 0);
      if (paramBoolean1) {
        setSelectedTabView(i);
        return;
      } 
    } 
  }
  
  public void setSelectedTabIndicatorColor(@ColorInt int paramInt) {
    this.mTabStrip.setSelectedIndicatorColor(paramInt);
  }
  
  public void setSelectedTabIndicatorHeight(int paramInt) {
    this.mTabStrip.setSelectedIndicatorHeight(paramInt);
  }
  
  public void setTabGravity(int paramInt) {
    if (this.mTabGravity != paramInt) {
      this.mTabGravity = paramInt;
      applyModeAndGravity();
    } 
  }
  
  public void setTabMode(int paramInt) {
    if (paramInt != this.mMode) {
      this.mMode = paramInt;
      applyModeAndGravity();
    } 
  }
  
  public void setTabTextColors(int paramInt1, int paramInt2) {
    setTabTextColors(createColorStateList(paramInt1, paramInt2));
  }
  
  public void setTabTextColors(@Nullable ColorStateList paramColorStateList) {
    if (this.mTabTextColors != paramColorStateList) {
      this.mTabTextColors = paramColorStateList;
      updateAllTabs();
    } 
  }
  
  @Deprecated
  public void setTabsFromPagerAdapter(@Nullable PagerAdapter paramPagerAdapter) {
    setPagerAdapter(paramPagerAdapter, false);
  }
  
  public void setupWithViewPager(@Nullable ViewPager paramViewPager) {
    setupWithViewPager(paramViewPager, true);
  }
  
  public void setupWithViewPager(@Nullable ViewPager paramViewPager, boolean paramBoolean) {
    setupWithViewPager(paramViewPager, paramBoolean, false);
  }
  
  public boolean shouldDelayChildPressedState() {
    return (getTabScrollRange() > 0);
  }
  
  void updateTabViews(boolean paramBoolean) {
    for (int i = 0; i < this.mTabStrip.getChildCount(); i++) {
      View view = this.mTabStrip.getChildAt(i);
      view.setMinimumWidth(getTabMinWidth());
      updateTabViewLayoutParams((LinearLayout.LayoutParams)view.getLayoutParams());
      if (paramBoolean)
        view.requestLayout(); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */