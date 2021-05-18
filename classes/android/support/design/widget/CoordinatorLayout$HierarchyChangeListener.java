package android.support.design.widget;

import android.view.View;
import android.view.ViewGroup;

class CoordinatorLayout$HierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
  public void onChildViewAdded(View paramView1, View paramView2) {
    if (CoordinatorLayout.this.mOnHierarchyChangeListener != null)
      CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewAdded(paramView1, paramView2); 
  }
  
  public void onChildViewRemoved(View paramView1, View paramView2) {
    CoordinatorLayout.this.onChildViewsChanged(2);
    if (CoordinatorLayout.this.mOnHierarchyChangeListener != null)
      CoordinatorLayout.this.mOnHierarchyChangeListener.onChildViewRemoved(paramView1, paramView2); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CoordinatorLayout$HierarchyChangeListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */