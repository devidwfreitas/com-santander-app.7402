package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.view.ActionBarPolicy;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.HorizontalScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {
  private static final int FADE_DURATION = 200;
  
  private static final String TAG = "ScrollingTabContainerView";
  
  private static final Interpolator sAlphaInterpolator = (Interpolator)new DecelerateInterpolator();
  
  private boolean mAllowCollapse;
  
  private int mContentHeight;
  
  int mMaxTabWidth;
  
  private int mSelectedTabIndex;
  
  int mStackedTabMaxWidth;
  
  private ScrollingTabContainerView$TabClickListener mTabClickListener;
  
  LinearLayoutCompat mTabLayout;
  
  Runnable mTabSelector;
  
  private Spinner mTabSpinner;
  
  protected final ScrollingTabContainerView$VisibilityAnimListener mVisAnimListener = new ScrollingTabContainerView$VisibilityAnimListener(this);
  
  protected ViewPropertyAnimatorCompat mVisibilityAnim;
  
  public ScrollingTabContainerView(Context paramContext) {
    super(paramContext);
    setHorizontalScrollBarEnabled(false);
    ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(paramContext);
    setContentHeight(actionBarPolicy.getTabContainerHeight());
    this.mStackedTabMaxWidth = actionBarPolicy.getStackedTabMaxWidth();
    this.mTabLayout = createTabLayout();
    addView((View)this.mTabLayout, new ViewGroup.LayoutParams(-2, -1));
  }
  
  private Spinner createSpinner() {
    AppCompatSpinner appCompatSpinner = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
    appCompatSpinner.setLayoutParams((ViewGroup.LayoutParams)new LinearLayoutCompat$LayoutParams(-2, -1));
    appCompatSpinner.setOnItemSelectedListener(this);
    return appCompatSpinner;
  }
  
  private LinearLayoutCompat createTabLayout() {
    LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R.attr.actionBarTabBarStyle);
    linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
    linearLayoutCompat.setGravity(17);
    linearLayoutCompat.setLayoutParams((ViewGroup.LayoutParams)new LinearLayoutCompat$LayoutParams(-2, -1));
    return linearLayoutCompat;
  }
  
  private boolean isCollapsed() {
    return (this.mTabSpinner != null && this.mTabSpinner.getParent() == this);
  }
  
  private void performCollapse() {
    if (isCollapsed())
      return; 
    if (this.mTabSpinner == null)
      this.mTabSpinner = createSpinner(); 
    removeView((View)this.mTabLayout);
    addView((View)this.mTabSpinner, new ViewGroup.LayoutParams(-2, -1));
    if (this.mTabSpinner.getAdapter() == null)
      this.mTabSpinner.setAdapter((SpinnerAdapter)new ScrollingTabContainerView$TabAdapter(this)); 
    if (this.mTabSelector != null) {
      removeCallbacks(this.mTabSelector);
      this.mTabSelector = null;
    } 
    this.mTabSpinner.setSelection(this.mSelectedTabIndex);
  }
  
  private boolean performExpand() {
    if (!isCollapsed())
      return false; 
    removeView((View)this.mTabSpinner);
    addView((View)this.mTabLayout, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(this.mTabSpinner.getSelectedItemPosition());
    return false;
  }
  
  public void addTab(ActionBar.Tab paramTab, int paramInt, boolean paramBoolean) {
    ScrollingTabContainerView$TabView scrollingTabContainerView$TabView = createTabView(paramTab, false);
    this.mTabLayout.addView((View)scrollingTabContainerView$TabView, paramInt, (ViewGroup.LayoutParams)new LinearLayoutCompat$LayoutParams(0, -1, 1.0F));
    if (this.mTabSpinner != null)
      ((ScrollingTabContainerView$TabAdapter)this.mTabSpinner.getAdapter()).notifyDataSetChanged(); 
    if (paramBoolean)
      scrollingTabContainerView$TabView.setSelected(true); 
    if (this.mAllowCollapse)
      requestLayout(); 
  }
  
  public void addTab(ActionBar.Tab paramTab, boolean paramBoolean) {
    ScrollingTabContainerView$TabView scrollingTabContainerView$TabView = createTabView(paramTab, false);
    this.mTabLayout.addView((View)scrollingTabContainerView$TabView, (ViewGroup.LayoutParams)new LinearLayoutCompat$LayoutParams(0, -1, 1.0F));
    if (this.mTabSpinner != null)
      ((ScrollingTabContainerView$TabAdapter)this.mTabSpinner.getAdapter()).notifyDataSetChanged(); 
    if (paramBoolean)
      scrollingTabContainerView$TabView.setSelected(true); 
    if (this.mAllowCollapse)
      requestLayout(); 
  }
  
  public void animateToTab(int paramInt) {
    View view = this.mTabLayout.getChildAt(paramInt);
    if (this.mTabSelector != null)
      removeCallbacks(this.mTabSelector); 
    this.mTabSelector = new ScrollingTabContainerView$1(this, view);
    post(this.mTabSelector);
  }
  
  public void animateToVisibility(int paramInt) {
    if (this.mVisibilityAnim != null)
      this.mVisibilityAnim.cancel(); 
    if (paramInt == 0) {
      if (getVisibility() != 0)
        ViewCompat.setAlpha((View)this, 0.0F); 
      ViewPropertyAnimatorCompat viewPropertyAnimatorCompat1 = ViewCompat.animate((View)this).alpha(1.0F);
      viewPropertyAnimatorCompat1.setDuration(200L);
      viewPropertyAnimatorCompat1.setInterpolator(sAlphaInterpolator);
      viewPropertyAnimatorCompat1.setListener(this.mVisAnimListener.withFinalVisibility(viewPropertyAnimatorCompat1, paramInt));
      viewPropertyAnimatorCompat1.start();
      return;
    } 
    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate((View)this).alpha(0.0F);
    viewPropertyAnimatorCompat.setDuration(200L);
    viewPropertyAnimatorCompat.setInterpolator(sAlphaInterpolator);
    viewPropertyAnimatorCompat.setListener(this.mVisAnimListener.withFinalVisibility(viewPropertyAnimatorCompat, paramInt));
    viewPropertyAnimatorCompat.start();
  }
  
  ScrollingTabContainerView$TabView createTabView(ActionBar.Tab paramTab, boolean paramBoolean) {
    ScrollingTabContainerView$TabView scrollingTabContainerView$TabView = new ScrollingTabContainerView$TabView(this, getContext(), paramTab, paramBoolean);
    if (paramBoolean) {
      scrollingTabContainerView$TabView.setBackgroundDrawable(null);
      scrollingTabContainerView$TabView.setLayoutParams((ViewGroup.LayoutParams)new AbsListView.LayoutParams(-1, this.mContentHeight));
      return scrollingTabContainerView$TabView;
    } 
    scrollingTabContainerView$TabView.setFocusable(true);
    if (this.mTabClickListener == null)
      this.mTabClickListener = new ScrollingTabContainerView$TabClickListener(this); 
    scrollingTabContainerView$TabView.setOnClickListener(this.mTabClickListener);
    return scrollingTabContainerView$TabView;
  }
  
  public void onAttachedToWindow() {
    super.onAttachedToWindow();
    if (this.mTabSelector != null)
      post(this.mTabSelector); 
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration) {
    super.onConfigurationChanged(paramConfiguration);
    ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(getContext());
    setContentHeight(actionBarPolicy.getTabContainerHeight());
    this.mStackedTabMaxWidth = actionBarPolicy.getStackedTabMaxWidth();
  }
  
  public void onDetachedFromWindow() {
    super.onDetachedFromWindow();
    if (this.mTabSelector != null)
      removeCallbacks(this.mTabSelector); 
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    ((ScrollingTabContainerView$TabView)paramView).getTab().select();
  }
  
  public void onMeasure(int paramInt1, int paramInt2) {
    boolean bool;
    paramInt2 = 1;
    int i = View.MeasureSpec.getMode(paramInt1);
    if (i == 1073741824) {
      bool = true;
    } else {
      bool = false;
    } 
    setFillViewport(bool);
    int j = this.mTabLayout.getChildCount();
    if (j > 1 && (i == 1073741824 || i == Integer.MIN_VALUE)) {
      if (j > 2) {
        this.mMaxTabWidth = (int)(View.MeasureSpec.getSize(paramInt1) * 0.4F);
      } else {
        this.mMaxTabWidth = View.MeasureSpec.getSize(paramInt1) / 2;
      } 
      this.mMaxTabWidth = Math.min(this.mMaxTabWidth, this.mStackedTabMaxWidth);
    } else {
      this.mMaxTabWidth = -1;
    } 
    i = View.MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
    if (bool || !this.mAllowCollapse)
      paramInt2 = 0; 
    if (paramInt2 != 0) {
      this.mTabLayout.measure(0, i);
      if (this.mTabLayout.getMeasuredWidth() > View.MeasureSpec.getSize(paramInt1)) {
        performCollapse();
      } else {
        performExpand();
      } 
    } else {
      performExpand();
    } 
    paramInt2 = getMeasuredWidth();
    super.onMeasure(paramInt1, i);
    paramInt1 = getMeasuredWidth();
    if (bool && paramInt2 != paramInt1)
      setTabSelected(this.mSelectedTabIndex); 
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void removeAllTabs() {
    this.mTabLayout.removeAllViews();
    if (this.mTabSpinner != null)
      ((ScrollingTabContainerView$TabAdapter)this.mTabSpinner.getAdapter()).notifyDataSetChanged(); 
    if (this.mAllowCollapse)
      requestLayout(); 
  }
  
  public void removeTabAt(int paramInt) {
    this.mTabLayout.removeViewAt(paramInt);
    if (this.mTabSpinner != null)
      ((ScrollingTabContainerView$TabAdapter)this.mTabSpinner.getAdapter()).notifyDataSetChanged(); 
    if (this.mAllowCollapse)
      requestLayout(); 
  }
  
  public void setAllowCollapse(boolean paramBoolean) {
    this.mAllowCollapse = paramBoolean;
  }
  
  public void setContentHeight(int paramInt) {
    this.mContentHeight = paramInt;
    requestLayout();
  }
  
  public void setTabSelected(int paramInt) {
    this.mSelectedTabIndex = paramInt;
    int j = this.mTabLayout.getChildCount();
    for (int i = 0; i < j; i++) {
      boolean bool;
      View view = this.mTabLayout.getChildAt(i);
      if (i == paramInt) {
        bool = true;
      } else {
        bool = false;
      } 
      view.setSelected(bool);
      if (bool)
        animateToTab(paramInt); 
    } 
    if (this.mTabSpinner != null && paramInt >= 0)
      this.mTabSpinner.setSelection(paramInt); 
  }
  
  public void updateTab(int paramInt) {
    ((ScrollingTabContainerView$TabView)this.mTabLayout.getChildAt(paramInt)).update();
    if (this.mTabSpinner != null)
      ((ScrollingTabContainerView$TabAdapter)this.mTabSpinner.getAdapter()).notifyDataSetChanged(); 
    if (this.mAllowCollapse)
      requestLayout(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ScrollingTabContainerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */