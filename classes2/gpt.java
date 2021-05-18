import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;

public class gpt {
  public static boolean a(ListView paramListView) {
    boolean bool = false;
    ListAdapter listAdapter = paramListView.getAdapter();
    if (listAdapter != null) {
      int k = listAdapter.getCount();
      int j = 0;
      int i = 0;
      while (j < k) {
        View view = listAdapter.getView(j, null, (ViewGroup)paramListView);
        view.measure(0, 0);
        i += view.getMeasuredHeight();
        j++;
      } 
      j = paramListView.getDividerHeight();
      ViewGroup.LayoutParams layoutParams = paramListView.getLayoutParams();
      layoutParams.height = j * (k - 1) + i;
      paramListView.setLayoutParams(layoutParams);
      paramListView.requestLayout();
      bool = true;
    } 
    return bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */