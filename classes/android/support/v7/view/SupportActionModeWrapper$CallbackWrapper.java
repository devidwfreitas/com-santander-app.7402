package android.support.v7.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.internal.view.SupportMenuItem;
import android.support.v4.util.SimpleArrayMap;
import android.support.v7.view.menu.MenuWrapperFactory;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SupportActionModeWrapper$CallbackWrapper implements ActionMode$Callback {
  final ArrayList<SupportActionModeWrapper> mActionModes;
  
  final Context mContext;
  
  final SimpleArrayMap<Menu, Menu> mMenus;
  
  final ActionMode.Callback mWrappedCallback;
  
  public SupportActionModeWrapper$CallbackWrapper(Context paramContext, ActionMode.Callback paramCallback) {
    this.mContext = paramContext;
    this.mWrappedCallback = paramCallback;
    this.mActionModes = new ArrayList<SupportActionModeWrapper>();
    this.mMenus = new SimpleArrayMap();
  }
  
  private Menu getMenuWrapper(Menu paramMenu) {
    Menu menu2 = (Menu)this.mMenus.get(paramMenu);
    Menu menu1 = menu2;
    if (menu2 == null) {
      menu1 = MenuWrapperFactory.wrapSupportMenu(this.mContext, (SupportMenu)paramMenu);
      this.mMenus.put(paramMenu, menu1);
    } 
    return menu1;
  }
  
  public ActionMode getActionModeWrapper(ActionMode paramActionMode) {
    int j = this.mActionModes.size();
    for (int i = 0; i < j; i++) {
      SupportActionModeWrapper supportActionModeWrapper1 = this.mActionModes.get(i);
      if (supportActionModeWrapper1 != null && supportActionModeWrapper1.mWrappedObject == paramActionMode)
        return supportActionModeWrapper1; 
    } 
    SupportActionModeWrapper supportActionModeWrapper = new SupportActionModeWrapper(this.mContext, paramActionMode);
    this.mActionModes.add(supportActionModeWrapper);
    return supportActionModeWrapper;
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem) {
    return this.mWrappedCallback.onActionItemClicked(getActionModeWrapper(paramActionMode), MenuWrapperFactory.wrapSupportMenuItem(this.mContext, (SupportMenuItem)paramMenuItem));
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu) {
    return this.mWrappedCallback.onCreateActionMode(getActionModeWrapper(paramActionMode), getMenuWrapper(paramMenu));
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode) {
    this.mWrappedCallback.onDestroyActionMode(getActionModeWrapper(paramActionMode));
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu) {
    return this.mWrappedCallback.onPrepareActionMode(getActionModeWrapper(paramActionMode), getMenuWrapper(paramMenu));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\SupportActionModeWrapper$CallbackWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */