package android.support.v7.app;

import android.support.v4.widget.NestedScrollView;
import android.view.View;

class AlertController$2 implements NestedScrollView.OnScrollChangeListener {
  public void onScrollChange(NestedScrollView paramNestedScrollView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    AlertController.manageScrollIndicators((View)paramNestedScrollView, top, bottom);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */