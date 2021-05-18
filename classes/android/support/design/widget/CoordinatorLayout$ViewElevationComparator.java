package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;
import java.util.Comparator;

class CoordinatorLayout$ViewElevationComparator implements Comparator<View> {
  public int compare(View paramView1, View paramView2) {
    float f1 = ViewCompat.getZ(paramView1);
    float f2 = ViewCompat.getZ(paramView2);
    return (f1 > f2) ? -1 : ((f1 < f2) ? 1 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CoordinatorLayout$ViewElevationComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */