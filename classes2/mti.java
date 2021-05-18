import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class mti extends mso {
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969512, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    ((TextView)paramView.findViewById(2131759568)).setText(getArguments().getString("EXTRA_MESSAGE"));
    paramView.findViewById(2131756148).setOnClickListener(new mtj(this));
    paramView.findViewById(2131759583).setOnClickListener(new mtk(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mti.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */