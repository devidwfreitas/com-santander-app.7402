import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class mtu extends mso {
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969515, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    paramView.findViewById(2131759592).setOnClickListener(new mtv(this));
    paramView.findViewById(2131759593).setOnClickListener(new mtw(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mtu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */