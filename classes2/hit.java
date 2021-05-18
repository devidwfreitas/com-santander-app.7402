import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

public class hit extends BaseAdapter {
  private Context a;
  
  private LayoutInflater b;
  
  private List<gky> c;
  
  public hit(Context paramContext, List<gky> paramList) {
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
    if (paramView == null) {
      this.b = (LayoutInflater)this.a.getSystemService("layout_inflater");
      paramView = this.b.inflate(2130969263, null);
      hiv hiv1 = new hiv(null);
      hiv.a(hiv1, (TextView)paramView.findViewById(2131758610));
      hiv.b(hiv1, (TextView)paramView.findViewById(2131758611));
      paramView.setTag(hiv1);
      gky gky1 = this.c.get(paramInt);
      hiv.a(hiv1).setText(gky1.b());
      hiv.b(hiv1).setText(gky1.c());
      return paramView;
    } 
    hiv hiv = (hiv)paramView.getTag();
    gky gky = this.c.get(paramInt);
    hiv.a(hiv).setText(gky.b());
    hiv.b(hiv).setText(gky.c());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */