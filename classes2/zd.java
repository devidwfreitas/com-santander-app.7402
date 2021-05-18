import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class zd extends Fragment {
  private ys a = null;
  
  private ack b;
  
  public zd(ack paramack, ys paramys) {
    this.a = paramys;
    this.b = paramack;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(lc.fragment_validation_cso, paramViewGroup, false);
    new zf(this.b, this, view, this.a);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\zd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */