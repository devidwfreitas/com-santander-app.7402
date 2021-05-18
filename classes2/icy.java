import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Collections;
import java.util.List;

public class icy extends BaseAdapter {
  private Context a;
  
  private List<ibo> b;
  
  public icy(Context paramContext, List<ibo> paramList) {
    this.a = paramContext;
    Collections.sort(paramList);
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
      view = LayoutInflater.from(this.a).inflate(2130969262, paramViewGroup, false);
      int i = this.a.getResources().getIdentifier(((ibo)this.b.get(paramInt)).c(), "drawable", this.a.getPackageName());
      ((ImageView)view.findViewById(2131758628)).setImageResource(i);
      ((TextView)view.findViewById(2131758629)).setText(((ibo)this.b.get(paramInt)).d());
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\icy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */