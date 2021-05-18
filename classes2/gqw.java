import android.view.View;
import android.widget.ExpandableListView;

final class gqw implements ExpandableListView.OnGroupClickListener {
  public boolean onGroupClick(ExpandableListView paramExpandableListView, View paramView, int paramInt, long paramLong) {
    jow jow = (jow)paramExpandableListView.getExpandableListAdapter().getGroup(paramInt);
    if (jow.e() == 0)
      return true; 
    if (paramExpandableListView.getExpandableListAdapter() == null)
      return false; 
    if (jow.a())
      gpu.b(jow); 
    if (paramExpandableListView.getExpandableListAdapter().getChildrenCount(paramInt) != 0) {
      gpu.c(jow);
      return false;
    } 
    if (!jow.a())
      gpu.a(jow.g(), gpu.l()); 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gqw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */