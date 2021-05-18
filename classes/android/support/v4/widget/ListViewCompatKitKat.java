package android.support.v4.widget;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.widget.ListView;

@TargetApi(19)
@RequiresApi(19)
class ListViewCompatKitKat {
  static void scrollListBy(ListView paramListView, int paramInt) {
    paramListView.scrollListBy(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\ListViewCompatKitKat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */