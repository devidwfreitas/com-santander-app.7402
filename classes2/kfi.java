import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.TextView;
import java.util.List;

public class kfi extends BaseAdapter {
  private Context a;
  
  private LayoutInflater b;
  
  private List<kdh> c;
  
  public kfi(Context paramContext, List<kdh> paramList) {
    this.a = paramContext;
    this.c = paramList;
  }
  
  public kdh a(int paramInt) {
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
      paramView = this.b.inflate(2130968777, null);
      kfk kfk1 = new kfk(null);
      kfk1.a = (TextView)paramView.findViewById(2131756156);
      kfk1.b = (TextView)paramView.findViewById(2131756157);
      kfk1.c = (TextView)paramView.findViewById(2131756167);
      kfk1.d = (TextView)paramView.findViewById(2131755265);
      kfk1.e = (TextView)paramView.findViewById(2131756170);
      kfk1.f = (Button)paramView.findViewById(2131756172);
      kfk1.g = (Button)paramView.findViewById(2131756173);
      paramView.setTag(kfk1);
      kdh kdh1 = this.c.get(paramInt);
      return paramView;
    } 
    kfk kfk = (kfk)paramView.getTag();
    kdh kdh = this.c.get(paramInt);
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kfi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */