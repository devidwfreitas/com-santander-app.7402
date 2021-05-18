package android.support.v7.app;

import android.view.View;
import android.widget.AbsListView;

class AlertController$4 implements AbsListView.OnScrollListener {
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {
    AlertController.manageScrollIndicators((View)paramAbsListView, top, bottom);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */