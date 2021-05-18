import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

class kgz implements AdapterView.OnItemLongClickListener {
  kgz(kgx paramkgx, ListView paramListView) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    this.a.setOnItemClickListener(null);
    this.a.setItemChecked(paramInt, true);
    ((kgm)this.b.a.get(paramInt)).a(true);
    kgx.b(this.b).a();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kgz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */