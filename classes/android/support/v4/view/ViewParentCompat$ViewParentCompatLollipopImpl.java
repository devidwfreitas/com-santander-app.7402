package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

class ViewParentCompat$ViewParentCompatLollipopImpl extends ViewParentCompat$ViewParentCompatKitKatImpl {
  public boolean onNestedFling(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean) {
    return ViewParentCompatLollipop.onNestedFling(paramViewParent, paramView, paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean onNestedPreFling(ViewParent paramViewParent, View paramView, float paramFloat1, float paramFloat2) {
    return ViewParentCompatLollipop.onNestedPreFling(paramViewParent, paramView, paramFloat1, paramFloat2);
  }
  
  public void onNestedPreScroll(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfint) {
    ViewParentCompatLollipop.onNestedPreScroll(paramViewParent, paramView, paramInt1, paramInt2, paramArrayOfint);
  }
  
  public void onNestedScroll(ViewParent paramViewParent, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    ViewParentCompatLollipop.onNestedScroll(paramViewParent, paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void onNestedScrollAccepted(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt) {
    ViewParentCompatLollipop.onNestedScrollAccepted(paramViewParent, paramView1, paramView2, paramInt);
  }
  
  public boolean onStartNestedScroll(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt) {
    return ViewParentCompatLollipop.onStartNestedScroll(paramViewParent, paramView1, paramView2, paramInt);
  }
  
  public void onStopNestedScroll(ViewParent paramViewParent, View paramView) {
    ViewParentCompatLollipop.onStopNestedScroll(paramViewParent, paramView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewParentCompat$ViewParentCompatLollipopImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */