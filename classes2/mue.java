import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class mue extends mso {
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969516, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    boolean bool = getArguments().getBoolean("EXTRA_SENHA_CANCELADA");
    String str = getArguments().getString("EXTRA_MESSAGE");
    ((TextView)paramView.findViewById(2131759594)).setText(str);
    paramView.findViewById(2131755517).setOnClickListener(new muf(this));
    Button button = (Button)paramView.findViewById(2131759595);
    if (bool) {
      button.setText(2131299135);
    } else {
      button.setText(2131299142);
    } 
    button.setOnClickListener(new mug(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */