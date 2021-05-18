import android.view.View;
import android.widget.AdapterView;
import com.santander.app.dpp.DPPListaProgramadaActivity;

public class hdk implements AdapterView.OnItemLongClickListener {
  public hdk(DPPListaProgramadaActivity paramDPPListaProgramadaActivity) {}
  
  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    this.a.b = paramInt;
    DPPListaProgramadaActivity.a(this.a, this.a.a.startSupportActionMode(new hdl(this, paramInt)));
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */