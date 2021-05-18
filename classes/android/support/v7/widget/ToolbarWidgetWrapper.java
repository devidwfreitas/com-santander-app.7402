package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.appcompat.R;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ToolbarWidgetWrapper implements DecorToolbar {
  private static final int AFFECTS_LOGO_MASK = 3;
  
  private static final long DEFAULT_FADE_DURATION_MS = 200L;
  
  private static final String TAG = "ToolbarWidgetWrapper";
  
  private ActionMenuPresenter mActionMenuPresenter;
  
  private View mCustomView;
  
  private int mDefaultNavigationContentDescription;
  
  private Drawable mDefaultNavigationIcon;
  
  private int mDisplayOpts;
  
  private CharSequence mHomeDescription;
  
  private Drawable mIcon;
  
  private Drawable mLogo;
  
  boolean mMenuPrepared;
  
  private Drawable mNavIcon;
  
  private int mNavigationMode;
  
  private Spinner mSpinner;
  
  private CharSequence mSubtitle;
  
  private View mTabView;
  
  CharSequence mTitle;
  
  private boolean mTitleSet;
  
  Toolbar mToolbar;
  
  Window.Callback mWindowCallback;
  
  public ToolbarWidgetWrapper(Toolbar paramToolbar, boolean paramBoolean) {
    this(paramToolbar, paramBoolean, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
  }
  
  public ToolbarWidgetWrapper(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2) {
    boolean bool;
    this.mNavigationMode = 0;
    this.mDefaultNavigationContentDescription = 0;
    this.mToolbar = paramToolbar;
    this.mTitle = paramToolbar.getTitle();
    this.mSubtitle = paramToolbar.getSubtitle();
    if (this.mTitle != null) {
      bool = true;
    } else {
      bool = false;
    } 
    this.mTitleSet = bool;
    this.mNavIcon = paramToolbar.getNavigationIcon();
    TintTypedArray tintTypedArray = TintTypedArray.obtainStyledAttributes(paramToolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
    this.mDefaultNavigationIcon = tintTypedArray.getDrawable(R.styleable.ActionBar_homeAsUpIndicator);
    if (paramBoolean) {
      CharSequence charSequence = tintTypedArray.getText(R.styleable.ActionBar_title);
      if (!TextUtils.isEmpty(charSequence))
        setTitle(charSequence); 
      charSequence = tintTypedArray.getText(R.styleable.ActionBar_subtitle);
      if (!TextUtils.isEmpty(charSequence))
        setSubtitle(charSequence); 
      Drawable drawable = tintTypedArray.getDrawable(R.styleable.ActionBar_logo);
      if (drawable != null)
        setLogo(drawable); 
      drawable = tintTypedArray.getDrawable(R.styleable.ActionBar_icon);
      if (drawable != null)
        setIcon(drawable); 
      if (this.mNavIcon == null && this.mDefaultNavigationIcon != null)
        setNavigationIcon(this.mDefaultNavigationIcon); 
      setDisplayOptions(tintTypedArray.getInt(R.styleable.ActionBar_displayOptions, 0));
      paramInt2 = tintTypedArray.getResourceId(R.styleable.ActionBar_customNavigationLayout, 0);
      if (paramInt2 != 0) {
        setCustomView(LayoutInflater.from(this.mToolbar.getContext()).inflate(paramInt2, this.mToolbar, false));
        setDisplayOptions(this.mDisplayOpts | 0x10);
      } 
      paramInt2 = tintTypedArray.getLayoutDimension(R.styleable.ActionBar_height, 0);
      if (paramInt2 > 0) {
        ViewGroup.LayoutParams layoutParams = this.mToolbar.getLayoutParams();
        layoutParams.height = paramInt2;
        this.mToolbar.setLayoutParams(layoutParams);
      } 
      paramInt2 = tintTypedArray.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetStart, -1);
      int i = tintTypedArray.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetEnd, -1);
      if (paramInt2 >= 0 || i >= 0)
        this.mToolbar.setContentInsetsRelative(Math.max(paramInt2, 0), Math.max(i, 0)); 
      paramInt2 = tintTypedArray.getResourceId(R.styleable.ActionBar_titleTextStyle, 0);
      if (paramInt2 != 0)
        this.mToolbar.setTitleTextAppearance(this.mToolbar.getContext(), paramInt2); 
      paramInt2 = tintTypedArray.getResourceId(R.styleable.ActionBar_subtitleTextStyle, 0);
      if (paramInt2 != 0)
        this.mToolbar.setSubtitleTextAppearance(this.mToolbar.getContext(), paramInt2); 
      paramInt2 = tintTypedArray.getResourceId(R.styleable.ActionBar_popupTheme, 0);
      if (paramInt2 != 0)
        this.mToolbar.setPopupTheme(paramInt2); 
    } else {
      this.mDisplayOpts = detectDisplayOptions();
    } 
    tintTypedArray.recycle();
    setDefaultNavigationContentDescription(paramInt1);
    this.mHomeDescription = this.mToolbar.getNavigationContentDescription();
    this.mToolbar.setNavigationOnClickListener(new ToolbarWidgetWrapper$1(this));
  }
  
  private int detectDisplayOptions() {
    byte b = 11;
    if (this.mToolbar.getNavigationIcon() != null) {
      b = 15;
      this.mDefaultNavigationIcon = this.mToolbar.getNavigationIcon();
    } 
    return b;
  }
  
  private void ensureSpinner() {
    if (this.mSpinner == null) {
      this.mSpinner = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
      Toolbar$LayoutParams toolbar$LayoutParams = new Toolbar$LayoutParams(-2, -2, 8388627);
      this.mSpinner.setLayoutParams((ViewGroup.LayoutParams)toolbar$LayoutParams);
    } 
  }
  
  private void setTitleInt(CharSequence paramCharSequence) {
    this.mTitle = paramCharSequence;
    if ((this.mDisplayOpts & 0x8) != 0)
      this.mToolbar.setTitle(paramCharSequence); 
  }
  
  private void updateHomeAccessibility() {
    if ((this.mDisplayOpts & 0x4) != 0) {
      if (TextUtils.isEmpty(this.mHomeDescription)) {
        this.mToolbar.setNavigationContentDescription(this.mDefaultNavigationContentDescription);
        return;
      } 
    } else {
      return;
    } 
    this.mToolbar.setNavigationContentDescription(this.mHomeDescription);
  }
  
  private void updateNavigationIcon() {
    if ((this.mDisplayOpts & 0x4) != 0) {
      Drawable drawable;
      Toolbar toolbar = this.mToolbar;
      if (this.mNavIcon != null) {
        drawable = this.mNavIcon;
      } else {
        drawable = this.mDefaultNavigationIcon;
      } 
      toolbar.setNavigationIcon(drawable);
      return;
    } 
    this.mToolbar.setNavigationIcon((Drawable)null);
  }
  
  private void updateToolbarLogo() {
    Drawable drawable = null;
    if ((this.mDisplayOpts & 0x2) != 0)
      if ((this.mDisplayOpts & 0x1) != 0) {
        if (this.mLogo != null) {
          drawable = this.mLogo;
        } else {
          drawable = this.mIcon;
        } 
      } else {
        drawable = this.mIcon;
      }  
    this.mToolbar.setLogo(drawable);
  }
  
  public void animateToVisibility(int paramInt) {
    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = setupAnimatorToVisibility(paramInt, 200L);
    if (viewPropertyAnimatorCompat != null)
      viewPropertyAnimatorCompat.start(); 
  }
  
  public boolean canShowOverflowMenu() {
    return this.mToolbar.canShowOverflowMenu();
  }
  
  public void collapseActionView() {
    this.mToolbar.collapseActionView();
  }
  
  public void dismissPopupMenus() {
    this.mToolbar.dismissPopupMenus();
  }
  
  public Context getContext() {
    return this.mToolbar.getContext();
  }
  
  public View getCustomView() {
    return this.mCustomView;
  }
  
  public int getDisplayOptions() {
    return this.mDisplayOpts;
  }
  
  public int getDropdownItemCount() {
    return (this.mSpinner != null) ? this.mSpinner.getCount() : 0;
  }
  
  public int getDropdownSelectedPosition() {
    return (this.mSpinner != null) ? this.mSpinner.getSelectedItemPosition() : 0;
  }
  
  public int getHeight() {
    return this.mToolbar.getHeight();
  }
  
  public Menu getMenu() {
    return this.mToolbar.getMenu();
  }
  
  public int getNavigationMode() {
    return this.mNavigationMode;
  }
  
  public CharSequence getSubtitle() {
    return this.mToolbar.getSubtitle();
  }
  
  public CharSequence getTitle() {
    return this.mToolbar.getTitle();
  }
  
  public ViewGroup getViewGroup() {
    return this.mToolbar;
  }
  
  public int getVisibility() {
    return this.mToolbar.getVisibility();
  }
  
  public boolean hasEmbeddedTabs() {
    return (this.mTabView != null);
  }
  
  public boolean hasExpandedActionView() {
    return this.mToolbar.hasExpandedActionView();
  }
  
  public boolean hasIcon() {
    return (this.mIcon != null);
  }
  
  public boolean hasLogo() {
    return (this.mLogo != null);
  }
  
  public boolean hideOverflowMenu() {
    return this.mToolbar.hideOverflowMenu();
  }
  
  public void initIndeterminateProgress() {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public void initProgress() {
    Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
  }
  
  public boolean isOverflowMenuShowPending() {
    return this.mToolbar.isOverflowMenuShowPending();
  }
  
  public boolean isOverflowMenuShowing() {
    return this.mToolbar.isOverflowMenuShowing();
  }
  
  public boolean isTitleTruncated() {
    return this.mToolbar.isTitleTruncated();
  }
  
  public void restoreHierarchyState(SparseArray<Parcelable> paramSparseArray) {
    this.mToolbar.restoreHierarchyState(paramSparseArray);
  }
  
  public void saveHierarchyState(SparseArray<Parcelable> paramSparseArray) {
    this.mToolbar.saveHierarchyState(paramSparseArray);
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable) {
    ViewCompat.setBackground((View)this.mToolbar, paramDrawable);
  }
  
  public void setCollapsible(boolean paramBoolean) {
    this.mToolbar.setCollapsible(paramBoolean);
  }
  
  public void setCustomView(View paramView) {
    if (this.mCustomView != null && (this.mDisplayOpts & 0x10) != 0)
      this.mToolbar.removeView(this.mCustomView); 
    this.mCustomView = paramView;
    if (paramView != null && (this.mDisplayOpts & 0x10) != 0)
      this.mToolbar.addView(this.mCustomView); 
  }
  
  public void setDefaultNavigationContentDescription(int paramInt) {
    if (paramInt != this.mDefaultNavigationContentDescription) {
      this.mDefaultNavigationContentDescription = paramInt;
      if (TextUtils.isEmpty(this.mToolbar.getNavigationContentDescription())) {
        setNavigationContentDescription(this.mDefaultNavigationContentDescription);
        return;
      } 
    } 
  }
  
  public void setDefaultNavigationIcon(Drawable paramDrawable) {
    if (this.mDefaultNavigationIcon != paramDrawable) {
      this.mDefaultNavigationIcon = paramDrawable;
      updateNavigationIcon();
    } 
  }
  
  public void setDisplayOptions(int paramInt) {
    int i = this.mDisplayOpts ^ paramInt;
    this.mDisplayOpts = paramInt;
    if (i != 0) {
      if ((i & 0x4) != 0) {
        if ((paramInt & 0x4) != 0)
          updateHomeAccessibility(); 
        updateNavigationIcon();
      } 
      if ((i & 0x3) != 0)
        updateToolbarLogo(); 
      if ((i & 0x8) != 0)
        if ((paramInt & 0x8) != 0) {
          this.mToolbar.setTitle(this.mTitle);
          this.mToolbar.setSubtitle(this.mSubtitle);
        } else {
          this.mToolbar.setTitle((CharSequence)null);
          this.mToolbar.setSubtitle((CharSequence)null);
        }  
      if ((i & 0x10) != 0 && this.mCustomView != null) {
        if ((paramInt & 0x10) != 0) {
          this.mToolbar.addView(this.mCustomView);
          return;
        } 
      } else {
        return;
      } 
    } else {
      return;
    } 
    this.mToolbar.removeView(this.mCustomView);
  }
  
  public void setDropdownParams(SpinnerAdapter paramSpinnerAdapter, AdapterView.OnItemSelectedListener paramOnItemSelectedListener) {
    ensureSpinner();
    this.mSpinner.setAdapter(paramSpinnerAdapter);
    this.mSpinner.setOnItemSelectedListener(paramOnItemSelectedListener);
  }
  
  public void setDropdownSelectedPosition(int paramInt) {
    if (this.mSpinner == null)
      throw new IllegalStateException("Can't set dropdown selected position without an adapter"); 
    this.mSpinner.setSelection(paramInt);
  }
  
  public void setEmbeddedTabView(ScrollingTabContainerView paramScrollingTabContainerView) {
    if (this.mTabView != null && this.mTabView.getParent() == this.mToolbar)
      this.mToolbar.removeView(this.mTabView); 
    this.mTabView = (View)paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null && this.mNavigationMode == 2) {
      this.mToolbar.addView(this.mTabView, 0);
      Toolbar$LayoutParams toolbar$LayoutParams = (Toolbar$LayoutParams)this.mTabView.getLayoutParams();
      toolbar$LayoutParams.width = -2;
      toolbar$LayoutParams.height = -2;
      toolbar$LayoutParams.gravity = 8388691;
      paramScrollingTabContainerView.setAllowCollapse(true);
    } 
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean) {}
  
  public void setIcon(int paramInt) {
    Drawable drawable;
    if (paramInt != 0) {
      drawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      drawable = null;
    } 
    setIcon(drawable);
  }
  
  public void setIcon(Drawable paramDrawable) {
    this.mIcon = paramDrawable;
    updateToolbarLogo();
  }
  
  public void setLogo(int paramInt) {
    Drawable drawable;
    if (paramInt != 0) {
      drawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      drawable = null;
    } 
    setLogo(drawable);
  }
  
  public void setLogo(Drawable paramDrawable) {
    this.mLogo = paramDrawable;
    updateToolbarLogo();
  }
  
  public void setMenu(Menu paramMenu, MenuPresenter.Callback paramCallback) {
    if (this.mActionMenuPresenter == null) {
      this.mActionMenuPresenter = new ActionMenuPresenter(this.mToolbar.getContext());
      this.mActionMenuPresenter.setId(R.id.action_menu_presenter);
    } 
    this.mActionMenuPresenter.setCallback(paramCallback);
    this.mToolbar.setMenu((MenuBuilder)paramMenu, this.mActionMenuPresenter);
  }
  
  public void setMenuCallbacks(MenuPresenter.Callback paramCallback, MenuBuilder.Callback paramCallback1) {
    this.mToolbar.setMenuCallbacks(paramCallback, paramCallback1);
  }
  
  public void setMenuPrepared() {
    this.mMenuPrepared = true;
  }
  
  public void setNavigationContentDescription(int paramInt) {
    String str;
    if (paramInt == 0) {
      str = null;
    } else {
      str = getContext().getString(paramInt);
    } 
    setNavigationContentDescription(str);
  }
  
  public void setNavigationContentDescription(CharSequence paramCharSequence) {
    this.mHomeDescription = paramCharSequence;
    updateHomeAccessibility();
  }
  
  public void setNavigationIcon(int paramInt) {
    Drawable drawable;
    if (paramInt != 0) {
      drawable = AppCompatResources.getDrawable(getContext(), paramInt);
    } else {
      drawable = null;
    } 
    setNavigationIcon(drawable);
  }
  
  public void setNavigationIcon(Drawable paramDrawable) {
    this.mNavIcon = paramDrawable;
    updateNavigationIcon();
  }
  
  public void setNavigationMode(int paramInt) {
    int i = this.mNavigationMode;
    if (paramInt != i) {
      switch (i) {
        default:
          this.mNavigationMode = paramInt;
          switch (paramInt) {
            default:
              throw new IllegalArgumentException("Invalid navigation mode " + paramInt);
            case 1:
              ensureSpinner();
              this.mToolbar.addView((View)this.mSpinner, 0);
            case 0:
              return;
            case 2:
              break;
          } 
          break;
        case 1:
          if (this.mSpinner != null && this.mSpinner.getParent() == this.mToolbar)
            this.mToolbar.removeView((View)this.mSpinner); 
        case 2:
          if (this.mTabView != null && this.mTabView.getParent() == this.mToolbar)
            this.mToolbar.removeView(this.mTabView); 
      } 
      if (this.mTabView != null) {
        this.mToolbar.addView(this.mTabView, 0);
        Toolbar$LayoutParams toolbar$LayoutParams = (Toolbar$LayoutParams)this.mTabView.getLayoutParams();
        toolbar$LayoutParams.width = -2;
        toolbar$LayoutParams.height = -2;
        toolbar$LayoutParams.gravity = 8388691;
        return;
      } 
    } 
  }
  
  public void setSubtitle(CharSequence paramCharSequence) {
    this.mSubtitle = paramCharSequence;
    if ((this.mDisplayOpts & 0x8) != 0)
      this.mToolbar.setSubtitle(paramCharSequence); 
  }
  
  public void setTitle(CharSequence paramCharSequence) {
    this.mTitleSet = true;
    setTitleInt(paramCharSequence);
  }
  
  public void setVisibility(int paramInt) {
    this.mToolbar.setVisibility(paramInt);
  }
  
  public void setWindowCallback(Window.Callback paramCallback) {
    this.mWindowCallback = paramCallback;
  }
  
  public void setWindowTitle(CharSequence paramCharSequence) {
    if (!this.mTitleSet)
      setTitleInt(paramCharSequence); 
  }
  
  public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int paramInt, long paramLong) {
    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = ViewCompat.animate((View)this.mToolbar);
    if (paramInt == 0) {
      float f1 = 1.0F;
      return viewPropertyAnimatorCompat.alpha(f1).setDuration(paramLong).setListener((ViewPropertyAnimatorListener)new ToolbarWidgetWrapper$2(this, paramInt));
    } 
    float f = 0.0F;
    return viewPropertyAnimatorCompat.alpha(f).setDuration(paramLong).setListener((ViewPropertyAnimatorListener)new ToolbarWidgetWrapper$2(this, paramInt));
  }
  
  public boolean showOverflowMenu() {
    return this.mToolbar.showOverflowMenu();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ToolbarWidgetWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */