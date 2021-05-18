import android.view.View;
import android.widget.ExpandableListView;

final class gre implements ExpandableListView.OnChildClickListener {
  public boolean onChildClick(ExpandableListView paramExpandableListView, View paramView, int paramInt1, int paramInt2, long paramLong) {
    if (((jow)paramExpandableListView.getExpandableListAdapter().getGroup(paramInt1)).h() == null)
      return false; 
    jow jow = ((jow)paramExpandableListView.getExpandableListAdapter().getGroup(paramInt1)).h().get(paramInt2);
    if (jow.e() == 0)
      return true; 
    if (jow.a()) {
      gpu.b(jow);
      return false;
    } 
    gpu.a(jow.g(), gpu.l());
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gre.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */