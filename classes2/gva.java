import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.List;

public class gva extends BaseAdapter {
  private Context a;
  
  private LayoutInflater b;
  
  private List<gky> c;
  
  public gva(Context paramContext, List<gky> paramList) {
    this.a = paramContext;
    this.c = paramList;
  }
  
  public gky a(int paramInt) {
    return this.c.get(paramInt);
  }
  
  public int getCount() {
    return this.c.size();
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    gky gky = this.c.get(paramInt);
    if (paramView == null) {
      this.b = (LayoutInflater)this.a.getSystemService("layout_inflater");
      paramView = this.b.inflate(2130969255, null);
      ((TextView)paramView.findViewById(2131758610)).setText(gky.b());
      ((TextView)paramView.findViewById(2131758611)).setText(gky.c());
      if (gky.d()) {
        ((LinearLayout)paramView).setOrientation(1);
        return paramView;
      } 
      ((LinearLayout)paramView).setOrientation(0);
      return paramView;
    } 
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gva.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */