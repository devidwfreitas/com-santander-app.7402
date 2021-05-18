package android.support.v7.widget;

import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

class ScrollingTabContainerView$TabAdapter extends BaseAdapter {
  public int getCount() {
    return ScrollingTabContainerView.this.mTabLayout.getChildCount();
  }
  
  public Object getItem(int paramInt) {
    return ((ScrollingTabContainerView$TabView)ScrollingTabContainerView.this.mTabLayout.getChildAt(paramInt)).getTab();
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    if (paramView == null)
      return (View)ScrollingTabContainerView.this.createTabView((ActionBar.Tab)getItem(paramInt), true); 
    ((ScrollingTabContainerView$TabView)paramView).bindTab((ActionBar.Tab)getItem(paramInt));
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ScrollingTabContainerView$TabAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */