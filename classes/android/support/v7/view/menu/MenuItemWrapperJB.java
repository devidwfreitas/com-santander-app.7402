package android.support.v7.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.ActionProvider;

@TargetApi(16)
@RequiresApi(16)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class MenuItemWrapperJB extends MenuItemWrapperICS {
  MenuItemWrapperJB(Context paramContext, SupportMenuItem paramSupportMenuItem) {
    super(paramContext, paramSupportMenuItem);
  }
  
  MenuItemWrapperICS$ActionProviderWrapper createActionProviderWrapper(ActionProvider paramActionProvider) {
    return new MenuItemWrapperJB$ActionProviderWrapperJB(this, this.mContext, paramActionProvider);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuItemWrapperJB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */