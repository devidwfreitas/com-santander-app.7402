import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public class fqd extends ArrayAdapter<fup> {
  private List<fup> a;
  
  private int b;
  
  private Context c;
  
  public fqd(Context paramContext, int paramInt, List<fup> paramList) {
    super(paramContext, 2130969362, paramList);
    this.c = paramContext;
    this.a = paramList;
    this.b = paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    View view;
    if (paramView == null) {
      try {
        view = ((Activity)this.c).getLayoutInflater().inflate(this.b, paramViewGroup, false);
        paramView = view;
        try {
          new fqe();
          paramView = view;
          fqe fqe = new fqe();
          paramView = view;
          fqe.a(fqe, (TextView)view.findViewById(2131759075));
          paramView = view;
          fqe.a(fqe, (ImageView)view.findViewById(2131756266));
          paramView = view;
          view.setTag(fqe);
          paramView = view;
        } catch (Exception exception) {
          Log.e("Error", exception.toString());
          return paramView;
        } 
      } catch (Exception exception) {
        Log.e("Error", exception.toString());
        return paramView;
      } 
    } else {
      view = paramView;
      paramView = view;
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */