import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.santander.app.dpp.DPPPreenchimentoActivity;
import java.util.List;

public class hdt extends ArrayAdapter<String> {
  public hdt(DPPPreenchimentoActivity paramDPPPreenchimentoActivity, Context paramContext, int paramInt, List paramList) {
    super(paramContext, paramInt, paramList);
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    paramView = super.getDropDownView(paramInt, paramView, paramViewGroup);
    ((TextView)paramView).setGravity(17);
    return paramView;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    ((TextView)paramView).setGravity(17);
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */