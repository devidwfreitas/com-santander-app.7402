import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.santander.app.components.view.SantanderTextView;
import java.util.List;

public class kfc extends BaseAdapter {
  private List<kdi> a;
  
  private Context b;
  
  private LayoutInflater c;
  
  public kfc(List<kdi> paramList, Context paramContext) {
    this.a = paramList;
    this.b = paramContext;
    this.c = LayoutInflater.from(paramContext);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object getItem(int paramInt) {
    return null;
  }
  
  public long getItemId(int paramInt) {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    paramView = this.c.inflate(2130969258, paramViewGroup, false);
    SantanderTextView santanderTextView1 = (SantanderTextView)paramView.findViewById(2131756194);
    SantanderTextView santanderTextView2 = (SantanderTextView)paramView.findViewById(2131755978);
    kdi kdi = this.a.get(paramInt);
    santanderTextView1.setTextColor(this.b.getResources().getColor(kdi.c()));
    santanderTextView1.setText(kdi.a());
    santanderTextView1.setTextSize(0, this.b.getResources().getDimension(kdi.d()));
    santanderTextView2.setText(kdi.b());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kfc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */