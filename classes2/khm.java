import android.view.View;
import android.widget.AdapterView;

class khm implements AdapterView.OnItemClickListener {
  khm(khl paramkhl) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    khl.a(this.a).b(String.valueOf(paramAdapterView.getAdapter().getItem(paramInt)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\khm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */