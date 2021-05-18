import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.List;

public class iul extends BaseAdapter {
  private List<irz> a;
  
  private LayoutInflater b;
  
  public iul(Context paramContext, List<irz> paramList) {
    this.b = LayoutInflater.from(paramContext);
    this.a = paramList;
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object getItem(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    paramView = this.b.inflate(2130969478, paramViewGroup, false);
    ((ImageView)paramView.findViewById(2131759479)).setImageResource(((irz)this.a.get(paramInt)).a());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iul.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */