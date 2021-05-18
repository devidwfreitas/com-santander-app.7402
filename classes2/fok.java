import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class fok extends ArrayAdapter<fur> {
  public fok(Context paramContext, int paramInt, ArrayList<fur> paramArrayList) {
    super(paramContext, paramInt, paramArrayList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    View view = paramView;
    if (paramView == null)
      view = LayoutInflater.from(getContext()).inflate(2130968803, null); 
    fur fur = (fur)getItem(paramInt);
    if (fur != null) {
      TextView textView = (TextView)view.findViewById(2131756248);
      if (textView != null)
        textView.setText(fur.a()); 
      textView = (TextView)view.findViewById(2131756249);
      if (textView != null)
        textView.setText(fur.c()); 
      textView = (TextView)view.findViewById(2131756250);
      if (textView != null)
        textView.setText(fur.b()); 
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fok.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */