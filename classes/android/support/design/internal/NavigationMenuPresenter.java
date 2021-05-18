package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.design.R;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class NavigationMenuPresenter implements MenuPresenter {
  private static final String STATE_ADAPTER = "android:menu:adapter";
  
  private static final String STATE_HEADER = "android:menu:header";
  
  private static final String STATE_HIERARCHY = "android:menu:list";
  
  NavigationMenuPresenter$NavigationMenuAdapter mAdapter;
  
  private MenuPresenter.Callback mCallback;
  
  LinearLayout mHeaderLayout;
  
  ColorStateList mIconTintList;
  
  private int mId;
  
  Drawable mItemBackground;
  
  LayoutInflater mLayoutInflater;
  
  MenuBuilder mMenu;
  
  private NavigationMenuView mMenuView;
  
  final View.OnClickListener mOnClickListener = new NavigationMenuPresenter$1(this);
  
  int mPaddingSeparator;
  
  private int mPaddingTopDefault;
  
  int mTextAppearance;
  
  boolean mTextAppearanceSet;
  
  ColorStateList mTextColor;
  
  public void addHeaderView(@NonNull View paramView) {
    this.mHeaderLayout.addView(paramView);
    this.mMenuView.setPadding(0, 0, 0, this.mMenuView.getPaddingBottom());
  }
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl) {
    return false;
  }
  
  public void dispatchApplyWindowInsets(WindowInsetsCompat paramWindowInsetsCompat) {
    int i = paramWindowInsetsCompat.getSystemWindowInsetTop();
    if (this.mPaddingTopDefault != i) {
      this.mPaddingTopDefault = i;
      if (this.mHeaderLayout.getChildCount() == 0)
        this.mMenuView.setPadding(0, this.mPaddingTopDefault, 0, this.mMenuView.getPaddingBottom()); 
    } 
    ViewCompat.dispatchApplyWindowInsets((View)this.mHeaderLayout, paramWindowInsetsCompat);
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl) {
    return false;
  }
  
  public boolean flagActionItems() {
    return false;
  }
  
  public int getHeaderCount() {
    return this.mHeaderLayout.getChildCount();
  }
  
  public View getHeaderView(int paramInt) {
    return this.mHeaderLayout.getChildAt(paramInt);
  }
  
  public int getId() {
    return this.mId;
  }
  
  @Nullable
  public Drawable getItemBackground() {
    return this.mItemBackground;
  }
  
  @Nullable
  public ColorStateList getItemTextColor() {
    return this.mTextColor;
  }
  
  @Nullable
  public ColorStateList getItemTintList() {
    return this.mIconTintList;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup) {
    if (this.mMenuView == null) {
      this.mMenuView = (NavigationMenuView)this.mLayoutInflater.inflate(R.layout.design_navigation_menu, paramViewGroup, false);
      if (this.mAdapter == null)
        this.mAdapter = new NavigationMenuPresenter$NavigationMenuAdapter(this); 
      this.mHeaderLayout = (LinearLayout)this.mLayoutInflater.inflate(R.layout.design_navigation_item_header, (ViewGroup)this.mMenuView, false);
      this.mMenuView.setAdapter(this.mAdapter);
    } 
    return this.mMenuView;
  }
  
  public View inflateHeaderView(@LayoutRes int paramInt) {
    View view = this.mLayoutInflater.inflate(paramInt, (ViewGroup)this.mHeaderLayout, false);
    addHeaderView(view);
    return view;
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder) {
    this.mLayoutInflater = LayoutInflater.from(paramContext);
    this.mMenu = paramMenuBuilder;
    this.mPaddingSeparator = paramContext.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean) {
    if (this.mCallback != null)
      this.mCallback.onCloseMenu(paramMenuBuilder, paramBoolean); 
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {
    if (paramParcelable instanceof Bundle) {
      Bundle bundle1 = (Bundle)paramParcelable;
      SparseArray sparseArray2 = bundle1.getSparseParcelableArray("android:menu:list");
      if (sparseArray2 != null)
        this.mMenuView.restoreHierarchyState(sparseArray2); 
      Bundle bundle2 = bundle1.getBundle("android:menu:adapter");
      if (bundle2 != null)
        this.mAdapter.restoreInstanceState(bundle2); 
      SparseArray sparseArray1 = bundle1.getSparseParcelableArray("android:menu:header");
      if (sparseArray1 != null)
        this.mHeaderLayout.restoreHierarchyState(sparseArray1); 
    } 
  }
  
  public Parcelable onSaveInstanceState() {
    if (Build.VERSION.SDK_INT >= 11) {
      Bundle bundle = new Bundle();
      if (this.mMenuView != null) {
        SparseArray sparseArray = new SparseArray();
        this.mMenuView.saveHierarchyState(sparseArray);
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
      } 
      if (this.mAdapter != null)
        bundle.putBundle("android:menu:adapter", this.mAdapter.createInstanceState()); 
      if (this.mHeaderLayout != null) {
        SparseArray sparseArray = new SparseArray();
        this.mHeaderLayout.saveHierarchyState(sparseArray);
        bundle.putSparseParcelableArray("android:menu:header", sparseArray);
      } 
      return (Parcelable)bundle;
    } 
    return null;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder) {
    return false;
  }
  
  public void removeHeaderView(@NonNull View paramView) {
    this.mHeaderLayout.removeView(paramView);
    if (this.mHeaderLayout.getChildCount() == 0)
      this.mMenuView.setPadding(0, this.mPaddingTopDefault, 0, this.mMenuView.getPaddingBottom()); 
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback) {
    this.mCallback = paramCallback;
  }
  
  public void setCheckedItem(MenuItemImpl paramMenuItemImpl) {
    this.mAdapter.setCheckedItem(paramMenuItemImpl);
  }
  
  public void setId(int paramInt) {
    this.mId = paramInt;
  }
  
  public void setItemBackground(@Nullable Drawable paramDrawable) {
    this.mItemBackground = paramDrawable;
    updateMenuView(false);
  }
  
  public void setItemIconTintList(@Nullable ColorStateList paramColorStateList) {
    this.mIconTintList = paramColorStateList;
    updateMenuView(false);
  }
  
  public void setItemTextAppearance(@StyleRes int paramInt) {
    this.mTextAppearance = paramInt;
    this.mTextAppearanceSet = true;
    updateMenuView(false);
  }
  
  public void setItemTextColor(@Nullable ColorStateList paramColorStateList) {
    this.mTextColor = paramColorStateList;
    updateMenuView(false);
  }
  
  public void setUpdateSuspended(boolean paramBoolean) {
    if (this.mAdapter != null)
      this.mAdapter.setUpdateSuspended(paramBoolean); 
  }
  
  public void updateMenuView(boolean paramBoolean) {
    if (this.mAdapter != null)
      this.mAdapter.update(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\NavigationMenuPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */