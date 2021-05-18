import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.io.Serializable;
import java.util.ArrayList;

public class fqk extends BaseAdapter implements Serializable {
  public static final long a = 1L;
  
  private ArrayList<inx> b;
  
  private Context c;
  
  private LayoutInflater d;
  
  public fqk(ArrayList<inx> paramArrayList, Context paramContext) {
    this.b = paramArrayList;
    this.c = paramContext;
    this.d = LayoutInflater.from(paramContext);
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object getItem(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    Log.d("Santander", "adapter getview");
    paramView = this.d.inflate(2130969111, null);
    TextView textView1 = (TextView)paramView.findViewById(2131757634);
    TextView textView2 = (TextView)paramView.findViewById(2131757622);
    TextView textView3 = (TextView)paramView.findViewById(2131757623);
    textView1.setText(((inx)this.b.get(paramInt)).b());
    textView2.setText(((inx)this.b.get(paramInt)).c());
    textView3.setText(((inx)this.b.get(paramInt)).d());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */