package android.support.v7.view.menu;

import android.support.v7.view.CollapsibleActionView;
import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

class MenuItemWrapperICS$CollapsibleActionViewWrapper extends FrameLayout implements CollapsibleActionView {
  final CollapsibleActionView mWrappedView;
  
  MenuItemWrapperICS$CollapsibleActionViewWrapper(View paramView) {
    super(paramView.getContext());
    this.mWrappedView = (CollapsibleActionView)paramView;
    addView(paramView);
  }
  
  View getWrappedView() {
    return (View)this.mWrappedView;
  }
  
  public void onActionViewCollapsed() {
    this.mWrappedView.onActionViewCollapsed();
  }
  
  public void onActionViewExpanded() {
    this.mWrappedView.onActionViewExpanded();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\MenuItemWrapperICS$CollapsibleActionViewWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */