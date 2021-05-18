import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

@SuppressLint({"NewApi"})
public class fra extends ArrayAdapter<frb> {
  public fra(Context paramContext, int paramInt, List<frb> paramList) {
    super(paramContext, paramInt, paramList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    View view = paramView;
    if (paramView == null)
      view = LayoutInflater.from(getContext()).inflate(2130968797, null); 
    frb frb = (frb)getItem(paramInt);
    if (frb != null) {
      TextView textView = (TextView)view.findViewById(2131756226);
      if (textView != null)
        textView.setText(frb.L().trim()); 
      textView = (TextView)view.findViewById(2131756228);
      if (textView != null)
        textView.setText(frb.P().toUpperCase().trim()); 
      textView = (TextView)view.findViewById(2131756229);
      if (textView != null)
        textView.setText(NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(new Double(frb.Q()))); 
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fra.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */