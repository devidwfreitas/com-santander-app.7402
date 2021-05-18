package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.support.v7.appcompat.R;
import android.support.v7.view.ActionBarPolicy;
import android.support.v7.view.ActionMode;
import android.support.v7.view.ViewPropertyAnimatorCompatSet;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.DecorToolbar;
import android.support.v7.widget.ScrollingTabContainerView;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
  private static final boolean ALLOW_SHOW_HIDE_ANIMATIONS;
  
  private static final long FADE_IN_DURATION_MS = 200L;
  
  private static final long FADE_OUT_DURATION_MS = 100L;
  
  private static final int INVALID_POSITION = -1;
  
  private static final String TAG = "WindowDecorActionBar";
  
  private static final Interpolator sHideInterpolator = (Interpolator)new AccelerateInterpolator();
  
  private static final Interpolator sShowInterpolator = (Interpolator)new DecelerateInterpolator();
  
  WindowDecorActionBar$ActionModeImpl mActionMode;
  
  private Activity mActivity;
  
  ActionBarContainer mContainerView;
  
  boolean mContentAnimations = true;
  
  View mContentView;
  
  Context mContext;
  
  ActionBarContextView mContextView;
  
  private int mCurWindowVisibility = 0;
  
  ViewPropertyAnimatorCompatSet mCurrentShowAnim;
  
  DecorToolbar mDecorToolbar;
  
  ActionMode mDeferredDestroyActionMode;
  
  ActionMode.Callback mDeferredModeDestroyCallback;
  
  private Dialog mDialog;
  
  private boolean mDisplayHomeAsUpSet;
  
  private boolean mHasEmbeddedTabs;
  
  boolean mHiddenByApp;
  
  boolean mHiddenBySystem;
  
  final ViewPropertyAnimatorListener mHideListener = (ViewPropertyAnimatorListener)new WindowDecorActionBar$1(this);
  
  boolean mHideOnContentScroll;
  
  private boolean mLastMenuVisibility;
  
  private ArrayList<ActionBar$OnMenuVisibilityListener> mMenuVisibilityListeners = new ArrayList<ActionBar$OnMenuVisibilityListener>();
  
  private boolean mNowShowing = true;
  
  ActionBarOverlayLayout mOverlayLayout;
  
  private int mSavedTabPosition = -1;
  
  private WindowDecorActionBar$TabImpl mSelectedTab;
  
  private boolean mShowHideAnimationEnabled;
  
  final ViewPropertyAnimatorListener mShowListener = (ViewPropertyAnimatorListener)new WindowDecorActionBar$2(this);
  
  private boolean mShowingForMode;
  
  ScrollingTabContainerView mTabScrollView;
  
  private ArrayList<WindowDecorActionBar$TabImpl> mTabs = new ArrayList<WindowDecorActionBar$TabImpl>();
  
  private Context mThemedContext;
  
  final ViewPropertyAnimatorUpdateListener mUpdateListener = new WindowDecorActionBar$3(this);
  
  static {
    if (Build.VERSION.SDK_INT >= 14) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    ALLOW_SHOW_HIDE_ANIMATIONS = bool1;
  }
  
  public WindowDecorActionBar(Activity paramActivity, boolean paramBoolean) {
    this.mActivity = paramActivity;
    View view = paramActivity.getWindow().getDecorView();
    init(view);
    if (!paramBoolean)
      this.mContentView = view.findViewById(16908290); 
  }
  
  public WindowDecorActionBar(Dialog paramDialog) {
    this.mDialog = paramDialog;
    init(paramDialog.getWindow().getDecorView());
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public WindowDecorActionBar(View paramView) {
    assert paramView.isInEditMode();
    init(paramView);
  }
  
  static boolean checkShowingFlags(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    return !(!paramBoolean3 && (paramBoolean1 || paramBoolean2));
  }
  
  private void cleanupTabs() {
    if (this.mSelectedTab != null)
      selectTab(null); 
    this.mTabs.clear();
    if (this.mTabScrollView != null)
      this.mTabScrollView.removeAllTabs(); 
    this.mSavedTabPosition = -1;
  }
  
  private void configureTab(ActionBar$Tab paramActionBar$Tab, int paramInt) {
    paramActionBar$Tab = paramActionBar$Tab;
    if (paramActionBar$Tab.getCallback() == null)
      throw new IllegalStateException("Action Bar Tab must have a Callback"); 
    paramActionBar$Tab.setPosition(paramInt);
    this.mTabs.add(paramInt, paramActionBar$Tab);
    int i = this.mTabs.size();
    while (++paramInt < i) {
      ((WindowDecorActionBar$TabImpl)this.mTabs.get(paramInt)).setPosition(paramInt);
      paramInt++;
    } 
  }
  
  private void ensureTabsExist() {
    if (this.mTabScrollView != null)
      return; 
    ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.mContext);
    if (this.mHasEmbeddedTabs) {
      scrollingTabContainerView.setVisibility(0);
      this.mDecorToolbar.setEmbeddedTabView(scrollingTabContainerView);
    } else {
      if (getNavigationMode() == 2) {
        scrollingTabContainerView.setVisibility(0);
        if (this.mOverlayLayout != null)
          ViewCompat.requestApplyInsets((View)this.mOverlayLayout); 
      } else {
        scrollingTabContainerView.setVisibility(8);
      } 
      this.mContainerView.setTabContainer(scrollingTabContainerView);
    } 
    this.mTabScrollView = scrollingTabContainerView;
  }
  
  private DecorToolbar getDecorToolbar(View paramView) {
    if (paramView instanceof DecorToolbar)
      return (DecorToolbar)paramView; 
    if (paramView instanceof Toolbar)
      return ((Toolbar)paramView).getWrapper(); 
    if ("Can't make a decor toolbar out of " + paramView != null) {
      String str1 = paramView.getClass().getSimpleName();
      throw new IllegalStateException(str1);
    } 
    String str = "null";
    throw new IllegalStateException(str);
  }
  
  private void hideForActionMode() {
    if (this.mShowingForMode) {
      this.mShowingForMode = false;
      if (this.mOverlayLayout != null)
        this.mOverlayLayout.setShowingForActionMode(false); 
      updateVisibility(false);
    } 
  }
  
  private void init(View paramView) {
    boolean bool;
    this.mOverlayLayout = (ActionBarOverlayLayout)paramView.findViewById(R.id.decor_content_parent);
    if (this.mOverlayLayout != null)
      this.mOverlayLayout.setActionBarVisibilityCallback(this); 
    this.mDecorToolbar = getDecorToolbar(paramView.findViewById(R.id.action_bar));
    this.mContextView = (ActionBarContextView)paramView.findViewById(R.id.action_context_bar);
    this.mContainerView = (ActionBarContainer)paramView.findViewById(R.id.action_bar_container);
    if (this.mDecorToolbar == null || this.mContextView == null || this.mContainerView == null)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with a compatible window decor layout"); 
    this.mContext = this.mDecorToolbar.getContext();
    if ((this.mDecorToolbar.getDisplayOptions() & 0x4) != 0) {
      i = 1;
    } else {
      i = 0;
    } 
    if (i)
      this.mDisplayHomeAsUpSet = true; 
    ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.mContext);
    if (actionBarPolicy.enableHomeButtonByDefault() || i) {
      bool = true;
    } else {
      bool = false;
    } 
    setHomeButtonEnabled(bool);
    setHasEmbeddedTabs(actionBarPolicy.hasEmbeddedTabs());
    TypedArray typedArray = this.mContext.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
    if (typedArray.getBoolean(R.styleable.ActionBar_hideOnContentScroll, false))
      setHideOnContentScrollEnabled(true); 
    int i = typedArray.getDimensionPixelSize(R.styleable.ActionBar_elevation, 0);
    if (i != 0)
      setElevation(i); 
    typedArray.recycle();
  }
  
  private void setHasEmbeddedTabs(boolean paramBoolean) {
    boolean bool1;
    boolean bool2 = true;
    this.mHasEmbeddedTabs = paramBoolean;
    if (!this.mHasEmbeddedTabs) {
      this.mDecorToolbar.setEmbeddedTabView(null);
      this.mContainerView.setTabContainer(this.mTabScrollView);
    } else {
      this.mContainerView.setTabContainer(null);
      this.mDecorToolbar.setEmbeddedTabView(this.mTabScrollView);
    } 
    if (getNavigationMode() == 2) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.mTabScrollView != null)
      if (bool1) {
        this.mTabScrollView.setVisibility(0);
        if (this.mOverlayLayout != null)
          ViewCompat.requestApplyInsets((View)this.mOverlayLayout); 
      } else {
        this.mTabScrollView.setVisibility(8);
      }  
    DecorToolbar decorToolbar = this.mDecorToolbar;
    if (!this.mHasEmbeddedTabs && bool1) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    } 
    decorToolbar.setCollapsible(paramBoolean);
    ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
    if (!this.mHasEmbeddedTabs && bool1) {
      paramBoolean = bool2;
    } else {
      paramBoolean = false;
    } 
    actionBarOverlayLayout.setHasNonEmbeddedTabs(paramBoolean);
  }
  
  private boolean shouldAnimateContextView() {
    return ViewCompat.isLaidOut((View)this.mContainerView);
  }
  
  private void showForActionMode() {
    if (!this.mShowingForMode) {
      this.mShowingForMode = true;
      if (this.mOverlayLayout != null)
        this.mOverlayLayout.setShowingForActionMode(true); 
      updateVisibility(false);
    } 
  }
  
  private void updateVisibility(boolean paramBoolean) {
    if (checkShowingFlags(this.mHiddenByApp, this.mHiddenBySystem, this.mShowingForMode)) {
      if (!this.mNowShowing) {
        this.mNowShowing = true;
        doShow(paramBoolean);
      } 
      return;
    } 
    if (this.mNowShowing) {
      this.mNowShowing = false;
      doHide(paramBoolean);
      return;
    } 
  }
  
  public void addOnMenuVisibilityListener(ActionBar$OnMenuVisibilityListener paramActionBar$OnMenuVisibilityListener) {
    this.mMenuVisibilityListeners.add(paramActionBar$OnMenuVisibilityListener);
  }
  
  public void addTab(ActionBar$Tab paramActionBar$Tab) {
    addTab(paramActionBar$Tab, this.mTabs.isEmpty());
  }
  
  public void addTab(ActionBar$Tab paramActionBar$Tab, int paramInt) {
    addTab(paramActionBar$Tab, paramInt, this.mTabs.isEmpty());
  }
  
  public void addTab(ActionBar$Tab paramActionBar$Tab, int paramInt, boolean paramBoolean) {
    ensureTabsExist();
    this.mTabScrollView.addTab(paramActionBar$Tab, paramInt, paramBoolean);
    configureTab(paramActionBar$Tab, paramInt);
    if (paramBoolean)
      selectTab(paramActionBar$Tab); 
  }
  
  public void addTab(ActionBar$Tab paramActionBar$Tab, boolean paramBoolean) {
    ensureTabsExist();
    this.mTabScrollView.addTab(paramActionBar$Tab, paramBoolean);
    configureTab(paramActionBar$Tab, this.mTabs.size());
    if (paramBoolean)
      selectTab(paramActionBar$Tab); 
  }
  
  public void animateToMode(boolean paramBoolean) {
    if (paramBoolean) {
      showForActionMode();
    } else {
      hideForActionMode();
    } 
    if (shouldAnimateContextView()) {
      ViewPropertyAnimatorCompat viewPropertyAnimatorCompat1;
      ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
      if (paramBoolean) {
        viewPropertyAnimatorCompat1 = this.mDecorToolbar.setupAnimatorToVisibility(4, 100L);
        viewPropertyAnimatorCompat2 = this.mContextView.setupAnimatorToVisibility(0, 200L);
      } else {
        viewPropertyAnimatorCompat2 = this.mDecorToolbar.setupAnimatorToVisibility(0, 200L);
        viewPropertyAnimatorCompat1 = this.mContextView.setupAnimatorToVisibility(8, 100L);
      } 
      ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
      viewPropertyAnimatorCompatSet.playSequentially(viewPropertyAnimatorCompat1, viewPropertyAnimatorCompat2);
      viewPropertyAnimatorCompatSet.start();
      return;
    } 
    if (paramBoolean) {
      this.mDecorToolbar.setVisibility(4);
      this.mContextView.setVisibility(0);
      return;
    } 
    this.mDecorToolbar.setVisibility(0);
    this.mContextView.setVisibility(8);
  }
  
  public boolean collapseActionView() {
    if (this.mDecorToolbar != null && this.mDecorToolbar.hasExpandedActionView()) {
      this.mDecorToolbar.collapseActionView();
      return true;
    } 
    return false;
  }
  
  void completeDeferredDestroyActionMode() {
    if (this.mDeferredModeDestroyCallback != null) {
      this.mDeferredModeDestroyCallback.onDestroyActionMode(this.mDeferredDestroyActionMode);
      this.mDeferredDestroyActionMode = null;
      this.mDeferredModeDestroyCallback = null;
    } 
  }
  
  public void dispatchMenuVisibilityChanged(boolean paramBoolean) {
    if (paramBoolean != this.mLastMenuVisibility) {
      this.mLastMenuVisibility = paramBoolean;
      int j = this.mMenuVisibilityListeners.size();
      int i = 0;
      while (true) {
        if (i < j) {
          ((ActionBar$OnMenuVisibilityListener)this.mMenuVisibilityListeners.get(i)).onMenuVisibilityChanged(paramBoolean);
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void doHide(boolean paramBoolean) {
    if (this.mCurrentShowAnim != null)
      this.mCurrentShowAnim.cancel(); 
    if (this.mCurWindowVisibility == 0 && ALLOW_SHOW_HIDE_ANIMATIONS && (this.mShowHideAnimationEnabled || paramBoolean)) {
      ViewCompat.setAlpha((View)this.mContainerView, 1.0F);
      this.mContainerView.setTransitioning(true);
      ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
      float f2 = -this.mContainerView.getHeight();
      float f1 = f2;
      if (paramBoolean) {
        int[] arrayOfInt = new int[2];
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        this.mContainerView.getLocationInWindow(arrayOfInt);
        f1 = f2 - arrayOfInt[1];
      } 
      ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate((View)this.mContainerView).translationY(f1);
      viewPropertyAnimatorCompat.setUpdateListener(this.mUpdateListener);
      viewPropertyAnimatorCompatSet.play(viewPropertyAnimatorCompat);
      if (this.mContentAnimations && this.mContentView != null)
        viewPropertyAnimatorCompatSet.play(ViewCompat.animate(this.mContentView).translationY(f1)); 
      viewPropertyAnimatorCompatSet.setInterpolator(sHideInterpolator);
      viewPropertyAnimatorCompatSet.setDuration(250L);
      viewPropertyAnimatorCompatSet.setListener(this.mHideListener);
      this.mCurrentShowAnim = viewPropertyAnimatorCompatSet;
      viewPropertyAnimatorCompatSet.start();
      return;
    } 
    this.mHideListener.onAnimationEnd(null);
  }
  
  public void doShow(boolean paramBoolean) {
    if (this.mCurrentShowAnim != null)
      this.mCurrentShowAnim.cancel(); 
    this.mContainerView.setVisibility(0);
    if (this.mCurWindowVisibility == 0 && ALLOW_SHOW_HIDE_ANIMATIONS && (this.mShowHideAnimationEnabled || paramBoolean)) {
      ViewCompat.setTranslationY((View)this.mContainerView, 0.0F);
      float f2 = -this.mContainerView.getHeight();
      float f1 = f2;
      if (paramBoolean) {
        int[] arrayOfInt = new int[2];
        arrayOfInt[0] = 0;
        arrayOfInt[1] = 0;
        this.mContainerView.getLocationInWindow(arrayOfInt);
        f1 = f2 - arrayOfInt[1];
      } 
      ViewCompat.setTranslationY((View)this.mContainerView, f1);
      ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
      ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate((View)this.mContainerView).translationY(0.0F);
      viewPropertyAnimatorCompat.setUpdateListener(this.mUpdateListener);
      viewPropertyAnimatorCompatSet.play(viewPropertyAnimatorCompat);
      if (this.mContentAnimations && this.mContentView != null) {
        ViewCompat.setTranslationY(this.mContentView, f1);
        viewPropertyAnimatorCompatSet.play(ViewCompat.animate(this.mContentView).translationY(0.0F));
      } 
      viewPropertyAnimatorCompatSet.setInterpolator(sShowInterpolator);
      viewPropertyAnimatorCompatSet.setDuration(250L);
      viewPropertyAnimatorCompatSet.setListener(this.mShowListener);
      this.mCurrentShowAnim = viewPropertyAnimatorCompatSet;
      viewPropertyAnimatorCompatSet.start();
    } else {
      ViewCompat.setAlpha((View)this.mContainerView, 1.0F);
      ViewCompat.setTranslationY((View)this.mContainerView, 0.0F);
      if (this.mContentAnimations && this.mContentView != null)
        ViewCompat.setTranslationY(this.mContentView, 0.0F); 
      this.mShowListener.onAnimationEnd(null);
    } 
    if (this.mOverlayLayout != null)
      ViewCompat.requestApplyInsets((View)this.mOverlayLayout); 
  }
  
  public void enableContentAnimations(boolean paramBoolean) {
    this.mContentAnimations = paramBoolean;
  }
  
  public View getCustomView() {
    return this.mDecorToolbar.getCustomView();
  }
  
  public int getDisplayOptions() {
    return this.mDecorToolbar.getDisplayOptions();
  }
  
  public float getElevation() {
    return ViewCompat.getElevation((View)this.mContainerView);
  }
  
  public int getHeight() {
    return this.mContainerView.getHeight();
  }
  
  public int getHideOffset() {
    return this.mOverlayLayout.getActionBarHideOffset();
  }
  
  public int getNavigationItemCount() {
    switch (this.mDecorToolbar.getNavigationMode()) {
      default:
        return 0;
      case 2:
        return this.mTabs.size();
      case 1:
        break;
    } 
    return this.mDecorToolbar.getDropdownItemCount();
  }
  
  public int getNavigationMode() {
    return this.mDecorToolbar.getNavigationMode();
  }
  
  public int getSelectedNavigationIndex() {
    switch (this.mDecorToolbar.getNavigationMode()) {
      default:
        return -1;
      case 2:
        if (this.mSelectedTab != null)
          return this.mSelectedTab.getPosition(); 
      case 1:
        break;
    } 
    return this.mDecorToolbar.getDropdownSelectedPosition();
  }
  
  public ActionBar$Tab getSelectedTab() {
    return this.mSelectedTab;
  }
  
  public CharSequence getSubtitle() {
    return this.mDecorToolbar.getSubtitle();
  }
  
  public ActionBar$Tab getTabAt(int paramInt) {
    return this.mTabs.get(paramInt);
  }
  
  public int getTabCount() {
    return this.mTabs.size();
  }
  
  public Context getThemedContext() {
    if (this.mThemedContext == null) {
      TypedValue typedValue = new TypedValue();
      this.mContext.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
      int i = typedValue.resourceId;
      if (i != 0) {
        this.mThemedContext = (Context)new ContextThemeWrapper(this.mContext, i);
        return this.mThemedContext;
      } 
    } else {
      return this.mThemedContext;
    } 
    this.mThemedContext = this.mContext;
    return this.mThemedContext;
  }
  
  public CharSequence getTitle() {
    return this.mDecorToolbar.getTitle();
  }
  
  public boolean hasIcon() {
    return this.mDecorToolbar.hasIcon();
  }
  
  public boolean hasLogo() {
    return this.mDecorToolbar.hasLogo();
  }
  
  public void hide() {
    if (!this.mHiddenByApp) {
      this.mHiddenByApp = true;
      updateVisibility(false);
    } 
  }
  
  public void hideForSystem() {
    if (!this.mHiddenBySystem) {
      this.mHiddenBySystem = true;
      updateVisibility(true);
    } 
  }
  
  public boolean isHideOnContentScrollEnabled() {
    return this.mOverlayLayout.isHideOnContentScrollEnabled();
  }
  
  public boolean isShowing() {
    int i = getHeight();
    return (this.mNowShowing && (i == 0 || getHideOffset() < i));
  }
  
  public boolean isTitleTruncated() {
    return (this.mDecorToolbar != null && this.mDecorToolbar.isTitleTruncated());
  }
  
  public ActionBar$Tab newTab() {
    return new WindowDecorActionBar$TabImpl(this);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {
    setHasEmbeddedTabs(ActionBarPolicy.get(this.mContext).hasEmbeddedTabs());
  }
  
  public void onContentScrollStarted() {
    if (this.mCurrentShowAnim != null) {
      this.mCurrentShowAnim.cancel();
      this.mCurrentShowAnim = null;
    } 
  }
  
  public void onContentScrollStopped() {}
  
  public void onWindowVisibilityChanged(int paramInt) {
    this.mCurWindowVisibility = paramInt;
  }
  
  public void removeAllTabs() {
    cleanupTabs();
  }
  
  public void removeOnMenuVisibilityListener(ActionBar$OnMenuVisibilityListener paramActionBar$OnMenuVisibilityListener) {
    this.mMenuVisibilityListeners.remove(paramActionBar$OnMenuVisibilityListener);
  }
  
  public void removeTab(ActionBar$Tab paramActionBar$Tab) {
    removeTabAt(paramActionBar$Tab.getPosition());
  }
  
  public void removeTabAt(int paramInt) {
    if (this.mTabScrollView != null) {
      int i;
      if (this.mSelectedTab != null) {
        i = this.mSelectedTab.getPosition();
      } else {
        i = this.mSavedTabPosition;
      } 
      this.mTabScrollView.removeTabAt(paramInt);
      WindowDecorActionBar$TabImpl windowDecorActionBar$TabImpl = this.mTabs.remove(paramInt);
      if (windowDecorActionBar$TabImpl != null)
        windowDecorActionBar$TabImpl.setPosition(-1); 
      int k = this.mTabs.size();
      for (int j = paramInt; j < k; j++)
        ((WindowDecorActionBar$TabImpl)this.mTabs.get(j)).setPosition(j); 
      if (i == paramInt) {
        if (this.mTabs.isEmpty()) {
          windowDecorActionBar$TabImpl = null;
        } else {
          windowDecorActionBar$TabImpl = this.mTabs.get(Math.max(0, paramInt - 1));
        } 
        selectTab(windowDecorActionBar$TabImpl);
        return;
      } 
    } 
  }
  
  public boolean requestFocus() {
    ViewGroup viewGroup = this.mDecorToolbar.getViewGroup();
    if (viewGroup != null && !viewGroup.hasFocus()) {
      viewGroup.requestFocus();
      return true;
    } 
    return false;
  }
  
  public void selectTab(ActionBar$Tab paramActionBar$Tab) {
    FragmentTransaction fragmentTransaction;
    int i = -1;
    if (getNavigationMode() != 2) {
      if (paramActionBar$Tab != null) {
        i = paramActionBar$Tab.getPosition();
      } else {
        i = -1;
      } 
      this.mSavedTabPosition = i;
      return;
    } 
    if (this.mActivity instanceof FragmentActivity && !this.mDecorToolbar.getViewGroup().isInEditMode()) {
      fragmentTransaction = ((FragmentActivity)this.mActivity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
    } else {
      fragmentTransaction = null;
    } 
    if (this.mSelectedTab == paramActionBar$Tab) {
      if (this.mSelectedTab != null) {
        this.mSelectedTab.getCallback().onTabReselected(this.mSelectedTab, fragmentTransaction);
        this.mTabScrollView.animateToTab(paramActionBar$Tab.getPosition());
      } 
    } else {
      ScrollingTabContainerView scrollingTabContainerView = this.mTabScrollView;
      if (paramActionBar$Tab != null)
        i = paramActionBar$Tab.getPosition(); 
      scrollingTabContainerView.setTabSelected(i);
      if (this.mSelectedTab != null)
        this.mSelectedTab.getCallback().onTabUnselected(this.mSelectedTab, fragmentTransaction); 
      this.mSelectedTab = (WindowDecorActionBar$TabImpl)paramActionBar$Tab;
      if (this.mSelectedTab != null)
        this.mSelectedTab.getCallback().onTabSelected(this.mSelectedTab, fragmentTransaction); 
    } 
    if (fragmentTransaction != null && !fragmentTransaction.isEmpty()) {
      fragmentTransaction.commit();
      return;
    } 
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable) {
    this.mContainerView.setPrimaryBackground(paramDrawable);
  }
  
  public void setCustomView(int paramInt) {
    setCustomView(LayoutInflater.from(getThemedContext()).inflate(paramInt, this.mDecorToolbar.getViewGroup(), false));
  }
  
  public void setCustomView(View paramView) {
    this.mDecorToolbar.setCustomView(paramView);
  }
  
  public void setCustomView(View paramView, ActionBar$LayoutParams paramActionBar$LayoutParams) {
    paramView.setLayoutParams((ViewGroup.LayoutParams)paramActionBar$LayoutParams);
    this.mDecorToolbar.setCustomView(paramView);
  }
  
  public void setDefaultDisplayHomeAsUpEnabled(boolean paramBoolean) {
    if (!this.mDisplayHomeAsUpSet)
      setDisplayHomeAsUpEnabled(paramBoolean); 
  }
  
  public void setDisplayHomeAsUpEnabled(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    setDisplayOptions(bool, 4);
  }
  
  public void setDisplayOptions(int paramInt) {
    if ((paramInt & 0x4) != 0)
      this.mDisplayHomeAsUpSet = true; 
    this.mDecorToolbar.setDisplayOptions(paramInt);
  }
  
  public void setDisplayOptions(int paramInt1, int paramInt2) {
    int i = this.mDecorToolbar.getDisplayOptions();
    if ((paramInt2 & 0x4) != 0)
      this.mDisplayHomeAsUpSet = true; 
    this.mDecorToolbar.setDisplayOptions(i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public void setDisplayShowCustomEnabled(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    setDisplayOptions(bool, 16);
  }
  
  public void setDisplayShowHomeEnabled(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    setDisplayOptions(bool, 2);
  }
  
  public void setDisplayShowTitleEnabled(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    setDisplayOptions(bool, 8);
  }
  
  public void setDisplayUseLogoEnabled(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    setDisplayOptions(bool, 1);
  }
  
  public void setElevation(float paramFloat) {
    ViewCompat.setElevation((View)this.mContainerView, paramFloat);
  }
  
  public void setHideOffset(int paramInt) {
    if (paramInt != 0 && !this.mOverlayLayout.isInOverlayMode())
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"); 
    this.mOverlayLayout.setActionBarHideOffset(paramInt);
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean) {
    if (paramBoolean && !this.mOverlayLayout.isInOverlayMode())
      throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"); 
    this.mHideOnContentScroll = paramBoolean;
    this.mOverlayLayout.setHideOnContentScrollEnabled(paramBoolean);
  }
  
  public void setHomeActionContentDescription(int paramInt) {
    this.mDecorToolbar.setNavigationContentDescription(paramInt);
  }
  
  public void setHomeActionContentDescription(CharSequence paramCharSequence) {
    this.mDecorToolbar.setNavigationContentDescription(paramCharSequence);
  }
  
  public void setHomeAsUpIndicator(int paramInt) {
    this.mDecorToolbar.setNavigationIcon(paramInt);
  }
  
  public void setHomeAsUpIndicator(Drawable paramDrawable) {
    this.mDecorToolbar.setNavigationIcon(paramDrawable);
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean) {
    this.mDecorToolbar.setHomeButtonEnabled(paramBoolean);
  }
  
  public void setIcon(int paramInt) {
    this.mDecorToolbar.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable) {
    this.mDecorToolbar.setIcon(paramDrawable);
  }
  
  public void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, ActionBar$OnNavigationListener paramActionBar$OnNavigationListener) {
    this.mDecorToolbar.setDropdownParams(paramSpinnerAdapter, new NavItemSelectedListener(paramActionBar$OnNavigationListener));
  }
  
  public void setLogo(int paramInt) {
    this.mDecorToolbar.setLogo(paramInt);
  }
  
  public void setLogo(Drawable paramDrawable) {
    this.mDecorToolbar.setLogo(paramDrawable);
  }
  
  public void setNavigationMode(int paramInt) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #4
    //   3: aload_0
    //   4: getfield mDecorToolbar : Landroid/support/v7/widget/DecorToolbar;
    //   7: invokeinterface getNavigationMode : ()I
    //   12: istore_2
    //   13: iload_2
    //   14: tableswitch default -> 32, 2 -> 144
    //   32: iload_2
    //   33: iload_1
    //   34: if_icmpeq -> 58
    //   37: aload_0
    //   38: getfield mHasEmbeddedTabs : Z
    //   41: ifne -> 58
    //   44: aload_0
    //   45: getfield mOverlayLayout : Landroid/support/v7/widget/ActionBarOverlayLayout;
    //   48: ifnull -> 58
    //   51: aload_0
    //   52: getfield mOverlayLayout : Landroid/support/v7/widget/ActionBarOverlayLayout;
    //   55: invokestatic requestApplyInsets : (Landroid/view/View;)V
    //   58: aload_0
    //   59: getfield mDecorToolbar : Landroid/support/v7/widget/DecorToolbar;
    //   62: iload_1
    //   63: invokeinterface setNavigationMode : (I)V
    //   68: iload_1
    //   69: tableswitch default -> 88, 2 -> 169
    //   88: aload_0
    //   89: getfield mDecorToolbar : Landroid/support/v7/widget/DecorToolbar;
    //   92: astore #5
    //   94: iload_1
    //   95: iconst_2
    //   96: if_icmpne -> 205
    //   99: aload_0
    //   100: getfield mHasEmbeddedTabs : Z
    //   103: ifne -> 205
    //   106: iconst_1
    //   107: istore_3
    //   108: aload #5
    //   110: iload_3
    //   111: invokeinterface setCollapsible : (Z)V
    //   116: aload_0
    //   117: getfield mOverlayLayout : Landroid/support/v7/widget/ActionBarOverlayLayout;
    //   120: astore #5
    //   122: iload_1
    //   123: iconst_2
    //   124: if_icmpne -> 210
    //   127: aload_0
    //   128: getfield mHasEmbeddedTabs : Z
    //   131: ifne -> 210
    //   134: iload #4
    //   136: istore_3
    //   137: aload #5
    //   139: iload_3
    //   140: invokevirtual setHasNonEmbeddedTabs : (Z)V
    //   143: return
    //   144: aload_0
    //   145: aload_0
    //   146: invokevirtual getSelectedNavigationIndex : ()I
    //   149: putfield mSavedTabPosition : I
    //   152: aload_0
    //   153: aconst_null
    //   154: invokevirtual selectTab : (Landroid/support/v7/app/ActionBar$Tab;)V
    //   157: aload_0
    //   158: getfield mTabScrollView : Landroid/support/v7/widget/ScrollingTabContainerView;
    //   161: bipush #8
    //   163: invokevirtual setVisibility : (I)V
    //   166: goto -> 32
    //   169: aload_0
    //   170: invokespecial ensureTabsExist : ()V
    //   173: aload_0
    //   174: getfield mTabScrollView : Landroid/support/v7/widget/ScrollingTabContainerView;
    //   177: iconst_0
    //   178: invokevirtual setVisibility : (I)V
    //   181: aload_0
    //   182: getfield mSavedTabPosition : I
    //   185: iconst_m1
    //   186: if_icmpeq -> 88
    //   189: aload_0
    //   190: aload_0
    //   191: getfield mSavedTabPosition : I
    //   194: invokevirtual setSelectedNavigationItem : (I)V
    //   197: aload_0
    //   198: iconst_m1
    //   199: putfield mSavedTabPosition : I
    //   202: goto -> 88
    //   205: iconst_0
    //   206: istore_3
    //   207: goto -> 108
    //   210: iconst_0
    //   211: istore_3
    //   212: goto -> 137
  }
  
  public void setSelectedNavigationItem(int paramInt) {
    switch (this.mDecorToolbar.getNavigationMode()) {
      default:
        throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
      case 2:
        selectTab(this.mTabs.get(paramInt));
        return;
      case 1:
        break;
    } 
    this.mDecorToolbar.setDropdownSelectedPosition(paramInt);
  }
  
  public void setShowHideAnimationEnabled(boolean paramBoolean) {
    this.mShowHideAnimationEnabled = paramBoolean;
    if (!paramBoolean && this.mCurrentShowAnim != null)
      this.mCurrentShowAnim.cancel(); 
  }
  
  public void setSplitBackgroundDrawable(Drawable paramDrawable) {}
  
  public void setStackedBackgroundDrawable(Drawable paramDrawable) {
    this.mContainerView.setStackedBackground(paramDrawable);
  }
  
  public void setSubtitle(int paramInt) {
    setSubtitle(this.mContext.getString(paramInt));
  }
  
  public void setSubtitle(CharSequence paramCharSequence) {
    this.mDecorToolbar.setSubtitle(paramCharSequence);
  }
  
  public void setTitle(int paramInt) {
    setTitle(this.mContext.getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    this.mDecorToolbar.setTitle(paramCharSequence);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence) {
    this.mDecorToolbar.setWindowTitle(paramCharSequence);
  }
  
  public void show() {
    if (this.mHiddenByApp) {
      this.mHiddenByApp = false;
      updateVisibility(false);
    } 
  }
  
  public void showForSystem() {
    if (this.mHiddenBySystem) {
      this.mHiddenBySystem = false;
      updateVisibility(true);
    } 
  }
  
  public ActionMode startActionMode(ActionMode.Callback paramCallback) {
    if (this.mActionMode != null)
      this.mActionMode.finish(); 
    this.mOverlayLayout.setHideOnContentScrollEnabled(false);
    this.mContextView.killMode();
    WindowDecorActionBar$ActionModeImpl windowDecorActionBar$ActionModeImpl = new WindowDecorActionBar$ActionModeImpl(this, this.mContextView.getContext(), paramCallback);
    if (windowDecorActionBar$ActionModeImpl.dispatchOnCreate()) {
      this.mActionMode = windowDecorActionBar$ActionModeImpl;
      windowDecorActionBar$ActionModeImpl.invalidate();
      this.mContextView.initForMode(windowDecorActionBar$ActionModeImpl);
      animateToMode(true);
      this.mContextView.sendAccessibilityEvent(32);
      return windowDecorActionBar$ActionModeImpl;
    } 
    return null;
  }
  
  static {
    boolean bool1;
    boolean bool2 = true;
    if (!WindowDecorActionBar.class.desiredAssertionStatus()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    $assertionsDisabled = bool1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\WindowDecorActionBar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */