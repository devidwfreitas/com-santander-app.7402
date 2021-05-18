import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ahc extends Fragment {
  ajg a;
  
  public ahc(ajg paramajg) {
    this.a = paramajg;
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(agi.fragment_current_month_page, paramViewGroup, false);
    new ahf(view, (Activity)getActivity(), this.a);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ahc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */