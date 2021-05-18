import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ze extends Fragment {
  String a = null;
  
  ack b;
  
  public ze(ack paramack, String paramString) {
    this.a = paramString;
    this.b = paramack;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(lc.fragment_validacao_id, paramViewGroup, false);
    new zn(this.b, view, this, this.a);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ze.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */