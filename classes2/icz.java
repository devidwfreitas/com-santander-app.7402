import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public class icz extends BaseAdapter {
  private Context a;
  
  private List<ibn> b;
  
  public icz(Context paramContext, List<ibn> paramList) {
    this.a = paramContext;
    this.b = paramList;
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object getItem(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    View view = paramView;
    if (paramView == null) {
      view = LayoutInflater.from(this.a).inflate(2130969028, paramViewGroup, false);
      ((TextView)view.findViewById(2131757218)).setText(((ibn)this.b.get(paramInt)).a());
      ((ImageView)view.findViewById(2131757217)).setImageResource(((ibn)this.b.get(paramInt)).b());
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\icz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */