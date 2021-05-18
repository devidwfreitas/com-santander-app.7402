package android.support.v7.view;

import android.content.res.TypedArray;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuItemWrapperICS;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Constructor;

class SupportMenuInflater$MenuState {
  private static final int defaultGroupId = 0;
  
  private static final int defaultItemCategory = 0;
  
  private static final int defaultItemCheckable = 0;
  
  private static final boolean defaultItemChecked = false;
  
  private static final boolean defaultItemEnabled = true;
  
  private static final int defaultItemId = 0;
  
  private static final int defaultItemOrder = 0;
  
  private static final boolean defaultItemVisible = true;
  
  private int groupCategory;
  
  private int groupCheckable;
  
  private boolean groupEnabled;
  
  private int groupId;
  
  private int groupOrder;
  
  private boolean groupVisible;
  
  ActionProvider itemActionProvider;
  
  private String itemActionProviderClassName;
  
  private String itemActionViewClassName;
  
  private int itemActionViewLayout;
  
  private boolean itemAdded;
  
  private char itemAlphabeticShortcut;
  
  private int itemCategoryOrder;
  
  private int itemCheckable;
  
  private boolean itemChecked;
  
  private boolean itemEnabled;
  
  private int itemIconResId;
  
  private int itemId;
  
  private String itemListenerMethodName;
  
  private char itemNumericShortcut;
  
  private int itemShowAsAction;
  
  private CharSequence itemTitle;
  
  private CharSequence itemTitleCondensed;
  
  private boolean itemVisible;
  
  private Menu menu;
  
  public SupportMenuInflater$MenuState(Menu paramMenu) {
    this.menu = paramMenu;
    resetGroup();
  }
  
  private char getShortcut(String paramString) {
    return (paramString == null) ? Character.MIN_VALUE : paramString.charAt(0);
  }
  
  private <T> T newInstance(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject) {
    try {
      null = SupportMenuInflater.this.mContext.getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass);
      null.setAccessible(true);
      return (T)null.newInstance(paramArrayOfObject);
    } catch (Exception exception) {
      Log.w("SupportMenuInflater", "Cannot instantiate class: " + paramString, exception);
      return null;
    } 
  }
  
  private void setItem(MenuItem paramMenuItem) {
    boolean bool2;
    boolean bool1 = true;
    MenuItem menuItem = paramMenuItem.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled);
    if (this.itemCheckable >= 1) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    menuItem.setCheckable(bool2).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId).setAlphabeticShortcut(this.itemAlphabeticShortcut).setNumericShortcut(this.itemNumericShortcut);
    if (this.itemShowAsAction >= 0)
      MenuItemCompat.setShowAsAction(paramMenuItem, this.itemShowAsAction); 
    if (this.itemListenerMethodName != null) {
      if (SupportMenuInflater.this.mContext.isRestricted())
        throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context"); 
      paramMenuItem.setOnMenuItemClickListener(new SupportMenuInflater$InflatedOnMenuItemClickListener(SupportMenuInflater.this.getRealOwner(), this.itemListenerMethodName));
    } 
    if (paramMenuItem instanceof MenuItemImpl)
      MenuItemImpl menuItemImpl = (MenuItemImpl)paramMenuItem; 
    if (this.itemCheckable >= 2)
      if (paramMenuItem instanceof MenuItemImpl) {
        ((MenuItemImpl)paramMenuItem).setExclusiveCheckable(true);
      } else if (paramMenuItem instanceof MenuItemWrapperICS) {
        ((MenuItemWrapperICS)paramMenuItem).setExclusiveCheckable(true);
      }  
    if (this.itemActionViewClassName != null) {
      MenuItemCompat.setActionView(paramMenuItem, newInstance(this.itemActionViewClassName, SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE, SupportMenuInflater.this.mActionViewConstructorArguments));
    } else {
      bool1 = false;
    } 
    if (this.itemActionViewLayout > 0)
      if (!bool1) {
        MenuItemCompat.setActionView(paramMenuItem, this.itemActionViewLayout);
      } else {
        Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
      }  
    if (this.itemActionProvider != null)
      MenuItemCompat.setActionProvider(paramMenuItem, this.itemActionProvider); 
  }
  
  public void addItem() {
    this.itemAdded = true;
    setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
  }
  
  public SubMenu addSubMenuItem() {
    this.itemAdded = true;
    SubMenu subMenu = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
    setItem(subMenu.getItem());
    return subMenu;
  }
  
  public boolean hasAddedItem() {
    return this.itemAdded;
  }
  
  public void readGroup(AttributeSet paramAttributeSet) {
    TypedArray typedArray = SupportMenuInflater.this.mContext.obtainStyledAttributes(paramAttributeSet, R.styleable.MenuGroup);
    this.groupId = typedArray.getResourceId(R.styleable.MenuGroup_android_id, 0);
    this.groupCategory = typedArray.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
    this.groupOrder = typedArray.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
    this.groupCheckable = typedArray.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
    this.groupVisible = typedArray.getBoolean(R.styleable.MenuGroup_android_visible, true);
    this.groupEnabled = typedArray.getBoolean(R.styleable.MenuGroup_android_enabled, true);
    typedArray.recycle();
  }
  
  public void readItem(AttributeSet paramAttributeSet) {
    boolean bool1;
    boolean bool2 = true;
    TypedArray typedArray = SupportMenuInflater.this.mContext.obtainStyledAttributes(paramAttributeSet, R.styleable.MenuItem);
    this.itemId = typedArray.getResourceId(R.styleable.MenuItem_android_id, 0);
    this.itemCategoryOrder = typedArray.getInt(R.styleable.MenuItem_android_menuCategory, this.groupCategory) & 0xFFFF0000 | typedArray.getInt(R.styleable.MenuItem_android_orderInCategory, this.groupOrder) & 0xFFFF;
    this.itemTitle = typedArray.getText(R.styleable.MenuItem_android_title);
    this.itemTitleCondensed = typedArray.getText(R.styleable.MenuItem_android_titleCondensed);
    this.itemIconResId = typedArray.getResourceId(R.styleable.MenuItem_android_icon, 0);
    this.itemAlphabeticShortcut = getShortcut(typedArray.getString(R.styleable.MenuItem_android_alphabeticShortcut));
    this.itemNumericShortcut = getShortcut(typedArray.getString(R.styleable.MenuItem_android_numericShortcut));
    if (typedArray.hasValue(R.styleable.MenuItem_android_checkable)) {
      if (typedArray.getBoolean(R.styleable.MenuItem_android_checkable, false)) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      this.itemCheckable = bool1;
    } else {
      this.itemCheckable = this.groupCheckable;
    } 
    this.itemChecked = typedArray.getBoolean(R.styleable.MenuItem_android_checked, false);
    this.itemVisible = typedArray.getBoolean(R.styleable.MenuItem_android_visible, this.groupVisible);
    this.itemEnabled = typedArray.getBoolean(R.styleable.MenuItem_android_enabled, this.groupEnabled);
    this.itemShowAsAction = typedArray.getInt(R.styleable.MenuItem_showAsAction, -1);
    this.itemListenerMethodName = typedArray.getString(R.styleable.MenuItem_android_onClick);
    this.itemActionViewLayout = typedArray.getResourceId(R.styleable.MenuItem_actionLayout, 0);
    this.itemActionViewClassName = typedArray.getString(R.styleable.MenuItem_actionViewClass);
    this.itemActionProviderClassName = typedArray.getString(R.styleable.MenuItem_actionProviderClass);
    if (this.itemActionProviderClassName != null) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    if (bool1 && this.itemActionViewLayout == 0 && this.itemActionViewClassName == null) {
      this.itemActionProvider = newInstance(this.itemActionProviderClassName, SupportMenuInflater.ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, SupportMenuInflater.this.mActionProviderConstructorArguments);
    } else {
      if (bool1)
        Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified."); 
      this.itemActionProvider = null;
    } 
    typedArray.recycle();
    this.itemAdded = false;
  }
  
  public void resetGroup() {
    this.groupId = 0;
    this.groupCategory = 0;
    this.groupOrder = 0;
    this.groupCheckable = 0;
    this.groupVisible = true;
    this.groupEnabled = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\SupportMenuInflater$MenuState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */