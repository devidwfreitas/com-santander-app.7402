import android.view.View;
import android.widget.AdapterView;

class khb implements AdapterView.OnItemClickListener {
  khb(kgx paramkgx) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    kgx.a(this.a).a((kgm)paramAdapterView.getAdapter().getItem(paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\khb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */