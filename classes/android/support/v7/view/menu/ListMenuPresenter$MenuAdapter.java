package android.support.v7.view.menu;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class ListMenuPresenter$MenuAdapter extends BaseAdapter {
  private int mExpandedIndex = -1;
  
  public ListMenuPresenter$MenuAdapter() {
    findExpandedIndex();
  }
  
  void findExpandedIndex() {
    MenuItemImpl menuItemImpl = ListMenuPresenter.this.mMenu.getExpandedItem();
    if (menuItemImpl != null) {
      ArrayList<MenuItemImpl> arrayList = ListMenuPresenter.this.mMenu.getNonActionItems();
      int j = arrayList.size();
      for (int i = 0; i < j; i++) {
        if ((MenuItemImpl)arrayList.get(i) == menuItemImpl) {
          this.mExpandedIndex = i;
          return;
        } 
      } 
    } 
    this.mExpandedIndex = -1;
  }
  
  public int getCount() {
    int i = ListMenuPresenter.this.mMenu.getNonActionItems().size() - ListMenuPresenter.this.mItemIndexOffset;
    return (this.mExpandedIndex < 0) ? i : (i - 1);
  }
  
  public MenuItemImpl getItem(int paramInt) {
    ArrayList<MenuItemImpl> arrayList = ListMenuPresenter.this.mMenu.getNonActionItems();
    int i = ListMenuPresenter.this.mItemIndexOffset + paramInt;
    paramInt = i;
    if (this.mExpandedIndex >= 0) {
      paramInt = i;
      if (i >= this.mExpandedIndex)
        paramInt = i + 1; 
    } 
    return arrayList.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    if (paramView == null)
      paramView = ListMenuPresenter.this.mInflater.inflate(ListMenuPresenter.this.mItemLayoutRes, paramViewGroup, false); 
    ((MenuView$ItemView)paramView).initialize(getItem(paramInt), 0);
    return paramView;
  }
  
  public void notifyDataSetChanged() {
    findExpandedIndex();
    super.notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\menu\ListMenuPresenter$MenuAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */