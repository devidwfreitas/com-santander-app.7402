import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class muh extends mso {
  private boolean a(Bundle paramBundle) {
    return (paramBundle != null && !TextUtils.isEmpty(getString(paramBundle.getInt("EXTRA_MESSAGE"))));
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969517, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    paramBundle = getArguments();
    if (a(paramBundle)) {
      String str = getString(paramBundle.getInt("EXTRA_MESSAGE"));
      ((TextView)paramView.findViewById(2131759594)).setText(str);
    } 
    paramView.findViewById(2131756148).setOnClickListener(new mui(this));
    paramView.findViewById(2131759596).setOnClickListener(new muj(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\muh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */