package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.appcompat.R;
import android.support.v7.view.ContextThemeWrapper;
import android.support.v7.view.menu.ListMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuView;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;

public final class AppCompatDelegateImplV9$PanelFeatureState {
  int background;
  
  View createdPanelView;
  
  ViewGroup decorView;
  
  int featureId;
  
  Bundle frozenActionViewState;
  
  Bundle frozenMenuState;
  
  int gravity;
  
  boolean isHandled;
  
  boolean isOpen;
  
  boolean isPrepared;
  
  ListMenuPresenter listMenuPresenter;
  
  Context listPresenterContext;
  
  MenuBuilder menu;
  
  public boolean qwertyMode;
  
  boolean refreshDecorView;
  
  boolean refreshMenuContent;
  
  View shownPanelView;
  
  boolean wasLastOpen;
  
  int windowAnimations;
  
  int x;
  
  int y;
  
  AppCompatDelegateImplV9$PanelFeatureState(int paramInt) {
    this.featureId = paramInt;
    this.refreshDecorView = false;
  }
  
  void applyFrozenState() {
    if (this.menu != null && this.frozenMenuState != null) {
      this.menu.restorePresenterStates(this.frozenMenuState);
      this.frozenMenuState = null;
    } 
  }
  
  public void clearMenuPresenters() {
    if (this.menu != null)
      this.menu.removeMenuPresenter((MenuPresenter)this.listMenuPresenter); 
    this.listMenuPresenter = null;
  }
  
  MenuView getListMenuView(MenuPresenter.Callback paramCallback) {
    if (this.menu == null)
      return null; 
    if (this.listMenuPresenter == null) {
      this.listMenuPresenter = new ListMenuPresenter(this.listPresenterContext, R.layout.abc_list_menu_item_layout);
      this.listMenuPresenter.setCallback(paramCallback);
      this.menu.addMenuPresenter((MenuPresenter)this.listMenuPresenter);
    } 
    return this.listMenuPresenter.getMenuView(this.decorView);
  }
  
  public boolean hasPanelItems() {
    boolean bool2 = true;
    if (this.shownPanelView == null)
      return false; 
    boolean bool1 = bool2;
    if (this.createdPanelView == null) {
      bool1 = bool2;
      if (this.listMenuPresenter.getAdapter().getCount() <= 0)
        return false; 
    } 
    return bool1;
  }
  
  void onRestoreInstanceState(Parcelable paramParcelable) {
    paramParcelable = paramParcelable;
    this.featureId = ((AppCompatDelegateImplV9$PanelFeatureState$SavedState)paramParcelable).featureId;
    this.wasLastOpen = ((AppCompatDelegateImplV9$PanelFeatureState$SavedState)paramParcelable).isOpen;
    this.frozenMenuState = ((AppCompatDelegateImplV9$PanelFeatureState$SavedState)paramParcelable).menuState;
    this.shownPanelView = null;
    this.decorView = null;
  }
  
  Parcelable onSaveInstanceState() {
    AppCompatDelegateImplV9$PanelFeatureState$SavedState appCompatDelegateImplV9$PanelFeatureState$SavedState = new AppCompatDelegateImplV9$PanelFeatureState$SavedState();
    appCompatDelegateImplV9$PanelFeatureState$SavedState.featureId = this.featureId;
    appCompatDelegateImplV9$PanelFeatureState$SavedState.isOpen = this.isOpen;
    if (this.menu != null) {
      appCompatDelegateImplV9$PanelFeatureState$SavedState.menuState = new Bundle();
      this.menu.savePresenterStates(appCompatDelegateImplV9$PanelFeatureState$SavedState.menuState);
    } 
    return appCompatDelegateImplV9$PanelFeatureState$SavedState;
  }
  
  void setMenu(MenuBuilder paramMenuBuilder) {
    if (paramMenuBuilder != this.menu) {
      if (this.menu != null)
        this.menu.removeMenuPresenter((MenuPresenter)this.listMenuPresenter); 
      this.menu = paramMenuBuilder;
      if (paramMenuBuilder != null && this.listMenuPresenter != null) {
        paramMenuBuilder.addMenuPresenter((MenuPresenter)this.listMenuPresenter);
        return;
      } 
    } 
  }
  
  void setStyle(Context paramContext) {
    TypedValue typedValue = new TypedValue();
    Resources.Theme theme = paramContext.getResources().newTheme();
    theme.setTo(paramContext.getTheme());
    theme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
    if (typedValue.resourceId != 0)
      theme.applyStyle(typedValue.resourceId, true); 
    theme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
    if (typedValue.resourceId != 0) {
      theme.applyStyle(typedValue.resourceId, true);
    } else {
      theme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
    } 
    ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(paramContext, 0);
    contextThemeWrapper.getTheme().setTo(theme);
    this.listPresenterContext = (Context)contextThemeWrapper;
    TypedArray typedArray = contextThemeWrapper.obtainStyledAttributes(R.styleable.AppCompatTheme);
    this.background = typedArray.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
    this.windowAnimations = typedArray.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
    typedArray.recycle();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$PanelFeatureState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */