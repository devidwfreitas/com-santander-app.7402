import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import java.util.ArrayList;

public class inu extends BaseAdapter {
  private ArrayList<ioi> a;
  
  private Context b;
  
  private LayoutInflater c;
  
  public inu(ArrayList<ioi> paramArrayList, Context paramContext) {
    this.a = paramArrayList;
    this.b = paramContext;
    this.c = LayoutInflater.from(paramContext);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object getItem(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    paramView = this.c.inflate(2130969117, null);
    TextView textView1 = (TextView)paramView.findViewById(2131757613);
    TextView textView2 = (TextView)paramView.findViewById(2131757622);
    TextView textView3 = (TextView)paramView.findViewById(2131757623);
    CheckBox checkBox = (CheckBox)paramView.findViewById(2131757646);
    textView1.setText(((ioi)this.a.get(paramInt)).b());
    textView2.setText(((ioi)this.a.get(paramInt)).c());
    textView3.setText(((ioi)this.a.get(paramInt)).d());
    ((ioi)this.a.get(paramInt)).a(Boolean.valueOf(false));
    checkBox.setOnCheckedChangeListener(new inv(this, paramInt));
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */