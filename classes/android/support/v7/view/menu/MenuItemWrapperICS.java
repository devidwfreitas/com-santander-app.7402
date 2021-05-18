package android.support.v7.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Method;

@TargetApi(14)
@RequiresApi(14)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class MenuItemWrapperICS extends BaseMenuWrapper<SupportMenuItem> implements MenuItem {
  static final String LOG_TAG = "MenuItemWrapper";
  
  private Method mSetExclusiveCheckableMethod;
  
  MenuItemWrapperICS(Context paramContext, SupportMenuItem paramSupportMenuItem) {
    super(paramContext, paramSupportMenuItem);
  }
  
  public boolean collapseActionView() {
    return this.mWrappedObject.collapseActionView();
  }
  
  MenuItemWrapperICS$ActionProviderWrapper createActionProviderWrapper(ActionProvider paramActionProvider) {
    return new MenuItemWrapperICS$ActionProviderWrapper(this, this.mContext, paramActionProvider);
  }
  
  public boolean expandActionView() {
    return this.mWrappedObject.expandActionView();
  }
  
  public ActionProvider getActionProvider() {
    ActionProvider actionProvider = this.mWrappedObject.getSupportActionProvider();
    return (actionProvider instanceof MenuItemWrapperICS$ActionProviderWrapper) ? ((MenuItemWrapperICS$ActionProviderWrapper)actionProvider).mInner : null;
  }
  
  public View getActionView() {
    View view2 = this.mWrappedObject.getActionView();
    View view1 = view2;
    if (view2 instanceof MenuItemWrapperICS$CollapsibleActionViewWrapper)
      view1 = ((MenuItemWrapperICS$CollapsibleActionViewWrapper)view2).getWrappedView(); 
    return view1;
  }
  
  public char getAlphabeticShortcut() {
    return this.mWrappedObject.getAlphabeticShortcut();
  }
  
  public int getGroupId() {
    return this.mWrappedObject.getGroupId();
  }
  
  public Drawable getIcon() {
    return this.mWrappedObject.getIcon();
  }
  
  public Intent getIntent() {
    return this.mWrappedObject.getIntent();
  }
  
  public int getItemId() {
    return this.mWrappedObject.getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo() {
    return this.mWrappedObject.getMenuInfo();
  }
  
  public char getNumericShortcut() {
    return this.mWrappedObject.getNumericShortcut();
  }
  
  public int getOrder() {
    return this.mWrappedObject.getOrder();
  }
  
  public SubMenu getSubMenu() {
    return getSubMenuWrapper(this.mWrappedObject.getSubMenu());
  }
  
  public CharSequence getTitle() {
    return this.mWrappedObject.getTitle();
  }
  
  public CharSequence getTitleCondensed() {
    return this.mWrappedObject.getTitleCondensed();
  }
  
  public boolean hasSubMenu() {
    return this.mWrappedObject.hasSubMenu();
  }
  
  public boolean isActionViewExpanded() {
    return this.mWrappedObject.isActionViewExpanded();
  }
  
  public boolean isCheckable() {
    return this.mWrappedObject.isCheckable();
  }
  
  public boolean isChecked() {
    return this.mWrappedObject.isChecked();
  }
  
  public boolean isEnabled() {
    return this.mWrappedObject.isEnabled();
  }
  
  public boolean isVisible() {
    return this.mWrappedObject.isVisible();
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider) {
    SupportMenuItem supportMenuItem = this.mWrappedObject;
    if (paramActionProvider != null) {
      MenuItemWrapperICS$ActionProviderWrapper menuItemWrapperICS$ActionProviderWrapper = createActionProviderWrapper(paramActionProvider);
      supportMenuItem.setSupportActionProvider(menuItemWrapperICS$ActionProviderWrapper);
      return this;
    } 
    paramActionProvider = null;
    supportMenuItem.setSupportActionProvider((ActionProvider)paramActionProvider);
    return this;
  }
  
  public MenuItem setActionView(int paramInt) {
    this.mWrappedObject.setActionView(paramInt);
    View view = this.mWrappedObject.getActionView();
    if (view instanceof android.view.CollapsibleActionView)
      this.mWrappedObject.setActionView((View)new MenuItemWrapperICS$CollapsibleActionViewWrapper(view)); 
    return this;
  }
  
  public MenuItem setActionView(View paramView) {
    MenuItemWrapperICS$CollapsibleActionViewWrapper menuItemWrapperICS$CollapsibleActionViewWrapper;
    View view = paramView;
    if (paramView instanceof android.view.CollapsibleActionView)
      menuItemWrapperICS$CollapsibleActionViewWrapper = new MenuItemWrapperICS$CollapsibleActionViewWrapper(paramView); 
    this.mWrappedObject.setActionView((View)menuItemWrapperICS$CollapsibleActionViewWrapper);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar) {
    this.mWrappedObject.setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean) {
    this.mWrappedObject.setCheckable(paramBoolean);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean) {
    this.mWrappedObject.setChecked(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean) {
    this.mWrappedObject.setEnabled(paramBoolean);
    return this;
  }
  
  public void setExclusiveCheckable(boolean paramBoolean) {
    try {
      if (this.mSetExclusiveCheckableMethod == null)
        this.mSetExclusiveCheckableMethod = this.mWrappedObject.getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { boolean.class }); 
      this.mSetExclusiveCheckableMethod.invoke(this.mWrappedObject, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    } catch (Exception exception) {
      Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", exception);
      return;
    } 
  }
  
  public MenuItem setIcon(int paramInt) {
    this.mWrappedObject.setIcon(paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable) {
    this.mWrappedObject.setIcon(paramDrawable);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent) {
    this.mWrappedObject.setIntent(paramIntent);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar) {
    this.mWrappedObject.setNumericShortcut(paramChar);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener) {
    SupportMenuItem supportMenuItem = this.mWrappedObject;
    if (paramOnActionExpandListener != null) {
      MenuItemWrapperICS$OnActionExpandListenerWrapper menuItemWrapperICS$OnActionExpandListenerWrapper = new MenuItemWrapperICS$OnActionExpandListenerWrapper(this, paramOnActionExpandListener);
      supportMenuItem.setSupportOnActionExpandListener(menuItemWrapperICS$OnActionExpandListenerWrapper);
      return this;
    } 
    paramOnActionExpandListener = null;
    supportMenuItem.setSupportOnActionExpandListener((MenuItemCompat.OnActionExpandListener)paramOnActionExpandListener);
    return this;
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener) {
    SupportMenuItem supportMenuItem = this.mWrappedObject;
    if (paramOnMenuItemClickListener != null) {
      paramOnMenuItemClickListener = new MenuItemWrapperICS$OnMenuItemClickListenerWrapper(this, paramOnMenuItemClickListener);
      supportMenuItem.setOnMenuItemClickListener(paramOnMenuItemClickListener);
      return this;
    } 
    paramOnMenuItemClickListener = null;
    supportMenuItem.setOnMenuItemClickListener(paramOnMenuItemClickListener);
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2) {
    this.mWrappedObject.setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public void setShowAsAction(int paramInt) {
    this.mWrappedObject.setShowAsAction(paramInt);
  }
  
  public MenuItem setShowAsActionFlags(int paramInt) {
    this.mWrappedObject.setShowAsActionFlags(paramInt);
    return this;
  }
  
  public MenuItem setTitle(int paramInt) {
    this.mWrappedObject.setTitle(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence) {
    this.mWrappedObject.setTitle(paramCharSequence);
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence) {
    this.mWrappedObject.setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean) {
    return this.mWrappedObject.setVisible(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuItemWrapperICS.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */