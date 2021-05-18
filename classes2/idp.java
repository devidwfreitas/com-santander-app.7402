import android.view.View;
import android.widget.ExpandableListView;

class idp implements ExpandableListView.OnGroupClickListener {
  idp(ido paramido) {}
  
  public boolean onGroupClick(ExpandableListView paramExpandableListView, View paramView, int paramInt, long paramLong) {
    idf idf = (idf)paramView.getTag();
    if (idf.a) {
      idf.d.setImageResource(2130837611);
      ibm.a(idf.a, paramInt);
      return false;
    } 
    idf.d.setImageResource(2130837601);
    ibm.a(idf.a, paramInt);
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\idp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */