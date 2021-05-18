import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class lwf extends Fragment {
  private AppCompatActivity a;
  
  public static Fragment a() {
    Bundle bundle = new Bundle();
    Fragment fragment = new Fragment();
    fragment.setArguments(bundle);
    return fragment;
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    if (paramContext instanceof AppCompatActivity)
      this.a = (AppCompatActivity)paramContext; 
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969026, paramViewGroup, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */